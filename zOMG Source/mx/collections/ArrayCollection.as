package mx.collections
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.IExternalizable;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ArrayCollection extends ListCollectionView implements IExternalizable
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ArrayCollection(source:Array = null)
      {
         super();
         this.source = source;
      }
      
      public function set source(s:Array) : void
      {
         list = new ArrayList(s);
      }
      
      public function readExternal(input:IDataInput) : void
      {
         if(list is IExternalizable)
         {
            IExternalizable(list).readExternal(input);
         }
         else
         {
            source = input.readObject() as Array;
         }
      }
      
      public function writeExternal(output:IDataOutput) : void
      {
         if(list is IExternalizable)
         {
            IExternalizable(list).writeExternal(output);
         }
         else
         {
            output.writeObject(source);
         }
      }
      
      [Bindable("listChanged")]
      public function get source() : Array
      {
         if(list && list is ArrayList)
         {
            return ArrayList(list).source;
         }
         return null;
      }
   }
}
