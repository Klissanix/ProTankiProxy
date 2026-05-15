package protanki.launcher.controls.toppanel
{
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.text.TextLineMetrics;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.LocalizedControl;
   import protanki.launcher.makeup.MakeUp;
   
   public class TopPanelButton extends LocalizedControl
   {
      
      public static const GAME:String = "game";
      
      public static const MATERIALS:String = "materials";
      
      public static const TOURNAMENTS:String = "tournaments";
      
      public static const FORUM:String = "forum";
      
      public static const WIKI:String = "wiki";
      
      public static const RATINGS:String = "ratings";
      
      public static const HELP:String = "help";
      
      public var BUTTON_WIDTH:int = 125;
      
      private var textField:TextField;
      
      private var type:String;
      
      public function TopPanelButton(param1:String)
      {
         super();
         this.type = param1;
         addEventListener(MouseEvent.MOUSE_OUT,this.mouseOut);
         addEventListener(MouseEvent.MOUSE_OVER,this.mouseOver);
         addEventListener(MouseEvent.CLICK,this.mouseClick);
         this.redraw();
      }
      
      private function redraw() : void
      {
         graphics.clear();
         graphics.lineStyle(0,0,0);
         graphics.beginFill(0,0);
         graphics.drawRect(0,0,this.BUTTON_WIDTH,TopPanel.topLineData.height);
         graphics.endFill();
      }
      
      private function mouseClick(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(Locale.current[this.type].link));
      }
      
      override public function switchLocale(param1:Locale) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         removeChildren();
         if(param1[this.type] == null)
         {
            this.BUTTON_WIDTH = 0;
            return;
         }
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.align = TextFormatAlign.CENTER;
         _loc2_.font = MakeUp.getFont(param1);
         _loc2_.bold = true;
         _loc2_.size = 14;
         _loc3_ = MakeUp.getIconMakeUp(this.type);
         this.verticalCenter(_loc3_);
         _loc4_ = MakeUp.getActiveIconMakeUp(this.type);
         _loc4_.visible = false;
         this.verticalCenter(_loc4_);
         this.textField = new TextField();
         this.textField.autoSize = TextFieldAutoSize.RIGHT;
         this.textField.embedFonts = true;
         this.textField.defaultTextFormat = _loc2_;
         this.textField.selectable = false;
         this.textField.textColor = 16777215;
         this.textField.text = param1[this.type].text;
         var _loc5_:TextLineMetrics = this.textField.getLineMetrics(0);
         this.BUTTON_WIDTH = _loc5_.width + _loc3_.width + 30;
         this.textField.y = 50 - _loc5_.height >> 1;
         this.textField.x = 0;
         this.textField.width = this.BUTTON_WIDTH;
         this.textField.height = TopPanel.topLineData.height;
         _loc3_.x = _loc4_.x = 15;
         addChild(this.textField);
         addChild(_loc3_);
         addChild(_loc4_);
         graphics.clear();
         graphics.lineStyle(0,16711680,0);
         graphics.beginFill(0,0);
         graphics.drawRect(0,0,this.BUTTON_WIDTH,TopPanel.topLineData.height);
         graphics.endFill();
      }
      
      private function mouseOut(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
         if(numChildren > 0)
         {
            this.textField.textColor = 16777215;
            getChildAt(1).visible = true;
            getChildAt(numChildren - 1).visible = false;
         }
      }
      
      private function mouseOver(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.BUTTON;
         if(numChildren > 0)
         {
            this.textField.textColor = MakeUp.ICON_COLOR_TRANSFORM.color;
            getChildAt(1).visible = false;
            getChildAt(numChildren - 1).visible = true;
         }
      }
      
      private function verticalCenter(param1:DisplayObject) : void
      {
         param1.y = 50 - param1.height >> 1;
      }
   }
}

