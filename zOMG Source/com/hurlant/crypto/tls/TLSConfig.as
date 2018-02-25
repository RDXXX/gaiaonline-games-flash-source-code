package com.hurlant.crypto.tls
{
   import com.hurlant.crypto.cert.MozillaRootCertificates;
   import com.hurlant.crypto.cert.X509CertificateCollection;
   import com.hurlant.crypto.rsa.RSAKey;
   import com.hurlant.util.der.PEM;
   import flash.utils.ByteArray;
   
   public class TLSConfig
   {
       
      
      public var trustAllCertificates:Boolean = false;
      
      public var compressions:Array;
      
      public var certificate:ByteArray;
      
      public var version:uint;
      
      public var trustSelfSignedCertificates:Boolean = false;
      
      public var entity:uint;
      
      public var localKeyStore:X509CertificateCollection;
      
      public var cipherSuites:Array;
      
      public var CAStore:X509CertificateCollection;
      
      public var privateKey:RSAKey;
      
      public var promptUserForAcceptCert:Boolean = false;
      
      public var ignoreCommonNameMismatch:Boolean = false;
      
      public function TLSConfig(entity:uint, cipherSuites:Array = null, compressions:Array = null, certificate:ByteArray = null, privateKey:RSAKey = null, CAStore:X509CertificateCollection = null, ver:uint = 0)
      {
         super();
         this.entity = entity;
         this.cipherSuites = cipherSuites;
         this.compressions = compressions;
         this.certificate = certificate;
         this.privateKey = privateKey;
         this.CAStore = CAStore;
         this.version = ver;
         if(cipherSuites == null)
         {
            this.cipherSuites = CipherSuites.getDefaultSuites();
         }
         if(compressions == null)
         {
            this.compressions = [TLSSecurityParameters.COMPRESSION_NULL];
         }
         if(CAStore == null)
         {
            this.CAStore = new MozillaRootCertificates();
         }
         if(ver == 0)
         {
            this.version = TLSSecurityParameters.PROTOCOL_VERSION;
         }
      }
      
      public function setPEMCertificate(cert:String, key:String = null) : void
      {
         if(key == null)
         {
            key = cert;
         }
         certificate = PEM.readCertIntoArray(cert);
         privateKey = PEM.readRSAPrivateKey(key);
      }
   }
}
