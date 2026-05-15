package alternativa.math
{
   import alternativa.engine3d.core.Object3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class Matrix4
   {
      
      public static const §var catch§:Matrix4 = new Matrix4();
      
      public var m00:Number;
      
      public var §5214239800239813123423632234§:Number;
      
      public var §521423117972311810123423632234§:Number;
      
      public var §catch package continue§:Number;
      
      public var §5214234411234424123423632234§:Number;
      
      public var m11:Number;
      
      public var §null use use§:Number;
      
      public var §include var break§:Number;
      
      public var §521423135662313579123423632234§:Number;
      
      public var §case set function§:Number;
      
      public var m22:Number;
      
      public var §function var import§:Number;
      
      public function Matrix4(param1:Number = 1, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Number = 1, param7:Number = 0, param8:Number = 0, param9:Number = 0, param10:Number = 0, param11:Number = 1, param12:Number = 0)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
      }
      
      public function getRight(param1:Vector3) : void
      {
         this.getAxis(0,param1);
      }
      
      public function setRotationMatrix(param1:Number, param2:Number, param3:Number) : Matrix4
      {
         var _loc11_:Number = Math.cos(param1);
         var _loc5_:Number = Math.sin(param1);
         var _loc9_:Number = Math.cos(param2);
         var _loc4_:Number = Math.sin(param2);
         var _loc10_:Number = Math.cos(param3);
         var _loc6_:Number = Math.sin(param3);
         var _loc8_:Number = _loc10_ * _loc4_;
         var _loc7_:Number = _loc6_ * _loc4_;
         this.m00 = _loc10_ * _loc9_;
         this.§5214239800239813123423632234§ = _loc8_ * _loc5_ - _loc6_ * _loc11_;
         this.§521423117972311810123423632234§ = _loc8_ * _loc11_ + _loc6_ * _loc5_;
         this.§5214234411234424123423632234§ = _loc6_ * _loc9_;
         this.m11 = _loc7_ * _loc5_ + _loc10_ * _loc11_;
         this.§null use use§ = _loc7_ * _loc11_ - _loc10_ * _loc5_;
         this.§521423135662313579123423632234§ = -_loc4_;
         this.§case set function§ = _loc9_ * _loc5_;
         this.m22 = _loc9_ * _loc11_;
         return this;
      }
      
      public function transformVectors(param1:Vector.<Vector3>, param2:Vector.<Vector3>) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Vector3 = null;
         var _loc6_:Vector3 = null;
         var _loc3_:int = int(param1.length);
         while(_loc5_ < _loc3_)
         {
            _loc4_ = param1[_loc5_];
            _loc6_ = param2[_loc5_];
            _loc6_.x = this.m00 * _loc4_.x + this.§5214239800239813123423632234§ * _loc4_.y + this.§521423117972311810123423632234§ * _loc4_.z + this.§catch package continue§;
            _loc6_.y = this.§5214234411234424123423632234§ * _loc4_.x + this.m11 * _loc4_.y + this.§null use use§ * _loc4_.z + this.§include var break§;
            _loc6_.z = this.§521423135662313579123423632234§ * _loc4_.x + this.§case set function§ * _loc4_.y + this.m22 * _loc4_.z + this.§function var import§;
            _loc5_++;
         }
      }
      
      public function subtract(param1:Matrix4) : Matrix4
      {
         this.m00 -= param1.m00;
         this.§5214239800239813123423632234§ -= param1.§5214239800239813123423632234§;
         this.§521423117972311810123423632234§ -= param1.§521423117972311810123423632234§;
         this.§catch package continue§ -= param1.§catch package continue§;
         this.§5214234411234424123423632234§ -= param1.§5214234411234424123423632234§;
         this.m11 -= param1.m11;
         this.§null use use§ -= param1.§null use use§;
         this.§include var break§ -= param1.§include var break§;
         this.§521423135662313579123423632234§ -= param1.§521423135662313579123423632234§;
         this.§case set function§ -= param1.§case set function§;
         this.m22 -= param1.m22;
         this.§function var import§ -= param1.§function var import§;
         return this;
      }
      
      public function getPosition(param1:Vector3) : void
      {
         param1.x = this.§catch package continue§;
         param1.y = this.§include var break§;
         param1.z = this.§function var import§;
      }
      
      public function copy(param1:Matrix4) : Matrix4
      {
         this.m00 = param1.m00;
         this.§5214239800239813123423632234§ = param1.§5214239800239813123423632234§;
         this.§521423117972311810123423632234§ = param1.§521423117972311810123423632234§;
         this.§catch package continue§ = param1.§catch package continue§;
         this.§5214234411234424123423632234§ = param1.§5214234411234424123423632234§;
         this.m11 = param1.m11;
         this.§null use use§ = param1.§null use use§;
         this.§include var break§ = param1.§include var break§;
         this.§521423135662313579123423632234§ = param1.§521423135662313579123423632234§;
         this.§case set function§ = param1.§case set function§;
         this.m22 = param1.m22;
         this.§function var import§ = param1.§function var import§;
         return this;
      }
      
      public function setMatrixForObject3D(param1:Object3D) : void
      {
         this.setMatrix(param1.x,param1.y,param1.z,param1.rotationX,param1.rotationY,param1.rotationZ);
      }
      
      public function getAxis(param1:int, param2:Vector3) : void
      {
         switch(param1)
         {
            case 0:
               param2.x = this.m00;
               param2.y = this.§5214234411234424123423632234§;
               param2.z = this.§521423135662313579123423632234§;
               return;
            case 1:
               param2.x = this.§5214239800239813123423632234§;
               param2.y = this.m11;
               param2.z = this.§case set function§;
               return;
            case 2:
               param2.x = this.§521423117972311810123423632234§;
               param2.y = this.§null use use§;
               param2.z = this.m22;
               return;
            case 3:
               param2.x = this.§catch package continue§;
               param2.y = this.§include var break§;
               param2.z = this.§function var import§;
               return;
            default:
               return;
         }
      }
      
      public function transformVectorsInverse(param1:Vector.<Vector3>, param2:Vector.<Vector3>) : void
      {
         var _loc8_:int = 0;
         var _loc7_:Vector3 = null;
         var _loc9_:Vector3 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = int(param1.length);
         while(_loc8_ < _loc6_)
         {
            _loc7_ = param1[_loc8_];
            _loc9_ = param2[_loc8_];
            _loc3_ = _loc7_.x - this.§catch package continue§;
            _loc4_ = _loc7_.y - this.§include var break§;
            _loc5_ = _loc7_.z - this.§function var import§;
            _loc9_.x = this.m00 * _loc3_ + this.§5214234411234424123423632234§ * _loc4_ + this.§521423135662313579123423632234§ * _loc5_;
            _loc9_.y = this.§5214239800239813123423632234§ * _loc3_ + this.m11 * _loc4_ + this.§case set function§ * _loc5_;
            _loc9_.z = this.§521423117972311810123423632234§ * _loc3_ + this.§null use use§ * _loc4_ + this.m22 * _loc5_;
            _loc8_++;
         }
      }
      
      public function transformVectorsInverseN(param1:Vector.<Vector3>, param2:Vector.<Vector3>, param3:int) : void
      {
         var _loc8_:int = 0;
         var _loc7_:Vector3 = null;
         var _loc9_:Vector3 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         while(_loc8_ < param3)
         {
            _loc7_ = param1[_loc8_];
            _loc9_ = param2[_loc8_];
            _loc4_ = _loc7_.x - this.§catch package continue§;
            _loc5_ = _loc7_.y - this.§include var break§;
            _loc6_ = _loc7_.z - this.§function var import§;
            _loc9_.x = this.m00 * _loc4_ + this.§5214234411234424123423632234§ * _loc5_ + this.§521423135662313579123423632234§ * _loc6_;
            _loc9_.y = this.§5214239800239813123423632234§ * _loc4_ + this.m11 * _loc5_ + this.§case set function§ * _loc6_;
            _loc9_.z = this.§521423117972311810123423632234§ * _loc4_ + this.§null use use§ * _loc5_ + this.m22 * _loc6_;
            _loc8_++;
         }
      }
      
      public function transformVectorInverse(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:Number = param1.x - this.§catch package continue§;
         var _loc4_:Number = param1.y - this.§include var break§;
         var _loc5_:Number = param1.z - this.§function var import§;
         param2.x = this.m00 * _loc3_ + this.§5214234411234424123423632234§ * _loc4_ + this.§521423135662313579123423632234§ * _loc5_;
         param2.y = this.§5214239800239813123423632234§ * _loc3_ + this.m11 * _loc4_ + this.§case set function§ * _loc5_;
         param2.z = this.§521423117972311810123423632234§ * _loc3_ + this.§null use use§ * _loc4_ + this.m22 * _loc5_;
      }
      
      public function getEulerAngles(param1:Vector3) : void
      {
         if(-1 < this.§521423135662313579123423632234§ && this.§521423135662313579123423632234§ < 1)
         {
            param1.x = Math.atan2(this.§case set function§,this.m22);
            param1.y = -Math.asin(this.§521423135662313579123423632234§);
            param1.z = Math.atan2(this.§5214234411234424123423632234§,this.m00);
         }
         else
         {
            param1.x = 0;
            param1.y = this.§521423135662313579123423632234§ <= -1 ? 3.141592653589793 : -3.141592653589793;
            param1.y *= 0.5;
            param1.z = Math.atan2(-this.§5214239800239813123423632234§,this.m11);
         }
      }
      
      public function toIdentity() : Matrix4
      {
         this.m00 = this.m11 = this.m22 = 1;
         this.§5214239800239813123423632234§ = this.§521423117972311810123423632234§ = this.§5214234411234424123423632234§ = this.§null use use§ = this.§521423135662313579123423632234§ = this.§case set function§ = this.§catch package continue§ = this.§include var break§ = this.§function var import§ = 0;
         return this;
      }
      
      public function prepend(param1:Matrix4) : Matrix4
      {
         var _loc8_:Number = this.m00;
         var _loc2_:Number = this.§5214239800239813123423632234§;
         var _loc9_:Number = this.§521423117972311810123423632234§;
         var _loc3_:Number = this.§catch package continue§;
         var _loc10_:Number = this.§5214234411234424123423632234§;
         var _loc4_:Number = this.m11;
         var _loc11_:Number = this.§null use use§;
         var _loc5_:Number = this.§include var break§;
         var _loc12_:Number = this.§521423135662313579123423632234§;
         var _loc6_:Number = this.§case set function§;
         var _loc13_:Number = this.m22;
         var _loc7_:Number = this.§function var import§;
         this.m00 = _loc8_ * param1.m00 + _loc2_ * param1.§5214234411234424123423632234§ + _loc9_ * param1.§521423135662313579123423632234§;
         this.§5214239800239813123423632234§ = _loc8_ * param1.§5214239800239813123423632234§ + _loc2_ * param1.m11 + _loc9_ * param1.§case set function§;
         this.§521423117972311810123423632234§ = _loc8_ * param1.§521423117972311810123423632234§ + _loc2_ * param1.§null use use§ + _loc9_ * param1.m22;
         this.§catch package continue§ = _loc8_ * param1.§catch package continue§ + _loc2_ * param1.§include var break§ + _loc9_ * param1.§function var import§ + _loc3_;
         this.§5214234411234424123423632234§ = _loc10_ * param1.m00 + _loc4_ * param1.§5214234411234424123423632234§ + _loc11_ * param1.§521423135662313579123423632234§;
         this.m11 = _loc10_ * param1.§5214239800239813123423632234§ + _loc4_ * param1.m11 + _loc11_ * param1.§case set function§;
         this.§null use use§ = _loc10_ * param1.§521423117972311810123423632234§ + _loc4_ * param1.§null use use§ + _loc11_ * param1.m22;
         this.§include var break§ = _loc10_ * param1.§catch package continue§ + _loc4_ * param1.§include var break§ + _loc11_ * param1.§function var import§ + _loc5_;
         this.§521423135662313579123423632234§ = _loc12_ * param1.m00 + _loc6_ * param1.§5214234411234424123423632234§ + _loc13_ * param1.§521423135662313579123423632234§;
         this.§case set function§ = _loc12_ * param1.§5214239800239813123423632234§ + _loc6_ * param1.m11 + _loc13_ * param1.§case set function§;
         this.m22 = _loc12_ * param1.§521423117972311810123423632234§ + _loc6_ * param1.§null use use§ + _loc13_ * param1.m22;
         this.§function var import§ = _loc12_ * param1.§catch package continue§ + _loc6_ * param1.§include var break§ + _loc13_ * param1.§function var import§ + _loc7_;
         return this;
      }
      
      public function setFromMatrix3DRaw(param1:Vector.<Number>) : void
      {
         this.init(param1[0],param1[4],param1[8],param1[12],param1[1],param1[5],param1[9],param1[13],param1[2],param1[6],param1[10],param1[14]);
      }
      
      public function append(param1:Matrix4) : Matrix4
      {
         var _loc8_:Number = this.m00;
         var _loc2_:Number = this.§5214239800239813123423632234§;
         var _loc9_:Number = this.§521423117972311810123423632234§;
         var _loc3_:Number = this.§catch package continue§;
         var _loc10_:Number = this.§5214234411234424123423632234§;
         var _loc4_:Number = this.m11;
         var _loc11_:Number = this.§null use use§;
         var _loc5_:Number = this.§include var break§;
         var _loc12_:Number = this.§521423135662313579123423632234§;
         var _loc6_:Number = this.§case set function§;
         var _loc13_:Number = this.m22;
         var _loc7_:Number = this.§function var import§;
         this.m00 = param1.m00 * _loc8_ + param1.§5214239800239813123423632234§ * _loc10_ + param1.§521423117972311810123423632234§ * _loc12_;
         this.§5214239800239813123423632234§ = param1.m00 * _loc2_ + param1.§5214239800239813123423632234§ * _loc4_ + param1.§521423117972311810123423632234§ * _loc6_;
         this.§521423117972311810123423632234§ = param1.m00 * _loc9_ + param1.§5214239800239813123423632234§ * _loc11_ + param1.§521423117972311810123423632234§ * _loc13_;
         this.§catch package continue§ = param1.m00 * _loc3_ + param1.§5214239800239813123423632234§ * _loc5_ + param1.§521423117972311810123423632234§ * _loc7_ + param1.§catch package continue§;
         this.§5214234411234424123423632234§ = param1.§5214234411234424123423632234§ * _loc8_ + param1.m11 * _loc10_ + param1.§null use use§ * _loc12_;
         this.m11 = param1.§5214234411234424123423632234§ * _loc2_ + param1.m11 * _loc4_ + param1.§null use use§ * _loc6_;
         this.§null use use§ = param1.§5214234411234424123423632234§ * _loc9_ + param1.m11 * _loc11_ + param1.§null use use§ * _loc13_;
         this.§include var break§ = param1.§5214234411234424123423632234§ * _loc3_ + param1.m11 * _loc5_ + param1.§null use use§ * _loc7_ + param1.§include var break§;
         this.§521423135662313579123423632234§ = param1.§521423135662313579123423632234§ * _loc8_ + param1.§case set function§ * _loc10_ + param1.m22 * _loc12_;
         this.§case set function§ = param1.§521423135662313579123423632234§ * _loc2_ + param1.§case set function§ * _loc4_ + param1.m22 * _loc6_;
         this.m22 = param1.§521423135662313579123423632234§ * _loc9_ + param1.§case set function§ * _loc11_ + param1.m22 * _loc13_;
         this.§function var import§ = param1.§521423135662313579123423632234§ * _loc3_ + param1.§case set function§ * _loc5_ + param1.m22 * _loc7_ + param1.§function var import§;
         return this;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number) : void
      {
         this.m00 = param1;
         this.§5214239800239813123423632234§ = param2;
         this.§521423117972311810123423632234§ = param3;
         this.§catch package continue§ = param4;
         this.§5214234411234424123423632234§ = param5;
         this.m11 = param6;
         this.§null use use§ = param7;
         this.§include var break§ = param8;
         this.§521423135662313579123423632234§ = param9;
         this.§case set function§ = param10;
         this.m22 = param11;
         this.§function var import§ = param12;
      }
      
      public function getUp(param1:Vector3) : void
      {
         this.getAxis(2,param1);
      }
      
      public function setPosition(param1:Vector3) : void
      {
         this.§catch package continue§ = param1.x;
         this.§include var break§ = param1.y;
         this.§function var import§ = param1.z;
      }
      
      public function setOrientationFromMatrix3(param1:Matrix3) : Matrix4
      {
         this.m00 = param1.m00;
         this.§5214239800239813123423632234§ = param1.§5214239800239813123423632234§;
         this.§521423117972311810123423632234§ = param1.§521423117972311810123423632234§;
         this.§5214234411234424123423632234§ = param1.§5214234411234424123423632234§;
         this.m11 = param1.m11;
         this.§null use use§ = param1.§null use use§;
         this.§521423135662313579123423632234§ = param1.§521423135662313579123423632234§;
         this.§case set function§ = param1.§case set function§;
         this.m22 = param1.m22;
         return this;
      }
      
      public function deltaTransformVectorInverse(param1:Vector3, param2:Vector3) : void
      {
         param2.x = this.m00 * param1.x + this.§5214234411234424123423632234§ * param1.y + this.§521423135662313579123423632234§ * param1.z;
         param2.y = this.§5214239800239813123423632234§ * param1.x + this.m11 * param1.y + this.§case set function§ * param1.z;
         param2.z = this.§521423117972311810123423632234§ * param1.x + this.§null use use§ * param1.y + this.m22 * param1.z;
      }
      
      public function add(param1:Matrix4) : Matrix4
      {
         this.m00 += param1.m00;
         this.§5214239800239813123423632234§ += param1.§5214239800239813123423632234§;
         this.§521423117972311810123423632234§ += param1.§521423117972311810123423632234§;
         this.§catch package continue§ += param1.§catch package continue§;
         this.§5214234411234424123423632234§ += param1.§5214234411234424123423632234§;
         this.m11 += param1.m11;
         this.§null use use§ += param1.§null use use§;
         this.§include var break§ += param1.§include var break§;
         this.§521423135662313579123423632234§ += param1.§521423135662313579123423632234§;
         this.§case set function§ += param1.§case set function§;
         this.m22 += param1.m22;
         this.§function var import§ += param1.§function var import§;
         return this;
      }
      
      public function setMatrix(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Matrix4
      {
         var _loc14_:Number = Math.cos(param4);
         var _loc8_:Number = Math.sin(param4);
         var _loc12_:Number = Math.cos(param5);
         var _loc7_:Number = Math.sin(param5);
         var _loc13_:Number = Math.cos(param6);
         var _loc9_:Number = Math.sin(param6);
         var _loc11_:Number = _loc13_ * _loc7_;
         var _loc10_:Number = _loc9_ * _loc7_;
         this.m00 = _loc13_ * _loc12_;
         this.§5214239800239813123423632234§ = _loc11_ * _loc8_ - _loc9_ * _loc14_;
         this.§521423117972311810123423632234§ = _loc11_ * _loc14_ + _loc9_ * _loc8_;
         this.§catch package continue§ = param1;
         this.§5214234411234424123423632234§ = _loc9_ * _loc12_;
         this.m11 = _loc10_ * _loc8_ + _loc13_ * _loc14_;
         this.§null use use§ = _loc10_ * _loc14_ - _loc13_ * _loc8_;
         this.§include var break§ = param2;
         this.§521423135662313579123423632234§ = -_loc7_;
         this.§case set function§ = _loc12_ * _loc8_;
         this.m22 = _loc12_ * _loc14_;
         this.§function var import§ = param3;
         return this;
      }
      
      public function transformVectorXYZ(param1:Number, param2:Number, param3:Number, param4:Vector3) : void
      {
         param4.x = this.m00 * param1 + this.§5214239800239813123423632234§ * param2 + this.§521423117972311810123423632234§ * param3 + this.§catch package continue§;
         param4.y = this.§5214234411234424123423632234§ * param1 + this.m11 * param2 + this.§null use use§ * param3 + this.§include var break§;
         param4.z = this.§521423135662313579123423632234§ * param1 + this.§case set function§ * param2 + this.m22 * param3 + this.§function var import§;
      }
      
      public function clone() : Matrix4
      {
         return new Matrix4(this.m00,this.§5214239800239813123423632234§,this.§521423117972311810123423632234§,this.§catch package continue§,this.§5214234411234424123423632234§,this.m11,this.§null use use§,this.§include var break§,this.§521423135662313579123423632234§,this.§case set function§,this.m22,this.§function var import§);
      }
      
      public function setFromMatrix3D(param1:Matrix3D) : void
      {
         var _loc2_:Vector.<Number> = param1.rawData;
         this.init(_loc2_[0],_loc2_[4],_loc2_[8],_loc2_[12],_loc2_[1],_loc2_[5],_loc2_[9],_loc2_[13],_loc2_[2],_loc2_[6],_loc2_[10],_loc2_[14]);
      }
      
      public function deltaTransformVector(param1:Vector3, param2:Vector3) : void
      {
         param2.x = this.m00 * param1.x + this.§5214239800239813123423632234§ * param1.y + this.§521423117972311810123423632234§ * param1.z;
         param2.y = this.§5214234411234424123423632234§ * param1.x + this.m11 * param1.y + this.§null use use§ * param1.z;
         param2.z = this.§521423135662313579123423632234§ * param1.x + this.§case set function§ * param1.y + this.m22 * param1.z;
      }
      
      public function invert() : Matrix4
      {
         var _loc8_:Number = this.m00;
         var _loc1_:Number = this.§5214239800239813123423632234§;
         var _loc9_:Number = this.§521423117972311810123423632234§;
         var _loc2_:Number = this.§catch package continue§;
         var _loc10_:Number = this.§5214234411234424123423632234§;
         var _loc3_:Number = this.m11;
         var _loc11_:Number = this.§null use use§;
         var _loc4_:Number = this.§include var break§;
         var _loc12_:Number = this.§521423135662313579123423632234§;
         var _loc5_:Number = this.§case set function§;
         var _loc13_:Number = this.m22;
         var _loc6_:Number = this.§function var import§;
         var _loc7_:Number = -_loc9_ * _loc3_ * _loc12_ + _loc1_ * _loc11_ * _loc12_ + _loc9_ * _loc10_ * _loc5_ - _loc8_ * _loc11_ * _loc5_ - _loc1_ * _loc10_ * _loc13_ + _loc8_ * _loc3_ * _loc13_;
         this.m00 = (-_loc11_ * _loc5_ + _loc3_ * _loc13_) / _loc7_;
         this.§5214239800239813123423632234§ = (_loc9_ * _loc5_ - _loc1_ * _loc13_) / _loc7_;
         this.§521423117972311810123423632234§ = (-_loc9_ * _loc3_ + _loc1_ * _loc11_) / _loc7_;
         this.§catch package continue§ = (_loc2_ * _loc11_ * _loc5_ - _loc9_ * _loc4_ * _loc5_ - _loc2_ * _loc3_ * _loc13_ + _loc1_ * _loc4_ * _loc13_ + _loc9_ * _loc3_ * _loc6_ - _loc1_ * _loc11_ * _loc6_) / _loc7_;
         this.§5214234411234424123423632234§ = (_loc11_ * _loc12_ - _loc10_ * _loc13_) / _loc7_;
         this.m11 = (-_loc9_ * _loc12_ + _loc8_ * _loc13_) / _loc7_;
         this.§null use use§ = (_loc9_ * _loc10_ - _loc8_ * _loc11_) / _loc7_;
         this.§include var break§ = (_loc9_ * _loc4_ * _loc12_ - _loc2_ * _loc11_ * _loc12_ + _loc2_ * _loc10_ * _loc13_ - _loc8_ * _loc4_ * _loc13_ - _loc9_ * _loc10_ * _loc6_ + _loc8_ * _loc11_ * _loc6_) / _loc7_;
         this.§521423135662313579123423632234§ = (-_loc3_ * _loc12_ + _loc10_ * _loc5_) / _loc7_;
         this.§case set function§ = (_loc1_ * _loc12_ - _loc8_ * _loc5_) / _loc7_;
         this.m22 = (-_loc1_ * _loc10_ + _loc8_ * _loc3_) / _loc7_;
         this.§function var import§ = (_loc2_ * _loc3_ * _loc12_ - _loc1_ * _loc4_ * _loc12_ - _loc2_ * _loc10_ * _loc5_ + _loc8_ * _loc4_ * _loc5_ + _loc1_ * _loc10_ * _loc6_ - _loc8_ * _loc3_ * _loc6_) / _loc7_;
         return this;
      }
      
      public function transformVector(param1:Vector3, param2:Vector3) : void
      {
         param2.x = this.m00 * param1.x + this.§5214239800239813123423632234§ * param1.y + this.§521423117972311810123423632234§ * param1.z + this.§catch package continue§;
         param2.y = this.§5214234411234424123423632234§ * param1.x + this.m11 * param1.y + this.§null use use§ * param1.z + this.§include var break§;
         param2.z = this.§521423135662313579123423632234§ * param1.x + this.§case set function§ * param1.y + this.m22 * param1.z + this.§function var import§;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + " (" + this.m00.toFixed(3) + " " + this.§5214239800239813123423632234§.toFixed(3) + " " + this.§521423117972311810123423632234§.toFixed(3) + " " + this.§catch package continue§.toFixed(3) + "] [" + this.§5214234411234424123423632234§.toFixed(3) + " " + this.m11.toFixed(3) + " " + this.§null use use§.toFixed(3) + " " + this.§include var break§.toFixed(3) + "] [" + this.§521423135662313579123423632234§.toFixed(3) + " " + this.§case set function§.toFixed(3) + " " + this.m22.toFixed(3) + " " + this.§function var import§.toFixed(3) + ")";
      }
      
      public function setFromMatrix3(param1:Matrix3, param2:Vector3) : Matrix4
      {
         this.m00 = param1.m00;
         this.§5214239800239813123423632234§ = param1.§5214239800239813123423632234§;
         this.§521423117972311810123423632234§ = param1.§521423117972311810123423632234§;
         this.§catch package continue§ = param2.x;
         this.§5214234411234424123423632234§ = param1.§5214234411234424123423632234§;
         this.m11 = param1.m11;
         this.§null use use§ = param1.§null use use§;
         this.§include var break§ = param2.y;
         this.§521423135662313579123423632234§ = param1.§521423135662313579123423632234§;
         this.§case set function§ = param1.§case set function§;
         this.m22 = param1.m22;
         this.§function var import§ = param2.z;
         return this;
      }
      
      public function fromAxisAngle(param1:Vector3, param2:Number) : void
      {
         var _loc8_:Number = Math.cos(param2);
         var _loc3_:Number = Math.sin(param2);
         var _loc4_:Number = 1 - _loc8_;
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Number = param1.z;
         this.m00 = _loc4_ * _loc5_ * _loc5_ + _loc8_;
         this.§5214239800239813123423632234§ = _loc4_ * _loc5_ * _loc6_ - _loc7_ * _loc3_;
         this.§521423117972311810123423632234§ = _loc4_ * _loc5_ * _loc7_ + _loc6_ * _loc3_;
         this.§5214234411234424123423632234§ = _loc4_ * _loc5_ * _loc6_ + _loc7_ * _loc3_;
         this.m11 = _loc4_ * _loc6_ * _loc6_ + _loc8_;
         this.§null use use§ = _loc4_ * _loc6_ * _loc7_ - _loc5_ * _loc3_;
         this.§521423135662313579123423632234§ = _loc4_ * _loc5_ * _loc7_ - _loc6_ * _loc3_;
         this.§case set function§ = _loc4_ * _loc6_ * _loc7_ + _loc5_ * _loc3_;
         this.m22 = _loc4_ * _loc7_ * _loc7_ + _loc8_;
      }
      
      public function transformVectorsN(param1:Vector.<Vector3>, param2:Vector.<Vector3>, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Vector3 = null;
         var _loc6_:Vector3 = null;
         while(_loc5_ < param3)
         {
            _loc4_ = param1[_loc5_];
            _loc6_ = param2[_loc5_];
            _loc6_.x = this.m00 * _loc4_.x + this.§5214239800239813123423632234§ * _loc4_.y + this.§521423117972311810123423632234§ * _loc4_.z + this.§catch package continue§;
            _loc6_.y = this.§5214234411234424123423632234§ * _loc4_.x + this.m11 * _loc4_.y + this.§null use use§ * _loc4_.z + this.§include var break§;
            _loc6_.z = this.§521423135662313579123423632234§ * _loc4_.x + this.§case set function§ * _loc4_.y + this.m22 * _loc4_.z + this.§function var import§;
            _loc5_++;
         }
      }
      
      public function getForward(param1:Vector3) : void
      {
         this.getAxis(1,param1);
      }
   }
}

