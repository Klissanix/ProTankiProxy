package alternativa.physics.collision.colliders
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §do catch return§.§5214232252232265123423632234§;
   import §do catch return§.§5214237379237392123423632234§;
   import §each var null§.§function set class§;
   import §for catch for§.§521423136582313671123423632234§;
   import §for catch for§.§final set null§;
   
   public class BoxTriangleCollider implements §final set null§
   {
      
      public var §521423134732313486123423632234§:Number;
      
      private var §return switch package§:Number;
      
      private const §import for switch§:Vector3 = new Vector3();
      
      private const §try use each§:Vector3 = new Vector3();
      
      private const §function switch super§:Vector3 = new Vector3();
      
      private const §override set var§:Vector3 = new Vector3();
      
      private const §521423105912310604123423632234§:Vector3 = new Vector3();
      
      private const §finally const finally§:Vector3 = new Vector3();
      
      private const §521423139262313939123423632234§:Vector3 = new Vector3();
      
      private const §5214232464232477123423632234§:Vector3 = new Vector3();
      
      private const §5214231115231128123423632234§:Vector3 = new Vector3();
      
      private const §521423134712313484123423632234§:Matrix4 = new Matrix4();
      
      private const §521423114492311462123423632234§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private const §continue var finally§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex()];
      
      public function BoxTriangleCollider(param1:Number)
      {
         super();
         this.§521423134732313486123423632234§ = param1;
      }
      
      final private function e26009f5(param1:Number, param2:Vector3) : Boolean
      {
         if(param1 < this.§521423134732313486123423632234§)
         {
            return false;
         }
         if(param1 + this.§521423134732313486123423632234§ < this.§return switch package§)
         {
            this.§return switch package§ = param1;
            this.§5214231115231128123423632234§.x = param2.x;
            this.§5214231115231128123423632234§.y = param2.y;
            this.§5214231115231128123423632234§.z = param2.z;
         }
         return true;
      }
      
      private function d2eb94f3(param1:§5214232252232265123423632234§, param2:§5214237379237392123423632234§, param3:Vector3, param4:Vector3, param5:Vector3) : Boolean
      {
         this.§try use each§.x = param3.y * param4.z - param3.z * param4.y;
         this.§try use each§.y = param3.z * param4.x - param3.x * param4.z;
         this.§try use each§.z = param3.x * param4.y - param3.y * param4.x;
         var _loc8_:Number = this.§try use each§.x * this.§try use each§.x + this.§try use each§.y * this.§try use each§.y + this.§try use each§.z * this.§try use each§.z;
         if(_loc8_ < 1e-10)
         {
            return true;
         }
         var _loc7_:Number = 1 / Math.sqrt(_loc8_);
         this.§try use each§.x *= _loc7_;
         this.§try use each§.y *= _loc7_;
         this.§try use each§.z *= _loc7_;
         var _loc6_:Number = this.getOverlapOnAxis(param1,param2,this.§try use each§,param5);
         var _temp_6:* = this;
         var _temp_5:* = _loc6_;
         var _loc11_:Vector3 = this.§try use each§;
         var _loc10_:Number = _temp_5;
         var _loc9_:BoxTriangleCollider = _temp_6;
         if(_loc10_ < _loc9_.§521423134732313486123423632234§)
         {
            return false;
         }
         else
         {
            if(_loc10_ + _loc9_.§521423134732313486123423632234§ < _loc9_.§return switch package§)
            {
               _loc9_.§return switch package§ = _loc10_;
               _loc9_.§5214231115231128123423632234§.x = _loc11_.x;
               _loc9_.§5214231115231128123423632234§.y = _loc11_.y;
               _loc9_.§5214231115231128123423632234§.z = _loc11_.z;
            }
            return true;
         }
      }
      
      private function getOverlapOnAxis(param1:§5214232252232265123423632234§, param2:§5214237379237392123423632234§, param3:Vector3, param4:Vector3) : Number
      {
         var _loc9_:Matrix4 = param1.§try const throw§;
         var _loc10_:Vector3 = param1.§return const dynamic§;
         var _loc15_:Number = 0;
         var _loc6_:Number = (_loc9_.m00 * param3.x + _loc9_.§5214234411234424123423632234§ * param3.y + _loc9_.§521423135662313579123423632234§ * param3.z) * _loc10_.x;
         if(_loc6_ < 0)
         {
            _loc15_ -= _loc6_;
         }
         else
         {
            _loc15_ += _loc6_;
         }
         _loc6_ = (_loc9_.§5214239800239813123423632234§ * param3.x + _loc9_.m11 * param3.y + _loc9_.§case set function§ * param3.z) * _loc10_.y;
         if(_loc6_ < 0)
         {
            _loc15_ -= _loc6_;
         }
         else
         {
            _loc15_ += _loc6_;
         }
         _loc6_ = (_loc9_.§521423117972311810123423632234§ * param3.x + _loc9_.§null use use§ * param3.y + _loc9_.m22 * param3.z) * _loc10_.z;
         if(_loc6_ < 0)
         {
            _loc15_ -= _loc6_;
         }
         else
         {
            _loc15_ += _loc6_;
         }
         var _loc5_:Number = param4.x * param3.x + param4.y * param3.y + param4.z * param3.z;
         var _loc8_:Matrix4 = param2.§try const throw§;
         var _loc11_:Number = _loc8_.m00 * param3.x + _loc8_.§5214234411234424123423632234§ * param3.y + _loc8_.§521423135662313579123423632234§ * param3.z;
         var _loc12_:Number = _loc8_.§5214239800239813123423632234§ * param3.x + _loc8_.m11 * param3.y + _loc8_.§case set function§ * param3.z;
         var _loc13_:Number = _loc8_.§521423117972311810123423632234§ * param3.x + _loc8_.§null use use§ * param3.y + _loc8_.m22 * param3.z;
         var _loc7_:Number = 0;
         var _loc14_:Vector3 = param2.§521423134652313478123423632234§;
         var _loc16_:Vector3 = param2.§5214232428232441123423632234§;
         var _loc17_:Vector3 = param2.§5214238317238330123423632234§;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
            _loc6_ = _loc14_.x * _loc11_ + _loc14_.y * _loc12_ + _loc14_.z * _loc13_;
            if(_loc6_ < _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc16_.x * _loc11_ + _loc16_.y * _loc12_ + _loc16_.z * _loc13_;
            if(_loc6_ < _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc17_.x * _loc11_ + _loc17_.y * _loc12_ + _loc17_.z * _loc13_;
            if(_loc6_ < _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc7_ = -_loc7_;
         }
         else
         {
            _loc6_ = _loc14_.x * _loc11_ + _loc14_.y * _loc12_ + _loc14_.z * _loc13_;
            if(_loc6_ > _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc16_.x * _loc11_ + _loc16_.y * _loc12_ + _loc16_.z * _loc13_;
            if(_loc6_ > _loc7_)
            {
               _loc7_ = _loc6_;
            }
            _loc6_ = _loc17_.x * _loc11_ + _loc17_.y * _loc12_ + _loc17_.z * _loc13_;
            if(_loc6_ > _loc7_)
            {
               _loc7_ = _loc6_;
            }
         }
         return _loc15_ + _loc7_ - _loc5_;
      }
      
      final private function findContacts(param1:§5214232252232265123423632234§, param2:§5214237379237392123423632234§, param3:Vector3, param4:Vector.<§function set class§>) : void
      {
         var _loc8_:int = 0;
         var _loc14_:§function set class§ = null;
         var _loc15_:Vector3 = null;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc7_:Matrix4 = param1.§try const throw§;
         var _loc5_:Matrix4 = param2.§try const throw§;
         var _loc16_:Vector3 = this.§import for switch§;
         _loc16_.x = _loc7_.§catch package continue§ - _loc5_.§catch package continue§;
         _loc16_.y = _loc7_.§include var break§ - _loc5_.§include var break§;
         _loc16_.z = _loc7_.§function var import§ - _loc5_.§function var import§;
         if(param3.x * _loc16_.x + param3.y * _loc16_.y + param3.z * _loc16_.z < 0)
         {
            param3.x = -param3.x;
            param3.y = -param3.y;
            param3.z = -param3.z;
         }
         var _loc6_:Matrix4 = this.§521423134712313484123423632234§;
         ColliderUtils.buildContactBasis(param3,_loc7_,_loc5_,_loc6_);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param1,param3,FaceSide.§dynamic set if§,this.§521423114492311462123423632234§);
         ColliderUtils.getTriangleFaceInCCWOrder(param2,param3,this.§continue var finally§);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,_loc7_,this.§521423114492311462123423632234§,4);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,_loc5_,this.§continue var finally§,3);
         var _loc13_:int = int(param4.length);
         PolygonsIntersectionUtils.findContacts(param1,this.§521423114492311462123423632234§,4,param2,this.§continue var finally§,3,_loc6_,param4);
         var _loc10_:int = int(param4.length);
         _loc8_ = _loc13_;
         while(_loc8_ < _loc10_)
         {
            _loc14_ = param4[_loc8_];
            _loc15_ = _loc14_.§5214233761233774123423632234§;
            _loc9_ = _loc5_.§521423117972311810123423632234§;
            _loc11_ = _loc5_.§null use use§;
            _loc12_ = _loc5_.m22;
            if(_loc15_.x * _loc9_ + _loc15_.y * _loc11_ + _loc15_.z * _loc12_ < 0)
            {
               _loc14_.§5214238823101123423632234§();
               _loc10_--;
               param4[_loc8_] = param4[_loc10_];
               param4[_loc10_] = null;
               _loc8_--;
            }
            _loc8_++;
         }
         if(_loc10_ < param4.length)
         {
            param4.length = _loc10_;
         }
      }
      
      final private function b6430cb6(param1:§5214232252232265123423632234§, param2:§5214237379237392123423632234§, param3:Vector3, param4:Vector3) : Boolean
      {
         var _loc5_:Number = this.getOverlapOnAxis(param1,param2,param3,param4);
         var _temp_2:* = this;
         var _temp_1:* = _loc5_;
         var _loc8_:Vector3 = param3;
         var _loc7_:Number = _temp_1;
         var _loc6_:BoxTriangleCollider = _temp_2;
         if(_loc7_ < _loc6_.§521423134732313486123423632234§)
         {
            return false;
         }
         else
         {
            if(_loc7_ + _loc6_.§521423134732313486123423632234§ < _loc6_.§return switch package§)
            {
               _loc6_.§return switch package§ = _loc7_;
               _loc6_.§5214231115231128123423632234§.x = _loc8_.x;
               _loc6_.§5214231115231128123423632234§.y = _loc8_.y;
               _loc6_.§5214231115231128123423632234§.z = _loc8_.z;
            }
            return true;
         }
      }
      
      public function getContacts(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§, param3:Vector.<§function set class§>) : void
      {
         var _loc4_:§5214237379237392123423632234§ = null;
         var _loc5_:§5214232252232265123423632234§ = null;
         if(!this.haveCollision(param1,param2))
         {
            return;
         }
         if(param1 is §5214232252232265123423632234§)
         {
            _loc5_ = §5214232252232265123423632234§(param1);
            _loc4_ = §5214237379237392123423632234§(param2);
         }
         else
         {
            _loc5_ = §5214232252232265123423632234§(param2);
            _loc4_ = §5214237379237392123423632234§(param1);
         }
         this.findContacts(_loc5_,_loc4_,this.§5214231115231128123423632234§,param3);
      }
      
      public function haveCollision(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§) : Boolean
      {
         var _loc6_:§5214237379237392123423632234§ = null;
         var _loc7_:§5214232252232265123423632234§ = null;
         if(param1 is §5214232252232265123423632234§)
         {
            _loc7_ = §5214232252232265123423632234§(param1);
            _loc6_ = §5214237379237392123423632234§(param2);
         }
         else
         {
            _loc7_ = §5214232252232265123423632234§(param2);
            _loc6_ = §5214237379237392123423632234§(param1);
         }
         var _loc5_:Matrix4 = _loc7_.§try const throw§;
         var _loc4_:Matrix4 = _loc6_.§try const throw§;
         this.§import for switch§.x = _loc5_.§catch package continue§ - _loc4_.§catch package continue§;
         this.§import for switch§.y = _loc5_.§include var break§ - _loc4_.§include var break§;
         this.§import for switch§.z = _loc5_.§function var import§ - _loc4_.§function var import§;
         this.§return switch package§ = 10000000000;
         this.§try use each§.x = _loc4_.§521423117972311810123423632234§;
         this.§try use each§.y = _loc4_.§null use use§;
         this.§try use each§.z = _loc4_.m22;
         var _temp_4:* = this;
         var _temp_3:* = _loc7_;
         var _temp_2:* = _loc6_;
         var _temp_1:* = this.§try use each§;
         var _loc13_:Vector3 = this.§import for switch§;
         var _loc16_:Vector3 = _temp_1;
         var _loc15_:§5214237379237392123423632234§ = _temp_2;
         var _loc14_:§5214232252232265123423632234§ = _temp_3;
         var _loc8_:BoxTriangleCollider = _temp_4;
         var _loc12_:Number = Number(§§pop().getOverlapOnAxis(_loc14_,_loc15_,_loc16_,_loc13_));
         if(!_loc8_.e26009f5(_loc12_,_loc16_))
         {
            return false;
         }
         this.§function switch super§.x = _loc5_.m00;
         this.§function switch super§.y = _loc5_.§5214234411234424123423632234§;
         this.§function switch super§.z = _loc5_.§521423135662313579123423632234§;
         var _temp_8:* = this;
         var _temp_7:* = _loc7_;
         var _temp_6:* = _loc6_;
         var _temp_5:* = this.§function switch super§;
         var _loc18_:Vector3 = this.§import for switch§;
         var _loc21_:Vector3 = _temp_5;
         var _loc20_:§5214237379237392123423632234§ = _temp_6;
         var _loc19_:§5214232252232265123423632234§ = _temp_7;
         var _loc9_:BoxTriangleCollider = _temp_8;
         var _loc17_:Number = Number(§§pop().getOverlapOnAxis(_loc19_,_loc20_,_loc21_,_loc18_));
         if(!_loc9_.e26009f5(_loc17_,_loc21_))
         {
            return false;
         }
         this.§override set var§.x = _loc5_.§5214239800239813123423632234§;
         this.§override set var§.y = _loc5_.m11;
         this.§override set var§.z = _loc5_.§case set function§;
         var _temp_12:* = this;
         var _temp_11:* = _loc7_;
         var _temp_10:* = _loc6_;
         var _temp_9:* = this.§override set var§;
         var _loc23_:Vector3 = this.§import for switch§;
         var _loc26_:Vector3 = _temp_9;
         var _loc25_:§5214237379237392123423632234§ = _temp_10;
         var _loc24_:§5214232252232265123423632234§ = _temp_11;
         var _loc10_:BoxTriangleCollider = _temp_12;
         var _loc22_:Number = Number(§§pop().getOverlapOnAxis(_loc24_,_loc25_,_loc26_,_loc23_));
         if(!_loc10_.e26009f5(_loc22_,_loc26_))
         {
            return false;
         }
         this.§521423105912310604123423632234§.x = _loc5_.§521423117972311810123423632234§;
         this.§521423105912310604123423632234§.y = _loc5_.§null use use§;
         this.§521423105912310604123423632234§.z = _loc5_.m22;
         var _temp_16:* = this;
         var _temp_15:* = _loc7_;
         var _temp_14:* = _loc6_;
         var _temp_13:* = this.§521423105912310604123423632234§;
         var _loc28_:Vector3 = this.§import for switch§;
         var _loc31_:Vector3 = _temp_13;
         var _loc30_:§5214237379237392123423632234§ = _temp_14;
         var _loc29_:§5214232252232265123423632234§ = _temp_15;
         var _loc11_:BoxTriangleCollider = _temp_16;
         var _loc27_:Number = Number(§§pop().getOverlapOnAxis(_loc29_,_loc30_,_loc31_,_loc28_));
         if(!_loc11_.e26009f5(_loc27_,_loc31_))
         {
            return false;
         }
         var _loc3_:Vector3 = _loc6_.§native package for§;
         this.§finally const finally§.x = _loc4_.m00 * _loc3_.x + _loc4_.§5214239800239813123423632234§ * _loc3_.y + _loc4_.§521423117972311810123423632234§ * _loc3_.z;
         this.§finally const finally§.y = _loc4_.§5214234411234424123423632234§ * _loc3_.x + _loc4_.m11 * _loc3_.y + _loc4_.§null use use§ * _loc3_.z;
         this.§finally const finally§.z = _loc4_.§521423135662313579123423632234§ * _loc3_.x + _loc4_.§case set function§ * _loc3_.y + _loc4_.m22 * _loc3_.z;
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§function switch super§,this.§finally const finally§,this.§import for switch§))
         {
            return false;
         }
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§override set var§,this.§finally const finally§,this.§import for switch§))
         {
            return false;
         }
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§521423105912310604123423632234§,this.§finally const finally§,this.§import for switch§))
         {
            return false;
         }
         _loc3_ = _loc6_.§521423123972312410123423632234§;
         this.§521423139262313939123423632234§.x = _loc4_.m00 * _loc3_.x + _loc4_.§5214239800239813123423632234§ * _loc3_.y + _loc4_.§521423117972311810123423632234§ * _loc3_.z;
         this.§521423139262313939123423632234§.y = _loc4_.§5214234411234424123423632234§ * _loc3_.x + _loc4_.m11 * _loc3_.y + _loc4_.§null use use§ * _loc3_.z;
         this.§521423139262313939123423632234§.z = _loc4_.§521423135662313579123423632234§ * _loc3_.x + _loc4_.§case set function§ * _loc3_.y + _loc4_.m22 * _loc3_.z;
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§function switch super§,this.§521423139262313939123423632234§,this.§import for switch§))
         {
            return false;
         }
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§override set var§,this.§521423139262313939123423632234§,this.§import for switch§))
         {
            return false;
         }
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§521423105912310604123423632234§,this.§521423139262313939123423632234§,this.§import for switch§))
         {
            return false;
         }
         _loc3_ = _loc6_.§catch switch var§;
         this.§5214232464232477123423632234§.x = _loc4_.m00 * _loc3_.x + _loc4_.§5214239800239813123423632234§ * _loc3_.y + _loc4_.§521423117972311810123423632234§ * _loc3_.z;
         this.§5214232464232477123423632234§.y = _loc4_.§5214234411234424123423632234§ * _loc3_.x + _loc4_.m11 * _loc3_.y + _loc4_.§null use use§ * _loc3_.z;
         this.§5214232464232477123423632234§.z = _loc4_.§521423135662313579123423632234§ * _loc3_.x + _loc4_.§case set function§ * _loc3_.y + _loc4_.m22 * _loc3_.z;
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§function switch super§,this.§5214232464232477123423632234§,this.§import for switch§))
         {
            return false;
         }
         if(!this.d2eb94f3(_loc7_,_loc6_,this.§override set var§,this.§5214232464232477123423632234§,this.§import for switch§))
         {
            return false;
         }
         return this.d2eb94f3(_loc7_,_loc6_,this.§521423105912310604123423632234§,this.§5214232464232477123423632234§,this.§import for switch§);
      }
   }
}

