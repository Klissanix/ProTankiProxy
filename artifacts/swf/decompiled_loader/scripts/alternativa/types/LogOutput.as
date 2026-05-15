package alternativa.types
{
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class LogOutput extends TextField
   {
      
      public function LogOutput()
      {
         super();
         defaultTextFormat = new TextFormat("Tahoma",11,16777215);
         multiline = true;
         wordWrap = true;
         addEventListener("addedToStage",this.onAddedToStage);
         addEventListener("removedFromStage",this.onEventRemovedFromStage);
      }
      
      public function addLine(param1:String) : void
      {
         appendText(param1 + "\n");
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         stage.addEventListener("resize",this.onStageResize);
         this.onStageResize(null);
      }
      
      private function onEventRemovedFromStage(param1:Event) : void
      {
         stage.removeEventListener("resize",this.onStageResize);
      }
      
      private function onStageResize(param1:Event) : void
      {
         width = stage.stageWidth;
         height = stage.stageHeight;
      }
   }
}

