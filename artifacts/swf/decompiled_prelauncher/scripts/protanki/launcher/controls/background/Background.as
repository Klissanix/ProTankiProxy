package protanki.launcher.controls.background
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import protanki.launcher.effects.VHSEffect;
   
   public class Background extends Sprite
   {
      
      private static var background:Class = Background_background;
      
      private var useVhsEffect:Boolean = false;
      
      public function Background(param1:Boolean = false)
      {
         super();
         this.useVhsEffect = param1;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
      
      private function addedToStage(param1:Event) : void
      {
         var _loc3_:VHSEffect = null;
         var _loc2_:Bitmap = new background() as Bitmap;
         _loc2_.scaleX = stage.stageWidth / _loc2_.width;
         _loc2_.scaleY = _loc2_.scaleX;
         addChild(_loc2_);
         if(this.useVhsEffect)
         {
            _loc3_ = new VHSEffect(stage.stageWidth,stage.stageHeight);
            addChild(_loc3_);
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
      }
      
      private function removedFromStage(param1:Event) : void
      {
         removeEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
   }
}

