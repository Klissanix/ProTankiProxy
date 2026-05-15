package §switch set for§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import flash.display.Bitmap;
   
   public class §try const implements§ extends DiscreteSprite
   {
      
      private var §5214231947231960123423632234§:Bitmap;
      
      private var §521423112522311265123423632234§:Bitmap;
      
      private var §5214238901238914123423632234§:Bitmap;
      
      public function §try const implements§(param1:§import var extends§)
      {
         super();
         this.§5214231947231960123423632234§ = new Bitmap(param1.§5214231947231960123423632234§);
         this.§521423112522311265123423632234§ = new Bitmap(param1.§521423112522311265123423632234§);
         this.§5214238901238914123423632234§ = new Bitmap(param1.§5214238901238914123423632234§);
         this.§default switch switch§(param1);
         addChild(this.§5214231947231960123423632234§);
         addChild(this.§5214238901238914123423632234§);
         addChild(this.§521423112522311265123423632234§);
         mouseEnabled = false;
      }
      
      private function align(param1:int) : void
      {
         this.§521423112522311265123423632234§.x = this.§5214231947231960123423632234§.width;
         this.§5214238901238914123423632234§.x = param1 - this.§5214238901238914123423632234§.width;
         this.§521423112522311265123423632234§.width = param1 - this.§5214231947231960123423632234§.width - this.§5214238901238914123423632234§.width;
      }
      
      public function §default switch switch§(param1:§import var extends§) : void
      {
         this.§5214231947231960123423632234§.bitmapData = param1.§5214231947231960123423632234§;
         this.§521423112522311265123423632234§.bitmapData = param1.§521423112522311265123423632234§;
         this.§5214238901238914123423632234§.bitmapData = param1.§5214238901238914123423632234§;
         this.align(width);
      }
      
      override public function set width(param1:Number) : void
      {
         param1 = int(param1);
         this.align(param1);
         super.width = param1;
      }
   }
}

