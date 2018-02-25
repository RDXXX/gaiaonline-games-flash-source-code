package it.gotoandplay.smartfoxserver.data
{
   public class User
   {
       
      
      private var isSpec:Boolean;
      
      private var pId:int;
      
      private var name:String;
      
      private var variables:Array;
      
      private var isMod:Boolean;
      
      private var id:int;
      
      public function User(id:int, name:String)
      {
         super();
         this.id = id;
         this.name = name;
         this.variables = [];
         this.isSpec = false;
         this.isMod = false;
      }
      
      public function getName() : String
      {
         return this.name;
      }
      
      public function clearVariables() : void
      {
         this.variables = [];
      }
      
      public function getVariables() : Array
      {
         return this.variables;
      }
      
      public function setModerator(b:Boolean) : void
      {
         this.isMod = b;
      }
      
      public function isSpectator() : Boolean
      {
         return this.isSpec;
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function isModerator() : Boolean
      {
         return this.isMod;
      }
      
      public function setVariables(o:Object) : void
      {
         var key:* = null;
         var v:* = undefined;
         for(key in o)
         {
            v = o[key];
            if(v != null)
            {
               this.variables[key] = v;
            }
            else
            {
               delete this.variables[key];
            }
         }
      }
      
      public function getVariable(varName:String) : *
      {
         return this.variables[varName];
      }
      
      public function setIsSpectator(b:Boolean) : void
      {
         this.isSpec = b;
      }
      
      public function setPlayerId(pid:int) : void
      {
         this.pId = pid;
      }
      
      public function getPlayerId() : int
      {
         return this.pId;
      }
   }
}
