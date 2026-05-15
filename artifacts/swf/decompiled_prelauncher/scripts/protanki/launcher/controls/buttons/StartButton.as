package protanki.launcher.controls.buttons
{
   import flash.events.Event;
   import protanki.launcher.Locale;
   import protanki.launcher.makeup.MakeUp;
   
   public class StartButton extends Button
   {
      
      private static var buttonGreen:Class = StartButton_buttonGreen;
      
      private static var buttonGreenOver:Class = StartButton_buttonGreenOver;
      
      public function StartButton(param1:Function)
      {
         super(param1,new buttonGreen(),new buttonGreenOver());
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
      
      private function addedToStage(param1:Event) : void
      {
         textField.textColor = 12385769;
      }
      
      override public function switchLocale(param1:Locale) : void
      {
         textField.defaultTextFormat.font = MakeUp.getFont(param1);
         textField.text = param1.playText;
         textFieldToCenter();
      }
      
      override protected function onResize(param1:Event) : void
      {
         x = stage.stageWidth >> 1;
         y = (stage.stageHeight >> 1) + 80;
      }
   }
}

