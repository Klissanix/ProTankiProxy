package protanki.launcher.controls.selector.flagbutton
{
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.selector.LocaleSelectionEvent;
   
   public class FlagButton extends Sprite
   {
      
      public var locale:Locale;
      
      private var _selectorItem:Boolean = false;
      
      public function FlagButton(param1:BitmapData, param2:Locale)
      {
         super();
         this.locale = param2;
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.clear();
         _loc3_.graphics.beginBitmapFill(param1);
         _loc3_.graphics.drawRect(0,0,param1.width,param1.height);
         _loc3_.graphics.endFill();
         addChild(_loc3_);
         addEventListener(MouseEvent.CLICK,this.click);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.redraw(false);
      }
      
      public function redraw(param1:Boolean) : void
      {
         graphics.clear();
         if(this.selectorItem)
         {
            return;
         }
         graphics.beginFill(0,0);
         graphics.drawRect(-8,-5,66,26);
         graphics.endFill();
         if(param1)
         {
            graphics.beginFill(0,0.4);
            graphics.drawRect(-8,-5,66,26);
            graphics.endFill();
         }
      }
      
      public function set selectorItem(param1:Boolean) : void
      {
         this._selectorItem = param1;
      }
      
      public function get selectorItem() : Boolean
      {
         return this._selectorItem;
      }
      
      private function click(param1:MouseEvent) : void
      {
         var _loc2_:LocaleSelectionEvent = new LocaleSelectionEvent(LocaleSelectionEvent.SELECTION,true,false);
         _loc2_.locale = this.locale;
         dispatchEvent(_loc2_);
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(!this.selectorItem)
         {
            Mouse.cursor = MouseCursor.BUTTON;
         }
         this.redraw(true);
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
         this.redraw(false);
      }
   }
}

