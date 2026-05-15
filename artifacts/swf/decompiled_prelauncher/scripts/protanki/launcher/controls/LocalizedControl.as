package protanki.launcher.controls
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import protanki.launcher.Locale;
   
   public class LocalizedControl extends Sprite
   {
      
      public function LocalizedControl()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
      
      private function addedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
         addEventListener(Event.RESIZE,this.onResize);
         this.onResize(null);
      }
      
      private function removedFromStage(param1:Event) : void
      {
         removeEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
         removeEventListener(Event.RESIZE,this.onResize);
      }
      
      protected function onResize(param1:Event) : void
      {
      }
      
      public function switchLocale(param1:Locale) : void
      {
      }
      
      protected function addChildToCenter(param1:DisplayObject) : void
      {
         addChild(param1);
         param1.x = -param1.width >> 1;
         param1.y = -param1.height >> 1;
      }
   }
}

