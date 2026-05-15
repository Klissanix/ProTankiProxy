package projects.tanks.clients.fp10.TanksLauncher.background
{
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.events.Event;
   
   public class Background extends Shape
   {
      
      private static const tileClass:Class = §tile_jpg$1a3e56375fb82c3c6ef7b16223ffefdc-684333377§;
      
      private static const tileBitmapData:BitmapData = new tileClass().bitmapData;
      
      public function Background()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener("addedToStage",this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener("addedToStage",this.onAddedToStage);
         stage.addEventListener("resize",this.onResize);
         addEventListener("removedFromStage",this.onRemoveFromStage);
         this.redrawBackground();
      }
      
      private function onRemoveFromStage(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.onRemoveFromStage);
         stage.removeEventListener("resize",this.onResize);
      }
      
      private function onResize(param1:Event) : void
      {
         this.redrawBackground();
      }
      
      private function redrawBackground() : void
      {
         this.graphics.clear();
         this.graphics.beginBitmapFill(tileBitmapData);
         this.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
      }
   }
}

