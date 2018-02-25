package org.igniterealtime.xiff.auth
{
   import com.hurlant.crypto.hash.MD5Hurlant;
   import com.hurlant.util.Base64;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import org.igniterealtime.xiff.core.XMPPConnection;
   
   public class DigestMD5 extends SASLAuth
   {
      
      public static const MECHANISM:String = "DIGEST-MD5";
      
      public static const NS:String = "urn:ietf:params:xml:ns:xmpp-sasl";
       
      
      private var connection:XMPPConnection;
      
      public function DigestMD5(connection:XMPPConnection)
      {
         super();
         this.connection = connection;
         var authContent:String = Base64.encode(connection.jid.node);
         req.setNamespace(DigestMD5.NS);
         req.@mechanism = DigestMD5.MECHANISM;
         req.setChildren(authContent);
         stage = 0;
      }
      
      private function convertToBase16String(bytes:ByteArray) : String
      {
         var byte:int = 0;
         var byteStr:String = null;
         var str:String = "";
         bytes.position = 0;
         while(bytes.bytesAvailable)
         {
            byte = bytes.readUnsignedByte();
            byteStr = byte.toString(16).toLowerCase();
            str = str + (byteStr.length == 1?"0" + byteStr:byteStr);
         }
         return str;
      }
      
      private function formatResponse(map:Dictionary) : String
      {
         var md5:MD5Hurlant = new MD5Hurlant();
         var password:String = connection.password;
         var ha1_1:ByteArray = new ByteArray();
         ha1_1.writeUTFBytes(map.username + ":" + map.realm + ":" + password);
         ha1_1 = md5.hash(ha1_1);
         var ha1_2:ByteArray = new ByteArray();
         ha1_2.writeUTFBytes(":" + map.nonce + ":" + map.cnonce);
         var ha1:ByteArray = new ByteArray();
         ha1.writeBytes(ha1_1);
         ha1.writeBytes(ha1_2);
         ha1 = md5.hash(ha1);
         var ha2:ByteArray = new ByteArray();
         ha2.writeUTFBytes("AUTHENTICATE:" + map["digest-uri"]);
         ha2 = md5.hash(ha2);
         var sha1:String = convertToBase16String(ha1);
         var sha2:String = convertToBase16String(ha2);
         var b:ByteArray = new ByteArray();
         b.writeUTFBytes(sha1 + ":" + map.nonce + ":" + map.nc + ":" + map.cnonce + ":" + map.qop + ":" + sha2);
         b = md5.hash(b);
         return Hex.fromArray(b);
      }
      
      override public function handleResponse(stage:int, response:XML) : Object
      {
         var success:* = response.localName() == "success";
         return {
            "authComplete":true,
            "authSuccess":success,
            "authStage":stage++
         };
      }
      
      override public function handleChallenge(stage:int, challenge:XML) : XML
      {
         var keyValuePair:String = null;
         var resp:XML = null;
         var keyValue:Array = null;
         var responseMap:Dictionary = null;
         var challengeResponse:* = null;
         var decodedChallenge:String = Base64.decode(challenge);
         var challengeKeyValuePairs:Array = decodedChallenge.replace(/\"/g,"").split(",");
         var challengeMap:Dictionary = new Dictionary();
         for each(keyValuePair in challengeKeyValuePairs)
         {
            keyValue = keyValuePair.split("=");
            challengeMap[keyValue[0]] = keyValue[1];
         }
         resp = new XML(response);
         resp.setNamespace(DigestMD5.NS);
         if(!challengeMap.rspauth)
         {
            responseMap = new Dictionary();
            responseMap.username = connection.username;
            responseMap.realm = !!challengeMap.realm?challengeMap.realm:"";
            responseMap.nonce = challengeMap.nonce;
            responseMap.cnonce = new Date().time;
            responseMap.nc = "00000001";
            responseMap.qop = !!challengeMap.qop?challengeMap.qop:"auth";
            responseMap["digest-uri"] = "xmpp/" + (!!challengeMap.realm?challengeMap.realm:connection.domain);
            responseMap.charset = challengeMap.charset;
            responseMap.response = formatResponse(responseMap);
            challengeResponse = "username=\"" + responseMap.username + "\"";
            if(challengeMap.realm)
            {
               challengeResponse = challengeResponse + (",realm=\"" + responseMap.realm + "\"");
            }
            challengeResponse = challengeResponse + (",nonce=\"" + responseMap.nonce + "\"");
            challengeResponse = challengeResponse + (",cnonce=\"" + responseMap.cnonce + "\"");
            challengeResponse = challengeResponse + (",nc=" + responseMap.nc);
            challengeResponse = challengeResponse + (",qop=" + responseMap.qop);
            challengeResponse = challengeResponse + (",digest-uri=\"" + responseMap["digest-uri"] + "\"");
            challengeResponse = challengeResponse + (",response=" + responseMap.response);
            challengeResponse = challengeResponse + (",charset=" + responseMap.charset);
            challengeResponse = Base64.encode(challengeResponse);
            resp.setChildren(challengeResponse);
         }
         return resp;
      }
   }
}
