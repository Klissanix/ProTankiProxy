package alternativa.osgi.service.locale
{
   import flash.display.BitmapData;
   
   public interface ILocaleService
   {
      
      function getInt(param1:String) : int;
      
      function getImage(param1:String) : BitmapData;
      
      function getText(param1:String, ... rest) : String;
      
      function setNumber(param1:String, param2:Number) : void;
      
      function setText(param1:String, param2:String) : void;
      
      function get language() : String;
      
      function setImage(param1:String, param2:BitmapData) : void;
      
      function get defaultLanguage() : String;
      
      function setBoolean(param1:String, param2:Boolean) : void;
      
      function setInt(param1:String, param2:int) : void;
      
      function getBoolean(param1:String) : Boolean;
      
      function getNumber(param1:String) : Number;
   }
}

