package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.lights.AmbientLight;
   import alternativa.engine3d.lights.DirectionalLight;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.lights.SpotLight;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class FlatShadingMaterial extends TextureMaterial
   {
      
      alternativa3d static var colorTransform:ColorTransform = new ColorTransform();
      
      alternativa3d static const lights:Vector.<Light3D> = new Vector.<Light3D>();
      
      alternativa3d static const multiplier:ColorTransform = new ColorTransform(2,2,2);
      
      alternativa3d var weights:Dictionary = new Dictionary();
      
      public var defaultLightWeight:Number = 1;
      
      public var multipliedDiffuse:Boolean = false;
      
      public function FlatShadingMaterial(param1:BitmapData = null, param2:Boolean = false, param3:Boolean = true, param4:int = 0, param5:Number = 1)
      {
         super(param1,param2,param3,param4,param5);
         alternativa3d::useVerticesNormals = true;
      }
      
      public function setLightWeight(param1:Light3D, param2:Number) : void
      {
         this.weights[param1] = param2;
      }
      
      public function getLightWeight(param1:Light3D) : Number
      {
         var _loc2_:Number = Number(this.weights[param1]);
         return _loc2_ == _loc2_ ? _loc2_ : this.defaultLightWeight;
      }
      
      public function setLightWeightToDefault(param1:Light3D) : void
      {
         delete this.weights[param1];
      }
      
      public function setAllLightWeightsToDefault() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.weights)
         {
            delete this.weights[_loc1_];
         }
      }
      
      override public function clone() : Material
      {
         var _loc1_:FlatShadingMaterial = new FlatShadingMaterial(_texture,repeat,smooth,_mipMapping,resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Material) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:FlatShadingMaterial = param1 as FlatShadingMaterial;
         this.defaultLightWeight = _loc2_.defaultLightWeight;
         this.multipliedDiffuse = _loc2_.multipliedDiffuse;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         var _loc34_:int = 0;
         var _loc39_:Light3D = null;
         var _loc44_:DirectionalLight = null;
         var _loc46_:OmniLight = null;
         var _loc14_:SpotLight = null;
         var _loc12_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc43_:int = 0;
         var _loc13_:Wrapper = null;
         var _loc27_:Vertex = null;
         var _loc41_:Vertex = null;
         var _loc23_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc36_:int = 0;
         var _loc33_:int = 0;
         var _loc28_:int = 0;
         var _loc17_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc18_:int = 0;
         var _loc11_:int = 0;
         var _loc31_:int = 0;
         var _loc22_:Number = param1.viewSizeX;
         var _loc21_:Number = param1.viewSizeY;
         var _loc40_:Canvas = param2.getChildCanvas(true,false,param2.object,1,"multiply");
         _loc34_ = 0;
         while(_loc34_ < param1.lightsLength)
         {
            _loc39_ = param1.lights[_loc34_];
            _loc20_ = Number(this.weights[_loc39_]);
            if(_loc20_ != _loc20_)
            {
               _loc20_ = this.defaultLightWeight;
            }
            if(_loc20_ > 0)
            {
               _loc39_.calculateObjectMatrix(param2.object);
               if(_loc39_.checkBoundsIntersection(param2.object))
               {
                  _loc39_.localRed = (_loc39_.color >> 16 & 0xFF) * _loc39_.intensity * _loc20_;
                  _loc39_.localGreen = (_loc39_.color >> 8 & 0xFF) * _loc39_.intensity * _loc20_;
                  _loc39_.localBlue = (_loc39_.color & 0xFF) * _loc39_.intensity * _loc20_;
                  if(_loc39_ is DirectionalLight)
                  {
                     _loc44_ = _loc39_ as DirectionalLight;
                     _loc44_.localDirectionX = _loc44_.omc;
                     _loc44_.localDirectionY = _loc44_.omg;
                     _loc44_.localDirectionZ = _loc44_.omk;
                     _loc24_ = Math.sqrt(_loc44_.localDirectionX * _loc44_.localDirectionX + _loc44_.localDirectionY * _loc44_.localDirectionY + _loc44_.localDirectionZ * _loc44_.localDirectionZ);
                     _loc44_.localDirectionX /= _loc24_;
                     _loc44_.localDirectionY /= _loc24_;
                     _loc44_.localDirectionZ /= _loc24_;
                  }
                  else if(_loc39_ is OmniLight)
                  {
                     _loc46_ = _loc39_ as OmniLight;
                     _loc12_ = Math.sqrt(_loc46_.oma * _loc46_.oma + _loc46_.ome * _loc46_.ome + _loc46_.omi * _loc46_.omi);
                     _loc12_ = _loc12_ + Math.sqrt(_loc46_.omb * _loc46_.omb + _loc46_.omf * _loc46_.omf + _loc46_.omj * _loc46_.omj);
                     _loc12_ = _loc12_ + Math.sqrt(_loc46_.omc * _loc46_.omc + _loc46_.omg * _loc46_.omg + _loc46_.omk * _loc46_.omk);
                     _loc12_ = _loc12_ / 3;
                     _loc46_.localAttenuationBegin = _loc46_.attenuationBegin * _loc12_;
                     _loc46_.localAttenuationEnd = _loc46_.attenuationEnd * _loc12_;
                  }
                  else if(_loc39_ is SpotLight)
                  {
                     _loc14_ = _loc39_ as SpotLight;
                     _loc12_ = Math.sqrt(_loc14_.oma * _loc14_.oma + _loc14_.ome * _loc14_.ome + _loc14_.omi * _loc14_.omi);
                     _loc12_ = _loc12_ + Math.sqrt(_loc14_.omb * _loc14_.omb + _loc14_.omf * _loc14_.omf + _loc14_.omj * _loc14_.omj);
                     _loc12_ = _loc12_ + Math.sqrt(_loc14_.omc * _loc14_.omc + _loc14_.omg * _loc14_.omg + _loc14_.omk * _loc14_.omk);
                     _loc12_ = _loc12_ / 3;
                     _loc14_.localAttenuationBegin = _loc14_.attenuationBegin * _loc12_;
                     _loc14_.localAttenuationEnd = _loc14_.attenuationEnd * _loc12_;
                     _loc14_.localDirectionX = _loc14_.omc;
                     _loc14_.localDirectionY = _loc14_.omg;
                     _loc14_.localDirectionZ = _loc14_.omk;
                     _loc24_ = Math.sqrt(_loc14_.localDirectionX * _loc14_.localDirectionX + _loc14_.localDirectionY * _loc14_.localDirectionY + _loc14_.localDirectionZ * _loc14_.localDirectionZ);
                     _loc14_.localDirectionX /= _loc24_;
                     _loc14_.localDirectionY /= _loc24_;
                     _loc14_.localDirectionZ /= _loc24_;
                     _loc14_.localHotspot = Math.cos(_loc14_.hotspot * 0.5);
                     _loc14_.localFalloff = Math.cos(_loc14_.falloff * 0.5);
                  }
                  lights[_loc31_] = _loc39_;
                  _loc31_++;
               }
            }
            _loc34_++;
         }
         var _loc37_:Face = param3;
         while(_loc37_ != null)
         {
            _loc25_ = 0;
            _loc15_ = 0;
            _loc47_ = 0;
            _loc43_ = 0;
            _loc13_ = _loc37_.wrapper;
            _loc27_ = _loc13_.vertex;
            _loc25_ += _loc27_.x;
            _loc15_ += _loc27_.y;
            _loc47_ += _loc27_.z;
            _loc43_++;
            _loc13_ = _loc13_.next;
            _loc41_ = _loc13_.vertex;
            _loc25_ += _loc41_.x;
            _loc15_ += _loc41_.y;
            _loc47_ += _loc41_.z;
            _loc43_++;
            _loc23_ = _loc41_.x - _loc27_.x;
            _loc42_ = _loc41_.y - _loc27_.y;
            _loc35_ = _loc41_.z - _loc27_.z;
            _loc13_ = _loc13_.next;
            _loc41_ = _loc13_.vertex;
            _loc25_ += _loc41_.x;
            _loc15_ += _loc41_.y;
            _loc47_ += _loc41_.z;
            _loc43_++;
            _loc19_ = _loc41_.x - _loc27_.x;
            _loc45_ = _loc41_.y - _loc27_.y;
            _loc32_ = _loc41_.z - _loc27_.z;
            _loc13_ = _loc13_.next;
            while(_loc13_ != null)
            {
               _loc41_ = _loc13_.vertex;
               _loc25_ += _loc41_.x;
               _loc15_ += _loc41_.y;
               _loc47_ += _loc41_.z;
               _loc43_++;
               _loc13_ = _loc13_.next;
            }
            _loc25_ /= _loc43_;
            _loc15_ /= _loc43_;
            _loc47_ /= _loc43_;
            _loc6_ = _loc32_ * _loc42_ - _loc45_ * _loc35_;
            _loc7_ = _loc19_ * _loc35_ - _loc32_ * _loc23_;
            _loc8_ = _loc45_ * _loc23_ - _loc19_ * _loc42_;
            _loc26_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
            _loc6_ /= _loc26_;
            _loc7_ /= _loc26_;
            _loc8_ /= _loc26_;
            _loc16_ = 0;
            _loc30_ = 0;
            _loc38_ = 0;
            _loc34_ = 0;
            while(_loc34_ < _loc31_)
            {
               _loc39_ = lights[_loc34_];
               if(_loc39_ is AmbientLight)
               {
                  _loc16_ += _loc39_.localRed;
                  _loc30_ += _loc39_.localGreen;
                  _loc38_ += _loc39_.localBlue;
               }
               else if(_loc39_ is DirectionalLight)
               {
                  _loc44_ = _loc39_ as DirectionalLight;
                  _loc17_ = -_loc6_ * _loc44_.localDirectionX - _loc7_ * _loc44_.localDirectionY - _loc8_ * _loc44_.localDirectionZ;
                  if(_loc17_ > 0)
                  {
                     _loc16_ += _loc39_.localRed * _loc17_;
                     _loc30_ += _loc39_.localGreen * _loc17_;
                     _loc38_ += _loc39_.localBlue * _loc17_;
                  }
               }
               else if(_loc39_ is OmniLight)
               {
                  _loc46_ = _loc39_ as OmniLight;
                  _loc29_ = _loc25_ - _loc46_.omd;
                  _loc10_ = _loc15_ - _loc46_.omh;
                  _loc9_ = _loc47_ - _loc46_.oml;
                  _loc24_ = _loc29_ * _loc29_ + _loc10_ * _loc10_ + _loc9_ * _loc9_;
                  if(_loc24_ < _loc46_.localAttenuationEnd * _loc46_.localAttenuationEnd)
                  {
                     _loc24_ = Math.sqrt(_loc24_);
                     _loc29_ /= _loc24_;
                     _loc10_ /= _loc24_;
                     _loc9_ /= _loc24_;
                     _loc17_ = -_loc6_ * _loc29_ - _loc7_ * _loc10_ - _loc8_ * _loc9_;
                     if(_loc17_ > 0)
                     {
                        if(_loc24_ > _loc46_.localAttenuationBegin)
                        {
                           _loc17_ *= 1 - (_loc24_ - _loc46_.localAttenuationBegin) / (_loc46_.localAttenuationEnd - _loc46_.localAttenuationBegin);
                        }
                        _loc16_ += _loc39_.localRed * _loc17_;
                        _loc30_ += _loc39_.localGreen * _loc17_;
                        _loc38_ += _loc39_.localBlue * _loc17_;
                     }
                  }
               }
               else if(_loc39_ is SpotLight)
               {
                  _loc14_ = _loc39_ as SpotLight;
                  _loc29_ = _loc25_ - _loc14_.omd;
                  _loc10_ = _loc15_ - _loc14_.omh;
                  _loc9_ = _loc47_ - _loc14_.oml;
                  _loc24_ = _loc29_ * _loc29_ + _loc10_ * _loc10_ + _loc9_ * _loc9_;
                  if(_loc24_ < _loc14_.localAttenuationEnd * _loc14_.localAttenuationEnd)
                  {
                     _loc24_ = Math.sqrt(_loc24_);
                     _loc29_ /= _loc24_;
                     _loc10_ /= _loc24_;
                     _loc9_ /= _loc24_;
                     _loc5_ = _loc14_.localDirectionX * _loc29_ + _loc14_.localDirectionY * _loc10_ + _loc14_.localDirectionZ * _loc9_;
                     if(_loc5_ > _loc14_.localFalloff)
                     {
                        _loc17_ = -_loc6_ * _loc29_ - _loc7_ * _loc10_ - _loc8_ * _loc9_;
                        if(_loc17_ > 0)
                        {
                           if(_loc24_ > _loc14_.localAttenuationBegin)
                           {
                              _loc17_ *= 1 - (_loc24_ - _loc14_.localAttenuationBegin) / (_loc14_.localAttenuationEnd - _loc14_.localAttenuationBegin);
                           }
                           if(_loc5_ < _loc14_.localHotspot)
                           {
                              _loc17_ *= (_loc5_ - _loc14_.localFalloff) / (_loc14_.localHotspot - _loc14_.localFalloff);
                           }
                           _loc16_ += _loc39_.localRed * _loc17_;
                           _loc30_ += _loc39_.localGreen * _loc17_;
                           _loc38_ += _loc39_.localBlue * _loc17_;
                        }
                     }
                  }
               }
               _loc34_++;
            }
            _loc36_ = _loc16_ > 255 ? 255 : (_loc16_ < 0 ? 0 : _loc16_);
            _loc33_ = _loc30_ > 255 ? 255 : (_loc30_ < 0 ? 0 : _loc30_);
            _loc28_ = _loc38_ > 255 ? 255 : (_loc38_ < 0 ? 0 : _loc38_);
            _loc40_.gfx.beginFill((_loc36_ << 16) + (_loc33_ << 8) + _loc28_);
            _loc40_.gfx.moveTo(_loc27_.cameraX * _loc22_ / _loc27_.cameraZ,_loc27_.cameraY * _loc21_ / _loc27_.cameraZ);
            _loc13_ = _loc37_.wrapper.next;
            while(_loc13_ != null)
            {
               _loc41_ = _loc13_.vertex;
               _loc40_.gfx.lineTo(_loc41_.cameraX * _loc22_ / _loc41_.cameraZ,_loc41_.cameraY * _loc21_ / _loc41_.cameraZ);
               _loc11_++;
               _loc13_ = _loc13_.next;
            }
            _loc11_--;
            _loc18_++;
            _loc37_ = _loc37_.processNext;
         }
         param1.numDraws++;
         param1.numPolygons += _loc18_;
         param1.numTriangles += _loc11_;
         super.alternativa3d::draw(param1,this.multipliedDiffuse ? param2 : param2.getChildCanvas(true,false,param2.object,1,"normal",multiplier),param3,param4);
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         this.calculateLight(param1,param2.object);
         if(this.multipliedDiffuse)
         {
            colorTransform.redMultiplier *= 0.5;
            colorTransform.greenMultiplier *= 0.5;
            colorTransform.blueMultiplier *= 0.5;
         }
         if(param2.modifiedColorTransform)
         {
            super.alternativa3d::drawViewAligned(param1,param2.getChildCanvas(true,false,param2.object,1,"normal",colorTransform),param3,param4,param5,param6,param7,param8,param9,param10);
         }
         else
         {
            super.alternativa3d::drawViewAligned(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            param2.transform.colorTransform = colorTransform;
            param2.modifiedColorTransform = true;
         }
      }
      
      alternativa3d function calculateLight(param1:Camera3D, param2:Object3D) : void
      {
         var _loc30_:Light3D = null;
         var _loc21_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc32_:DirectionalLight = null;
         var _loc33_:OmniLight = null;
         var _loc13_:SpotLight = null;
         var _loc17_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc27_:int = 0;
         var _loc16_:Number = 0;
         var _loc31_:Number = 0;
         var _loc18_:Number = 0;
         while(_loc27_ < param1.lightsLength)
         {
            _loc30_ = param1.lights[_loc27_];
            _loc21_ = Number(this.weights[_loc30_]);
            if(_loc21_ != _loc21_)
            {
               _loc21_ = this.defaultLightWeight;
            }
            if(_loc21_ > 0)
            {
               _loc30_.calculateObjectMatrix(param2);
               if(_loc30_.checkBoundsIntersection(param2))
               {
                  _loc15_ = (_loc30_.color >> 16 & 0xFF) * _loc30_.intensity * _loc21_;
                  _loc25_ = (_loc30_.color >> 8 & 0xFF) * _loc30_.intensity * _loc21_;
                  _loc29_ = (_loc30_.color & 0xFF) * _loc30_.intensity * _loc21_;
                  if(_loc30_ is AmbientLight)
                  {
                     _loc16_ += _loc15_;
                     _loc31_ += _loc25_;
                     _loc18_ += _loc29_;
                  }
                  else if(_loc30_ is DirectionalLight)
                  {
                     _loc32_ = _loc30_ as DirectionalLight;
                     _loc4_ = -param2.imc;
                     _loc5_ = -param2.img;
                     _loc6_ = -param2.imk;
                     _loc23_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
                     _loc4_ /= _loc23_;
                     _loc5_ /= _loc23_;
                     _loc6_ /= _loc23_;
                     _loc24_ = _loc32_.omc;
                     _loc10_ = _loc32_.omg;
                     _loc8_ = _loc32_.omk;
                     _loc22_ = Math.sqrt(_loc24_ * _loc24_ + _loc10_ * _loc10_ + _loc8_ * _loc8_);
                     _loc24_ /= _loc22_;
                     _loc10_ /= _loc22_;
                     _loc8_ /= _loc22_;
                     _loc14_ = -_loc4_ * _loc24_ - _loc5_ * _loc10_ - _loc6_ * _loc8_;
                     if(_loc14_ < 0)
                     {
                        _loc14_ = 0;
                     }
                     _loc16_ += _loc15_ * _loc14_;
                     _loc31_ += _loc25_ * _loc14_;
                     _loc18_ += _loc29_ * _loc14_;
                  }
                  else if(_loc30_ is OmniLight)
                  {
                     _loc33_ = _loc30_ as OmniLight;
                     _loc11_ = Math.sqrt(_loc33_.oma * _loc33_.oma + _loc33_.ome * _loc33_.ome + _loc33_.omi * _loc33_.omi);
                     _loc11_ = _loc11_ + Math.sqrt(_loc33_.omb * _loc33_.omb + _loc33_.omf * _loc33_.omf + _loc33_.omj * _loc33_.omj);
                     _loc11_ = _loc11_ + Math.sqrt(_loc33_.omc * _loc33_.omc + _loc33_.omg * _loc33_.omg + _loc33_.omk * _loc33_.omk);
                     _loc11_ = _loc11_ / 3;
                     _loc19_ = _loc33_.attenuationBegin * _loc11_;
                     _loc12_ = _loc33_.attenuationEnd * _loc11_;
                     _loc24_ = -_loc33_.omd;
                     _loc10_ = -_loc33_.omh;
                     _loc8_ = -_loc33_.oml;
                     _loc22_ = _loc24_ * _loc24_ + _loc10_ * _loc10_ + _loc8_ * _loc8_;
                     if(_loc22_ < _loc12_ * _loc12_)
                     {
                        _loc4_ = -param2.imc;
                        _loc5_ = -param2.img;
                        _loc6_ = -param2.imk;
                        _loc23_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
                        _loc4_ /= _loc23_;
                        _loc5_ /= _loc23_;
                        _loc6_ /= _loc23_;
                        _loc22_ = Math.sqrt(_loc22_);
                        _loc24_ /= _loc22_;
                        _loc10_ /= _loc22_;
                        _loc8_ /= _loc22_;
                        _loc14_ = -_loc4_ * _loc24_ - _loc5_ * _loc10_ - _loc6_ * _loc8_;
                        if(_loc14_ < 0)
                        {
                           _loc14_ = 0;
                        }
                        if(_loc22_ > _loc19_)
                        {
                           _loc14_ *= 1 - (_loc22_ - _loc19_) / (_loc12_ - _loc19_);
                        }
                        _loc16_ += _loc15_ * _loc14_;
                        _loc31_ += _loc25_ * _loc14_;
                        _loc18_ += _loc29_ * _loc14_;
                     }
                  }
                  else if(_loc30_ is SpotLight)
                  {
                     _loc13_ = _loc30_ as SpotLight;
                     _loc11_ = Math.sqrt(_loc13_.oma * _loc13_.oma + _loc13_.ome * _loc13_.ome + _loc13_.omi * _loc13_.omi);
                     _loc11_ = _loc11_ + Math.sqrt(_loc13_.omb * _loc13_.omb + _loc13_.omf * _loc13_.omf + _loc13_.omj * _loc13_.omj);
                     _loc11_ = _loc11_ + Math.sqrt(_loc13_.omc * _loc13_.omc + _loc13_.omg * _loc13_.omg + _loc13_.omk * _loc13_.omk);
                     _loc11_ = _loc11_ / 3;
                     _loc19_ = _loc13_.attenuationBegin * _loc11_;
                     _loc12_ = _loc13_.attenuationEnd * _loc11_;
                     _loc24_ = -_loc13_.omd;
                     _loc10_ = -_loc13_.omh;
                     _loc8_ = -_loc13_.oml;
                     _loc22_ = _loc24_ * _loc24_ + _loc10_ * _loc10_ + _loc8_ * _loc8_;
                     if(_loc22_ < _loc12_ * _loc12_)
                     {
                        _loc22_ = Math.sqrt(_loc22_);
                        _loc24_ /= _loc22_;
                        _loc10_ /= _loc22_;
                        _loc8_ /= _loc22_;
                        _loc17_ = _loc13_.omc;
                        _loc20_ = _loc13_.omg;
                        _loc26_ = _loc13_.omk;
                        _loc7_ = Math.sqrt(_loc17_ * _loc17_ + _loc20_ * _loc20_ + _loc26_ * _loc26_);
                        _loc17_ /= _loc7_;
                        _loc20_ /= _loc7_;
                        _loc26_ /= _loc7_;
                        _loc9_ = Math.cos(_loc13_.hotspot * 0.5);
                        _loc28_ = Math.cos(_loc13_.falloff * 0.5);
                        _loc3_ = _loc17_ * _loc24_ + _loc20_ * _loc10_ + _loc26_ * _loc8_;
                        if(_loc3_ > _loc28_)
                        {
                           _loc4_ = -param2.imc;
                           _loc5_ = -param2.img;
                           _loc6_ = -param2.imk;
                           _loc23_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
                           _loc4_ /= _loc23_;
                           _loc5_ /= _loc23_;
                           _loc6_ /= _loc23_;
                           _loc14_ = -_loc4_ * _loc24_ - _loc5_ * _loc10_ - _loc6_ * _loc8_;
                           if(_loc14_ < 0)
                           {
                              _loc14_ = 0;
                           }
                           if(_loc22_ > _loc19_)
                           {
                              _loc14_ *= 1 - (_loc22_ - _loc19_) / (_loc12_ - _loc19_);
                           }
                           if(_loc3_ < _loc9_)
                           {
                              _loc14_ *= (_loc3_ - _loc28_) / (_loc9_ - _loc28_);
                           }
                           _loc16_ += _loc15_ * _loc14_;
                           _loc31_ += _loc25_ * _loc14_;
                           _loc18_ += _loc29_ * _loc14_;
                        }
                     }
                  }
               }
            }
            _loc27_++;
         }
         colorTransform.redMultiplier = _loc16_ / 127.5;
         colorTransform.greenMultiplier = _loc31_ / 127.5;
         colorTransform.blueMultiplier = _loc18_ / 127.5;
      }
   }
}

