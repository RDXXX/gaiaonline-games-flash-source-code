package qs.utils
{
   public class DLinkedListNode
   {
       
      
      public var value;
      
      public var prev:DLinkedListNode;
      
      public var next:DLinkedListNode;
      
      public function DLinkedListNode(value:* = null)
      {
         super();
         this.value = value;
      }
   }
}
