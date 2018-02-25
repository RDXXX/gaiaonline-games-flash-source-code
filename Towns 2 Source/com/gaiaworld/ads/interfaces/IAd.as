package com.gaiaworld.ads.interfaces
{
   import com.gaiaworld.ads.vo.MsVo;
   import flash.display.Sprite;
   
   public interface IAd
   {
       
      
      function getData() : MsVo;
      
      function getClip() : Sprite;
   }
}
