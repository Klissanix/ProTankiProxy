package protanki.launcher.makeup
{
   import flash.display.Bitmap;
   import flash.geom.ColorTransform;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.toppanel.TopPanelButton;
   
   public class MakeUp
   {
      
      public static const ICON_COLOR_TRANSFORM:ColorTransform = new ColorTransform(0,0,0,1,147,239,199,0);
      
      private static var myriadProBoldFont:Class = MakeUp_myriadProBoldFont;
      
      private static var gameIconMakeUp:Class = MakeUp_gameIconMakeUp;
      
      private static var materialsIconMakeUp:Class = MakeUp_materialsIconMakeUp;
      
      private static var tournamentsIconMakeUp:Class = MakeUp_tournamentsIconMakeUp;
      
      private static var forumIconMakeUp:Class = MakeUp_forumIconMakeUp;
      
      private static var wikiIconMakeUp:Class = MakeUp_wikiIconMakeUp;
      
      private static var ratingsIconMakeUp:Class = MakeUp_ratingsIconMakeUp;
      
      private static var helpIconMakeUp:Class = MakeUp_helpIconMakeUp;
      
      public function MakeUp()
      {
         super();
      }
      
      public static function getIconMakeUp(param1:String) : Bitmap
      {
         switch(param1)
         {
            case TopPanelButton.GAME:
               return new gameIconMakeUp();
            case TopPanelButton.MATERIALS:
               return new materialsIconMakeUp();
            case TopPanelButton.TOURNAMENTS:
               return new tournamentsIconMakeUp();
            case TopPanelButton.FORUM:
               return new forumIconMakeUp();
            case TopPanelButton.WIKI:
               return new wikiIconMakeUp();
            case TopPanelButton.RATINGS:
               return new ratingsIconMakeUp();
            case TopPanelButton.HELP:
               return new helpIconMakeUp();
            default:
               return null;
         }
      }
      
      public static function getActiveIconMakeUp(param1:String) : Bitmap
      {
         var _loc2_:Bitmap = getIconMakeUp(param1);
         _loc2_.transform.colorTransform = ICON_COLOR_TRANSFORM;
         return _loc2_;
      }
      
      public static function getFont(param1:Locale) : String
      {
         return "Embedded Myriad Pro Bold";
      }
   }
}

