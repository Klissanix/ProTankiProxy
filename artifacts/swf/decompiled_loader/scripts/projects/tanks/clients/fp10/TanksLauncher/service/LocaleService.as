package projects.tanks.clients.fp10.TanksLauncher.service
{
   import projects.tanks.clients.tankslauncershared.service.Locale;
   
   public class LocaleService
   {
      
      private static var _currentLocale:String = "EN";
      
      public function LocaleService()
      {
         super();
      }
      
      public static function get anotherGameServerUrl() : String
      {
         return "http://protanki-game.com/" + currentLocale.toLowerCase();
      }
      
      public static function get currentLocale() : String
      {
         return _currentLocale;
      }
      
      public static function updateCurrentLocale(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(Locale.LOCALES.indexOf(param1) != -1)
            {
               _currentLocale = Locale.LOCALES[Locale.LOCALES.indexOf(param1)];
            }
         }
      }
   }
}

