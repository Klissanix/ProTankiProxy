package
{
   public class LocalizedTexts
   {
      
      public static const LOCALE_RU:String = "ru";
      
      public static const LOCALE_EN:String = "en";
      
      private static var _NEW_VERSION_AVAILABLE:String;
      
      private static var _CONNECTION_ERROR:String;
      
      public function LocalizedTexts()
      {
         super();
      }
      
      public static function setLocale(param1:String) : void
      {
         switch(param1)
         {
            case "ru":
               setLocaleRU();
               break;
            case "en":
               setLocaleEN();
               break;
            default:
               setLocaleRU();
         }
      }
      
      private static function setLocaleRU() : void
      {
         _NEW_VERSION_AVAILABLE = "Доступна новая версия: %VERSION%\nТекущая версия: %CURRENT_VERSION%\nПожалуйста, скачайте новую версию с https://protanki-game.com";
         _CONNECTION_ERROR = "Ошибка подключения! Проверьте доступ к сети интернет.";
      }
      
      private static function setLocaleEN() : void
      {
         _NEW_VERSION_AVAILABLE = "New version available: %VERSION%\nCurrent version: %CURRENT_VERSION%\nPlease visit: https://protanki-game.com";
         _CONNECTION_ERROR = "Connection error! Please check your internet connection.";
      }
      
      public static function NEW_VERSION_AVAILABLE(param1:String, param2:String) : String
      {
         return _NEW_VERSION_AVAILABLE.replace("%VERSION%",param1).replace("%CURRENT_VERSION%",param2);
      }
      
      public static function get CONNECTION_ERROR() : String
      {
         return _CONNECTION_ERROR;
      }
   }
}

