package §521423100862310099123423632234§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §else catch else§ extends Sprite
   {
      
      private static const §5214236190236203123423632234§:Class = §f280f4b_png$0665098e3ff611e65ec4c0ae60b2d6a1-1336925003§;
      
      private static const §521423101852310198123423632234§:Class = §S74g53h_png$f8c34c08454c3539d924160ca58d2946-655417776§;
      
      private static const §if var§:Class = §S81ga95_png$bc83a05089cfa19905dc96ef6a435966-1570515417§;
      
      protected var §get for break§:BitmapData = new §5214236190236203123423632234§().bitmapData;
      
      protected var §521423101222310135123423632234§:BitmapData = new §521423101852310198123423632234§().bitmapData;
      
      protected var §521423107362310749123423632234§:BitmapData = new §if var§().bitmapData;
      
      protected var §5214237851237864123423632234§:int;
      
      public function §else catch else§()
      {
         super();
         buttonMode = true;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      protected function §5214233910233923123423632234§() : void
      {
         var _loc1_:Graphics = this.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§get for break§);
         _loc1_.drawRect(0,0,10,30);
         _loc1_.endFill();
         var _loc2_:Matrix = new Matrix();
         _loc2_.translate(10,0);
         _loc1_.beginBitmapFill(this.§521423101222310135123423632234§,_loc2_);
         _loc1_.drawRect(10,0,this.§5214237851237864123423632234§ - 20,30);
         _loc1_.endFill();
         _loc2_.identity();
         _loc2_.translate(this.§5214237851237864123423632234§ - 10,0);
         _loc1_.beginBitmapFill(this.§521423107362310749123423632234§,_loc2_);
         _loc1_.drawRect(this.§5214237851237864123423632234§ - 10,0,10,30);
         _loc1_.endFill();
      }
   }
}

