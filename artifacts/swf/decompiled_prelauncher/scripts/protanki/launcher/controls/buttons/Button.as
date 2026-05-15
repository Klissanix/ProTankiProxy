package protanki.launcher.controls.buttons
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.LocalizedControl;
   import protanki.launcher.makeup.MakeUp;
   
   public class Button extends LocalizedControl
   {
      
      private var onClick:Function;
      
      protected var textField:TextField = new TextField();
      
      private var button:DisplayObject;
      
      private var overButton:DisplayObject;
      
      public function Button(param1:Function, param2:DisplayObject, param3:DisplayObject)
      {
         super();
         this.onClick = param1;
         this.button = param2;
         this.overButton = param3;
         scaleX = scaleY = 0.71;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
      
      private function addedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.size = 32;
         _loc2_.bold = true;
         _loc2_.font = MakeUp.getFont(Locale.current);
         this.textField.embedFonts = true;
         this.textField.defaultTextFormat = _loc2_;
         this.textField.autoSize = TextFieldAutoSize.CENTER;
         this.textField.wordWrap = false;
         this.textField.multiline = false;
         this.textField.selectable = false;
         addChildToCenter(this.button);
         addChildToCenter(this.overButton);
         this.overButton.visible = false;
         addChild(this.textField);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         addEventListener(MouseEvent.CLICK,this.onMouseClick);
      }
      
      private function removedFromStage(param1:Event) : void
      {
         removeEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
      
      protected function textFieldToCenter() : void
      {
         var _loc1_:TextLineMetrics = this.textField.getLineMetrics(0);
         this.textField.x = -_loc1_.width >> 1;
         this.textField.y = (-_loc1_.height >> 1) - 4;
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.BUTTON;
         this.button.visible = false;
         this.overButton.visible = true;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
         this.button.visible = true;
         this.overButton.visible = false;
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this.button.visible = true;
         this.overButton.visible = false;
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.button.visible = false;
         this.overButton.visible = true;
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         this.onClick.call(this,param1);
      }
   }
}

