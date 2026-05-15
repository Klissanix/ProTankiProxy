package protanki.launcher.controls.toppanel
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import protanki.launcher.Locale;
   import protanki.launcher.controls.LocalizedControl;
   
   public class TopPanel extends LocalizedControl
   {
      
      private static var topLine:Class = TopPanel_topLine;
      
      public static var topLineData:BitmapData = (new topLine() as Bitmap).bitmapData;
      
      public function TopPanel()
      {
         super();
         addChild(new TopPanelButton(TopPanelButton.GAME));
         addChild(new TopPanelButton(TopPanelButton.WIKI));
         addChild(new TopPanelButton(TopPanelButton.RATINGS));
      }
      
      override protected function onResize(param1:Event) : void
      {
         graphics.clear();
         graphics.beginBitmapFill(topLineData);
         graphics.drawRect(-1000,0,3000,topLineData.height);
         graphics.endFill();
      }
      
      override public function switchLocale(param1:Locale) : void
      {
         var _loc4_:DisplayObject = null;
         var _loc2_:int = 20;
         var _loc3_:int = 0;
         while(_loc3_ < numChildren)
         {
            _loc4_ = getChildAt(_loc3_);
            if(_loc4_ is LocalizedControl)
            {
               (_loc4_ as LocalizedControl).switchLocale(param1);
               if(_loc4_ is TopPanelButton)
               {
                  _loc4_.x = _loc2_;
                  _loc2_ += (_loc4_ as TopPanelButton).BUTTON_WIDTH;
               }
            }
            _loc3_++;
         }
      }
      
      public function addAlignRight(param1:LocalizedControl) : void
      {
         addChild(param1);
         param1.x = stage.stageWidth - param1.width - 10;
      }
   }
}

