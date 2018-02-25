package mx.core
{
   use namespace mx_internal;
   
   public class ComponentDescriptor
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public var events:Object;
      
      public var type:Class;
      
      public var document:Object;
      
      private var _properties:Object;
      
      public var propertiesFactory:Function;
      
      public var id:String;
      
      public function ComponentDescriptor(descriptorProperties:Object)
      {
         var p:* = null;
         super();
         for(p in descriptorProperties)
         {
            this[p] = descriptorProperties[p];
         }
      }
      
      public function toString() : String
      {
         return "ComponentDescriptor_" + id;
      }
      
      public function invalidateProperties() : void
      {
         _properties = null;
      }
      
      public function get properties() : Object
      {
         var cd:Array = null;
         var n:int = 0;
         var i:int = 0;
         if(_properties)
         {
            return _properties;
         }
         if(propertiesFactory != null)
         {
            _properties = propertiesFactory.call(document);
         }
         if(_properties)
         {
            cd = _properties.childDescriptors;
            if(cd)
            {
               n = cd.length;
               for(i = 0; i < n; i++)
               {
                  cd[i].document = document;
               }
            }
         }
         else
         {
            _properties = {};
         }
         return _properties;
      }
   }
}
