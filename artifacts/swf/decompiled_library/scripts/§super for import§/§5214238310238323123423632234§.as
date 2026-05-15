package §super for import§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class §5214238310238323123423632234§ extends DiscreteSprite
   {
      
      private static const §5214238826238839123423632234§:Class = §e3d2079_png$2b0e8c3e9918b4ba5236b7fb5c603d21-528568033§;
      
      private static var §521423133122313325123423632234§:BitmapData = new §5214238826238839123423632234§().bitmapData;
      
      public function §5214238310238323123423632234§()
      {
         super();
         this.tabEnabled = this.tabChildren = false;
         this.buttonMode = this.useHandCursor = true;
         addChild(new Bitmap(§521423133122313325123423632234§));
      }
   }
}

