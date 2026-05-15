package alternativa.physics.collision.colliders
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §do catch return§.§5214231131231144123423632234§;
   import §do catch return§.§5214232252232265123423632234§;
   import §each var null§.§function set class§;
   import §for catch for§.§521423136582313671123423632234§;
   import §for catch for§.§final set null§;
   
   public class BoxRectCollider implements §final set null§
   {
      
      private static const §521423114492311462123423632234§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §5214239030239043123423632234§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §521423134712313484123423632234§:Matrix4 = new Matrix4();
      
      private const §use var override§:Vector3 = new Vector3();
      
      private const §5214233050233063123423632234§:Vector3 = new Vector3();
      
      private const §function switch super§:Vector3 = new Vector3();
      
      private const §override set var§:Vector3 = new Vector3();
      
      private const §521423105912310604123423632234§:Vector3 = new Vector3();
      
      private const §finally const finally§:Vector3 = new Vector3();
      
      private const §521423139262313939123423632234§:Vector3 = new Vector3();
      
      private const §5214232464232477123423632234§:Vector3 = new Vector3();
      
      private const §5214231115231128123423632234§:Vector3 = new Vector3();
      
      private var §return switch package§:Number;
      
      private var §521423134732313486123423632234§:Number;
      
      public function BoxRectCollider(param1:Number)
      {
         super();
         this.§521423134732313486123423632234§ = param1;
      }
      
      final private function getOverlapOnAxis(param1:§5214232252232265123423632234§, param2:§5214231131231144123423632234§, param3:Vector3, param4:Vector3) : Number
      {
         var _loc7_:Matrix4 = param1.§try const throw§;
         var _loc5_:Number = (_loc7_.m00 * param3.x + _loc7_.§5214234411234424123423632234§ * param3.y + _loc7_.§521423135662313579123423632234§ * param3.z) * param1.§return const dynamic§.x;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         var _loc6_:Number = _loc5_;
         _loc5_ = (_loc7_.§5214239800239813123423632234§ * param3.x + _loc7_.m11 * param3.y + _loc7_.§case set function§ * param3.z) * param1.§return const dynamic§.y;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = (_loc7_.§521423117972311810123423632234§ * param3.x + _loc7_.§null use use§ * param3.y + _loc7_.m22 * param3.z) * param1.§return const dynamic§.z;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc7_ = param2.§try const throw§;
         _loc5_ = (_loc7_.m00 * param3.x + _loc7_.§5214234411234424123423632234§ * param3.y + _loc7_.§521423135662313579123423632234§ * param3.z) * param2.§return const dynamic§.x;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = (_loc7_.§5214239800239813123423632234§ * param3.x + _loc7_.m11 * param3.y + _loc7_.§case set function§ * param3.z) * param2.§return const dynamic§.y;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         _loc6_ += _loc5_;
         _loc5_ = param4.x * param3.x + param4.y * param3.y + param4.z * param3.z;
         if(_loc5_ < 0)
         {
            _loc5_ = -_loc5_;
         }
         return _loc6_ - _loc5_;
      }
      
      final private function e30d590a(param1:§5214232252232265123423632234§, param2:§5214231131231144123423632234§, param3:Vector3, param4:Vector3, param5:Vector3) : Boolean
      {
         this.§5214233050233063123423632234§.x = param3.y * param4.z - param3.z * param4.y;
         this.§5214233050233063123423632234§.y = param3.z * param4.x - param3.x * param4.z;
         this.§5214233050233063123423632234§.z = param3.x * param4.y - param3.y * param4.x;
         var _loc8_:Number = this.§5214233050233063123423632234§.x * this.§5214233050233063123423632234§.x + this.§5214233050233063123423632234§.y * this.§5214233050233063123423632234§.y + this.§5214233050233063123423632234§.z * this.§5214233050233063123423632234§.z;
         if(_loc8_ < 1e-10)
         {
            return true;
         }
         var _loc7_:Number = 1 / Math.sqrt(_loc8_);
         this.§5214233050233063123423632234§.x *= _loc7_;
         this.§5214233050233063123423632234§.y *= _loc7_;
         this.§5214233050233063123423632234§.z *= _loc7_;
         var _temp_8:* = this;
         var _temp_7:* = param1;
         var _temp_6:* = param2;
         var _temp_5:* = this.§5214233050233063123423632234§;
         var _loc17_:Vector3 = param5;
         var _loc15_:Vector3 = _temp_5;
         var _loc11_:§5214231131231144123423632234§ = _temp_6;
         var _loc13_:§5214232252232265123423632234§ = _temp_7;
         var _loc9_:BoxRectCollider = _temp_8;
         var _loc16_:Matrix4 = _loc13_.§try const throw§;
         var _loc12_:Number = (_loc16_.m00 * _loc15_.x + _loc16_.§5214234411234424123423632234§ * _loc15_.y + _loc16_.§521423135662313579123423632234§ * _loc15_.z) * _loc13_.§return const dynamic§.x;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         var _loc14_:Number = _loc12_;
         _loc12_ = (_loc16_.§5214239800239813123423632234§ * _loc15_.x + _loc16_.m11 * _loc15_.y + _loc16_.§case set function§ * _loc15_.z) * _loc13_.§return const dynamic§.y;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc12_ = (_loc16_.§521423117972311810123423632234§ * _loc15_.x + _loc16_.§null use use§ * _loc15_.y + _loc16_.m22 * _loc15_.z) * _loc13_.§return const dynamic§.z;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc16_ = _loc11_.§try const throw§;
         _loc12_ = (_loc16_.m00 * _loc15_.x + _loc16_.§5214234411234424123423632234§ * _loc15_.y + _loc16_.§521423135662313579123423632234§ * _loc15_.z) * _loc11_.§return const dynamic§.x;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc12_ = (_loc16_.§5214239800239813123423632234§ * _loc15_.x + _loc16_.m11 * _loc15_.y + _loc16_.§case set function§ * _loc15_.z) * _loc11_.§return const dynamic§.y;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         _loc14_ += _loc12_;
         _loc12_ = _loc17_.x * _loc15_.x + _loc17_.y * _loc15_.y + _loc17_.z * _loc15_.z;
         if(_loc12_ < 0)
         {
            _loc12_ = -_loc12_;
         }
         var _loc6_:Number = _loc14_ - _loc12_;
         var _temp_18:* = this;
         var _temp_17:* = _loc6_;
         var _loc19_:Vector3 = this.§5214233050233063123423632234§;
         var _loc18_:Number = _temp_17;
         var _loc10_:BoxRectCollider = _temp_18;
         if(_loc18_ < _loc10_.§521423134732313486123423632234§)
         {
            return false;
         }
         else
         {
            if(_loc18_ + _loc10_.§521423134732313486123423632234§ < _loc10_.§return switch package§)
            {
               _loc10_.§return switch package§ = _loc18_;
               _loc10_.§5214231115231128123423632234§.x = _loc19_.x;
               _loc10_.§5214231115231128123423632234§.y = _loc19_.y;
               _loc10_.§5214231115231128123423632234§.z = _loc19_.z;
            }
            return true;
         }
      }
      
      public function haveCollision(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§) : Boolean
      {
         var _loc6_:§5214232252232265123423632234§ = null;
         var _loc4_:§5214231131231144123423632234§ = null;
         this.§return switch package§ = 10000000000;
         if(param1 is §5214232252232265123423632234§)
         {
            _loc6_ = §5214232252232265123423632234§(param1);
            _loc4_ = §5214231131231144123423632234§(param2);
         }
         else
         {
            _loc6_ = §5214232252232265123423632234§(param2);
            _loc4_ = §5214231131231144123423632234§(param1);
         }
         var _loc5_:Matrix4 = _loc6_.§try const throw§;
         var _loc3_:Matrix4 = _loc4_.§try const throw§;
         this.§use var override§.x = _loc5_.§catch package continue§ - _loc3_.§catch package continue§;
         this.§use var override§.y = _loc5_.§include var break§ - _loc3_.§include var break§;
         this.§use var override§.z = _loc5_.§function var import§ - _loc3_.§function var import§;
         this.§5214232464232477123423632234§.x = _loc3_.§521423117972311810123423632234§;
         this.§5214232464232477123423632234§.y = _loc3_.§null use use§;
         this.§5214232464232477123423632234§.z = _loc3_.m22;
         var _temp_4:* = this;
         var _temp_3:* = _loc6_;
         var _temp_2:* = _loc4_;
         var _temp_1:* = this.§5214232464232477123423632234§;
         var _loc21_:Vector3 = this.§use var override§;
         var _loc20_:Vector3 = _temp_1;
         var _loc17_:§5214231131231144123423632234§ = _temp_2;
         var _loc19_:§5214232252232265123423632234§ = _temp_3;
         var _loc7_:BoxRectCollider = _temp_4;
         var _loc18_:Number = Number(§§pop().getOverlapOnAxis(_loc19_,_loc17_,_loc20_,_loc21_));
         if(!_loc7_.e26009f5(_loc18_,_loc20_))
         {
            return false;
         }
         this.§function switch super§.x = _loc5_.m00;
         this.§function switch super§.y = _loc5_.§5214234411234424123423632234§;
         this.§function switch super§.z = _loc5_.§521423135662313579123423632234§;
         var _temp_8:* = this;
         var _temp_7:* = _loc6_;
         var _temp_6:* = _loc4_;
         var _temp_5:* = this.§function switch super§;
         var _loc26_:Vector3 = this.§use var override§;
         var _loc25_:Vector3 = _temp_5;
         var _loc22_:§5214231131231144123423632234§ = _temp_6;
         var _loc24_:§5214232252232265123423632234§ = _temp_7;
         var _loc8_:BoxRectCollider = _temp_8;
         var _loc23_:Number = Number(§§pop().getOverlapOnAxis(_loc24_,_loc22_,_loc25_,_loc26_));
         if(!_loc8_.e26009f5(_loc23_,_loc25_))
         {
            return false;
         }
         this.§override set var§.x = _loc5_.§5214239800239813123423632234§;
         this.§override set var§.y = _loc5_.m11;
         this.§override set var§.z = _loc5_.§case set function§;
         var _temp_12:* = this;
         var _temp_11:* = _loc6_;
         var _temp_10:* = _loc4_;
         var _temp_9:* = this.§override set var§;
         var _loc31_:Vector3 = this.§use var override§;
         var _loc30_:Vector3 = _temp_9;
         var _loc27_:§5214231131231144123423632234§ = _temp_10;
         var _loc29_:§5214232252232265123423632234§ = _temp_11;
         var _loc9_:BoxRectCollider = _temp_12;
         var _loc28_:Number = Number(§§pop().getOverlapOnAxis(_loc29_,_loc27_,_loc30_,_loc31_));
         if(!_loc9_.e26009f5(_loc28_,_loc30_))
         {
            return false;
         }
         this.§521423105912310604123423632234§.x = _loc5_.§521423117972311810123423632234§;
         this.§521423105912310604123423632234§.y = _loc5_.§null use use§;
         this.§521423105912310604123423632234§.z = _loc5_.m22;
         var _temp_16:* = this;
         var _temp_15:* = _loc6_;
         var _temp_14:* = _loc4_;
         var _temp_13:* = this.§521423105912310604123423632234§;
         var _loc36_:Vector3 = this.§use var override§;
         var _loc35_:Vector3 = _temp_13;
         var _loc32_:§5214231131231144123423632234§ = _temp_14;
         var _loc34_:§5214232252232265123423632234§ = _temp_15;
         var _loc10_:BoxRectCollider = _temp_16;
         var _loc33_:Number = Number(§§pop().getOverlapOnAxis(_loc34_,_loc32_,_loc35_,_loc36_));
         if(!_loc10_.e26009f5(_loc33_,_loc35_))
         {
            return false;
         }
         this.§finally const finally§.x = _loc3_.m00;
         this.§finally const finally§.y = _loc3_.§5214234411234424123423632234§;
         this.§finally const finally§.z = _loc3_.§521423135662313579123423632234§;
         this.§521423139262313939123423632234§.x = _loc3_.§5214239800239813123423632234§;
         this.§521423139262313939123423632234§.y = _loc3_.m11;
         this.§521423139262313939123423632234§.z = _loc3_.§case set function§;
         var _temp_21:* = this;
         var _temp_20:* = _loc6_;
         var _temp_19:* = _loc4_;
         var _temp_18:* = this.§function switch super§;
         var _temp_17:* = this.§finally const finally§;
         var _loc44_:Vector3 = this.§use var override§;
         var _loc39_:Vector3 = _temp_17;
         var _loc40_:Vector3 = _temp_18;
         var _loc37_:§5214231131231144123423632234§ = _temp_19;
         var _loc41_:§5214232252232265123423632234§ = _temp_20;
         var _loc11_:BoxRectCollider = _temp_21;
         §§pop().§5214233050233063123423632234§.x = _loc40_.y * _loc39_.z - _loc40_.z * _loc39_.y;
         _loc11_.§5214233050233063123423632234§.y = _loc40_.z * _loc39_.x - _loc40_.x * _loc39_.z;
         _loc11_.§5214233050233063123423632234§.z = _loc40_.x * _loc39_.y - _loc40_.y * _loc39_.x;
         var _loc43_:Number = _loc11_.§5214233050233063123423632234§.x * _loc11_.§5214233050233063123423632234§.x + _loc11_.§5214233050233063123423632234§.y * _loc11_.§5214233050233063123423632234§.y + _loc11_.§5214233050233063123423632234§.z * _loc11_.§5214233050233063123423632234§.z;
         var _loc42_:Number;
         var _loc38_:Number;
         if(!(_loc43_ < 1e-10 ? true : (_loc42_ = 1 / Math.sqrt(_loc43_),_loc11_.§5214233050233063123423632234§.x *= _loc42_,_loc11_.§5214233050233063123423632234§.y *= _loc42_,_loc11_.§5214233050233063123423632234§.z *= _loc42_,_loc38_ = _loc11_.getOverlapOnAxis(_loc41_,_loc37_,_loc11_.§5214233050233063123423632234§,_loc44_),_loc11_.e26009f5(_loc38_,_loc11_.§5214233050233063123423632234§))))
         {
            return false;
         }
         var _temp_30:* = this;
         var _temp_29:* = _loc6_;
         var _temp_28:* = _loc4_;
         var _temp_27:* = this.§function switch super§;
         var _temp_26:* = this.§521423139262313939123423632234§;
         var _loc52_:Vector3 = this.§use var override§;
         var _loc47_:Vector3 = _temp_26;
         var _loc48_:Vector3 = _temp_27;
         var _loc45_:§5214231131231144123423632234§ = _temp_28;
         var _loc49_:§5214232252232265123423632234§ = _temp_29;
         var _loc12_:BoxRectCollider = _temp_30;
         §§pop().§5214233050233063123423632234§.x = _loc48_.y * _loc47_.z - _loc48_.z * _loc47_.y;
         _loc12_.§5214233050233063123423632234§.y = _loc48_.z * _loc47_.x - _loc48_.x * _loc47_.z;
         _loc12_.§5214233050233063123423632234§.z = _loc48_.x * _loc47_.y - _loc48_.y * _loc47_.x;
         var _loc51_:Number = _loc12_.§5214233050233063123423632234§.x * _loc12_.§5214233050233063123423632234§.x + _loc12_.§5214233050233063123423632234§.y * _loc12_.§5214233050233063123423632234§.y + _loc12_.§5214233050233063123423632234§.z * _loc12_.§5214233050233063123423632234§.z;
         var _loc50_:Number;
         var _loc46_:Number;
         if(!(_loc51_ < 1e-10 ? true : (_loc50_ = 1 / Math.sqrt(_loc51_),_loc12_.§5214233050233063123423632234§.x *= _loc50_,_loc12_.§5214233050233063123423632234§.y *= _loc50_,_loc12_.§5214233050233063123423632234§.z *= _loc50_,_loc46_ = _loc12_.getOverlapOnAxis(_loc49_,_loc45_,_loc12_.§5214233050233063123423632234§,_loc52_),_loc12_.e26009f5(_loc46_,_loc12_.§5214233050233063123423632234§))))
         {
            return false;
         }
         var _temp_39:* = this;
         var _temp_38:* = _loc6_;
         var _temp_37:* = _loc4_;
         var _temp_36:* = this.§override set var§;
         var _temp_35:* = this.§finally const finally§;
         var _loc60_:Vector3 = this.§use var override§;
         var _loc55_:Vector3 = _temp_35;
         var _loc56_:Vector3 = _temp_36;
         var _loc53_:§5214231131231144123423632234§ = _temp_37;
         var _loc57_:§5214232252232265123423632234§ = _temp_38;
         var _loc13_:BoxRectCollider = _temp_39;
         §§pop().§5214233050233063123423632234§.x = _loc56_.y * _loc55_.z - _loc56_.z * _loc55_.y;
         _loc13_.§5214233050233063123423632234§.y = _loc56_.z * _loc55_.x - _loc56_.x * _loc55_.z;
         _loc13_.§5214233050233063123423632234§.z = _loc56_.x * _loc55_.y - _loc56_.y * _loc55_.x;
         var _loc59_:Number = _loc13_.§5214233050233063123423632234§.x * _loc13_.§5214233050233063123423632234§.x + _loc13_.§5214233050233063123423632234§.y * _loc13_.§5214233050233063123423632234§.y + _loc13_.§5214233050233063123423632234§.z * _loc13_.§5214233050233063123423632234§.z;
         var _loc58_:Number;
         var _loc54_:Number;
         if(!(_loc59_ < 1e-10 ? true : (_loc58_ = 1 / Math.sqrt(_loc59_),_loc13_.§5214233050233063123423632234§.x *= _loc58_,_loc13_.§5214233050233063123423632234§.y *= _loc58_,_loc13_.§5214233050233063123423632234§.z *= _loc58_,_loc54_ = _loc13_.getOverlapOnAxis(_loc57_,_loc53_,_loc13_.§5214233050233063123423632234§,_loc60_),_loc13_.e26009f5(_loc54_,_loc13_.§5214233050233063123423632234§))))
         {
            return false;
         }
         var _temp_48:* = this;
         var _temp_47:* = _loc6_;
         var _temp_46:* = _loc4_;
         var _temp_45:* = this.§override set var§;
         var _temp_44:* = this.§521423139262313939123423632234§;
         var _loc68_:Vector3 = this.§use var override§;
         var _loc63_:Vector3 = _temp_44;
         var _loc64_:Vector3 = _temp_45;
         var _loc61_:§5214231131231144123423632234§ = _temp_46;
         var _loc65_:§5214232252232265123423632234§ = _temp_47;
         var _loc14_:BoxRectCollider = _temp_48;
         §§pop().§5214233050233063123423632234§.x = _loc64_.y * _loc63_.z - _loc64_.z * _loc63_.y;
         _loc14_.§5214233050233063123423632234§.y = _loc64_.z * _loc63_.x - _loc64_.x * _loc63_.z;
         _loc14_.§5214233050233063123423632234§.z = _loc64_.x * _loc63_.y - _loc64_.y * _loc63_.x;
         var _loc67_:Number = _loc14_.§5214233050233063123423632234§.x * _loc14_.§5214233050233063123423632234§.x + _loc14_.§5214233050233063123423632234§.y * _loc14_.§5214233050233063123423632234§.y + _loc14_.§5214233050233063123423632234§.z * _loc14_.§5214233050233063123423632234§.z;
         var _loc66_:Number;
         var _loc62_:Number;
         if(!(_loc67_ < 1e-10 ? true : (_loc66_ = 1 / Math.sqrt(_loc67_),_loc14_.§5214233050233063123423632234§.x *= _loc66_,_loc14_.§5214233050233063123423632234§.y *= _loc66_,_loc14_.§5214233050233063123423632234§.z *= _loc66_,_loc62_ = _loc14_.getOverlapOnAxis(_loc65_,_loc61_,_loc14_.§5214233050233063123423632234§,_loc68_),_loc14_.e26009f5(_loc62_,_loc14_.§5214233050233063123423632234§))))
         {
            return false;
         }
         var _temp_57:* = this;
         var _temp_56:* = _loc6_;
         var _temp_55:* = _loc4_;
         var _temp_54:* = this.§521423105912310604123423632234§;
         var _temp_53:* = this.§finally const finally§;
         var _loc76_:Vector3 = this.§use var override§;
         var _loc71_:Vector3 = _temp_53;
         var _loc72_:Vector3 = _temp_54;
         var _loc69_:§5214231131231144123423632234§ = _temp_55;
         var _loc73_:§5214232252232265123423632234§ = _temp_56;
         var _loc15_:BoxRectCollider = _temp_57;
         §§pop().§5214233050233063123423632234§.x = _loc72_.y * _loc71_.z - _loc72_.z * _loc71_.y;
         _loc15_.§5214233050233063123423632234§.y = _loc72_.z * _loc71_.x - _loc72_.x * _loc71_.z;
         _loc15_.§5214233050233063123423632234§.z = _loc72_.x * _loc71_.y - _loc72_.y * _loc71_.x;
         var _loc75_:Number = _loc15_.§5214233050233063123423632234§.x * _loc15_.§5214233050233063123423632234§.x + _loc15_.§5214233050233063123423632234§.y * _loc15_.§5214233050233063123423632234§.y + _loc15_.§5214233050233063123423632234§.z * _loc15_.§5214233050233063123423632234§.z;
         var _loc74_:Number;
         var _loc70_:Number;
         if(!(_loc75_ < 1e-10 ? true : (_loc74_ = 1 / Math.sqrt(_loc75_),_loc15_.§5214233050233063123423632234§.x *= _loc74_,_loc15_.§5214233050233063123423632234§.y *= _loc74_,_loc15_.§5214233050233063123423632234§.z *= _loc74_,_loc70_ = _loc15_.getOverlapOnAxis(_loc73_,_loc69_,_loc15_.§5214233050233063123423632234§,_loc76_),_loc15_.e26009f5(_loc70_,_loc15_.§5214233050233063123423632234§))))
         {
            return false;
         }
         var _temp_66:* = this;
         var _temp_65:* = _loc6_;
         var _temp_64:* = _loc4_;
         var _temp_63:* = this.§521423105912310604123423632234§;
         var _temp_62:* = this.§521423139262313939123423632234§;
         var _loc84_:Vector3 = this.§use var override§;
         var _loc79_:Vector3 = _temp_62;
         var _loc80_:Vector3 = _temp_63;
         var _loc77_:§5214231131231144123423632234§ = _temp_64;
         var _loc81_:§5214232252232265123423632234§ = _temp_65;
         var _loc16_:BoxRectCollider = _temp_66;
         §§pop().§5214233050233063123423632234§.x = _loc80_.y * _loc79_.z - _loc80_.z * _loc79_.y;
         _loc16_.§5214233050233063123423632234§.y = _loc80_.z * _loc79_.x - _loc80_.x * _loc79_.z;
         _loc16_.§5214233050233063123423632234§.z = _loc80_.x * _loc79_.y - _loc80_.y * _loc79_.x;
         var _loc83_:Number = _loc16_.§5214233050233063123423632234§.x * _loc16_.§5214233050233063123423632234§.x + _loc16_.§5214233050233063123423632234§.y * _loc16_.§5214233050233063123423632234§.y + _loc16_.§5214233050233063123423632234§.z * _loc16_.§5214233050233063123423632234§.z;
         var _loc82_:Number;
         var _loc78_:Number;
         if(!(_loc83_ < 1e-10 ? true : (_loc82_ = 1 / Math.sqrt(_loc83_),_loc16_.§5214233050233063123423632234§.x *= _loc82_,_loc16_.§5214233050233063123423632234§.y *= _loc82_,_loc16_.§5214233050233063123423632234§.z *= _loc82_,_loc78_ = _loc16_.getOverlapOnAxis(_loc81_,_loc77_,_loc16_.§5214233050233063123423632234§,_loc84_),_loc16_.e26009f5(_loc78_,_loc16_.§5214233050233063123423632234§))))
         {
            return false;
         }
         return true;
      }
      
      public function getContacts(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§, param3:Vector.<§function set class§>) : void
      {
         var _loc4_:§5214231131231144123423632234§ = null;
         var _loc5_:§5214232252232265123423632234§ = null;
         if(this.haveCollision(param1,param2))
         {
            if(param1 is §5214231131231144123423632234§)
            {
               _loc4_ = §5214231131231144123423632234§(param1);
               _loc5_ = §5214232252232265123423632234§(param2);
            }
            else
            {
               _loc4_ = §5214231131231144123423632234§(param2);
               _loc5_ = §5214232252232265123423632234§(param1);
            }
            this.findContacts(_loc5_,_loc4_,this.§5214231115231128123423632234§,param3);
         }
      }
      
      final private function c5de811c(param1:§5214232252232265123423632234§, param2:§5214231131231144123423632234§, param3:Vector3, param4:Vector3) : Boolean
      {
         var _temp_4:* = this;
         var _temp_3:* = param1;
         var _temp_2:* = param2;
         var _temp_1:* = param3;
         var _loc14_:Vector3 = param4;
         var _loc12_:Vector3 = _temp_1;
         var _loc8_:§5214231131231144123423632234§ = _temp_2;
         var _loc10_:§5214232252232265123423632234§ = _temp_3;
         var _loc6_:BoxRectCollider = _temp_4;
         var _loc13_:Matrix4 = _loc10_.§try const throw§;
         var _loc9_:Number = (_loc13_.m00 * _loc12_.x + _loc13_.§5214234411234424123423632234§ * _loc12_.y + _loc13_.§521423135662313579123423632234§ * _loc12_.z) * _loc10_.§return const dynamic§.x;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         var _loc11_:Number = _loc9_;
         _loc9_ = (_loc13_.§5214239800239813123423632234§ * _loc12_.x + _loc13_.m11 * _loc12_.y + _loc13_.§case set function§ * _loc12_.z) * _loc10_.§return const dynamic§.y;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc9_ = (_loc13_.§521423117972311810123423632234§ * _loc12_.x + _loc13_.§null use use§ * _loc12_.y + _loc13_.m22 * _loc12_.z) * _loc10_.§return const dynamic§.z;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc13_ = _loc8_.§try const throw§;
         _loc9_ = (_loc13_.m00 * _loc12_.x + _loc13_.§5214234411234424123423632234§ * _loc12_.y + _loc13_.§521423135662313579123423632234§ * _loc12_.z) * _loc8_.§return const dynamic§.x;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc9_ = (_loc13_.§5214239800239813123423632234§ * _loc12_.x + _loc13_.m11 * _loc12_.y + _loc13_.§case set function§ * _loc12_.z) * _loc8_.§return const dynamic§.y;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         _loc11_ += _loc9_;
         _loc9_ = _loc14_.x * _loc12_.x + _loc14_.y * _loc12_.y + _loc14_.z * _loc12_.z;
         if(_loc9_ < 0)
         {
            _loc9_ = -_loc9_;
         }
         var _loc5_:Number = _loc11_ - _loc9_;
         var _temp_14:* = this;
         var _temp_13:* = _loc5_;
         var _loc16_:Vector3 = param3;
         var _loc15_:Number = _temp_13;
         var _loc7_:BoxRectCollider = _temp_14;
         if(_loc15_ < _loc7_.§521423134732313486123423632234§)
         {
            return false;
         }
         else
         {
            if(_loc15_ + _loc7_.§521423134732313486123423632234§ < _loc7_.§return switch package§)
            {
               _loc7_.§return switch package§ = _loc15_;
               _loc7_.§5214231115231128123423632234§.x = _loc16_.x;
               _loc7_.§5214231115231128123423632234§.y = _loc16_.y;
               _loc7_.§5214231115231128123423632234§.z = _loc16_.z;
            }
            return true;
         }
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
      
      final private function findContacts(param1:§5214232252232265123423632234§, param2:§5214231131231144123423632234§, param3:Vector3, param4:Vector.<§function set class§>) : void
      {
         var _loc7_:int = 0;
         var _loc14_:§function set class§ = null;
         var _loc15_:Vector3 = null;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc6_:Matrix4 = param1.§try const throw§;
         var _loc12_:Matrix4 = param2.§try const throw§;
         var _loc16_:Vector3 = this.§use var override§;
         _loc16_.x = _loc6_.§catch package continue§ - _loc12_.§catch package continue§;
         _loc16_.y = _loc6_.§include var break§ - _loc12_.§include var break§;
         _loc16_.z = _loc6_.§function var import§ - _loc12_.§function var import§;
         if(param3.x * _loc16_.x + param3.y * _loc16_.y + param3.z * _loc16_.z < 0)
         {
            param3.x = -param3.x;
            param3.y = -param3.y;
            param3.z = -param3.z;
         }
         var _loc5_:Matrix4 = §521423134712313484123423632234§;
         ColliderUtils.buildContactBasis(param3,_loc6_,_loc12_,_loc5_);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param1,param3,FaceSide.§dynamic set if§,§521423114492311462123423632234§);
         ColliderUtils.getRectFaceInCCWOrder(param2,param3,§5214239030239043123423632234§);
         ColliderUtils.transformFaceToReferenceSpace(_loc5_,_loc6_,§521423114492311462123423632234§,4);
         ColliderUtils.transformFaceToReferenceSpace(_loc5_,_loc12_,§5214239030239043123423632234§,4);
         var _loc13_:int = int(param4.length);
         PolygonsIntersectionUtils.findContacts(param1,§521423114492311462123423632234§,4,param2,§5214239030239043123423632234§,4,_loc5_,param4);
         var _loc9_:int = int(param4.length);
         _loc7_ = _loc13_;
         while(_loc7_ < _loc9_)
         {
            _loc14_ = param4[_loc7_];
            _loc15_ = _loc14_.§5214233761233774123423632234§;
            _loc8_ = _loc12_.§521423117972311810123423632234§;
            _loc10_ = _loc12_.§null use use§;
            _loc11_ = _loc12_.m22;
            if(_loc15_.x * _loc8_ + _loc15_.y * _loc10_ + _loc15_.z * _loc11_ < 0)
            {
               _loc14_.§5214238823101123423632234§();
               _loc9_--;
               param4[_loc7_] = param4[_loc9_];
               param4[_loc9_] = null;
               _loc7_--;
            }
            else if(Math.abs(_loc12_.m22) > 0.999)
            {
               _loc15_.x = _loc8_;
               _loc15_.y = _loc10_;
               _loc15_.z = _loc11_;
            }
            _loc7_++;
         }
         if(_loc9_ < param4.length)
         {
            param4.length = _loc9_;
         }
      }
   }
}

