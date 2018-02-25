package mx.core
{
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   use namespace mx_internal;
   
   public class TextFieldFactory implements ITextFieldFactory
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var instance:ITextFieldFactory;
       
      
      private var textFields:Dictionary;
      
      public function TextFieldFactory()
      {
         textFields = new Dictionary(true);
         super();
      }
      
      public static function getInstance() : ITextFieldFactory
      {
         if(!instance)
         {
            instance = new TextFieldFactory();
         }
         return instance;
      }
      
      public function createTextField(moduleFactory:IFlexModuleFactory) : TextField
      {
         var iter:* = null;
         var textField:TextField = null;
         var textFieldDictionary:Dictionary = textFields[moduleFactory];
         if(textFieldDictionary)
         {
            for(iter in textFieldDictionary)
            {
               textField = TextField(iter);
            }
         }
         if(!textField)
         {
            if(moduleFactory)
            {
               textField = TextField(moduleFactory.create("flash.text.TextField"));
            }
            else
            {
               textField = new TextField();
            }
            if(!textFieldDictionary)
            {
               textFieldDictionary = new Dictionary(true);
            }
            textFieldDictionary[textField] = 1;
            textFields[moduleFactory] = textFieldDictionary;
         }
         return textField;
      }
   }
}
