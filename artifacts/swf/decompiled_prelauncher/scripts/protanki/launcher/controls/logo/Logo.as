package protanki.launcher.controls.logo
{
   import flash.events.Event;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.LocalizedControl;
   
   public class Logo extends LocalizedControl
   {
      
      private static var logo:Class = Logo_logo;
      
      public function Logo()
      {
         super();
      }
      
      override public function switchLocale(param1:Locale) : void
      {
         removeChildren();
         addChildToCenter(new logo());
      }
      
      override protected function onResize(param1:Event) : void
      {
         x = stage.stageWidth >> 1;
         y = stage.stageHeight / 4;
      }
   }
}

