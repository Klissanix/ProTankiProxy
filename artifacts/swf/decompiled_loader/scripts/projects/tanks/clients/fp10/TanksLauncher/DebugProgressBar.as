package projects.tanks.clients.fp10.TanksLauncher
{
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class DebugProgressBar extends Sprite
   {
      
      private static const WIDTH:int = 300;
      
      private static const HEIGHT:int = 30;
      
      private static const BAR_MARGIN:int = 3;
      
      private static const BGCOLOR:uint = 3355443;
      
      private static const FGCOLOR:uint = 16777215;
      
      public var text:String;
      
      private var textField:TextField;
      
      public function DebugProgressBar()
      {
         super();
         this.textField = new TextField();
         this.textField.defaultTextFormat = new TextFormat("Tahoma",12,16777215);
         this.textField.autoSize = "left";
         this.textField.x = 10;
         this.textField.y = 5;
         this.textField.blendMode = "invert";
         addChild(this.textField);
         this.setProgress(0,1);
      }
      
      public function setProgress(param1:int, param2:int) : void
      {
         var _loc5_:String = param1 + "/" + param2;
         if(this.text)
         {
            this.textField.text = this.text + _loc5_;
         }
         else
         {
            this.textField.text = _loc5_;
         }
         var _loc3_:int = (300 - 2 * 3) * param1 / param2;
         var _loc4_:Graphics = graphics;
         _loc4_.lineStyle(1,16777215);
         _loc4_.beginFill(3355443);
         _loc4_.drawRect(0,0,300 - 1,30 - 1);
         _loc4_.lineStyle();
         _loc4_.beginFill(16777215);
         _loc4_.drawRect(3,3,_loc3_,30 - 3 - 3);
         _loc4_.endFill();
      }
      
      public function align() : void
      {
         x = stage.stageWidth - width >> 1;
      }
   }
}

