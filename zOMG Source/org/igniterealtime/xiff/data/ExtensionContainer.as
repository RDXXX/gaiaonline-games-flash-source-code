package org.igniterealtime.xiff.data
{
   public class ExtensionContainer implements IExtendable
   {
       
      
      public var _exts:Object;
      
      public function ExtensionContainer()
      {
         _exts = {};
         super();
      }
      
      public function removeAllExtensions(ns:String) : void
      {
         var i:* = null;
         for(i in _exts[ns])
         {
            removeExtension(_exts[ns][i]);
         }
         _exts[ns] = [];
      }
      
      public function getAllExtensionsByNS(ns:String) : Array
      {
         return _exts[ns];
      }
      
      public function getExtension(name:String) : Extension
      {
         return getAllExtensions().filter(function(obj:IExtension, idx:int, arr:Array):Boolean
         {
            return obj.getElementName() == name;
         })[0];
      }
      
      public function removeExtension(ext:IExtension) : Boolean
      {
         var i:* = null;
         var extensions:Object = _exts[ext.getNS()];
         for(i in extensions)
         {
            if(extensions[i] === ext)
            {
               extensions[i].remove();
               extensions.splice(parseInt(i),1);
               return true;
            }
         }
         return false;
      }
      
      public function addExtension(ext:IExtension) : IExtension
      {
         if(_exts[ext.getNS()] == null)
         {
            _exts[ext.getNS()] = [];
         }
         _exts[ext.getNS()].push(ext);
         return ext;
      }
      
      public function getAllExtensions() : Array
      {
         var ns:* = null;
         var exts:Array = [];
         for(ns in _exts)
         {
            exts = exts.concat(_exts[ns]);
         }
         return exts;
      }
   }
}
