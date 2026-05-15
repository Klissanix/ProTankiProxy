package §finally switch catch§
{
   import §521423100242310037123423632234§.§521423139032313916123423632234§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §case set import§ extends Sprite
   {
      
      private static const §package const default§:int = 6;
      
      protected static const §5214239850239863123423632234§:uint = 9249024;
      
      protected static const §521423123202312333123423632234§:uint = 16742221;
      
      protected static const §521423117272311740123423632234§:uint = 16256;
      
      protected static const §521423136272313640123423632234§:uint = 4760319;
      
      protected var §521423139422313955123423632234§:int;
      
      protected var §5214236691236704123423632234§:int;
      
      protected var §native switch extends§:§5214238529238542123423632234§;
      
      protected var §5214239389239402123423632234§:§5214238529238542123423632234§;
      
      private var §5214238267238280123423632234§:Shape;
      
      protected var §get catch switch§:§521423139032313916123423632234§;
      
      public function §case set import§()
      {
         super();
         addChild(this.§5214238267238280123423632234§ = new Shape());
         addChild(this.§get catch switch§ = new §521423139032313916123423632234§());
         this.§native switch extends§ = this.§521423132302313243123423632234§(16742221);
         this.§5214239389239402123423632234§ = this.§521423132302313243123423632234§(4760319);
      }
      
      public function set §521423102942310307123423632234§(param1:int) : void
      {
         this.§521423139422313955123423632234§ = param1;
         this.§native switch extends§.text = param1.toString();
         this.§521423120402312053123423632234§();
      }
      
      public function §521423120402312053123423632234§() : void
      {
         this.§switch for use§(this.§set set for§());
      }
      
      protected function §set set for§() : int
      {
         return 0;
      }
      
      private function §switch for use§(param1:int) : void
      {
         this.§get catch switch§.width = param1;
         var _loc2_:String = "linear";
         var _loc9_:Array = [9249024,16256];
         var _loc10_:Array = [1,1];
         var _loc7_:int = 8 / param1 * 255;
         var _loc8_:Array = [127 - _loc7_,127 + _loc7_];
         var _loc5_:int = 2;
         var _loc6_:Matrix = new Matrix();
         _loc6_.createGradientBox(param1 - _loc5_,this.§get catch switch§.height - _loc5_,0,0,0);
         var _loc4_:String = "pad";
         var _loc3_:Graphics = this.§5214238267238280123423632234§.graphics;
         _loc3_.clear();
         _loc3_.beginGradientFill(_loc2_,_loc9_,_loc10_,_loc8_,_loc6_,_loc4_);
         _loc3_.drawRect(_loc5_,_loc5_,param1 - 2 * _loc5_,this.§get catch switch§.height - _loc5_ - 1);
         _loc3_.endFill();
      }
      
      public function §521423232336123423632234§(param1:int, param2:int) : void
      {
         this.§521423139422313955123423632234§ = param1;
         this.§native switch extends§.text = param1.toString();
         this.§5214236691236704123423632234§ = param2;
         this.§5214239389239402123423632234§.text = param2.toString();
         this.§521423120402312053123423632234§();
      }
      
      public function §52142318323196123423632234§(param1:§5214231658231671123423632234§, param2:int) : void
      {
         switch(param1)
         {
            case §5214231658231671123423632234§.§521423107532310766123423632234§:
               this.§521423102942310307123423632234§ = param2;
               break;
            case §5214231658231671123423632234§.§implements set implements§:
               this.§static var var§ = param2;
         }
         this.§521423120402312053123423632234§();
      }
      
      public function set §static var var§(param1:int) : void
      {
         this.§5214236691236704123423632234§ = param1;
         this.§5214239389239402123423632234§.text = param1.toString();
         this.§521423120402312053123423632234§();
      }
      
      private function §521423132302313243123423632234§(param1:uint) : §5214238529238542123423632234§
      {
         var _loc2_:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
         _loc2_.color = param1;
         _loc2_.§521423102842310297123423632234§ = 18;
         _loc2_.bold = true;
         _loc2_.autoSize = "center";
         _loc2_.y = 6;
         addChild(_loc2_);
         return _loc2_;
      }
   }
}

