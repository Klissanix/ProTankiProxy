package alternativa.physics.collision.colliders
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §do catch return§.§5214232252232265123423632234§;
   import §each var null§.§function set class§;
   import §for catch for§.§521423136582313671123423632234§;
   import §for catch for§.§final set null§;
   
   public class BoxBoxCollider implements §final set null§
   {
      
      private static const §5214233050233063123423632234§:Vector3 = new Vector3();
      
      private static const §else const dynamic§:Vector3 = new Vector3();
      
      private static const §5214235299235312123423632234§:Vector3 = new Vector3();
      
      private static const §5214231932231945123423632234§:Vector3 = new Vector3();
      
      private static const §52142323623249123423632234§:Vector3 = new Vector3();
      
      private static const §set catch try§:Vector3 = new Vector3();
      
      private static const §try catch case§:Vector3 = new Vector3();
      
      private static const §use var override§:Vector3 = new Vector3();
      
      private static const §return switch null§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §for for default§:Vector.<Vertex> = new <Vertex>[new Vertex(),new Vertex(),new Vertex(),new Vertex()];
      
      private static const §521423134712313484123423632234§:Matrix4 = new Matrix4();
      
      private var §521423134732313486123423632234§:Number;
      
      private const §5214231115231128123423632234§:Vector3 = new Vector3();
      
      private var §return switch package§:Number;
      
      public function BoxBoxCollider(param1:Number)
      {
         super();
         this.§521423134732313486123423632234§ = param1;
      }
      
      final private function findContacts(param1:§5214232252232265123423632234§, param2:§5214232252232265123423632234§, param3:Vector3, param4:Vector.<§function set class§>) : void
      {
         var _loc8_:Matrix4 = param1.§try const throw§;
         var _loc7_:Matrix4 = param2.§try const throw§;
         var _loc5_:Vector3 = §use var override§;
         _loc5_.x = _loc8_.§catch package continue§ - _loc7_.§catch package continue§;
         _loc5_.y = _loc8_.§include var break§ - _loc7_.§include var break§;
         _loc5_.z = _loc8_.§function var import§ - _loc7_.§function var import§;
         if(param3.x * _loc5_.x + param3.y * _loc5_.y + param3.z * _loc5_.z < 0)
         {
            param3.x = -param3.x;
            param3.y = -param3.y;
            param3.z = -param3.z;
         }
         var _loc6_:Matrix4 = §521423134712313484123423632234§;
         ColliderUtils.buildContactBasis(param3,_loc8_,_loc7_,_loc6_);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param1,param3,FaceSide.§dynamic set if§,§return switch null§);
         ColliderUtils.getBoxFaceVerticesInCCWOrder(param2,param3,FaceSide.§5214233491233504123423632234§,§for for default§);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,param1.§try const throw§,§return switch null§,4);
         ColliderUtils.transformFaceToReferenceSpace(_loc6_,param2.§try const throw§,§for for default§,4);
         PolygonsIntersectionUtils.findContacts(param1,§return switch null§,4,param2,§for for default§,4,_loc6_,param4);
      }
      
      public function getContacts(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§, param3:Vector.<§function set class§>) : void
      {
         var _loc4_:§5214232252232265123423632234§ = null;
         var _loc5_:§5214232252232265123423632234§ = null;
         if(this.haveCollision(param1,param2))
         {
            _loc4_ = §5214232252232265123423632234§(param1);
            _loc5_ = §5214232252232265123423632234§(param2);
            var _temp_4:* = this;
            var _temp_3:* = _loc4_;
            var _temp_2:* = _loc5_;
            var _temp_1:* = this.§5214231115231128123423632234§;
            var _loc14_:Vector.<§function set class§> = param3;
            var _loc7_:Vector3 = _temp_1;
            var _loc11_:§5214232252232265123423632234§ = _temp_2;
            var _loc10_:§5214232252232265123423632234§ = _temp_3;
            var _loc6_:BoxBoxCollider = _temp_4;
            var _loc13_:Matrix4 = _loc10_.§try const throw§;
            var _loc12_:Matrix4 = _loc11_.§try const throw§;
            var _loc8_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§use var override§;
            _loc8_.x = _loc13_.§catch package continue§ - _loc12_.§catch package continue§;
            _loc8_.y = _loc13_.§include var break§ - _loc12_.§include var break§;
            _loc8_.z = _loc13_.§function var import§ - _loc12_.§function var import§;
            if(_loc7_.x * _loc8_.x + _loc7_.y * _loc8_.y + _loc7_.z * _loc8_.z < 0)
            {
               _loc7_.x = -_loc7_.x;
               _loc7_.y = -_loc7_.y;
               _loc7_.z = -_loc7_.z;
            }
            var _loc9_:Matrix4 = alternativa.physics.collision.colliders.BoxBoxCollider.§521423134712313484123423632234§;
            alternativa.physics.collision.colliders.ColliderUtils.buildContactBasis(_loc7_,_loc13_,_loc12_,_loc9_);
            alternativa.physics.collision.colliders.ColliderUtils.getBoxFaceVerticesInCCWOrder(_loc10_,_loc7_,alternativa.physics.collision.colliders.FaceSide.§dynamic set if§,alternativa.physics.collision.colliders.BoxBoxCollider.§return switch null§);
            alternativa.physics.collision.colliders.ColliderUtils.getBoxFaceVerticesInCCWOrder(_loc11_,_loc7_,alternativa.physics.collision.colliders.FaceSide.§5214233491233504123423632234§,alternativa.physics.collision.colliders.BoxBoxCollider.§for for default§);
            alternativa.physics.collision.colliders.ColliderUtils.transformFaceToReferenceSpace(_loc9_,_loc10_.§try const throw§,alternativa.physics.collision.colliders.BoxBoxCollider.§return switch null§,4);
            alternativa.physics.collision.colliders.ColliderUtils.transformFaceToReferenceSpace(_loc9_,_loc11_.§try const throw§,alternativa.physics.collision.colliders.BoxBoxCollider.§for for default§,4);
            alternativa.physics.collision.colliders.PolygonsIntersectionUtils.findContacts(_loc10_,alternativa.physics.collision.colliders.BoxBoxCollider.§return switch null§,4,_loc11_,alternativa.physics.collision.colliders.BoxBoxCollider.§for for default§,4,_loc9_,_loc14_);
            undefined;
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
      
      public function getOverlapOnAxis(param1:§5214232252232265123423632234§, param2:§5214232252232265123423632234§, param3:Vector3, param4:Vector3) : Number
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
         _loc5_ = (_loc7_.§521423117972311810123423632234§ * param3.x + _loc7_.§null use use§ * param3.y + _loc7_.m22 * param3.z) * param2.§return const dynamic§.z;
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
      
      final private function b6430cb6(param1:§5214232252232265123423632234§, param2:§5214232252232265123423632234§, param3:Vector3, param4:Vector3) : Boolean
      {
         var _loc5_:Number = this.getOverlapOnAxis(param1,param2,param3,param4);
         var _temp_2:* = this;
         var _temp_1:* = _loc5_;
         var _loc8_:Vector3 = param3;
         var _loc7_:Number = _temp_1;
         var _loc6_:BoxBoxCollider = _temp_2;
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
      
      final private function d2eb94f3(param1:§5214232252232265123423632234§, param2:§5214232252232265123423632234§, param3:Vector3, param4:Vector3, param5:Vector3) : Boolean
      {
         var _loc8_:Vector3 = §5214233050233063123423632234§;
         _loc8_.x = param3.y * param4.z - param3.z * param4.y;
         _loc8_.y = param3.z * param4.x - param3.x * param4.z;
         _loc8_.z = param3.x * param4.y - param3.y * param4.x;
         var _loc9_:Number = _loc8_.x * _loc8_.x + _loc8_.y * _loc8_.y + _loc8_.z * _loc8_.z;
         if(_loc9_ < 1e-10)
         {
            return true;
         }
         var _loc7_:Number = 1 / Math.sqrt(_loc9_);
         _loc8_.x *= _loc7_;
         _loc8_.y *= _loc7_;
         _loc8_.z *= _loc7_;
         var _loc6_:Number = this.getOverlapOnAxis(param1,param2,_loc8_,param5);
         var _temp_7:* = this;
         var _temp_6:* = _loc6_;
         var _loc12_:Vector3 = _loc8_;
         var _loc11_:Number = _temp_6;
         var _loc10_:BoxBoxCollider = _temp_7;
         if(_loc11_ < _loc10_.§521423134732313486123423632234§)
         {
            return false;
         }
         else
         {
            if(_loc11_ + _loc10_.§521423134732313486123423632234§ < _loc10_.§return switch package§)
            {
               _loc10_.§return switch package§ = _loc11_;
               _loc10_.§5214231115231128123423632234§.x = _loc12_.x;
               _loc10_.§5214231115231128123423632234§.y = _loc12_.y;
               _loc10_.§5214231115231128123423632234§.z = _loc12_.z;
            }
            return true;
         }
      }
      
      public function haveCollision(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§) : Boolean
      {
         this.§return switch package§ = 10000000000;
         var _loc4_:§5214232252232265123423632234§ = §5214232252232265123423632234§(param1);
         var _loc5_:§5214232252232265123423632234§ = §5214232252232265123423632234§(param2);
         var _loc7_:Matrix4 = _loc4_.§try const throw§;
         var _loc6_:Matrix4 = _loc5_.§try const throw§;
         var _loc3_:Vector3 = §use var override§;
         _loc3_.x = _loc7_.§catch package continue§ - _loc6_.§catch package continue§;
         _loc3_.y = _loc7_.§include var break§ - _loc6_.§include var break§;
         _loc3_.z = _loc7_.§function var import§ - _loc6_.§function var import§;
         §else const dynamic§.x = _loc7_.m00;
         §else const dynamic§.y = _loc7_.§5214234411234424123423632234§;
         §else const dynamic§.z = _loc7_.§521423135662313579123423632234§;
         var _temp_4:* = this;
         var _temp_3:* = _loc4_;
         var _temp_2:* = _loc5_;
         var _temp_1:* = §else const dynamic§;
         var _loc24_:Vector3 = _loc3_;
         var _loc27_:Vector3 = _temp_1;
         var _loc26_:§5214232252232265123423632234§ = _temp_2;
         var _loc25_:§5214232252232265123423632234§ = _temp_3;
         var _loc8_:BoxBoxCollider = _temp_4;
         var _loc23_:Number = Number(§§pop().getOverlapOnAxis(_loc25_,_loc26_,_loc27_,_loc24_));
         if(!_loc8_.e26009f5(_loc23_,_loc27_))
         {
            return false;
         }
         §5214235299235312123423632234§.x = _loc7_.§5214239800239813123423632234§;
         §5214235299235312123423632234§.y = _loc7_.m11;
         §5214235299235312123423632234§.z = _loc7_.§case set function§;
         var _temp_8:* = this;
         var _temp_7:* = _loc4_;
         var _temp_6:* = _loc5_;
         var _temp_5:* = §5214235299235312123423632234§;
         var _loc29_:Vector3 = _loc3_;
         var _loc32_:Vector3 = _temp_5;
         var _loc31_:§5214232252232265123423632234§ = _temp_6;
         var _loc30_:§5214232252232265123423632234§ = _temp_7;
         var _loc9_:BoxBoxCollider = _temp_8;
         var _loc28_:Number = Number(§§pop().getOverlapOnAxis(_loc30_,_loc31_,_loc32_,_loc29_));
         if(!_loc9_.e26009f5(_loc28_,_loc32_))
         {
            return false;
         }
         §5214231932231945123423632234§.x = _loc7_.§521423117972311810123423632234§;
         §5214231932231945123423632234§.y = _loc7_.§null use use§;
         §5214231932231945123423632234§.z = _loc7_.m22;
         var _temp_12:* = this;
         var _temp_11:* = _loc4_;
         var _temp_10:* = _loc5_;
         var _temp_9:* = §5214231932231945123423632234§;
         var _loc34_:Vector3 = _loc3_;
         var _loc37_:Vector3 = _temp_9;
         var _loc36_:§5214232252232265123423632234§ = _temp_10;
         var _loc35_:§5214232252232265123423632234§ = _temp_11;
         var _loc10_:BoxBoxCollider = _temp_12;
         var _loc33_:Number = Number(§§pop().getOverlapOnAxis(_loc35_,_loc36_,_loc37_,_loc34_));
         if(!_loc10_.e26009f5(_loc33_,_loc37_))
         {
            return false;
         }
         §52142323623249123423632234§.x = _loc6_.m00;
         §52142323623249123423632234§.y = _loc6_.§5214234411234424123423632234§;
         §52142323623249123423632234§.z = _loc6_.§521423135662313579123423632234§;
         var _temp_16:* = this;
         var _temp_15:* = _loc4_;
         var _temp_14:* = _loc5_;
         var _temp_13:* = §52142323623249123423632234§;
         var _loc39_:Vector3 = _loc3_;
         var _loc42_:Vector3 = _temp_13;
         var _loc41_:§5214232252232265123423632234§ = _temp_14;
         var _loc40_:§5214232252232265123423632234§ = _temp_15;
         var _loc11_:BoxBoxCollider = _temp_16;
         var _loc38_:Number = Number(§§pop().getOverlapOnAxis(_loc40_,_loc41_,_loc42_,_loc39_));
         if(!_loc11_.e26009f5(_loc38_,_loc42_))
         {
            return false;
         }
         §set catch try§.x = _loc6_.§5214239800239813123423632234§;
         §set catch try§.y = _loc6_.m11;
         §set catch try§.z = _loc6_.§case set function§;
         var _temp_20:* = this;
         var _temp_19:* = _loc4_;
         var _temp_18:* = _loc5_;
         var _temp_17:* = §set catch try§;
         var _loc44_:Vector3 = _loc3_;
         var _loc47_:Vector3 = _temp_17;
         var _loc46_:§5214232252232265123423632234§ = _temp_18;
         var _loc45_:§5214232252232265123423632234§ = _temp_19;
         var _loc12_:BoxBoxCollider = _temp_20;
         var _loc43_:Number = Number(§§pop().getOverlapOnAxis(_loc45_,_loc46_,_loc47_,_loc44_));
         if(!_loc12_.e26009f5(_loc43_,_loc47_))
         {
            return false;
         }
         §try catch case§.x = _loc6_.§521423117972311810123423632234§;
         §try catch case§.y = _loc6_.§null use use§;
         §try catch case§.z = _loc6_.m22;
         var _temp_24:* = this;
         var _temp_23:* = _loc4_;
         var _temp_22:* = _loc5_;
         var _temp_21:* = §try catch case§;
         var _loc49_:Vector3 = _loc3_;
         var _loc52_:Vector3 = _temp_21;
         var _loc51_:§5214232252232265123423632234§ = _temp_22;
         var _loc50_:§5214232252232265123423632234§ = _temp_23;
         var _loc13_:BoxBoxCollider = _temp_24;
         var _loc48_:Number = Number(§§pop().getOverlapOnAxis(_loc50_,_loc51_,_loc52_,_loc49_));
         if(!_loc13_.e26009f5(_loc48_,_loc52_))
         {
            return false;
         }
         var _temp_29:* = this;
         var _temp_28:* = _loc4_;
         var _temp_27:* = _loc5_;
         var _temp_26:* = §else const dynamic§;
         var _temp_25:* = §52142323623249123423632234§;
         var _loc59_:Vector3 = _loc3_;
         var _loc60_:Vector3 = _temp_25;
         var _loc61_:Vector3 = _temp_26;
         var _loc55_:§5214232252232265123423632234§ = _temp_27;
         var _loc54_:§5214232252232265123423632234§ = _temp_28;
         var _loc14_:BoxBoxCollider = _temp_29;
         var _loc57_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc57_.x = _loc61_.y * _loc60_.z - _loc61_.z * _loc60_.y;
         _loc57_.y = _loc61_.z * _loc60_.x - _loc61_.x * _loc60_.z;
         _loc57_.z = _loc61_.x * _loc60_.y - _loc61_.y * _loc60_.x;
         var _loc58_:Number = _loc57_.x * _loc57_.x + _loc57_.y * _loc57_.y + _loc57_.z * _loc57_.z;
         var _loc56_:Number;
         var _loc53_:Number;
         if(!(_loc58_ < 1e-10 ? true : (_loc56_ = 1 / Math.sqrt(_loc58_),_loc57_.x *= _loc56_,_loc57_.y *= _loc56_,_loc57_.z *= _loc56_,_loc53_ = _loc14_.getOverlapOnAxis(_loc54_,_loc55_,_loc57_,_loc59_),_loc14_.e26009f5(_loc53_,_loc57_))))
         {
            return false;
         }
         var _temp_39:* = this;
         var _temp_38:* = _loc4_;
         var _temp_37:* = _loc5_;
         var _temp_36:* = §else const dynamic§;
         var _temp_35:* = §set catch try§;
         var _loc68_:Vector3 = _loc3_;
         var _loc69_:Vector3 = _temp_35;
         var _loc70_:Vector3 = _temp_36;
         var _loc64_:§5214232252232265123423632234§ = _temp_37;
         var _loc63_:§5214232252232265123423632234§ = _temp_38;
         var _loc15_:BoxBoxCollider = _temp_39;
         var _loc66_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc66_.x = _loc70_.y * _loc69_.z - _loc70_.z * _loc69_.y;
         _loc66_.y = _loc70_.z * _loc69_.x - _loc70_.x * _loc69_.z;
         _loc66_.z = _loc70_.x * _loc69_.y - _loc70_.y * _loc69_.x;
         var _loc67_:Number = _loc66_.x * _loc66_.x + _loc66_.y * _loc66_.y + _loc66_.z * _loc66_.z;
         var _loc65_:Number;
         var _loc62_:Number;
         if(!(_loc67_ < 1e-10 ? true : (_loc65_ = 1 / Math.sqrt(_loc67_),_loc66_.x *= _loc65_,_loc66_.y *= _loc65_,_loc66_.z *= _loc65_,_loc62_ = _loc15_.getOverlapOnAxis(_loc63_,_loc64_,_loc66_,_loc68_),_loc15_.e26009f5(_loc62_,_loc66_))))
         {
            return false;
         }
         var _temp_49:* = this;
         var _temp_48:* = _loc4_;
         var _temp_47:* = _loc5_;
         var _temp_46:* = §else const dynamic§;
         var _temp_45:* = §try catch case§;
         var _loc77_:Vector3 = _loc3_;
         var _loc78_:Vector3 = _temp_45;
         var _loc79_:Vector3 = _temp_46;
         var _loc73_:§5214232252232265123423632234§ = _temp_47;
         var _loc72_:§5214232252232265123423632234§ = _temp_48;
         var _loc16_:BoxBoxCollider = _temp_49;
         var _loc75_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc75_.x = _loc79_.y * _loc78_.z - _loc79_.z * _loc78_.y;
         _loc75_.y = _loc79_.z * _loc78_.x - _loc79_.x * _loc78_.z;
         _loc75_.z = _loc79_.x * _loc78_.y - _loc79_.y * _loc78_.x;
         var _loc76_:Number = _loc75_.x * _loc75_.x + _loc75_.y * _loc75_.y + _loc75_.z * _loc75_.z;
         var _loc74_:Number;
         var _loc71_:Number;
         if(!(_loc76_ < 1e-10 ? true : (_loc74_ = 1 / Math.sqrt(_loc76_),_loc75_.x *= _loc74_,_loc75_.y *= _loc74_,_loc75_.z *= _loc74_,_loc71_ = _loc16_.getOverlapOnAxis(_loc72_,_loc73_,_loc75_,_loc77_),_loc16_.e26009f5(_loc71_,_loc75_))))
         {
            return false;
         }
         var _temp_59:* = this;
         var _temp_58:* = _loc4_;
         var _temp_57:* = _loc5_;
         var _temp_56:* = §5214235299235312123423632234§;
         var _temp_55:* = §52142323623249123423632234§;
         var _loc86_:Vector3 = _loc3_;
         var _loc87_:Vector3 = _temp_55;
         var _loc88_:Vector3 = _temp_56;
         var _loc82_:§5214232252232265123423632234§ = _temp_57;
         var _loc81_:§5214232252232265123423632234§ = _temp_58;
         var _loc17_:BoxBoxCollider = _temp_59;
         var _loc84_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc84_.x = _loc88_.y * _loc87_.z - _loc88_.z * _loc87_.y;
         _loc84_.y = _loc88_.z * _loc87_.x - _loc88_.x * _loc87_.z;
         _loc84_.z = _loc88_.x * _loc87_.y - _loc88_.y * _loc87_.x;
         var _loc85_:Number = _loc84_.x * _loc84_.x + _loc84_.y * _loc84_.y + _loc84_.z * _loc84_.z;
         var _loc83_:Number;
         var _loc80_:Number;
         if(!(_loc85_ < 1e-10 ? true : (_loc83_ = 1 / Math.sqrt(_loc85_),_loc84_.x *= _loc83_,_loc84_.y *= _loc83_,_loc84_.z *= _loc83_,_loc80_ = _loc17_.getOverlapOnAxis(_loc81_,_loc82_,_loc84_,_loc86_),_loc17_.e26009f5(_loc80_,_loc84_))))
         {
            return false;
         }
         var _temp_69:* = this;
         var _temp_68:* = _loc4_;
         var _temp_67:* = _loc5_;
         var _temp_66:* = §5214235299235312123423632234§;
         var _temp_65:* = §set catch try§;
         var _loc95_:Vector3 = _loc3_;
         var _loc96_:Vector3 = _temp_65;
         var _loc97_:Vector3 = _temp_66;
         var _loc91_:§5214232252232265123423632234§ = _temp_67;
         var _loc90_:§5214232252232265123423632234§ = _temp_68;
         var _loc18_:BoxBoxCollider = _temp_69;
         var _loc93_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc93_.x = _loc97_.y * _loc96_.z - _loc97_.z * _loc96_.y;
         _loc93_.y = _loc97_.z * _loc96_.x - _loc97_.x * _loc96_.z;
         _loc93_.z = _loc97_.x * _loc96_.y - _loc97_.y * _loc96_.x;
         var _loc94_:Number = _loc93_.x * _loc93_.x + _loc93_.y * _loc93_.y + _loc93_.z * _loc93_.z;
         var _loc92_:Number;
         var _loc89_:Number;
         if(!(_loc94_ < 1e-10 ? true : (_loc92_ = 1 / Math.sqrt(_loc94_),_loc93_.x *= _loc92_,_loc93_.y *= _loc92_,_loc93_.z *= _loc92_,_loc89_ = _loc18_.getOverlapOnAxis(_loc90_,_loc91_,_loc93_,_loc95_),_loc18_.e26009f5(_loc89_,_loc93_))))
         {
            return false;
         }
         var _temp_79:* = this;
         var _temp_78:* = _loc4_;
         var _temp_77:* = _loc5_;
         var _temp_76:* = §5214235299235312123423632234§;
         var _temp_75:* = §try catch case§;
         var _loc104_:Vector3 = _loc3_;
         var _loc105_:Vector3 = _temp_75;
         var _loc106_:Vector3 = _temp_76;
         var _loc100_:§5214232252232265123423632234§ = _temp_77;
         var _loc99_:§5214232252232265123423632234§ = _temp_78;
         var _loc19_:BoxBoxCollider = _temp_79;
         var _loc102_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc102_.x = _loc106_.y * _loc105_.z - _loc106_.z * _loc105_.y;
         _loc102_.y = _loc106_.z * _loc105_.x - _loc106_.x * _loc105_.z;
         _loc102_.z = _loc106_.x * _loc105_.y - _loc106_.y * _loc105_.x;
         var _loc103_:Number = _loc102_.x * _loc102_.x + _loc102_.y * _loc102_.y + _loc102_.z * _loc102_.z;
         var _loc101_:Number;
         var _loc98_:Number;
         if(!(_loc103_ < 1e-10 ? true : (_loc101_ = 1 / Math.sqrt(_loc103_),_loc102_.x *= _loc101_,_loc102_.y *= _loc101_,_loc102_.z *= _loc101_,_loc98_ = _loc19_.getOverlapOnAxis(_loc99_,_loc100_,_loc102_,_loc104_),_loc19_.e26009f5(_loc98_,_loc102_))))
         {
            return false;
         }
         var _temp_89:* = this;
         var _temp_88:* = _loc4_;
         var _temp_87:* = _loc5_;
         var _temp_86:* = §5214231932231945123423632234§;
         var _temp_85:* = §52142323623249123423632234§;
         var _loc113_:Vector3 = _loc3_;
         var _loc114_:Vector3 = _temp_85;
         var _loc115_:Vector3 = _temp_86;
         var _loc109_:§5214232252232265123423632234§ = _temp_87;
         var _loc108_:§5214232252232265123423632234§ = _temp_88;
         var _loc20_:BoxBoxCollider = _temp_89;
         var _loc111_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc111_.x = _loc115_.y * _loc114_.z - _loc115_.z * _loc114_.y;
         _loc111_.y = _loc115_.z * _loc114_.x - _loc115_.x * _loc114_.z;
         _loc111_.z = _loc115_.x * _loc114_.y - _loc115_.y * _loc114_.x;
         var _loc112_:Number = _loc111_.x * _loc111_.x + _loc111_.y * _loc111_.y + _loc111_.z * _loc111_.z;
         var _loc110_:Number;
         var _loc107_:Number;
         if(!(_loc112_ < 1e-10 ? true : (_loc110_ = 1 / Math.sqrt(_loc112_),_loc111_.x *= _loc110_,_loc111_.y *= _loc110_,_loc111_.z *= _loc110_,_loc107_ = _loc20_.getOverlapOnAxis(_loc108_,_loc109_,_loc111_,_loc113_),_loc20_.e26009f5(_loc107_,_loc111_))))
         {
            return false;
         }
         var _temp_99:* = this;
         var _temp_98:* = _loc4_;
         var _temp_97:* = _loc5_;
         var _temp_96:* = §5214231932231945123423632234§;
         var _temp_95:* = §set catch try§;
         var _loc122_:Vector3 = _loc3_;
         var _loc123_:Vector3 = _temp_95;
         var _loc124_:Vector3 = _temp_96;
         var _loc118_:§5214232252232265123423632234§ = _temp_97;
         var _loc117_:§5214232252232265123423632234§ = _temp_98;
         var _loc21_:BoxBoxCollider = _temp_99;
         var _loc120_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc120_.x = _loc124_.y * _loc123_.z - _loc124_.z * _loc123_.y;
         _loc120_.y = _loc124_.z * _loc123_.x - _loc124_.x * _loc123_.z;
         _loc120_.z = _loc124_.x * _loc123_.y - _loc124_.y * _loc123_.x;
         var _loc121_:Number = _loc120_.x * _loc120_.x + _loc120_.y * _loc120_.y + _loc120_.z * _loc120_.z;
         var _loc119_:Number;
         var _loc116_:Number;
         if(!(_loc121_ < 1e-10 ? true : (_loc119_ = 1 / Math.sqrt(_loc121_),_loc120_.x *= _loc119_,_loc120_.y *= _loc119_,_loc120_.z *= _loc119_,_loc116_ = _loc21_.getOverlapOnAxis(_loc117_,_loc118_,_loc120_,_loc122_),_loc21_.e26009f5(_loc116_,_loc120_))))
         {
            return false;
         }
         var _temp_109:* = this;
         var _temp_108:* = _loc4_;
         var _temp_107:* = _loc5_;
         var _temp_106:* = §5214231932231945123423632234§;
         var _temp_105:* = §try catch case§;
         var _loc131_:Vector3 = _loc3_;
         var _loc132_:Vector3 = _temp_105;
         var _loc133_:Vector3 = _temp_106;
         var _loc127_:§5214232252232265123423632234§ = _temp_107;
         var _loc126_:§5214232252232265123423632234§ = _temp_108;
         var _loc22_:BoxBoxCollider = _temp_109;
         var _loc129_:Vector3 = alternativa.physics.collision.colliders.BoxBoxCollider.§5214233050233063123423632234§;
         _loc129_.x = _loc133_.y * _loc132_.z - _loc133_.z * _loc132_.y;
         _loc129_.y = _loc133_.z * _loc132_.x - _loc133_.x * _loc132_.z;
         _loc129_.z = _loc133_.x * _loc132_.y - _loc133_.y * _loc132_.x;
         var _loc130_:Number = _loc129_.x * _loc129_.x + _loc129_.y * _loc129_.y + _loc129_.z * _loc129_.z;
         var _loc128_:Number;
         var _loc125_:Number;
         return _loc130_ < 1e-10 ? true : (_loc128_ = 1 / Math.sqrt(_loc130_),_loc129_.x *= _loc128_,_loc129_.y *= _loc128_,_loc129_.z *= _loc128_,_loc125_ = _loc22_.getOverlapOnAxis(_loc126_,_loc127_,_loc129_,_loc131_),_loc22_.e26009f5(_loc125_,_loc129_));
      }
   }
}

