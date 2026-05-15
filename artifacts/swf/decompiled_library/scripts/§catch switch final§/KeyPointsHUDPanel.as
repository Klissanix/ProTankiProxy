package §catch switch final§
{
   import §521423100242310037123423632234§.§521423139032313916123423632234§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import alternativa.tanks.models.controlpoints.hud.*;
   import §else switch default§.§override for default§;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §try use throw§.§class use get§;
   import §try use throw§.§while catch catch§;
   
   public class KeyPointsHUDPanel extends Sprite implements §override for default§, §while catch catch§
   {
      
      private static const §521423103772310390123423632234§:int = 1;
      
      private var §521423105112310524123423632234§:Shape = new Shape();
      
      private var §521423131172313130123423632234§:Vector.<KeyPointHUDIndicator>;
      
      private var _width:int;
      
      private var _height:int;
      
      public function KeyPointsHUDPanel(param1:Vector.<KeyPoint>, param2:Boolean)
      {
         super();
         this.f697d31b(param1,param2);
         this.b4bc110(param1.length);
         addChild(this.§521423105112310524123423632234§);
         this.c607e10e();
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      public function setLayoutManager(param1:§class use get§) : void
      {
      }
      
      private function f697d31b(param1:Vector.<KeyPoint>, param2:Boolean) : void
      {
         var _loc7_:int = 0;
         var _loc9_:KeyPoint = null;
         var _loc3_:KeyPointHUDIndicator = null;
         var _loc8_:§5214238529238542123423632234§ = null;
         var _loc4_:Vector.<KeyPoint> = this.b2ffd9f0(param1);
         var _loc5_:int = 2;
         this.§521423131172313130123423632234§ = new Vector.<KeyPointHUDIndicator>(param1.length);
         var _loc6_:int = int(_loc4_.length);
         while(_loc7_ < _loc6_)
         {
            _loc9_ = _loc4_[_loc7_];
            _loc3_ = new KeyPointHUDIndicator(_loc9_,param2);
            _loc3_.x = _loc5_;
            _loc3_.y = 2;
            addChild(_loc3_);
            _loc8_ = _loc3_.getLabel();
            _loc8_.y = 8;
            _loc8_.x = int(_loc3_.x + (_loc3_.width - _loc8_.width) / 2);
            if(_loc7_ < _loc4_.length - 1)
            {
               this.§521423105112310524123423632234§.graphics.lineStyle(0,16777215);
               this.§521423105112310524123423632234§.graphics.moveTo(_loc3_.x + 36,2);
               this.§521423105112310524123423632234§.graphics.lineTo(_loc3_.x + 36,38);
            }
            this.§521423131172313130123423632234§[_loc7_] = _loc3_;
            _loc5_ += _loc3_.width + 1;
            _loc7_++;
         }
      }
      
      private function b3766f81(param1:KeyPoint, param2:KeyPoint) : Number
      {
         if(param1.getName() < param2.getName())
         {
            return -1;
         }
         if(param1.getName() > param2.getName())
         {
            return 1;
         }
         return 0;
      }
      
      public function update() : void
      {
         for each(var _loc1_ in this.§521423131172313130123423632234§)
         {
            _loc1_.update();
         }
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      private function c607e10e() : void
      {
         var _loc1_:KeyPointHUDIndicator = null;
         for each(_loc1_ in this.§521423131172313130123423632234§)
         {
            addChild(_loc1_.getLabel());
         }
      }
      
      public function removeFromParent() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function b2ffd9f0(param1:Vector.<KeyPoint>) : Vector.<KeyPoint>
      {
         return param1.concat().sort(this.b3766f81);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.update();
      }
      
      private function b4bc110(param1:int) : void
      {
         var _loc2_:§521423139032313916123423632234§ = new §521423139032313916123423632234§();
         _loc2_.width = param1 * (36 + 1) - 1 + 4;
         addChild(_loc2_);
         this._width = _loc2_.width;
         this._height = _loc2_.height;
      }
   }
}

