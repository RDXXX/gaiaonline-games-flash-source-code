class structures.classes.Stands
{
   function Stands(shopMc)
   {
      this.shop = shopMc;
      this.enableRollover();
   }
   function enableRollover()
   {
      this.shop.sensor.rollOver = function()
      {
         trace("ROOL WITH ME");
      };
   }
   function hideMenu()
   {
   }
}
