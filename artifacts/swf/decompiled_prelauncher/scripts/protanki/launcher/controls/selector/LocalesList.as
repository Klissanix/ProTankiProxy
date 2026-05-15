package protanki.launcher.controls.selector
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import protanki.launcher.Locale;
   import protanki.launcher.LocalesFactory;
   import protanki.launcher.controls.selector.flagbutton.FlagButton;
   import protanki.launcher.locales.Locales;
   
   public class LocalesList extends Sprite
   {
      
      private static var flagsPng:Class = LocalesList_flagsPng;
      
      private static var flagsBitmapData:BitmapData = (new flagsPng() as Bitmap).bitmapData;
      
      private static var panel:Class = LocalesList_panel;
      
      private static var panelData:BitmapData = (new panel() as Bitmap).bitmapData;
      
      public var flags:Vector.<FlagButton> = new Vector.<FlagButton>();
      
      private var _panel:Shape;
      
      public function LocalesList()
      {
         super();
         y = panelData.height + 30;
         x = 4;
         this._panel = new Shape();
         this.drawPanel();
         this.createFlags();
         addEventListener(LocaleSelectionEvent.SELECTION,this.localeSelected);
      }
      
      private function drawPanel() : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc1_:Rectangle = new Rectangle(9,9,1,1);
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
         this._panel.scaleX = 70 / panelData.width;
         this._panel.scaleY = (Locales.list.length - 1) * 30 / panelData.height;
      }
      
      public function createFlags() : void
      {
         var _loc3_:Point = null;
         var _loc4_:BitmapData = null;
         var _loc5_:FlagButton = null;
         var _loc1_:Array = Locales.list;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = new Point(flagsBitmapData.width / _loc1_.length,flagsBitmapData.height);
            _loc4_ = new BitmapData(_loc3_.x,_loc3_.y);
            _loc4_.copyPixels(flagsBitmapData,new Rectangle(_loc3_.x * _loc2_,0,_loc3_.x,_loc3_.y),new Point(0,0));
            _loc5_ = new FlagButton(_loc4_,LocalesFactory.getLocale(_loc1_[_loc2_]));
            this.flags.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function addFlags() : void
      {
         var _loc3_:FlagButton = null;
         addChild(this._panel);
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.flags.length)
         {
            _loc3_ = this.flags[_loc2_];
            if(_loc3_.locale != Locale.current)
            {
               _loc3_.x = 10;
               _loc3_.y = 26 * _loc1_ + 11;
               _loc3_.selectorItem = false;
               _loc3_.redraw(false);
               addChild(_loc3_);
               _loc1_++;
            }
            _loc2_++;
         }
      }
      
      private function localeSelected(param1:LocaleSelectionEvent) : void
      {
         removeChildren();
      }
   }
}

