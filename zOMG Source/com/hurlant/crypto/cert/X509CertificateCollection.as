package com.hurlant.crypto.cert
{
   public class X509CertificateCollection
   {
       
      
      private var _map:Object;
      
      public function X509CertificateCollection()
      {
         super();
         _map = {};
      }
      
      public function addPEMCertificate(name:String, subject:String, pem:String) : void
      {
         _map[subject] = new X509Certificate(pem);
      }
      
      public function getCertificate(subject:String) : X509Certificate
      {
         return _map[subject];
      }
      
      public function addCertificate(cert:X509Certificate) : void
      {
         var subject:String = cert.getSubjectPrincipal();
         _map[subject] = cert;
      }
   }
}
