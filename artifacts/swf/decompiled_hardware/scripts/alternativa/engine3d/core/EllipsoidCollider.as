package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class EllipsoidCollider
   {
      
      public var radiusX:Number;
      
      public var radiusY:Number;
      
      public var radiusZ:Number;
      
      public var threshold:Number = 0.001;
      
      private var matrix:Object3D = new Object3D();
      
      private var faces:Vector.<Face> = new Vector.<Face>();
      
      private var f47c7413:int;
      
      private var radius:Number;
      
      private var a59b4164:Vector3D = new Vector3D();
      
      private var c4a1d794:Vector3D = new Vector3D();
      
      private var f4f96616:Vector3D = new Vector3D();
      
      private var a75d75a4:Vector3D = new Vector3D();
      
      private var f19151bc:Vector3D = new Vector3D();
      
      private var b501b8a3:Vector3D = new Vector3D();
      
      private var b24493ad:Vector3D = new Vector3D();
      
      private var f329b466:Vector3D = new Vector3D();
      
      private var c596d3d9:Vector3D = new Vector3D();
      
      private var b6db9c4:Vector3D = new Vector3D();
      
      public function EllipsoidCollider(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.radiusX = param1;
         this.radiusY = param2;
         this.radiusZ = param3;
      }
      
      private function prepare(param1:Vector3D, param2:Vector3D, param3:Object3D, param4:Dictionary, param5:Boolean) : void
      {
         var _loc6_:Number = NaN;
         this.radius = this.radiusX;
         if(this.radiusY > this.radius)
         {
            this.radius = this.radiusY;
         }
         if(this.radiusZ > this.radius)
         {
            this.radius = this.radiusZ;
         }
         this.matrix.scaleX = this.radiusX / this.radius;
         this.matrix.scaleY = this.radiusY / this.radius;
         this.matrix.scaleZ = this.radiusZ / this.radius;
         this.matrix.x = param1.x;
         this.matrix.y = param1.y;
         this.matrix.z = param1.z;
         this.matrix.composeMatrix();
         this.matrix.invertMatrix();
         this.a59b4164.x = 0;
         this.a59b4164.y = 0;
         this.a59b4164.z = 0;
         this.c4a1d794.x = this.matrix.ma * param2.x + this.matrix.mb * param2.y + this.matrix.mc * param2.z;
         this.c4a1d794.y = this.matrix.me * param2.x + this.matrix.mf * param2.y + this.matrix.mg * param2.z;
         this.c4a1d794.z = this.matrix.mi * param2.x + this.matrix.mj * param2.y + this.matrix.mk * param2.z;
         this.f4f96616.x = this.a59b4164.x + this.c4a1d794.x;
         this.f4f96616.y = this.a59b4164.y + this.c4a1d794.y;
         this.f4f96616.z = this.a59b4164.z + this.c4a1d794.z;
         if(param5)
         {
            this.b501b8a3.x = this.c4a1d794.x / 2;
            this.b501b8a3.y = this.c4a1d794.y / 2;
            this.b501b8a3.z = this.c4a1d794.z / 2;
            _loc6_ = this.radius + this.c4a1d794.length / 2;
         }
         else
         {
            this.b501b8a3.x = 0;
            this.b501b8a3.y = 0;
            this.b501b8a3.z = 0;
            _loc6_ = this.radius + this.c4a1d794.length;
         }
         this.b24493ad.x = -_loc6_;
         this.b24493ad.y = -_loc6_;
         this.b24493ad.z = -_loc6_;
         this.f329b466.x = _loc6_;
         this.f329b466.y = -_loc6_;
         this.f329b466.z = -_loc6_;
         this.c596d3d9.x = _loc6_;
         this.c596d3d9.y = _loc6_;
         this.c596d3d9.z = -_loc6_;
         this.b6db9c4.x = -_loc6_;
         this.b6db9c4.y = _loc6_;
         this.b6db9c4.z = -_loc6_;
         param3.composeAndAppend(this.matrix);
         param3.collectPlanes(this.b501b8a3,this.b24493ad,this.f329b466,this.c596d3d9,this.b6db9c4,this.faces,param4);
         this.f47c7413 = this.faces.length;
      }
      
      public function calculateDestination(param1:Vector3D, param2:Vector3D, param3:Object3D, param4:Dictionary = null) : Vector3D
      {
         var _loc5_:Number = NaN;
         var _loc7_:int = 0;
         var _loc6_:int = 0;
         if(param2.length <= this.threshold)
         {
            return param1.clone();
         }
         this.prepare(param1,param2,param3,param4,false);
         if(this.f47c7413 > 0)
         {
            _loc7_ = 50;
            _loc6_ = 0;
            while(_loc6_ < _loc7_)
            {
               if(!this.c24d2ed5())
               {
                  break;
               }
               _loc5_ = this.radius + this.threshold + this.f19151bc.w - this.f4f96616.x * this.f19151bc.x - this.f4f96616.y * this.f19151bc.y - this.f4f96616.z * this.f19151bc.z;
               this.f4f96616.x += this.f19151bc.x * _loc5_;
               this.f4f96616.y += this.f19151bc.y * _loc5_;
               this.f4f96616.z += this.f19151bc.z * _loc5_;
               this.a59b4164.x = this.a75d75a4.x + this.f19151bc.x * (this.radius + this.threshold);
               this.a59b4164.y = this.a75d75a4.y + this.f19151bc.y * (this.radius + this.threshold);
               this.a59b4164.z = this.a75d75a4.z + this.f19151bc.z * (this.radius + this.threshold);
               this.c4a1d794.x = this.f4f96616.x - this.a59b4164.x;
               this.c4a1d794.y = this.f4f96616.y - this.a59b4164.y;
               this.c4a1d794.z = this.f4f96616.z - this.a59b4164.z;
               if(this.c4a1d794.length < this.threshold)
               {
                  break;
               }
               _loc6_++;
            }
            this.faces.length = 0;
            this.matrix.composeMatrix();
            return new Vector3D(this.matrix.ma * this.f4f96616.x + this.matrix.mb * this.f4f96616.y + this.matrix.mc * this.f4f96616.z + this.matrix.md,this.matrix.me * this.f4f96616.x + this.matrix.mf * this.f4f96616.y + this.matrix.mg * this.f4f96616.z + this.matrix.mh,this.matrix.mi * this.f4f96616.x + this.matrix.mj * this.f4f96616.y + this.matrix.mk * this.f4f96616.z + this.matrix.ml);
         }
         return new Vector3D(param1.x + param2.x,param1.y + param2.y,param1.z + param2.z);
      }
      
      public function getCollision(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Object3D, param6:Dictionary = null) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc9_:Number = NaN;
         if(param2.length <= this.threshold)
         {
            return false;
         }
         this.prepare(param1,param2,param5,param6,true);
         if(this.f47c7413 > 0)
         {
            if(this.c24d2ed5())
            {
               this.matrix.composeMatrix();
               param3.x = this.matrix.ma * this.a75d75a4.x + this.matrix.mb * this.a75d75a4.y + this.matrix.mc * this.a75d75a4.z + this.matrix.md;
               param3.y = this.matrix.me * this.a75d75a4.x + this.matrix.mf * this.a75d75a4.y + this.matrix.mg * this.a75d75a4.z + this.matrix.mh;
               param3.z = this.matrix.mi * this.a75d75a4.x + this.matrix.mj * this.a75d75a4.y + this.matrix.mk * this.a75d75a4.z + this.matrix.ml;
               if(this.f19151bc.x < this.f19151bc.y)
               {
                  if(this.f19151bc.x < this.f19151bc.z)
                  {
                     _loc18_ = 0;
                     _loc13_ = -this.f19151bc.z;
                     _loc12_ = this.f19151bc.y;
                  }
                  else
                  {
                     _loc18_ = -this.f19151bc.y;
                     _loc13_ = this.f19151bc.x;
                     _loc12_ = 0;
                  }
               }
               else if(this.f19151bc.y < this.f19151bc.z)
               {
                  _loc18_ = this.f19151bc.z;
                  _loc13_ = 0;
                  _loc12_ = -this.f19151bc.x;
               }
               else
               {
                  _loc18_ = -this.f19151bc.y;
                  _loc13_ = this.f19151bc.x;
                  _loc12_ = 0;
               }
               _loc16_ = this.f19151bc.z * _loc13_ - this.f19151bc.y * _loc12_;
               _loc17_ = this.f19151bc.x * _loc12_ - this.f19151bc.z * _loc18_;
               _loc8_ = this.f19151bc.y * _loc18_ - this.f19151bc.x * _loc13_;
               _loc10_ = this.matrix.ma * _loc18_ + this.matrix.mb * _loc13_ + this.matrix.mc * _loc12_;
               _loc14_ = this.matrix.me * _loc18_ + this.matrix.mf * _loc13_ + this.matrix.mg * _loc12_;
               _loc11_ = this.matrix.mi * _loc18_ + this.matrix.mj * _loc13_ + this.matrix.mk * _loc12_;
               _loc7_ = this.matrix.ma * _loc16_ + this.matrix.mb * _loc17_ + this.matrix.mc * _loc8_;
               _loc15_ = this.matrix.me * _loc16_ + this.matrix.mf * _loc17_ + this.matrix.mg * _loc8_;
               _loc9_ = this.matrix.mi * _loc16_ + this.matrix.mj * _loc17_ + this.matrix.mk * _loc8_;
               param4.x = _loc11_ * _loc15_ - _loc14_ * _loc9_;
               param4.y = _loc10_ * _loc9_ - _loc11_ * _loc7_;
               param4.z = _loc14_ * _loc7_ - _loc10_ * _loc15_;
               param4.normalize();
               param4.w = param3.x * param4.x + param3.y * param4.y + param3.z * param4.z;
               this.faces.length = 0;
               return true;
            }
            this.faces.length = 0;
            return false;
         }
         return false;
      }
      
      private function c24d2ed5() : Boolean
      {
         var _loc34_:Face = null;
         var _loc40_:Wrapper = null;
         var _loc20_:Vertex = null;
         var _loc21_:Vertex = null;
         var _loc22_:Vertex = null;
         var _loc18_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc9_:Wrapper = null;
         var _loc27_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc28_:int = 0;
         var _loc43_:Number = 1;
         var _loc1_:Number = this.c4a1d794.length;
         while(_loc28_ < this.f47c7413)
         {
            _loc34_ = this.faces[_loc28_];
            _loc40_ = _loc34_.wrapper;
            _loc20_ = _loc40_.vertex;
            _loc40_ = _loc40_.next;
            _loc21_ = _loc40_.vertex;
            _loc40_ = _loc40_.next;
            _loc22_ = _loc40_.vertex;
            _loc18_ = _loc21_.cameraX - _loc20_.cameraX;
            _loc37_ = _loc21_.cameraY - _loc20_.cameraY;
            _loc29_ = _loc21_.cameraZ - _loc20_.cameraZ;
            _loc16_ = _loc22_.cameraX - _loc20_.cameraX;
            _loc44_ = _loc22_.cameraY - _loc20_.cameraY;
            _loc25_ = _loc22_.cameraZ - _loc20_.cameraZ;
            _loc2_ = _loc25_ * _loc37_ - _loc44_ * _loc29_;
            _loc3_ = _loc16_ * _loc29_ - _loc25_ * _loc18_;
            _loc4_ = _loc44_ * _loc18_ - _loc16_ * _loc37_;
            _loc13_ = _loc2_ * _loc2_ + _loc3_ * _loc3_ + _loc4_ * _loc4_;
            if(_loc13_ > 0.001)
            {
               _loc13_ = 1 / Math.sqrt(_loc13_);
               _loc2_ *= _loc13_;
               _loc3_ *= _loc13_;
               _loc4_ *= _loc13_;
               _loc24_ = _loc20_.cameraX * _loc2_ + _loc20_.cameraY * _loc3_ + _loc20_.cameraZ * _loc4_;
               _loc6_ = this.a59b4164.x * _loc2_ + this.a59b4164.y * _loc3_ + this.a59b4164.z * _loc4_ - _loc24_;
               if(_loc6_ < this.radius)
               {
                  _loc8_ = this.a59b4164.x - _loc2_ * _loc6_;
                  _loc17_ = this.a59b4164.y - _loc3_ * _loc6_;
                  _loc26_ = this.a59b4164.z - _loc4_ * _loc6_;
               }
               else
               {
                  _loc35_ = (_loc6_ - this.radius) / (_loc6_ - this.f4f96616.x * _loc2_ - this.f4f96616.y * _loc3_ - this.f4f96616.z * _loc4_ + _loc24_);
                  _loc8_ = this.a59b4164.x + this.c4a1d794.x * _loc35_ - _loc2_ * this.radius;
                  _loc17_ = this.a59b4164.y + this.c4a1d794.y * _loc35_ - _loc3_ * this.radius;
                  _loc26_ = this.a59b4164.z + this.c4a1d794.z * _loc35_ - _loc4_ * this.radius;
               }
               _loc14_ = 1e+22;
               _loc5_ = true;
               _loc9_ = _loc34_.wrapper;
               while(_loc9_ != null)
               {
                  _loc20_ = _loc9_.vertex;
                  _loc21_ = _loc9_.next != null ? _loc9_.next.vertex : _loc34_.wrapper.vertex;
                  _loc18_ = _loc21_.cameraX - _loc20_.cameraX;
                  _loc37_ = _loc21_.cameraY - _loc20_.cameraY;
                  _loc29_ = _loc21_.cameraZ - _loc20_.cameraZ;
                  _loc16_ = _loc8_ - _loc20_.cameraX;
                  _loc44_ = _loc17_ - _loc20_.cameraY;
                  _loc25_ = _loc26_ - _loc20_.cameraZ;
                  _loc42_ = _loc25_ * _loc37_ - _loc44_ * _loc29_;
                  _loc39_ = _loc16_ * _loc29_ - _loc25_ * _loc18_;
                  _loc32_ = _loc44_ * _loc18_ - _loc16_ * _loc37_;
                  if(_loc42_ * _loc2_ + _loc39_ * _loc3_ + _loc32_ * _loc4_ < 0)
                  {
                     _loc7_ = _loc18_ * _loc18_ + _loc37_ * _loc37_ + _loc29_ * _loc29_;
                     _loc36_ = (_loc42_ * _loc42_ + _loc39_ * _loc39_ + _loc32_ * _loc32_) / _loc7_;
                     if(_loc36_ < _loc14_)
                     {
                        _loc7_ = Math.sqrt(_loc7_);
                        _loc18_ /= _loc7_;
                        _loc37_ /= _loc7_;
                        _loc29_ /= _loc7_;
                        _loc35_ = _loc18_ * _loc16_ + _loc37_ * _loc44_ + _loc29_ * _loc25_;
                        if(_loc35_ < 0)
                        {
                           _loc19_ = _loc16_ * _loc16_ + _loc44_ * _loc44_ + _loc25_ * _loc25_;
                           if(_loc19_ < _loc14_)
                           {
                              _loc14_ = _loc19_;
                              _loc38_ = _loc20_.cameraX;
                              _loc33_ = _loc20_.cameraY;
                              _loc31_ = _loc20_.cameraZ;
                           }
                        }
                        else if(_loc35_ > _loc7_)
                        {
                           _loc16_ = _loc8_ - _loc21_.cameraX;
                           _loc44_ = _loc17_ - _loc21_.cameraY;
                           _loc25_ = _loc26_ - _loc21_.cameraZ;
                           _loc19_ = _loc16_ * _loc16_ + _loc44_ * _loc44_ + _loc25_ * _loc25_;
                           if(_loc19_ < _loc14_)
                           {
                              _loc14_ = _loc19_;
                              _loc38_ = _loc21_.cameraX;
                              _loc33_ = _loc21_.cameraY;
                              _loc31_ = _loc21_.cameraZ;
                           }
                        }
                        else
                        {
                           _loc14_ = _loc36_;
                           _loc38_ = _loc20_.cameraX + _loc18_ * _loc35_;
                           _loc33_ = _loc20_.cameraY + _loc37_ * _loc35_;
                           _loc31_ = _loc20_.cameraZ + _loc29_ * _loc35_;
                        }
                     }
                     _loc5_ = false;
                  }
                  _loc9_ = _loc9_.next;
               }
               if(_loc5_)
               {
                  _loc38_ = _loc8_;
                  _loc33_ = _loc17_;
                  _loc31_ = _loc26_;
               }
               _loc27_ = this.a59b4164.x - _loc38_;
               _loc11_ = this.a59b4164.y - _loc33_;
               _loc23_ = this.a59b4164.z - _loc31_;
               if(_loc27_ * this.c4a1d794.x + _loc11_ * this.c4a1d794.y + _loc23_ * this.c4a1d794.z <= 0)
               {
                  _loc10_ = -this.c4a1d794.x / _loc1_;
                  _loc46_ = -this.c4a1d794.y / _loc1_;
                  _loc12_ = -this.c4a1d794.z / _loc1_;
                  _loc15_ = _loc27_ * _loc27_ + _loc11_ * _loc11_ + _loc23_ * _loc23_;
                  _loc41_ = _loc27_ * _loc10_ + _loc11_ * _loc46_ + _loc23_ * _loc12_;
                  _loc30_ = this.radius * this.radius - _loc15_ + _loc41_ * _loc41_;
                  if(_loc30_ > 0)
                  {
                     _loc45_ = (_loc41_ - Math.sqrt(_loc30_)) / _loc1_;
                     if(_loc45_ < _loc43_)
                     {
                        _loc43_ = _loc45_;
                        this.a75d75a4.x = _loc38_;
                        this.a75d75a4.y = _loc33_;
                        this.a75d75a4.z = _loc31_;
                        if(_loc5_)
                        {
                           this.f19151bc.x = _loc2_;
                           this.f19151bc.y = _loc3_;
                           this.f19151bc.z = _loc4_;
                           this.f19151bc.w = _loc24_;
                        }
                        else
                        {
                           _loc15_ = Math.sqrt(_loc15_);
                           this.f19151bc.x = _loc27_ / _loc15_;
                           this.f19151bc.y = _loc11_ / _loc15_;
                           this.f19151bc.z = _loc23_ / _loc15_;
                           this.f19151bc.w = this.a75d75a4.x * this.f19151bc.x + this.a75d75a4.y * this.f19151bc.y + this.a75d75a4.z * this.f19151bc.z;
                        }
                     }
                  }
               }
            }
            _loc28_++;
         }
         return _loc43_ < 1;
      }
   }
}

