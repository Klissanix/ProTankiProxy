package alternativa.math
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   
   public class Vector3
   {
      
      public static const ZERO:Vector3 = new Vector3(0,0,0);
      
      public static const §const const package§:Vector3 = new Vector3(1,0,0);
      
      public static const §5214233736233749123423632234§:Vector3 = new Vector3(0,1,0);
      
      public static const §521423109692310982123423632234§:Vector3 = new Vector3(0,0,1);
      
      public static const DOWN:Vector3 = new Vector3(0,0,-1);
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function Vector3(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public static function isFiniteVector(param1:Vector3) : Boolean
      {
         return param1 != null && isFinite(param1.x) && isFinite(param1.y) && isFinite(param1.z);
      }
      
      public static function interpolate(param1:Number, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         param4.x = param2.x + param1 * (param3.x - param2.x);
         param4.y = param2.y + param1 * (param3.y - param2.y);
         param4.z = param2.z + param1 * (param3.z - param2.z);
      }
      
      public static function distanceBetween(param1:Vector3, param2:Vector3) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = param1.z - param2.z;
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public static function fromVector3d(param1:§52142320823221123423632234§) : Vector3
      {
         return new Vector3(param1.x,param1.y,param1.§continue package false§);
      }
      
      public function deltaTransform4(param1:Matrix4) : Vector3
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.z;
         this.x = param1.m00 * _loc2_ + param1.§5214239800239813123423632234§ * _loc3_ + param1.§521423117972311810123423632234§ * _loc4_;
         this.y = param1.§5214234411234424123423632234§ * _loc2_ + param1.m11 * _loc3_ + param1.§null use use§ * _loc4_;
         this.z = param1.§521423135662313579123423632234§ * _loc2_ + param1.§case set function§ * _loc3_ + param1.m22 * _loc4_;
         return this;
      }
      
      public function setLength(param1:Number) : Vector3
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = this.x * this.x + this.y * this.y + this.z * this.z;
         if(_loc2_ == 0)
         {
            this.x = param1;
         }
         else
         {
            _loc3_ = param1 / Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z);
            this.x *= _loc3_;
            this.y *= _loc3_;
            this.z *= _loc3_;
         }
         return this;
      }
      
      public function projectOnPlane(param1:Vector3) : void
      {
         var _loc2_:Number = this.x * param1.x + this.y * param1.y + this.z * param1.z;
         this.x -= _loc2_ * param1.x;
         this.y -= _loc2_ * param1.y;
         this.z -= _loc2_ * param1.z;
      }
      
      public function reverse() : Vector3
      {
         this.x = -this.x;
         this.y = -this.y;
         this.z = -this.z;
         return this;
      }
      
      public function subtract(param1:Vector3) : Vector3
      {
         this.x -= param1.x;
         this.y -= param1.y;
         this.z -= param1.z;
         return this;
      }
      
      public function transform4(param1:Matrix4) : Vector3
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.z;
         this.x = param1.m00 * _loc2_ + param1.§5214239800239813123423632234§ * _loc3_ + param1.§521423117972311810123423632234§ * _loc4_ + param1.§catch package continue§;
         this.y = param1.§5214234411234424123423632234§ * _loc2_ + param1.m11 * _loc3_ + param1.§null use use§ * _loc4_ + param1.§include var break§;
         this.z = param1.§521423135662313579123423632234§ * _loc2_ + param1.§case set function§ * _loc3_ + param1.m22 * _loc4_ + param1.§function var import§;
         return this;
      }
      
      public function copyFromVector3d(param1:§52142320823221123423632234§) : Vector3
      {
         this.x = param1.x;
         this.y = param1.y;
         this.z = param1.§continue package false§;
         return this;
      }
      
      public function reset(param1:Number = 0, param2:Number = 0, param3:Number = 0) : Vector3
      {
         this.x = param1;
         this.y = param2;
         this.z = param3;
         return this;
      }
      
      public function interpolate(param1:Number, param2:Vector3, param3:Vector3) : void
      {
         this.x = param2.x + param1 * (param3.x - param2.x);
         this.y = param2.y + param1 * (param3.y - param2.y);
         this.z = param2.z + param1 * (param3.z - param2.z);
      }
      
      public function normalize() : Vector3
      {
         var _loc1_:Number = this.x * this.x + this.y * this.y + this.z * this.z;
         if(_loc1_ == 0)
         {
            this.x = 1;
         }
         else
         {
            _loc1_ = Math.sqrt(_loc1_);
            this.x /= _loc1_;
            this.y /= _loc1_;
            this.z /= _loc1_;
         }
         return this;
      }
      
      public function distanceToSquared(param1:Vector3) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         var _loc4_:Number = this.z - param1.z;
         return _loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_;
      }
      
      public function rotationTo(param1:Vector3) : Quaternion
      {
         var _loc2_:Quaternion = new Quaternion();
         this.rotationToOut(param1,_loc2_);
         return _loc2_;
      }
      
      public function addScaled(param1:Number, param2:Vector3) : Vector3
      {
         this.x += param1 * param2.x;
         this.y += param1 * param2.y;
         this.z += param1 * param2.z;
         return this;
      }
      
      public function rotationToOut(param1:Vector3, param2:Quaternion) : void
      {
         var _loc3_:Vector3 = this.clone().cross(param1).normalize();
         var _loc4_:Number = Math.acos(this.clone().normalize().dot(param1.clone().normalize()));
         param2.setFromAxisAngle(_loc3_,_loc4_);
      }
      
      public function transformVector4(param1:Matrix4) : Vector3
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.z;
         this.x = param1.m00 * _loc2_ + param1.§5214239800239813123423632234§ * _loc3_ + param1.§521423117972311810123423632234§ * _loc4_;
         this.y = param1.§5214234411234424123423632234§ * _loc2_ + param1.m11 * _loc3_ + param1.§null use use§ * _loc4_;
         this.z = param1.§521423135662313579123423632234§ * _loc2_ + param1.§case set function§ * _loc3_ + param1.m22 * _loc4_;
         return this;
      }
      
      public function toVector3D(param1:Vector3D) : Vector3D
      {
         param1.x = this.x;
         param1.y = this.y;
         param1.z = this.z;
         return param1;
      }
      
      public function distanceToXY(param1:Vector3) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
      }
      
      public function diff2d(param1:Vector3, param2:Vector3) : Vector3
      {
         this.x = param1.x - param2.x;
         this.y = param1.y - param2.y;
         this.z = 0;
         return this;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + " (" + this.x.toFixed(5) + ", " + this.y.toFixed(5) + ", " + this.z.toFixed(5) + ")";
      }
      
      public function dot(param1:Vector3) : Number
      {
         return this.x * param1.x + this.y * param1.y + this.z * param1.z;
      }
      
      public function copy(param1:Vector3) : Vector3
      {
         this.x = param1.x;
         this.y = param1.y;
         this.z = param1.z;
         return this;
      }
      
      public function distanceToXYSquared(param1:Vector3) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         return _loc2_ * _loc2_ + _loc3_ * _loc3_;
      }
      
      public function transformTransposed3(param1:Matrix3) : Vector3
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.z;
         this.x = param1.m00 * _loc2_ + param1.§5214234411234424123423632234§ * _loc3_ + param1.§521423135662313579123423632234§ * _loc4_;
         this.y = param1.§5214239800239813123423632234§ * _loc2_ + param1.m11 * _loc3_ + param1.§case set function§ * _loc4_;
         this.z = param1.§521423117972311810123423632234§ * _loc2_ + param1.§null use use§ * _loc3_ + param1.m22 * _loc4_;
         return this;
      }
      
      public function copyFromVector3D(param1:Vector3D) : Vector3
      {
         this.x = param1.x;
         this.y = param1.y;
         this.z = param1.z;
         return this;
      }
      
      public function diff(param1:Vector3, param2:Vector3) : Vector3
      {
         this.x = param1.x - param2.x;
         this.y = param1.y - param2.y;
         this.z = param1.z - param2.z;
         return this;
      }
      
      public function setLengthAlongDirection(param1:Vector3, param2:Number) : void
      {
         var _loc3_:Number = this.x * param1.x + this.y * param1.y + this.z * param1.z;
         var _loc4_:Number = param2 - _loc3_;
         this.x += _loc4_ * param1.x;
         this.y += _loc4_ * param1.y;
         this.z += _loc4_ * param1.z;
      }
      
      public function length() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z);
      }
      
      public function transformInverse4(param1:Matrix4) : Vector3
      {
         var _loc2_:Number = this.x - param1.§catch package continue§;
         var _loc3_:Number = this.y - param1.§include var break§;
         var _loc4_:Number = this.z - param1.§function var import§;
         this.x = param1.m00 * _loc2_ + param1.§5214234411234424123423632234§ * _loc3_ + param1.§521423135662313579123423632234§ * _loc4_;
         this.y = param1.§5214239800239813123423632234§ * _loc2_ + param1.m11 * _loc3_ + param1.§case set function§ * _loc4_;
         this.z = param1.§521423117972311810123423632234§ * _loc2_ + param1.§null use use§ * _loc3_ + param1.m22 * _loc4_;
         return this;
      }
      
      public function toVector3d() : §52142320823221123423632234§
      {
         return new §52142320823221123423632234§(this.x,this.y,this.z);
      }
      
      public function cross2(param1:Vector3, param2:Vector3) : Vector3
      {
         this.x = param1.y * param2.z - param1.z * param2.y;
         this.y = param1.z * param2.x - param1.x * param2.z;
         this.z = param1.x * param2.y - param1.y * param2.x;
         return this;
      }
      
      public function isFiniteVector() : Boolean
      {
         var _loc1_:Function = isFinite;
         return _loc1_(this.x) && isFinite(this.y) && _loc1_(this.z);
      }
      
      public function add(param1:Vector3) : Vector3
      {
         this.x += param1.x;
         this.y += param1.y;
         this.z += param1.z;
         return this;
      }
      
      public function transform3(param1:Matrix3) : Vector3
      {
         var _loc2_:Number = this.x;
         var _loc3_:Number = this.y;
         var _loc4_:Number = this.z;
         this.x = param1.m00 * _loc2_ + param1.§5214239800239813123423632234§ * _loc3_ + param1.§521423117972311810123423632234§ * _loc4_;
         this.y = param1.§5214234411234424123423632234§ * _loc2_ + param1.m11 * _loc3_ + param1.§null use use§ * _loc4_;
         this.z = param1.§521423135662313579123423632234§ * _loc2_ + param1.§case set function§ * _loc3_ + param1.m22 * _loc4_;
         return this;
      }
      
      public function distanceTo(param1:Vector3) : Number
      {
         var _loc2_:Number = this.x - param1.x;
         var _loc3_:Number = this.y - param1.y;
         var _loc4_:Number = this.z - param1.z;
         return Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public function lengthSqr() : Number
      {
         return this.x * this.x + this.y * this.y + this.z * this.z;
      }
      
      public function sum(param1:Vector3, param2:Vector3) : Vector3
      {
         this.x = param1.x + param2.x;
         this.y = param1.y + param2.y;
         this.z = param1.z + param2.z;
         return this;
      }
      
      public function clone() : Vector3
      {
         return new Vector3(this.x,this.y,this.z);
      }
      
      public function cross(param1:Vector3) : Vector3
      {
         var _loc2_:Number = this.y * param1.z - this.z * param1.y;
         var _loc3_:Number = this.z * param1.x - this.x * param1.z;
         var _loc4_:Number = this.x * param1.y - this.y * param1.x;
         this.x = _loc2_;
         this.y = _loc3_;
         this.z = _loc4_;
         return this;
      }
      
      public function scale(param1:Number) : Vector3
      {
         this.x *= param1;
         this.y *= param1;
         this.z *= param1;
         return this;
      }
   }
}

