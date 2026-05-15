package alternativa.startup
{
   import flash.display.Sprite;
   import flash.system.Capabilities;
   
   public class StartupSettings
   {
      
      public static var §5214237825237838123423632234§:Sprite;
      
      public function StartupSettings()
      {
         super();
      }
      
      public static function closeApplication() : void
      {
         if(§5214237825237838123423632234§ != null)
         {
            §5214237825237838123423632234§["closeLauncher"]();
         }
      }
      
      public static function get isDesktop() : Boolean
      {
         return Capabilities.playerType == "Desktop" || Capabilities.playerType == "External";
      }
      
      public static function isUserFromTutorial() : Boolean
      {
         if(§5214237825237838123423632234§ != null)
         {
            return §5214237825237838123423632234§["isUserFromTutorial"]();
         }
         return false;
      }
   }
}

