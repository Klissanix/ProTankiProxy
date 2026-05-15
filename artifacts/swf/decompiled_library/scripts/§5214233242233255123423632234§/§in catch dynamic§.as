package §5214233242233255123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.events.Event;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §in catch dynamic§ extends DiscreteSprite
   {
      
      private static const §continue catch extends§:Number = 120;
      
      private static const §return switch if§:Number = 100;
      
      private var §5214233309233322123423632234§:Bitmap;
      
      private var §continue catch use§:§5214231141231154123423632234§;
      
      private var §default switch native§:§5214231141231154123423632234§;
      
      private var §break catch override§:String;
      
      public function §in catch dynamic§(param1:Bitmap, param2:String, param3:String)
      {
         super();
         this.§5214233309233322123423632234§ = param1;
         this.§continue catch use§ = new §5214231141231154123423632234§();
         this.§continue catch use§.align = "center";
         this.§continue catch use§.wordWrap = true;
         this.§continue catch use§.multiline = true;
         this.§default switch native§ = new §5214231141231154123423632234§();
         this.§default switch native§.§521423102842310297123423632234§ = 16;
         this.§default switch native§.bold = true;
         this.§5214233309233322123423632234§.x = 120 - this.§5214233309233322123423632234§.bitmapData.width >> 1;
         this.§5214233309233322123423632234§.y = 100 - this.§5214233309233322123423632234§.bitmapData.height >> 1;
         this.§continue catch use§.text = param2;
         this.§continue catch use§.width = 120;
         this.§continue catch use§.y = 5;
         this.§break var const§(param3);
         var _loc4_:Shape = new Shape();
         _loc4_.graphics.beginFill(676609,1);
         _loc4_.graphics.lineStyle(1,5177127,1);
         _loc4_.graphics.drawRoundRect(0.5,0.5,120,100,6,6);
         _loc4_.graphics.endFill();
         addChild(_loc4_);
         addChild(this.§5214233309233322123423632234§);
         addChild(this.§continue catch use§);
         addChild(this.§default switch native§);
         addEventListener("addedToStage",this.§each var case§);
      }
      
      private function §5214232111232124123423632234§(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.§5214232111232124123423632234§);
         stage.quality = this.§break catch override§;
      }
      
      private function §each var case§(param1:Event) : void
      {
         removeEventListener("addedToStage",this.§each var case§);
         this.§break catch override§ = stage.quality;
         stage.quality = "medium";
         addEventListener("removedFromStage",this.§5214232111232124123423632234§);
      }
      
      public function §break var const§(param1:String) : void
      {
         this.§default switch native§.text = param1;
         this.§default switch native§.x = 120 - this.§default switch native§.width >> 1;
         this.§default switch native§.y = 100 - 5 - this.§default switch native§.height;
      }
   }
}

