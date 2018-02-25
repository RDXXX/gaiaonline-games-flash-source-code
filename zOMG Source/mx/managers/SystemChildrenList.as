package mx.managers
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import mx.core.IChildList;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class SystemChildrenList implements IChildList
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var lowerBoundReference:QName;
      
      private var upperBoundReference:QName;
      
      private var owner:SystemManager;
      
      public function SystemChildrenList(owner:SystemManager, lowerBoundReference:QName, upperBoundReference:QName)
      {
         super();
         this.owner = owner;
         this.lowerBoundReference = lowerBoundReference;
         this.upperBoundReference = upperBoundReference;
      }
      
      public function getChildAt(index:int) : DisplayObject
      {
         var retval:DisplayObject = owner.mx_internal::rawChildren_getChildAt(owner[lowerBoundReference] + index);
         return retval;
      }
      
      public function getChildByName(name:String) : DisplayObject
      {
         return owner.mx_internal::rawChildren_getChildByName(name);
      }
      
      public function removeChildAt(index:int) : DisplayObject
      {
         var child:DisplayObject = owner.mx_internal::rawChildren_removeChildAt(index + owner[lowerBoundReference]);
         owner[upperBoundReference]--;
         return child;
      }
      
      public function getChildIndex(child:DisplayObject) : int
      {
         var retval:int = owner.mx_internal::rawChildren_getChildIndex(child);
         retval = retval - owner[lowerBoundReference];
         return retval;
      }
      
      public function addChildAt(child:DisplayObject, index:int) : DisplayObject
      {
         owner.mx_internal::rawChildren_addChildAt(child,owner[lowerBoundReference] + index);
         owner[upperBoundReference]++;
         return child;
      }
      
      public function getObjectsUnderPoint(point:Point) : Array
      {
         return owner.mx_internal::rawChildren_getObjectsUnderPoint(point);
      }
      
      public function setChildIndex(child:DisplayObject, newIndex:int) : void
      {
         owner.mx_internal::rawChildren_setChildIndex(child,owner[lowerBoundReference] + newIndex);
      }
      
      public function get numChildren() : int
      {
         return owner[upperBoundReference] - owner[lowerBoundReference];
      }
      
      public function contains(child:DisplayObject) : Boolean
      {
         var childIndex:int = 0;
         if(child != owner && owner.mx_internal::rawChildren_contains(child))
         {
            while(child.parent != owner)
            {
               child = child.parent;
            }
            childIndex = owner.mx_internal::rawChildren_getChildIndex(child);
            if(childIndex >= owner[lowerBoundReference] && childIndex < owner[upperBoundReference])
            {
               return true;
            }
         }
         return false;
      }
      
      public function removeChild(child:DisplayObject) : DisplayObject
      {
         var index:int = owner.mx_internal::rawChildren_getChildIndex(child);
         if(owner[lowerBoundReference] <= index && index < owner[upperBoundReference])
         {
            owner.mx_internal::rawChildren_removeChild(child);
            owner[upperBoundReference]--;
         }
         return child;
      }
      
      public function addChild(child:DisplayObject) : DisplayObject
      {
         owner.mx_internal::rawChildren_addChildAt(child,owner[upperBoundReference]);
         owner[upperBoundReference]++;
         return child;
      }
   }
}
