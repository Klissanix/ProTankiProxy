package alternativa.math
{
   import alternativa.engine3d.core.Object3D;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   
   public class Matrix3
   {
      
      public static const ZERO:Matrix3 = new Matrix3(0,0,0,0,0,0,0,0,0);
      
      public static const §var catch§:Matrix3 = new Matrix3();
      
      private static const §case set null§:Vector3 = new Vector3();
      
      private static const §each catch for§:Vector3 = new Vector3();
      
      private static const §true package dynamic§:Vector3 = new Vector3();
      
      public var m00:Number;
      
      public var §5214239800239813123423632234§:Number;
      
      public var §521423117972311810123423632234§:Number;
      
      public var §5214234411234424123423632234§:Number;
      
      public var m11:Number;
      
      public var §null use use§:Number;
      
      public var §521423135662313579123423632234§:Number;
      
      public var §case set function§:Number;
      
      public var m22:Number;
      
      public function Matrix3(param1:Number = 1, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 1, param6:Number = 0, param7:Number = 0, param8:Number = 0, param9:Number = 1)
      {
         super();
         this.m00 = param1;
         this.§5214239800239813123423632234§ = param2;
         this.§521423117972311810123423632234§ = param3;
         this.§5214234411234424123423632234§ = param4;
         this.m11 = param5;
         this.§null use use§ = param6;
         this.§521423135662313579123423632234§ = param7;
         this.§case set function§ = param8;
         this.m22 = param9;
      }
      
      public function rotationMatrixToQuaternion(param1:Quaternion) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = this.m00 + this.m11 + this.m22;
         if(_loc3_ > 0)
         {
            _loc2_ = Math.sqrt(_loc3_ + 1) * 2;
            param1.w = 0.25 * _loc2_;
            param1.x = (this.§case set function§ - this.§null use use§) / _loc2_;
            param1.y = (this.§521423117972311810123423632234§ - this.§521423135662313579123423632234§) / _loc2_;
            param1.z = (this.§5214234411234424123423632234§ - this.§5214239800239813123423632234§) / _loc2_;
         }
         else if(this.m00 > this.m11 && this.m00 > this.m22)
         {
            _loc2_ = Math.sqrt(1 + this.m00 - this.m11 - this.m22) * 2;
            param1.w = (this.§case set function§ - this.§null use use§) / _loc2_;
            param1.x = 0.25 * _loc2_;
            param1.y = (this.§5214239800239813123423632234§ + this.§5214234411234424123423632234§) / _loc2_;
            param1.z = (this.§521423117972311810123423632234§ + this.§521423135662313579123423632234§) / _loc2_;
         }
         else if(this.m11 > this.m22)
         {
            _loc2_ = Math.sqrt(1 + this.m11 - this.m00 - this.m22) * 2;
            param1.w = (this.§521423117972311810123423632234§ - this.§521423135662313579123423632234§) / _loc2_;
            param1.x = (this.§5214239800239813123423632234§ + this.§5214234411234424123423632234§) / _loc2_;
            param1.y = 0.25 * _loc2_;
            param1.z = (this.§null use use§ + this.§case set function§) / _loc2_;
         }
         else
         {
            _loc2_ = Math.sqrt(1 + this.m22 - this.m00 - this.m11) * 2;
            param1.w = (this.§5214234411234424123423632234§ - this.§5214239800239813123423632234§) / _loc2_;
            param1.x = (this.§521423117972311810123423632234§ + this.§521423135662313579123423632234§) / _loc2_;
            param1.y = (this.§null use use§ + this.§case set function§) / _loc2_;
            param1.z = 0.25 * _loc2_;
         }
      }
      
      public function subtract(param1:Matrix3) : Matrix3
      {
         this.m00 -= param1.m00;
         this.§5214239800239813123423632234§ -= param1.§5214239800239813123423632234§;
         this.§521423117972311810123423632234§ -= param1.§521423117972311810123423632234§;
         this.§5214234411234424123423632234§ -= param1.§5214234411234424123423632234§;
         this.m11 -= param1.m11;
         this.§null use use§ -= param1.§null use use§;
         this.§521423135662313579123423632234§ -= param1.§521423135662313579123423632234§;
         this.§case set function§ -= param1.§case set function§;
         this.m22 -= param1.m22;
         return this;
      }
      
      public function prepend(param1:Matrix3) : Matrix3
      {
         var _loc2_:Number = this.m00;
         var _loc3_:Number = this.§5214239800239813123423632234§;
         var _loc4_:Number = this.§521423117972311810123423632234§;
         var _loc5_:Number = this.§5214234411234424123423632234§;
         var _loc6_:Number = this.m11;
         var _loc7_:Number = this.§null use use§;
         var _loc8_:Number = this.§521423135662313579123423632234§;
         var _loc9_:Number = this.§case set function§;
         var _loc10_:Number = this.m22;
         this.m00 = _loc2_ * param1.m00 + _loc3_ * param1.§5214234411234424123423632234§ + _loc4_ * param1.§521423135662313579123423632234§;
         this.§5214239800239813123423632234§ = _loc2_ * param1.§5214239800239813123423632234§ + _loc3_ * param1.m11 + _loc4_ * param1.§case set function§;
         this.§521423117972311810123423632234§ = _loc2_ * param1.§521423117972311810123423632234§ + _loc3_ * param1.§null use use§ + _loc4_ * param1.m22;
         this.§5214234411234424123423632234§ = _loc5_ * param1.m00 + _loc6_ * param1.§5214234411234424123423632234§ + _loc7_ * param1.§521423135662313579123423632234§;
         this.m11 = _loc5_ * param1.§5214239800239813123423632234§ + _loc6_ * param1.m11 + _loc7_ * param1.§case set function§;
         this.§null use use§ = _loc5_ * param1.§521423117972311810123423632234§ + _loc6_ * param1.§null use use§ + _loc7_ * param1.m22;
         this.§521423135662313579123423632234§ = _loc8_ * param1.m00 + _loc9_ * param1.§5214234411234424123423632234§ + _loc10_ * param1.§521423135662313579123423632234§;
         this.§case set function§ = _loc8_ * param1.§5214239800239813123423632234§ + _loc9_ * param1.m11 + _loc10_ * param1.§case set function§;
         this.m22 = _loc8_ * param1.§521423117972311810123423632234§ + _loc9_ * param1.§null use use§ + _loc10_ * param1.m22;
         return this;
      }
      
      public function append(param1:Matrix3) : Matrix3
      {
         var _loc2_:Number = this.m00;
         var _loc3_:Number = this.§5214239800239813123423632234§;
         var _loc4_:Number = this.§521423117972311810123423632234§;
         var _loc5_:Number = this.§5214234411234424123423632234§;
         var _loc6_:Number = this.m11;
         var _loc7_:Number = this.§null use use§;
         var _loc8_:Number = this.§521423135662313579123423632234§;
         var _loc9_:Number = this.§case set function§;
         var _loc10_:Number = this.m22;
         this.m00 = param1.m00 * _loc2_ + param1.§5214239800239813123423632234§ * _loc5_ + param1.§521423117972311810123423632234§ * _loc8_;
         this.§5214239800239813123423632234§ = param1.m00 * _loc3_ + param1.§5214239800239813123423632234§ * _loc6_ + param1.§521423117972311810123423632234§ * _loc9_;
         this.§521423117972311810123423632234§ = param1.m00 * _loc4_ + param1.§5214239800239813123423632234§ * _loc7_ + param1.§521423117972311810123423632234§ * _loc10_;
         this.§5214234411234424123423632234§ = param1.§5214234411234424123423632234§ * _loc2_ + param1.m11 * _loc5_ + param1.§null use use§ * _loc8_;
         this.m11 = param1.§5214234411234424123423632234§ * _loc3_ + param1.m11 * _loc6_ + param1.§null use use§ * _loc9_;
         this.§null use use§ = param1.§5214234411234424123423632234§ * _loc4_ + param1.m11 * _loc7_ + param1.§null use use§ * _loc10_;
         this.§521423135662313579123423632234§ = param1.§521423135662313579123423632234§ * _loc2_ + param1.§case set function§ * _loc5_ + param1.m22 * _loc8_;
         this.§case set function§ = param1.§521423135662313579123423632234§ * _loc3_ + param1.§case set function§ * _loc6_ + param1.m22 * _loc9_;
         this.m22 = param1.§521423135662313579123423632234§ * _loc4_ + param1.§case set function§ * _loc7_ + param1.m22 * _loc10_;
         return this;
      }
      
      public function getForward(param1:Vector3) : void
      {
         this.getAxis(1,param1);
      }
      
      public function getAxis(param1:int, param2:Vector3) : void
      {
         switch(param1)
         {
            case 0:
               param2.reset(this.m00,this.§5214234411234424123423632234§,this.§521423135662313579123423632234§);
               break;
            case 1:
               param2.reset(this.§5214239800239813123423632234§,this.m11,this.§case set function§);
               break;
            case 2:
               param2.reset(this.§521423117972311810123423632234§,this.§null use use§,this.m22);
         }
      }
      
      public function invert() : Matrix3
      {
         var _loc1_:Number = this.m00;
         var _loc2_:Number = this.§5214239800239813123423632234§;
         var _loc3_:Number = this.§521423117972311810123423632234§;
         var _loc4_:Number = this.§5214234411234424123423632234§;
         var _loc5_:Number = this.m11;
         var _loc6_:Number = this.§null use use§;
         var _loc7_:Number = this.§521423135662313579123423632234§;
         var _loc8_:Number = this.§case set function§;
         var _loc9_:Number = this.m22;
         var _loc10_:Number = 1 / (-_loc3_ * _loc5_ * _loc7_ + _loc2_ * _loc6_ * _loc7_ + _loc3_ * _loc4_ * _loc8_ - _loc1_ * _loc6_ * _loc8_ - _loc2_ * _loc4_ * _loc9_ + _loc1_ * _loc5_ * _loc9_);
         this.m00 = (_loc5_ * _loc9_ - _loc6_ * _loc8_) * _loc10_;
         this.§5214239800239813123423632234§ = (_loc3_ * _loc8_ - _loc2_ * _loc9_) * _loc10_;
         this.§521423117972311810123423632234§ = (_loc2_ * _loc6_ - _loc3_ * _loc5_) * _loc10_;
         this.§5214234411234424123423632234§ = (_loc6_ * _loc7_ - _loc4_ * _loc9_) * _loc10_;
         this.m11 = (_loc1_ * _loc9_ - _loc3_ * _loc7_) * _loc10_;
         this.§null use use§ = (_loc3_ * _loc4_ - _loc1_ * _loc6_) * _loc10_;
         this.§521423135662313579123423632234§ = (_loc4_ * _loc8_ - _loc5_ * _loc7_) * _loc10_;
         this.§case set function§ = (_loc2_ * _loc7_ - _loc1_ * _loc8_) * _loc10_;
         this.m22 = (_loc1_ * _loc5_ - _loc2_ * _loc4_) * _loc10_;
         return this;
      }
      
      public function add(param1:Matrix3) : Matrix3
      {
         this.m00 += param1.m00;
         this.§5214239800239813123423632234§ += param1.§5214239800239813123423632234§;
         this.§521423117972311810123423632234§ += param1.§521423117972311810123423632234§;
         this.§5214234411234424123423632234§ += param1.§5214234411234424123423632234§;
         this.m11 += param1.m11;
         this.§null use use§ += param1.§null use use§;
         this.§521423135662313579123423632234§ += param1.§521423135662313579123423632234§;
         this.§case set function§ += param1.§case set function§;
         this.m22 += param1.m22;
         return this;
      }
      
      public function setRotationMatrix(param1:Number, param2:Number, param3:Number) : Matrix3
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
      
      public function getRight(param1:Vector3) : void
      {
         this.getAxis(0,param1);
      }
      
      public function clone() : Matrix3
      {
         return new Matrix3(this.m00,this.§5214239800239813123423632234§,this.§521423117972311810123423632234§,this.§5214234411234424123423632234§,this.m11,this.§null use use§,this.§521423135662313579123423632234§,this.§case set function§,this.m22);
      }
      
      public function prependTransposed(param1:Matrix3) : Matrix3
      {
         var _loc2_:Number = this.m00;
         var _loc3_:Number = this.§5214239800239813123423632234§;
         var _loc4_:Number = this.§521423117972311810123423632234§;
         var _loc5_:Number = this.§5214234411234424123423632234§;
         var _loc6_:Number = this.m11;
         var _loc7_:Number = this.§null use use§;
         var _loc8_:Number = this.§521423135662313579123423632234§;
         var _loc9_:Number = this.§case set function§;
         var _loc10_:Number = this.m22;
         this.m00 = _loc2_ * param1.m00 + _loc3_ * param1.§5214239800239813123423632234§ + _loc4_ * param1.§521423117972311810123423632234§;
         this.§5214239800239813123423632234§ = _loc2_ * param1.§5214234411234424123423632234§ + _loc3_ * param1.m11 + _loc4_ * param1.§null use use§;
         this.§521423117972311810123423632234§ = _loc2_ * param1.§521423135662313579123423632234§ + _loc3_ * param1.§case set function§ + _loc4_ * param1.m22;
         this.§5214234411234424123423632234§ = _loc5_ * param1.m00 + _loc6_ * param1.§5214239800239813123423632234§ + _loc7_ * param1.§521423117972311810123423632234§;
         this.m11 = _loc5_ * param1.§5214234411234424123423632234§ + _loc6_ * param1.m11 + _loc7_ * param1.§null use use§;
         this.§null use use§ = _loc5_ * param1.§521423135662313579123423632234§ + _loc6_ * param1.§case set function§ + _loc7_ * param1.m22;
         this.§521423135662313579123423632234§ = _loc8_ * param1.m00 + _loc9_ * param1.§5214239800239813123423632234§ + _loc10_ * param1.§521423117972311810123423632234§;
         this.§case set function§ = _loc8_ * param1.§5214234411234424123423632234§ + _loc9_ * param1.m11 + _loc10_ * param1.§null use use§;
         this.m22 = _loc8_ * param1.§521423135662313579123423632234§ + _loc9_ * param1.§case set function§ + _loc10_ * param1.m22;
         return this;
      }
      
      public function transformVector3To3D(param1:Vector3, param2:Vector3D) : void
      {
         param2.x = this.m00 * param1.x + this.§5214239800239813123423632234§ * param1.y + this.§521423117972311810123423632234§ * param1.z;
         param2.y = this.§5214234411234424123423632234§ * param1.x + this.m11 * param1.y + this.§null use use§ * param1.z;
         param2.z = this.§521423135662313579123423632234§ * param1.x + this.§case set function§ * param1.y + this.m22 * param1.z;
      }
      
      public function transformVectorInverse(param1:Vector3, param2:Vector3) : void
      {
         param2.x = this.m00 * param1.x + this.§5214234411234424123423632234§ * param1.y + this.§521423135662313579123423632234§ * param1.z;
         param2.y = this.§5214239800239813123423632234§ * param1.x + this.m11 * param1.y + this.§case set function§ * param1.z;
         param2.z = this.§521423117972311810123423632234§ * param1.x + this.§null use use§ * param1.y + this.m22 * param1.z;
      }
      
      public function setAxis(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         this.m00 = param1.x;
         this.§5214239800239813123423632234§ = param2.x;
         this.§521423117972311810123423632234§ = param3.x;
         this.§5214234411234424123423632234§ = param1.y;
         this.m11 = param2.y;
         this.§null use use§ = param3.y;
         this.§521423135662313579123423632234§ = param1.z;
         this.§case set function§ = param2.z;
         this.m22 = param3.z;
      }
      
      public function getUp(param1:Vector3) : void
      {
         this.getAxis(2,param1);
      }
      
      public function toIdentity() : Matrix3
      {
         this.m00 = this.m11 = this.m22 = 1;
         this.§5214239800239813123423632234§ = this.§521423117972311810123423632234§ = this.§5214234411234424123423632234§ = this.§null use use§ = this.§521423135662313579123423632234§ = this.§case set function§ = 0;
         return this;
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
      
      public function copy(param1:Matrix3) : Matrix3
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
      
      public function transpose() : Matrix3
      {
         var _loc1_:Number = this.§5214239800239813123423632234§;
         this.§5214239800239813123423632234§ = this.§5214234411234424123423632234§;
         this.§5214234411234424123423632234§ = _loc1_;
         _loc1_ = this.§521423117972311810123423632234§;
         this.§521423117972311810123423632234§ = this.§521423135662313579123423632234§;
         this.§521423135662313579123423632234§ = _loc1_;
         _loc1_ = this.§null use use§;
         this.§null use use§ = this.§case set function§;
         this.§case set function§ = _loc1_;
         return this;
      }
      
      public function setDirectionVector(param1:Vector3) : void
      {
         §each catch for§.copy(param1).normalize();
         if(§each catch for§.dot(Vector3.§const const package§) < 0.9)
         {
            §true package dynamic§.cross2(Vector3.§const const package§,§each catch for§);
         }
         else
         {
            §true package dynamic§.cross2(§each catch for§,Vector3.§5214233736233749123423632234§);
         }
         §true package dynamic§.normalize();
         §case set null§.cross2(§each catch for§,§true package dynamic§).normalize();
         this.setAxis(§case set null§,§each catch for§,§true package dynamic§);
      }
      
      public function createSkewSymmetric(param1:Vector3) : Matrix3
      {
         this.m00 = this.m11 = this.m22 = 0;
         this.§5214239800239813123423632234§ = -param1.z;
         this.§521423117972311810123423632234§ = param1.y;
         this.§5214234411234424123423632234§ = param1.z;
         this.§null use use§ = -param1.x;
         this.§521423135662313579123423632234§ = -param1.y;
         this.§case set function§ = param1.x;
         return this;
      }
      
      public function setRotationMatrixForObject3D(param1:Object3D) : void
      {
         this.setRotationMatrix(param1.rotationX,param1.rotationY,param1.rotationZ);
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
      
      public function toString() : String
      {
         return "";
      }
      
      public function transformVector(param1:Vector3, param2:Vector3) : void
      {
         param2.x = this.m00 * param1.x + this.§5214239800239813123423632234§ * param1.y + this.§521423117972311810123423632234§ * param1.z;
         param2.y = this.§5214234411234424123423632234§ * param1.x + this.m11 * param1.y + this.§null use use§ * param1.z;
         param2.z = this.§521423135662313579123423632234§ * param1.x + this.§case set function§ * param1.y + this.m22 * param1.z;
      }
   }
}

