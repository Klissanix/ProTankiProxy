package protanki.launcher.controls.bottompanel
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.LocalizedControl;
   import protanki.launcher.controls.bottompanel.LinkField.LinkField;
   import protanki.launcher.controls.bottompanel.PartnerLogo.PartnerLogo;
   
   public class BottomPanel extends LocalizedControl
   {
      
      private static var bottomLine:Class = BottomPanel_bottomLine;
      
      public static var bottomLineData:BitmapData = (new bottomLine() as Bitmap).bitmapData;
      
      public static var bottomPanelHeight:int = 75;
      
      private static var panel:Shape = new Shape();
      
      private const rectangle:Rectangle = new Rectangle(9,9,1,1);
      
      public function BottomPanel()
      {
         super();
      }
      
      public function createLines(param1:Locale) : void
      {
         this.addPartners(param1);
      }
      
      private function addPartners(param1:Locale) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:PartnerLogo = null;
         var _loc2_:Number = 40;
         _loc3_ = 30;
         _loc4_ = 10;
         var _loc5_:* = int(param1.partners.length / 2);
         while(_loc5_ >= 0)
         {
            _loc6_ = param1.partners[_loc5_ * 2];
            _loc7_ = param1.partners[_loc5_ * 2 + 1];
            _loc8_ = new PartnerLogo(_loc6_,_loc7_);
            _loc8_.x = stage.stageWidth - _loc2_;
            _loc8_.y = _loc3_;
            addChild(_loc8_);
            _loc2_ += _loc4_ + _loc8_.actualWidth;
            _loc5_--;
         }
      }
      
      override protected function onResize(param1:Event) : void
      {
         x = 5;
         y = stage.stageHeight - bottomPanelHeight;
         panel.scaleX = (stage.stageWidth - 10) / panel.width;
         panel.scaleY = bottomPanelHeight / panel.height + 2;
         if(panel.parent == null)
         {
            addChild(panel);
         }
      }
      
      private function redrawPanel() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc1_:Array = [this.rectangle.left,this.rectangle.right,bottomLineData.width];
         var _loc2_:Array = [this.rectangle.top,this.rectangle.bottom,bottomLineData.height];
         panel.graphics.clear();
         var _loc3_:Number = 0;
         var _loc4_:int = 0;
         while(_loc4_ < 3)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            while(_loc6_ < 3)
            {
               panel.graphics.beginBitmapFill(bottomLineData);
               panel.graphics.drawRect(_loc3_,_loc5_,_loc1_[_loc4_] - _loc3_,_loc2_[_loc6_] - _loc5_);
               panel.graphics.endFill();
               _loc5_ = Number(_loc2_[_loc6_]);
               _loc6_++;
            }
            _loc3_ = Number(_loc1_[_loc4_]);
            _loc4_++;
         }
         panel.scale9Grid = this.rectangle;
      }
      
      override public function switchLocale(param1:Locale) : void
      {
         removeChildren();
         addChild(panel);
         this.createLines(param1);
      }
      
      private function addText(param1:String, param2:Locale, param3:int, param4:int) : LinkField
      {
         var _loc5_:LinkField = new LinkField(param1,param2);
         _loc5_.x = param3;
         _loc5_.y = param4;
         addChild(_loc5_);
         return _loc5_;
      }
      
      private function addLine(param1:int, param2:int, param3:int, param4:Locale, ... rest) : void
      {
         var _loc7_:String = null;
         var _loc8_:LinkField = null;
         var _loc6_:int = param1;
         for each(_loc7_ in rest)
         {
            _loc8_ = this.addText(_loc7_,param4,_loc6_,param2);
            _loc6_ += _loc8_.getLineMetrics(0).width + param3;
         }
      }
   }
}

