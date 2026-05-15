package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.lights.SpotLight;
   import alternativa.engine3d.lights.TubeLight;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import flash.display.BitmapData;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class Sprite3D extends Object3D
   {
      
      public var material:Material;
      
      public var originX:Number = 0.5;
      
      public var originY:Number = 0.5;
      
      public var sorting:int = 0;
      
      public var clipping:int = 2;
      
      public var rotation:Number = 0;
      
      public var autoSize:Boolean = false;
      
      public var width:Number;
      
      public var height:Number;
      
      public var perspectiveScale:Boolean = true;
      
      public var topLeftU:Number = 0;
      
      public var topLeftV:Number = 0;
      
      public var bottomRightU:Number = 1;
      
      public var bottomRightV:Number = 1;
      
      public var depthTest:Boolean = true;
      
      alternativa3d var lightConst:Vector.<Number> = new <Number>[0,0,0,1];
      
      alternativa3d var lighted:Boolean;
      
      public function Sprite3D(param1:Number, param2:Number, param3:Material = null)
      {
         super();
         this.width = param1;
         this.height = param2;
         this.material = param3;
         shadowMapAlphaThreshold = 100;
      }
      
      override public function intersectRay(param1:Vector3D, param2:Vector3D, param3:Dictionary = null, param4:Camera3D = null) : RayIntersectionData
      {
         var _loc27_:RayIntersectionData = null;
         var _loc5_:Vertex = null;
         var _loc21_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc11_:Vector3D = null;
         if(param4 == null || param3 != null && param3[this])
         {
            return null;
         }
         param4.composeCameraMatrix();
         var _loc14_:Object3D = param4;
         while(_loc14_._parent != null)
         {
            _loc14_ = _loc14_._parent;
            _loc14_.composeMatrix();
            param4.appendMatrix(_loc14_);
         }
         param4.invertMatrix();
         composeMatrix();
         _loc14_ = this;
         while(_loc14_._parent != null)
         {
            _loc14_ = _loc14_._parent;
            _loc14_.composeMatrix();
            appendMatrix(_loc14_);
         }
         appendMatrix(param4);
         calculateInverseMatrix();
         var _loc10_:Number = param4.nearClipping;
         var _loc30_:Number = param4.farClipping;
         param4.nearClipping = -1.7976931348623157e+308;
         param4.farClipping = 1.7976931348623157e+308;
         culling = 0;
         var _loc24_:Face = this.d74c6da6(param4);
         param4.nearClipping = _loc10_;
         param4.farClipping = _loc30_;
         var _loc8_:Wrapper = _loc24_.wrapper;
         while(_loc8_ != null)
         {
            _loc5_ = _loc8_.vertex;
            _loc5_.x = ima * _loc5_.cameraX + imb * _loc5_.cameraY + imc * _loc5_.cameraZ + imd;
            _loc5_.y = ime * _loc5_.cameraX + imf * _loc5_.cameraY + img * _loc5_.cameraZ + imh;
            _loc5_.z = imi * _loc5_.cameraX + imj * _loc5_.cameraY + imk * _loc5_.cameraZ + iml;
            _loc8_ = _loc8_.next;
         }
         var _loc26_:Wrapper = _loc24_.wrapper;
         var _loc17_:Vertex = _loc26_.vertex;
         _loc26_ = _loc26_.next;
         var _loc18_:Vertex = _loc26_.vertex;
         _loc26_ = _loc26_.next;
         var _loc19_:Vertex = _loc26_.vertex;
         _loc26_ = _loc26_.next;
         var _loc20_:Vertex = _loc26_.vertex;
         _loc17_.u = this.topLeftU;
         _loc17_.v = this.topLeftV;
         _loc18_.u = this.topLeftU;
         _loc18_.v = this.bottomRightV;
         _loc19_.u = this.bottomRightU;
         _loc19_.v = this.bottomRightV;
         _loc20_.u = this.bottomRightU;
         _loc20_.v = this.topLeftV;
         var _loc16_:Number = _loc18_.x - _loc17_.x;
         var _loc25_:Number = _loc18_.y - _loc17_.y;
         var _loc23_:Number = _loc18_.z - _loc17_.z;
         var _loc15_:Number = _loc19_.x - _loc17_.x;
         var _loc28_:Number = _loc19_.y - _loc17_.y;
         var _loc22_:Number = _loc19_.z - _loc17_.z;
         _loc24_.normalX = _loc22_ * _loc25_ - _loc28_ * _loc23_;
         _loc24_.normalY = _loc15_ * _loc23_ - _loc22_ * _loc16_;
         _loc24_.normalZ = _loc28_ * _loc16_ - _loc15_ * _loc25_;
         var _loc12_:Number = 1 / Math.sqrt(_loc24_.normalX * _loc24_.normalX + _loc24_.normalY * _loc24_.normalY + _loc24_.normalZ * _loc24_.normalZ);
         _loc24_.normalX *= _loc12_;
         _loc24_.normalY *= _loc12_;
         _loc24_.normalZ *= _loc12_;
         _loc24_.offset = _loc17_.x * _loc24_.normalX + _loc17_.y * _loc24_.normalY + _loc17_.z * _loc24_.normalZ;
         var _loc7_:Number = param2.x * _loc24_.normalX + param2.y * _loc24_.normalY + param2.z * _loc24_.normalZ;
         if(_loc7_ < 0)
         {
            _loc21_ = param1.x * _loc24_.normalX + param1.y * _loc24_.normalY + param1.z * _loc24_.normalZ - _loc24_.offset;
            if(_loc21_ > 0)
            {
               _loc29_ = -_loc21_ / _loc7_;
               _loc13_ = param1.x + param2.x * _loc29_;
               _loc6_ = param1.y + param2.y * _loc29_;
               _loc9_ = param1.z + param2.z * _loc29_;
               _loc8_ = _loc24_.wrapper;
               while(_loc8_ != null)
               {
                  _loc17_ = _loc8_.vertex;
                  _loc18_ = _loc8_.next != null ? _loc8_.next.vertex : _loc24_.wrapper.vertex;
                  _loc16_ = _loc18_.x - _loc17_.x;
                  _loc25_ = _loc18_.y - _loc17_.y;
                  _loc23_ = _loc18_.z - _loc17_.z;
                  _loc15_ = _loc13_ - _loc17_.x;
                  _loc28_ = _loc6_ - _loc17_.y;
                  _loc22_ = _loc9_ - _loc17_.z;
                  if((_loc22_ * _loc25_ - _loc28_ * _loc23_) * _loc24_.normalX + (_loc15_ * _loc23_ - _loc22_ * _loc16_) * _loc24_.normalY + (_loc28_ * _loc16_ - _loc15_ * _loc25_) * _loc24_.normalZ < 0)
                  {
                     break;
                  }
                  _loc8_ = _loc8_.next;
               }
               if(_loc8_ == null)
               {
                  _loc11_ = new Vector3D(_loc13_,_loc6_,_loc9_);
                  _loc27_ = new RayIntersectionData();
                  _loc27_.object = this;
                  _loc27_.face = null;
                  _loc27_.point = _loc11_;
                  _loc27_.time = _loc29_;
               }
            }
         }
         param4.deferredDestroy();
         return _loc27_;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Sprite3D = new Sprite3D(this.width,this.height);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:Sprite3D = param1 as Sprite3D;
         this.width = _loc2_.width;
         this.height = _loc2_.height;
         this.autoSize = _loc2_.autoSize;
         this.material = _loc2_.material;
         this.clipping = _loc2_.clipping;
         this.sorting = _loc2_.sorting;
         this.originX = _loc2_.originX;
         this.originY = _loc2_.originY;
         this.topLeftU = _loc2_.topLeftU;
         this.topLeftV = _loc2_.topLeftV;
         this.bottomRightU = _loc2_.bottomRightU;
         this.bottomRightV = _loc2_.bottomRightV;
         this.rotation = _loc2_.rotation;
         this.perspectiveScale = _loc2_.perspectiveScale;
      }
      
      override alternativa3d function draw(param1:Camera3D) : void
      {
         var _loc3_:int = 0;
         if(this.material == null)
         {
            return;
         }
         var _loc2_:Face = this.d74c6da6(param1);
         if(_loc2_ != null)
         {
            this.lighted = false;
            if(useLight && !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0)
            {
               this.calculateLight(param1);
            }
            if(param1.debug && (_loc3_ = param1.checkInDebug(this)) > 0)
            {
               if(_loc3_ & 0x10)
               {
                  Debug.drawEdges(param1,_loc2_,16777215);
               }
               if(_loc3_ & 8)
               {
                  Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            param1.addTransparent(_loc2_,this);
         }
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         if(this.material == null)
         {
            return null;
         }
         var _loc2_:Face = this.d74c6da6(param1);
         if(_loc2_ != null)
         {
            this.lighted = false;
            if(useLight && !param1.view.constrained && param1.deferredLighting && param1.deferredLightingStrength > 0)
            {
               this.calculateLight(param1);
            }
            _loc2_.normalX = 0;
            _loc2_.normalY = 0;
            _loc2_.normalZ = -1;
            _loc2_.offset = -ml;
            return VG.create(this,_loc2_,this.sorting,param1.debug ? param1.checkInDebug(this) : 0,true);
         }
         return null;
      }
      
      private function calculateLight(param1:Camera3D) : void
      {
         var _loc16_:int = 0;
         var _loc25_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc17_:OmniLight = null;
         var _loc23_:SpotLight = null;
         var _loc15_:TubeLight = null;
         var _loc29_:Number = NaN;
         var _loc3_:Number = param1.viewSizeX / param1.focalLength;
         var _loc19_:Number = param1.viewSizeY / param1.focalLength;
         if(!param1.view.constrained && (param1.directionalLight != null && param1.directionalLightStrength > 0 || param1.shadowMap != null && param1.shadowMapStrength > 0))
         {
            this.lightConst[0] = 0;
            this.lightConst[1] = 0;
            this.lightConst[2] = 0;
         }
         else
         {
            this.lightConst[0] = 1;
            this.lightConst[1] = 1;
            this.lightConst[2] = 1;
         }
         var _loc6_:Number = md * _loc3_;
         var _loc8_:Number = mh * _loc19_;
         var _loc10_:Number = ml;
         var _loc28_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc8_ * _loc8_ + _loc10_ * _loc10_);
         var _loc11_:Number = -_loc6_ / _loc28_;
         var _loc5_:Number = -_loc8_ / _loc28_;
         var _loc9_:Number = -_loc10_ / _loc28_;
         _loc16_ = 0;
         while(_loc16_ < param1.omniesCount)
         {
            _loc17_ = param1.omnies[_loc16_];
            _loc25_ = _loc17_.cmd * _loc3_;
            _loc4_ = _loc17_.cmh * _loc19_;
            _loc2_ = _loc17_.cml;
            _loc21_ = _loc17_.attenuationEnd;
            if(_loc25_ - _loc21_ < _loc6_ && _loc25_ + _loc21_ > _loc6_ && _loc4_ - _loc21_ < _loc8_ && _loc4_ + _loc21_ > _loc8_ && _loc2_ - _loc21_ < _loc10_ && _loc2_ + _loc21_ > _loc10_)
            {
               _loc25_ -= _loc6_;
               _loc4_ -= _loc8_;
               _loc2_ -= _loc10_;
               _loc28_ = Math.sqrt(_loc25_ * _loc25_ + _loc4_ * _loc4_ + _loc2_ * _loc2_);
               if(_loc28_ > 0 && _loc28_ < _loc21_)
               {
                  _loc25_ /= _loc28_;
                  _loc4_ /= _loc28_;
                  _loc2_ /= _loc28_;
                  _loc30_ = (_loc21_ - _loc28_) / (_loc17_.attenuationEnd - _loc17_.attenuationBegin);
                  if(_loc30_ > 1)
                  {
                     _loc30_ = 1;
                  }
                  if(_loc30_ < 0)
                  {
                     _loc30_ = 0;
                  }
                  _loc30_ *= _loc30_;
                  _loc7_ = _loc25_ * _loc11_ + _loc4_ * _loc5_ + _loc2_ * _loc9_;
                  _loc7_ = _loc7_ * 0.5;
                  _loc7_ = _loc7_ + 0.5;
                  _loc18_ = _loc30_ * _loc7_ * _loc17_.intensity * 2 * param1.deferredLightingStrength;
                  this.lightConst[0] += _loc18_ * (_loc17_.color >> 16 & 0xFF) / 255;
                  this.lightConst[1] += _loc18_ * (_loc17_.color >> 8 & 0xFF) / 255;
                  this.lightConst[2] += _loc18_ * (_loc17_.color & 0xFF) / 255;
                  this.lighted = true;
               }
            }
            _loc16_++;
         }
         _loc16_ = 0;
         while(_loc16_ < param1.spotsCount)
         {
            _loc23_ = param1.spots[_loc16_];
            _loc25_ = _loc23_.cmd * _loc3_;
            _loc4_ = _loc23_.cmh * _loc19_;
            _loc2_ = _loc23_.cml;
            _loc21_ = _loc23_.attenuationEnd;
            if(_loc25_ - _loc21_ < _loc6_ && _loc25_ + _loc21_ > _loc6_ && _loc4_ - _loc21_ < _loc8_ && _loc4_ + _loc21_ > _loc8_ && _loc2_ - _loc21_ < _loc10_ && _loc2_ + _loc21_ > _loc10_)
            {
               _loc25_ -= _loc6_;
               _loc4_ -= _loc8_;
               _loc2_ -= _loc10_;
               _loc28_ = Math.sqrt(_loc25_ * _loc25_ + _loc4_ * _loc4_ + _loc2_ * _loc2_);
               if(_loc28_ > 0 && _loc28_ < _loc21_)
               {
                  _loc25_ /= _loc28_;
                  _loc4_ /= _loc28_;
                  _loc2_ /= _loc28_;
                  _loc12_ = -_loc25_ * _loc23_.cmc * _loc3_ - _loc4_ * _loc23_.cmg * _loc19_ - _loc2_ * _loc23_.cmk;
                  _loc22_ = Math.cos(_loc23_.falloff * 0.5);
                  if(_loc12_ > _loc22_)
                  {
                     _loc7_ = _loc25_ * _loc11_ + _loc4_ * _loc5_ + _loc2_ * _loc9_;
                     _loc7_ = _loc7_ * 0.5;
                     _loc7_ = _loc7_ + 0.5;
                     _loc30_ = (_loc21_ - _loc28_) / (_loc23_.attenuationEnd - _loc23_.attenuationBegin);
                     if(_loc30_ > 1)
                     {
                        _loc30_ = 1;
                     }
                     if(_loc30_ < 0)
                     {
                        _loc30_ = 0;
                     }
                     _loc30_ *= _loc30_;
                     _loc14_ = (_loc12_ - _loc22_) / (Math.cos(_loc23_.hotspot * 0.5) - _loc22_);
                     if(_loc14_ > 1)
                     {
                        _loc14_ = 1;
                     }
                     if(_loc14_ < 0)
                     {
                        _loc14_ = 0;
                     }
                     _loc14_ *= _loc14_;
                     _loc18_ = _loc30_ * _loc14_ * _loc7_ * _loc23_.intensity * 2 * param1.deferredLightingStrength;
                     this.lightConst[0] += _loc18_ * (_loc23_.color >> 16 & 0xFF) / 255;
                     this.lightConst[1] += _loc18_ * (_loc23_.color >> 8 & 0xFF) / 255;
                     this.lightConst[2] += _loc18_ * (_loc23_.color & 0xFF) / 255;
                     this.lighted = true;
                  }
               }
            }
            _loc16_++;
         }
         _loc16_ = 0;
         while(_loc16_ < param1.tubesCount)
         {
            _loc15_ = param1.tubes[_loc16_];
            _loc26_ = _loc15_.length * 0.5;
            _loc29_ = _loc26_ + _loc15_.falloff;
            _loc27_ = _loc15_.cmc * _loc3_;
            _loc13_ = _loc15_.cmg * _loc3_;
            _loc24_ = _loc15_.cmk;
            _loc25_ = _loc15_.cmd * _loc3_ + _loc27_ * _loc26_;
            _loc4_ = _loc15_.cmh * _loc19_ + _loc13_ * _loc26_;
            _loc2_ = _loc15_.cml + _loc24_ * _loc26_;
            _loc20_ = _loc27_ * (_loc6_ - _loc25_) + _loc13_ * (_loc8_ - _loc4_) + _loc24_ * (_loc10_ - _loc2_);
            if(_loc20_ > -_loc29_ && _loc20_ < _loc29_)
            {
               _loc25_ += _loc27_ * _loc20_ - _loc6_;
               _loc4_ += _loc13_ * _loc20_ - _loc8_;
               _loc2_ += _loc24_ * _loc20_ - _loc10_;
               _loc28_ = Math.sqrt(_loc25_ * _loc25_ + _loc4_ * _loc4_ + _loc2_ * _loc2_);
               if(_loc28_ > 0 && _loc28_ < _loc15_.attenuationEnd)
               {
                  _loc25_ /= _loc28_;
                  _loc4_ /= _loc28_;
                  _loc2_ /= _loc28_;
                  _loc7_ = _loc25_ * _loc11_ + _loc4_ * _loc5_ + _loc2_ * _loc9_;
                  _loc7_ = _loc7_ * 0.5;
                  _loc7_ = _loc7_ + 0.5;
                  _loc30_ = (_loc15_.attenuationEnd - _loc28_) / (_loc15_.attenuationEnd - _loc15_.attenuationBegin);
                  if(_loc30_ > 1)
                  {
                     _loc30_ = 1;
                  }
                  if(_loc30_ < 0)
                  {
                     _loc30_ = 0;
                  }
                  _loc30_ *= _loc30_;
                  if(_loc20_ < 0)
                  {
                     _loc20_ = -_loc20_;
                  }
                  _loc14_ = (_loc29_ - _loc20_) / (_loc29_ - _loc26_);
                  if(_loc14_ > 1)
                  {
                     _loc14_ = 1;
                  }
                  if(_loc14_ < 0)
                  {
                     _loc14_ = 0;
                  }
                  _loc14_ *= _loc14_;
                  _loc18_ = _loc30_ * _loc14_ * _loc7_ * _loc15_.intensity * 2 * param1.deferredLightingStrength;
                  this.lightConst[0] += _loc18_ * (_loc15_.color >> 16 & 0xFF) / 255;
                  this.lightConst[1] += _loc18_ * (_loc15_.color >> 8 & 0xFF) / 255;
                  this.lightConst[2] += _loc18_ * (_loc15_.color & 0xFF) / 255;
                  this.lighted = true;
               }
            }
            _loc16_++;
         }
      }
      
      private function d74c6da6(param1:Camera3D) : Face
      {
         var _loc25_:Vertex = null;
         var _loc2_:Vertex = null;
         var _loc18_:BitmapData = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc12_:Number = NaN;
         culling &= 60;
         var _loc27_:Number = ml;
         if(_loc27_ <= param1.nearClipping || _loc27_ >= param1.farClipping)
         {
            return null;
         }
         var _loc13_:Number = this.width;
         var _loc5_:Number = this.height;
         if(this.autoSize && this.material is TextureMaterial)
         {
            _loc18_ = (this.material as TextureMaterial).texture;
            if(_loc18_ != null)
            {
               _loc13_ = _loc18_.width * (this.bottomRightU - this.topLeftU);
               _loc5_ = _loc18_.height * (this.bottomRightV - this.topLeftV);
            }
         }
         var _loc19_:Number = param1.focalLength / param1.viewSizeX;
         var _loc23_:Number = param1.focalLength / param1.viewSizeY;
         var _loc9_:Number = ma / _loc19_;
         var _loc11_:Number = me / _loc23_;
         var _loc6_:Number = Math.sqrt(_loc9_ * _loc9_ + _loc11_ * _loc11_ + mi * mi);
         _loc9_ = mb / _loc19_;
         _loc11_ = mf / _loc23_;
         _loc6_ += Math.sqrt(_loc9_ * _loc9_ + _loc11_ * _loc11_ + mj * mj);
         _loc9_ = mc / _loc19_;
         _loc11_ = mg / _loc23_;
         _loc6_ += Math.sqrt(_loc9_ * _loc9_ + _loc11_ * _loc11_ + mk * mk);
         _loc6_ = _loc6_ / 3;
         if(!this.perspectiveScale)
         {
            _loc20_ = param1.focalLength / _loc27_;
            _loc6_ /= _loc20_;
         }
         if(this.rotation == 0)
         {
            _loc21_ = _loc6_ * _loc13_ * _loc19_;
            _loc15_ = _loc6_ * _loc5_ * _loc23_;
            _loc9_ = md - this.originX * _loc21_;
            _loc11_ = mh - this.originY * _loc15_;
            _loc14_ = _loc9_ + _loc21_;
            _loc3_ = _loc11_ + _loc15_;
            if(culling > 0 && (_loc9_ > _loc27_ || _loc11_ > _loc27_ || _loc14_ < -_loc27_ || _loc3_ < -_loc27_))
            {
               return null;
            }
            _loc2_ = _loc25_ = Vertex.createList(4);
            _loc2_.cameraX = _loc9_;
            _loc2_.cameraY = _loc11_;
            _loc2_.cameraZ = _loc27_;
            _loc2_.u = this.topLeftU;
            _loc2_.v = this.topLeftV;
            _loc2_ = _loc2_.next;
            _loc2_.cameraX = _loc9_;
            _loc2_.cameraY = _loc3_;
            _loc2_.cameraZ = _loc27_;
            _loc2_.u = this.topLeftU;
            _loc2_.v = this.bottomRightV;
            _loc2_ = _loc2_.next;
            _loc2_.cameraX = _loc14_;
            _loc2_.cameraY = _loc3_;
            _loc2_.cameraZ = _loc27_;
            _loc2_.u = this.bottomRightU;
            _loc2_.v = this.bottomRightV;
            _loc2_ = _loc2_.next;
            _loc2_.cameraX = _loc14_;
            _loc2_.cameraY = _loc11_;
            _loc2_.cameraZ = _loc27_;
            _loc2_.u = this.bottomRightU;
            _loc2_.v = this.topLeftV;
         }
         else
         {
            _loc16_ = -Math.sin(this.rotation) * _loc6_;
            _loc4_ = Math.cos(this.rotation) * _loc6_;
            _loc28_ = _loc4_ * _loc13_ * _loc19_;
            _loc10_ = -_loc16_ * _loc13_ * _loc23_;
            _loc29_ = _loc16_ * _loc5_ * _loc19_;
            _loc26_ = _loc4_ * _loc5_ * _loc23_;
            _loc9_ = md - this.originX * _loc28_ - this.originY * _loc29_;
            _loc11_ = mh - this.originX * _loc10_ - this.originY * _loc26_;
            _loc22_ = _loc9_ + _loc29_;
            _loc7_ = _loc11_ + _loc26_;
            _loc14_ = _loc9_ + _loc28_ + _loc29_;
            _loc3_ = _loc11_ + _loc10_ + _loc26_;
            _loc17_ = _loc9_ + _loc28_;
            _loc12_ = _loc11_ + _loc10_;
            if(culling > 0)
            {
               if(this.clipping == 1)
               {
                  if(culling & 4 && _loc27_ <= -_loc9_ && _loc27_ <= -_loc22_ && _loc27_ <= -_loc14_ && _loc27_ <= -_loc17_)
                  {
                     return null;
                  }
                  if(culling & 8 && _loc27_ <= _loc9_ && _loc27_ <= _loc22_ && _loc27_ <= _loc14_ && _loc27_ <= _loc17_)
                  {
                     return null;
                  }
                  if(culling & 0x10 && _loc27_ <= -_loc11_ && _loc27_ <= -_loc7_ && _loc27_ <= -_loc3_ && _loc27_ <= -_loc12_)
                  {
                     return null;
                  }
                  if(culling & 0x20 && _loc27_ <= _loc11_ && _loc27_ <= _loc7_ && _loc27_ <= _loc3_ && _loc27_ <= _loc12_)
                  {
                     return null;
                  }
                  _loc2_ = _loc25_ = Vertex.createList(4);
                  _loc2_.cameraX = _loc9_;
                  _loc2_.cameraY = _loc11_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.topLeftU;
                  _loc2_.v = this.topLeftV;
                  _loc2_ = _loc2_.next;
                  _loc2_.cameraX = _loc9_ + _loc29_;
                  _loc2_.cameraY = _loc11_ + _loc26_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.topLeftU;
                  _loc2_.v = this.bottomRightV;
                  _loc2_ = _loc2_.next;
                  _loc2_.cameraX = _loc9_ + _loc28_ + _loc29_;
                  _loc2_.cameraY = _loc11_ + _loc10_ + _loc26_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.bottomRightU;
                  _loc2_.v = this.bottomRightV;
                  _loc2_ = _loc2_.next;
                  _loc2_.cameraX = _loc9_ + _loc28_;
                  _loc2_.cameraY = _loc11_ + _loc10_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.bottomRightU;
                  _loc2_.v = this.topLeftV;
               }
               else
               {
                  if(culling & 4)
                  {
                     if(_loc27_ <= -_loc9_ && _loc27_ <= -_loc22_ && _loc27_ <= -_loc14_ && _loc27_ <= -_loc17_)
                     {
                        return null;
                     }
                     if(_loc27_ > -_loc9_ && _loc27_ > -_loc22_ && _loc27_ > -_loc14_ && _loc27_ > -_loc17_)
                     {
                        culling &= 59;
                     }
                  }
                  if(culling & 8)
                  {
                     if(_loc27_ <= _loc9_ && _loc27_ <= _loc22_ && _loc27_ <= _loc14_ && _loc27_ <= _loc17_)
                     {
                        return null;
                     }
                     if(_loc27_ > _loc9_ && _loc27_ > _loc22_ && _loc27_ > _loc14_ && _loc27_ > _loc17_)
                     {
                        culling &= 55;
                     }
                  }
                  if(culling & 0x10)
                  {
                     if(_loc27_ <= -_loc11_ && _loc27_ <= -_loc7_ && _loc27_ <= -_loc3_ && _loc27_ <= -_loc12_)
                     {
                        return null;
                     }
                     if(_loc27_ > -_loc11_ && _loc27_ > -_loc7_ && _loc27_ > -_loc3_ && _loc27_ > -_loc12_)
                     {
                        culling &= 47;
                     }
                  }
                  if(culling & 0x20)
                  {
                     if(_loc27_ <= _loc11_ && _loc27_ <= _loc7_ && _loc27_ <= _loc3_ && _loc27_ <= _loc12_)
                     {
                        return null;
                     }
                     if(_loc27_ > _loc11_ && _loc27_ > _loc7_ && _loc27_ > _loc3_ && _loc27_ > _loc12_)
                     {
                        culling &= 31;
                     }
                  }
                  _loc2_ = _loc25_ = Vertex.createList(4);
                  _loc2_.cameraX = _loc9_;
                  _loc2_.cameraY = _loc11_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.topLeftU;
                  _loc2_.v = this.topLeftV;
                  _loc2_ = _loc2_.next;
                  _loc2_.cameraX = _loc9_ + _loc29_;
                  _loc2_.cameraY = _loc11_ + _loc26_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.topLeftU;
                  _loc2_.v = this.bottomRightV;
                  _loc2_ = _loc2_.next;
                  _loc2_.cameraX = _loc9_ + _loc28_ + _loc29_;
                  _loc2_.cameraY = _loc11_ + _loc10_ + _loc26_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.bottomRightU;
                  _loc2_.v = this.bottomRightV;
                  _loc2_ = _loc2_.next;
                  _loc2_.cameraX = _loc9_ + _loc28_;
                  _loc2_.cameraY = _loc11_ + _loc10_;
                  _loc2_.cameraZ = _loc27_;
                  _loc2_.u = this.bottomRightU;
                  _loc2_.v = this.topLeftV;
               }
            }
            else
            {
               _loc2_ = _loc25_ = Vertex.createList(4);
               _loc2_.cameraX = _loc9_;
               _loc2_.cameraY = _loc11_;
               _loc2_.cameraZ = _loc27_;
               _loc2_.u = this.topLeftU;
               _loc2_.v = this.topLeftV;
               _loc2_ = _loc2_.next;
               _loc2_.cameraX = _loc9_ + _loc29_;
               _loc2_.cameraY = _loc11_ + _loc26_;
               _loc2_.cameraZ = _loc27_;
               _loc2_.u = this.topLeftU;
               _loc2_.v = this.bottomRightV;
               _loc2_ = _loc2_.next;
               _loc2_.cameraX = _loc9_ + _loc28_ + _loc29_;
               _loc2_.cameraY = _loc11_ + _loc10_ + _loc26_;
               _loc2_.cameraZ = _loc27_;
               _loc2_.u = this.bottomRightU;
               _loc2_.v = this.bottomRightV;
               _loc2_ = _loc2_.next;
               _loc2_.cameraX = _loc9_ + _loc28_;
               _loc2_.cameraY = _loc11_ + _loc10_;
               _loc2_.cameraZ = _loc27_;
               _loc2_.u = this.bottomRightU;
               _loc2_.v = this.topLeftV;
            }
         }
         param1.lastVertex.next = _loc25_;
         param1.lastVertex = _loc2_;
         var _loc24_:Face = Face.createStatic();
         _loc24_.material = this.material;
         param1.lastFace.next = _loc24_;
         param1.lastFace = _loc24_;
         var _loc8_:Wrapper = Wrapper.createStatic();
         _loc24_.wrapper = _loc8_;
         _loc8_.vertex = _loc25_;
         _loc25_ = _loc25_.next;
         while(_loc25_ != null)
         {
            _loc8_.next = _loc8_.create();
            _loc8_ = _loc8_.next;
            _loc8_.vertex = _loc25_;
            _loc25_ = _loc25_.next;
         }
         return _loc24_;
      }
      
      override alternativa3d function updateBounds(param1:Object3D, param2:Object3D = null) : void
      {
         var _loc5_:BitmapData = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc11_:Number = this.width;
         var _loc7_:Number = this.height;
         if(this.autoSize && this.material is TextureMaterial)
         {
            _loc5_ = (this.material as TextureMaterial).texture;
            if(_loc5_ != null)
            {
               _loc11_ = _loc5_.width * (this.bottomRightU - this.topLeftU);
               _loc7_ = _loc5_.height * (this.bottomRightV - this.topLeftV);
            }
         }
         var _loc14_:Number = (this.originX >= 0.5 ? this.originX : 1 - this.originX) * _loc11_;
         var _loc6_:Number = (this.originY >= 0.5 ? this.originY : 1 - this.originY) * _loc7_;
         var _loc15_:Number = Math.sqrt(_loc14_ * _loc14_ + _loc6_ * _loc6_);
         var _loc12_:Number = 0;
         var _loc3_:Number = 0;
         var _loc8_:Number = 0;
         if(param2 != null)
         {
            _loc9_ = param2.ma;
            _loc10_ = param2.me;
            _loc4_ = param2.mi;
            _loc13_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_ + _loc4_ * _loc4_);
            _loc9_ = param2.mb;
            _loc10_ = param2.mf;
            _loc4_ = param2.mj;
            _loc13_ += Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_ + _loc4_ * _loc4_);
            _loc9_ = param2.mc;
            _loc10_ = param2.mg;
            _loc4_ = param2.mk;
            _loc13_ += Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_ + _loc4_ * _loc4_);
            _loc15_ *= _loc13_ / 3;
            _loc12_ = param2.md;
            _loc3_ = param2.mh;
            _loc8_ = param2.ml;
         }
         if(_loc12_ - _loc15_ < param1.boundMinX)
         {
            param1.boundMinX = _loc12_ - _loc15_;
         }
         if(_loc12_ + _loc15_ > param1.boundMaxX)
         {
            param1.boundMaxX = _loc12_ + _loc15_;
         }
         if(_loc3_ - _loc15_ < param1.boundMinY)
         {
            param1.boundMinY = _loc3_ - _loc15_;
         }
         if(_loc3_ + _loc15_ > param1.boundMaxY)
         {
            param1.boundMaxY = _loc3_ + _loc15_;
         }
         if(_loc8_ - _loc15_ < param1.boundMinZ)
         {
            param1.boundMinZ = _loc8_ - _loc15_;
         }
         if(_loc8_ + _loc15_ > param1.boundMaxZ)
         {
            param1.boundMaxZ = _loc8_ + _loc15_;
         }
      }
   }
}

