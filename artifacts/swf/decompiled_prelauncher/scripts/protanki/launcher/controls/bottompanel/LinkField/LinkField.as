package protanki.launcher.controls.bottompanel.LinkField
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import protanki.launcher.Locale;
   import protanki.launcher.makeup.MakeUp;
   
   public class LinkField extends TextField
   {
      
      public static const ABOUT:String = "aboutCompany";
      
      public static const TECHSUPPORT:String = "techSupport";
      
      public static const EMAIL:String = "email";
      
      public static const RULES:String = "rules";
      
      public static const CONFIDENT:String = "confidentialityPolicy";
      
      public static const LICENSE:String = "license";
      
      private const TEXT_COLOR:uint = 16777215;
      
      private var textFormat:TextFormat = new TextFormat();
      
      private var link:String;
      
      private var fieldType:String;
      
      public function LinkField(param1:String, param2:Locale = null)
      {
         super();
         var _loc3_:Locale = param2 == null ? Locale.current : param2;
         if(_loc3_[param1] == null)
         {
            return;
         }
         this.textFormat.font = MakeUp.getFont(_loc3_);
         this.textFormat.size = 13;
         this.fieldType = param1;
         autoSize = TextFieldAutoSize.LEFT;
         selectable = false;
         textColor = this.TEXT_COLOR;
         embedFonts = true;
         if(_loc3_[param1].link != "")
         {
            this.textFormat.underline = true;
            this.link = _loc3_[param1].link;
            addEventListener(MouseEvent.CLICK,this.onMouseClick);
            addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
            addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
         defaultTextFormat = this.textFormat;
         text = _loc3_[param1].text;
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.BUTTON;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(this.link));
      }
   }
}

