package com.adobe.serialization.json
{
   public class JSONDecoder
   {
       
      
      private var value;
      
      private var tokenizer:JSONTokenizer;
      
      private var token:JSONToken;
      
      public function JSONDecoder(s:String)
      {
         super();
         tokenizer = new JSONTokenizer(s);
         nextToken();
         value = parseValue();
      }
      
      private function parseObject() : Object
      {
         var key:String = null;
         var o:Object = new Object();
         nextToken();
         if(token.type == JSONTokenType.RIGHT_BRACE)
         {
            return o;
         }
         while(true)
         {
            if(token.type == JSONTokenType.STRING)
            {
               key = String(token.value);
               nextToken();
               if(token.type == JSONTokenType.COLON)
               {
                  nextToken();
                  o[key] = parseValue();
                  nextToken();
                  if(token.type == JSONTokenType.RIGHT_BRACE)
                  {
                     break;
                  }
                  if(token.type == JSONTokenType.COMMA)
                  {
                     nextToken();
                  }
                  else
                  {
                     tokenizer.parseError("Expecting } or , but found " + token.value);
                  }
               }
               else
               {
                  tokenizer.parseError("Expecting : but found " + token.value);
               }
            }
            else
            {
               tokenizer.parseError("Expecting string but found " + token.value);
            }
         }
         return o;
      }
      
      private function parseValue() : Object
      {
         switch(token.type)
         {
            case JSONTokenType.LEFT_BRACE:
               return parseObject();
            case JSONTokenType.LEFT_BRACKET:
               return parseArray();
            case JSONTokenType.STRING:
            case JSONTokenType.NUMBER:
            case JSONTokenType.TRUE:
            case JSONTokenType.FALSE:
            case JSONTokenType.NULL:
               return token.value;
            default:
               tokenizer.parseError("Unexpected " + token.value);
               return null;
         }
      }
      
      private function nextToken() : JSONToken
      {
         return token = tokenizer.getNextToken();
      }
      
      public function getValue() : *
      {
         return value;
      }
      
      private function parseArray() : Array
      {
         var a:Array = new Array();
         nextToken();
         if(token.type == JSONTokenType.RIGHT_BRACKET)
         {
            return a;
         }
         while(true)
         {
            a.push(parseValue());
            nextToken();
            if(token.type == JSONTokenType.RIGHT_BRACKET)
            {
               break;
            }
            if(token.type == JSONTokenType.COMMA)
            {
               nextToken();
            }
            else
            {
               tokenizer.parseError("Expecting ] or , but found " + token.value);
            }
         }
         return a;
      }
   }
}
