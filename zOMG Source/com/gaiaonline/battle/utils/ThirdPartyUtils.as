package com.gaiaonline.battle.utils
{
   public class ThirdPartyUtils
   {
       
      
      public function ThirdPartyUtils()
      {
         super();
      }
      
      public static function prependBaseURLToImageSources(baseUrl:String, htmlText:String) : String
      {
         var imageSources:Array = parseImageSources(htmlText);
         var nImageSources:uint = imageSources.length;
         for(var i:uint = 0; i < nImageSources; i++)
         {
            if(imageSources[i] != "")
            {
               trace("PREPENDED BASE URL -> " + baseUrl + imageSources[i]);
               htmlText = htmlText.split(imageSources[i]).join(baseUrl + imageSources[i]);
            }
         }
         return htmlText;
      }
      
      private static function parseImageSources(html:String) : Array
      {
         var regex:RegExp = /(?<=src=('|"))(.*?)(?=('|"))/gim;
         return html.match(regex);
      }
   }
}
