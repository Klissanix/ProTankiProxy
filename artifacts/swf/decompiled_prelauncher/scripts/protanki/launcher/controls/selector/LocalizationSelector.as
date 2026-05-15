package protanki.launcher.controls.selector
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.LocalizedControl;
   import protanki.launcher.controls.selector.flagbutton.FlagButton;
   import protanki.launcher.makeup.MakeUp;
   
   public class LocalizationSelector extends LocalizedControl
   {
      
      private static var panel:Class = LocalizationSelector_panel;
      
      private static var panelData:BitmapData = (new panel() as Bitmap).bitmapData;
      
      private static var drop:Class = LocalizationSelector_drop;
      
      private static var WIDTH:Number = 78;
      
      private static var HEIGHT:Number = 48;
      
      private var _localesList:LocalesList;
      
      private var _flag:FlagButton;
      
      private var _triangle:Bitmap;
      
      private var _triangleOpen:Bitmap;
      
      private var _panel:Shape;
      
      public function LocalizationSelector()
      {
         super();
         this._panel = new Shape();
         this._triangle = new drop();
         this._triangleOpen = new drop();
         this._triangleOpen.transform.colorTransform = MakeUp.ICON_COLOR_TRANSFORM;
         this._triangle.x = 47;
         this._triangle.y = 18;
         this._triangleOpen.x = this._triangle.x;
         this._triangleOpen.y = this._triangle.y;
         this.createEvents();
      }
      
      private function createEvents() : void
      {
         addEventListener(LocaleSelectionEvent.SELECTION,this.addFlag);
         addEventListener(MouseEvent.CLICK,this.click);
         addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
         {
            Mouse.cursor = MouseCursor.BUTTON;
         });
         addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
         {
            Mouse.cursor = MouseCursor.AUTO;
         });
      }
      
      override protected function onResize(param1:Event) : void
      {
         x = stage.stageWidth - WIDTH - 7;
         y = 3;
         this.drawPanel();
         addChild(this._panel);
         addChild(this._triangle);
         this.addFlag();
      }
      
      private function drawPanel() : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc1_:Rectangle = new Rectangle(9,9,26,26);
         var _loc2_:Array = [_loc1_.left,_loc1_.right,panelData.width];
         var _loc3_:Array = [_loc1_.top,_loc1_.bottom,panelData.height];
         this._panel.graphics.clear();
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < 3)
         {
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < 3)
            {
               this._panel.graphics.beginBitmapFill(panelData);
               this._panel.graphics.drawRect(_loc4_,_loc6_,_loc2_[_loc5_] - _loc4_,_loc3_[_loc7_] - _loc6_);
               this._panel.graphics.endFill();
               _loc6_ = Number(_loc3_[_loc7_]);
               _loc7_++;
            }
            _loc4_ = Number(_loc2_[_loc5_]);
            _loc5_++;
         }
         this._panel.scale9Grid = _loc1_;
         this._panel.scaleX = WIDTH / panelData.width;
         this._panel.scaleY = HEIGHT / panelData.height;
      }
      
      public function closeList() : void
      {
         removeChildren();
         addChild(this._panel);
         addChild(this._flag);
         addChild(this._triangle);
      }
      
      private function click(param1:MouseEvent) : void
      {
         if(numChildren > 3)
         {
            this.closeList();
         }
         else
         {
            addChild(this._triangleOpen);
            this.localesList.addFlags();
            addChild(this.localesList);
         }
      }
      
      private function get localesList() : LocalesList
      {
         if(this._localesList == null)
         {
            this._localesList = new LocalesList();
         }
         return this._localesList;
      }
      
      private function addFlag(param1:LocaleSelectionEvent = null) : void
      {
         var _loc2_:FlagButton = null;
         var _loc3_:Locale = null;
         for each(_loc2_ in this.localesList.flags)
         {
            _loc3_ = param1 == null ? Locale.current : param1.locale;
            if(_loc2_.locale == _loc3_)
            {
               this._flag = _loc2_;
               this._flag.x = 14;
               this._flag.y = 15;
               this._flag.selectorItem = true;
               this._flag.redraw(false);
               addChild(_loc2_);
               break;
            }
         }
      }
   }
}

