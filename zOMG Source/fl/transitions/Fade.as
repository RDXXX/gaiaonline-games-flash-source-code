package fl.transitions
{
   import flash.display.MovieClip;
   
   public class Fade extends Transition
   {
       
      
      protected var _alphaFinal:Number;
      
      public function Fade(content:MovieClip, transParams:Object, manager:TransitionManager)
      {
         super(content,transParams,manager);
         this._alphaFinal = this.manager.contentAppearance.alpha;
      }
      
      override public function get type() : Class
      {
         return Fade;
      }
      
      override protected function _render(p:Number) : void
      {
         this._content.alpha = this._alphaFinal * p;
      }
   }
}
