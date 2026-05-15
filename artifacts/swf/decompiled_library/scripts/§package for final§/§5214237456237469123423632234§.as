package §package for final§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class §5214237456237469123423632234§ extends §5214236714236727123423632234§
   {
      
      private static var §5214239089239102123423632234§:Class = §c4d7a5e_png$9f224b067d4b5b345f45fa1191c2bd7b-241980096§;
      
      public static var §5214231317231330123423632234§:BitmapData = Bitmap(new §5214239089239102123423632234§()).bitmapData;
      
      private var §if for while§:Bitmap;
      
      public function §5214237456237469123423632234§()
      {
         super();
      }
      
      override public function set locked(param1:Boolean) : void
      {
         super.locked = param1;
         if(param1)
         {
            this.§if for while§.x = 0;
            this.§if for while§.visible = false;
         }
         else
         {
            this.§if for while§.x = §521423139392313952123423632234§.width + 4;
            this.§if for while§.visible = true;
         }
      }
      
      override protected function init() : void
      {
         this.§if for while§ = new Bitmap(§5214231317231330123423632234§);
         addChild(this.§if for while§);
         this.§if for while§.y = 4;
         super.init();
      }
      
      override public function get width() : Number
      {
         var _loc1_:Number = NaN;
         if(locked)
         {
            _loc1_ = §521423139392313952123423632234§.width;
         }
         else
         {
            _loc1_ = this.§if for while§.x + this.§if for while§.width + 1;
         }
         return _loc1_;
      }
   }
}

