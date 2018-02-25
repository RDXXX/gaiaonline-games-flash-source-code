package com.hurlant.crypto.cert
{
   import com.hurlant.crypto.hash.IHash;
   import com.hurlant.crypto.hash.MD2;
   import com.hurlant.crypto.hash.MD5Hurlant;
   import com.hurlant.crypto.hash.SHA1Hurlant;
   import com.hurlant.crypto.rsa.RSAKey;
   import com.hurlant.util.ArrayUtil;
   import com.hurlant.util.Base64;
   import com.hurlant.util.der.ByteString;
   import com.hurlant.util.der.DER;
   import com.hurlant.util.der.IAsn1Type;
   import com.hurlant.util.der.OID;
   import com.hurlant.util.der.ObjectIdentifier;
   import com.hurlant.util.der.PEM;
   import com.hurlant.util.der.Sequence;
   import com.hurlant.util.der.Type;
   import flash.utils.ByteArray;
   
   public class X509Certificate
   {
       
      
      private var _loaded:Boolean;
      
      private var _param;
      
      private var _obj:Object;
      
      public function X509Certificate(p:*)
      {
         super();
         _loaded = false;
         _param = p;
      }
      
      public function getPublicKey() : RSAKey
      {
         load();
         var pk:ByteArray = _obj.signedCertificate.subjectPublicKeyInfo.subjectPublicKey as ByteArray;
         pk.position = 0;
         var rsaKey:Object = DER.parse(pk,[{"name":"N"},{"name":"E"}]);
         return new RSAKey(rsaKey.N,rsaKey.E.valueOf());
      }
      
      public function getNotAfter() : Date
      {
         return _obj.signedCertificate.validity.notAfter.date;
      }
      
      public function getAlgorithmIdentifier() : String
      {
         return _obj.algorithmIdentifier.algorithmId.toString();
      }
      
      public function getNotBefore() : Date
      {
         return _obj.signedCertificate.validity.notBefore.date;
      }
      
      private function load() : void
      {
         var b:ByteArray = null;
         if(_loaded)
         {
            return;
         }
         var p:* = _param;
         if(p is String)
         {
            b = PEM.readCertIntoArray(p as String);
         }
         else if(p is ByteArray)
         {
            b = p;
         }
         if(b != null)
         {
            _obj = DER.parse(b,Type.TLS_CERT);
            _loaded = true;
            return;
         }
         throw new Error("Invalid x509 Certificate parameter: " + p);
      }
      
      public function getCommonName() : String
      {
         var subject:Sequence = _obj.signedCertificate.subject;
         var iasn1Type:IAsn1Type = subject.findAttributeValue(OID.COMMON_NAME);
         var name:String = iasn1Type.toDER().toString();
         return name;
      }
      
      public function isSigned(store:X509CertificateCollection, CAs:X509CertificateCollection, time:Date = null) : Boolean
      {
         load();
         if(time == null)
         {
            time = new Date();
         }
         var notBefore:Date = getNotBefore();
         var notAfter:Date = getNotAfter();
         if(time.getTime() < notBefore.getTime())
         {
            return false;
         }
         if(time.getTime() > notAfter.getTime())
         {
            return false;
         }
         var subject:String = getIssuerPrincipal();
         var parent:X509Certificate = CAs.getCertificate(subject);
         var parentIsAuthoritative:Boolean = false;
         if(parent == null)
         {
            parent = store.getCertificate(subject);
            if(parent == null)
            {
               return false;
            }
         }
         else
         {
            parentIsAuthoritative = true;
         }
         if(parent == this)
         {
            return false;
         }
         if(!(parentIsAuthoritative && parent.isSelfSigned(time)) && !parent.isSigned(store,CAs,time))
         {
            return false;
         }
         var key:RSAKey = parent.getPublicKey();
         return verifyCertificate(key);
      }
      
      public function isSelfSigned(time:Date) : Boolean
      {
         load();
         var key:RSAKey = getPublicKey();
         return verifyCertificate(key);
      }
      
      public function getIssuerPrincipal() : String
      {
         load();
         return Base64.encodeByteArray(_obj.signedCertificate.issuer_bin);
      }
      
      private function signCertificate(key:RSAKey, algo:String) : ByteArray
      {
         var hash:IHash = null;
         var oid:String = null;
         switch(algo)
         {
            case OID.SHA1_WITH_RSA_ENCRYPTION:
               hash = new SHA1Hurlant();
               oid = OID.SHA1_ALGORITHM;
               break;
            case OID.MD2_WITH_RSA_ENCRYPTION:
               hash = new MD2();
               oid = OID.MD2_ALGORITHM;
               break;
            case OID.MD5_WITH_RSA_ENCRYPTION:
               hash = new MD5Hurlant();
               oid = OID.MD5_ALGORITHM;
               break;
            default:
               return null;
         }
         var data:ByteArray = _obj.signedCertificate_bin;
         data = hash.hash(data);
         var seq1:Sequence = new Sequence();
         seq1[0] = new Sequence();
         seq1[0][0] = new ObjectIdentifier(0,0,oid);
         seq1[0][1] = null;
         seq1[1] = new ByteString();
         seq1[1].writeBytes(data);
         data = seq1.toDER();
         var buf:ByteArray = new ByteArray();
         key.sign(data,buf,data.length);
         return buf;
      }
      
      private function verifyCertificate(key:RSAKey) : Boolean
      {
         var hash:IHash = null;
         var oid:String = null;
         var algo:String = getAlgorithmIdentifier();
         switch(algo)
         {
            case OID.SHA1_WITH_RSA_ENCRYPTION:
               hash = new SHA1Hurlant();
               oid = OID.SHA1_ALGORITHM;
               break;
            case OID.MD2_WITH_RSA_ENCRYPTION:
               hash = new MD2();
               oid = OID.MD2_ALGORITHM;
               break;
            case OID.MD5_WITH_RSA_ENCRYPTION:
               hash = new MD5Hurlant();
               oid = OID.MD5_ALGORITHM;
               break;
            default:
               return false;
         }
         var data:ByteArray = _obj.signedCertificate_bin;
         var buf:ByteArray = new ByteArray();
         key.verify(_obj.encrypted,buf,_obj.encrypted.length);
         buf.position = 0;
         data = hash.hash(data);
         var obj:Object = DER.parse(buf,Type.RSA_SIGNATURE);
         if(obj.algorithm.algorithmId.toString() != oid)
         {
            return false;
         }
         if(!ArrayUtil.equals(obj.hash,data))
         {
            return false;
         }
         return true;
      }
      
      public function getSubjectPrincipal() : String
      {
         load();
         return Base64.encodeByteArray(_obj.signedCertificate.subject_bin);
      }
   }
}
