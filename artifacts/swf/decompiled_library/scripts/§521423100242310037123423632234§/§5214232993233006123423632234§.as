package §521423100242310037123423632234§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §5214232993233006123423632234§ extends Sprite
   {
      
      protected var §return var const§:BitmapData;
      
      protected var §5214232255232268123423632234§:BitmapData;
      
      protected var §5214237851237864123423632234§:int = 10;
      
      protected var §do finally set§:int = 10;
      
      public function §5214232993233006123423632234§()
      {
         super();
      }
      
      override public function get height() : Number
      {
         return this.§do finally set§;
      }
      
      override public function get width() : Number
      {
         return this.§5214237851237864123423632234§;
      }
      
      protected function §5214233910233923123423632234§() : void
      {
         var _loc1_:Graphics = this.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§return var const§);
         _loc1_.drawRect(0,0,4,4);
         _loc1_.endFill();
         var _loc2_:Matrix = new Matrix();
         _loc2_.rotate(3.141592653589793 * 0.5);
         _loc2_.translate(this.§5214237851237864123423632234§ - 4,0);
         _loc1_.beginBitmapFill(this.§return var const§,_loc2_);
         _loc1_.drawRect(this.§5214237851237864123423632234§ - 4,0,4,4);
         _loc1_.endFill();
         _loc2_.identity();
         _loc2_.rotate(3.141592653589793);
         _loc2_.translate(this.§5214237851237864123423632234§ - 4,this.§do finally set§ - 4);
         _loc1_.beginBitmapFill(this.§return var const§,_loc2_);
         _loc1_.drawRect(this.§5214237851237864123423632234§ - 4,this.§do finally set§ - 4,4,4);
         _loc1_.endFill();
         _loc2_.identity();
         _loc2_.rotate(3.141592653589793 * 1.5);
         _loc2_.translate(0,this.§do finally set§ - 4);
         _loc1_.beginBitmapFill(this.§return var const§,_loc2_);
         _loc1_.drawRect(0,this.§do finally set§ - 4,4,4);
         _loc1_.endFill();
         _loc1_.beginBitmapFill(this.§5214232255232268123423632234§);
         _loc1_.drawRect(4,0,this.§5214237851237864123423632234§ - 8,this.§do finally set§);
         _loc1_.drawRect(0,4,4,this.§do finally set§ - 8);
         _loc1_.drawRect(this.§5214237851237864123423632234§ - 4,4,4,this.§do finally set§ - 8);
         _loc1_.endFill();
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§5214233910233923123423632234§();
      }
   }
}

