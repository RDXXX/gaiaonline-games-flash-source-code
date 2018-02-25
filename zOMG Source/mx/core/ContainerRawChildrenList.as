package mx.core
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   use namespace mx_internal;
   
   public class ContainerRawChildrenList implements IChildList
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var owner:Container;
      
      public function ContainerRawChildrenList(owner:Container)
      {
         super();
         this.owner = owner;
      }
      
      public function addChild(child:DisplayObject) : DisplayObject
      {
         return owner.rawChildren_addChild(child);
      }
      
      public function getChildIndex(child:DisplayObject) : int
      {
         return owner.rawChildren_getChildIndex(child);
      }
      
      public function setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         owner.rawChildren_setChildIndex(child,newIndex);
      }
      
      public function getChildByName(name:String) : DisplayObject
      {
         return owner.rawChildren_getChildByName(name);
      }
      
      public function removeChildAt(index:int) : DisplayObject
      {
         return owner.rawChildren_removeChildAt(index);
      }
      
      public function get numChildren() : int
      {
         return owner.$numChildren;
      }
      
      public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         return owner.rawChildren_addChildAt(child,index);
      }
      
      public function getObjectsUnderPoint(point:Point) : Array
      {
         return owner.rawChildren_getObjectsUnderPoint(point);
      }
      
      public function contains(child:DisplayObject) : Boolean
      {
         return owner.rawChildren_contains(child);
      }
      
      public function removeChild(child:DisplayObject) : DisplayObject
      {
         return owner.rawChildren_removeChild(child);
      }
      
      public function getChildAt(index:int) : DisplayObject
      {
         return owner.rawChildren_getChildAt(index);
      }
   }
}
