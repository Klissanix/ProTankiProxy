package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.lights.AmbientLight;
   import alternativa.engine3d.lights.DirectionalLight;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.lights.SpotLight;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class AverageLightMaterial extends TextureMaterial
   {
      
      alternativa3d static var colorTransform:ColorTransform = new ColorTransform();
      
      alternativa3d var weights:Dictionary = new Dictionary();
      
      public var cameraDependence:Number = 1;
      
      public var defaultLightWeight:Number = 1;
      
      public function AverageLightMaterial(param1:BitmapData = null, param2:Boolean = false, param3:Boolean = true, param4:int = 0, param5:Number = 1)
      {
         super(param1,param2,param3,param4,param5);
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
         var _loc1_:AverageLightMaterial = new AverageLightMaterial(_texture,repeat,smooth,_mipMapping,resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Material) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:AverageLightMaterial = param1 as AverageLightMaterial;
         this.defaultLightWeight = _loc2_.defaultLightWeight;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         this.calculateLight(param1,param2.object);
         if(param2.modifiedColorTransform)
         {
            super.alternativa3d::draw(param1,param2.getChildCanvas(true,false,param2.object,1,"normal",colorTransform),param3,param4);
         }
         else
         {
            super.alternativa3d::draw(param1,param2,param3,param4);
            param2.transform.colorTransform = colorTransform;
            param2.modifiedColorTransform = true;
         }
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         this.calculateLight(param1,param2.object);
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
         var _loc33_:DirectionalLight = null;
         var _loc34_:OmniLight = null;
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
         var _loc32_:Number = this.cameraDependence * 0.5;
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
                     _loc33_ = _loc30_ as DirectionalLight;
                     _loc4_ = param2.imd;
                     _loc5_ = param2.imh;
                     _loc6_ = param2.iml;
                     _loc23_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
                     _loc4_ /= _loc23_;
                     _loc5_ /= _loc23_;
                     _loc6_ /= _loc23_;
                     _loc24_ = _loc33_.omc;
                     _loc10_ = _loc33_.omg;
                     _loc8_ = _loc33_.omk;
                     _loc22_ = Math.sqrt(_loc24_ * _loc24_ + _loc10_ * _loc10_ + _loc8_ * _loc8_);
                     _loc24_ /= _loc22_;
                     _loc10_ /= _loc22_;
                     _loc8_ /= _loc22_;
                     _loc14_ = (-_loc4_ * _loc24_ - _loc5_ * _loc10_ - _loc6_ * _loc8_ - 1) * _loc32_ + 1;
                     _loc16_ += _loc15_ * _loc14_;
                     _loc31_ += _loc25_ * _loc14_;
                     _loc18_ += _loc29_ * _loc14_;
                  }
                  else if(_loc30_ is OmniLight)
                  {
                     _loc34_ = _loc30_ as OmniLight;
                     _loc11_ = Math.sqrt(_loc34_.oma * _loc34_.oma + _loc34_.ome * _loc34_.ome + _loc34_.omi * _loc34_.omi);
                     _loc11_ = _loc11_ + Math.sqrt(_loc34_.omb * _loc34_.omb + _loc34_.omf * _loc34_.omf + _loc34_.omj * _loc34_.omj);
                     _loc11_ = _loc11_ + Math.sqrt(_loc34_.omc * _loc34_.omc + _loc34_.omg * _loc34_.omg + _loc34_.omk * _loc34_.omk);
                     _loc11_ = _loc11_ / 3;
                     _loc19_ = _loc34_.attenuationBegin * _loc11_;
                     _loc12_ = _loc34_.attenuationEnd * _loc11_;
                     _loc24_ = -_loc34_.omd;
                     _loc10_ = -_loc34_.omh;
                     _loc8_ = -_loc34_.oml;
                     _loc22_ = _loc24_ * _loc24_ + _loc10_ * _loc10_ + _loc8_ * _loc8_;
                     if(_loc22_ < _loc12_ * _loc12_)
                     {
                        _loc4_ = param2.imd;
                        _loc5_ = param2.imh;
                        _loc6_ = param2.iml;
                        _loc23_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
                        _loc4_ /= _loc23_;
                        _loc5_ /= _loc23_;
                        _loc6_ /= _loc23_;
                        _loc22_ = Math.sqrt(_loc22_);
                        _loc24_ /= _loc22_;
                        _loc10_ /= _loc22_;
                        _loc8_ /= _loc22_;
                        _loc14_ = (-_loc4_ * _loc24_ - _loc5_ * _loc10_ - _loc6_ * _loc8_ - 1) * _loc32_ + 1;
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
                           _loc4_ = param2.imd;
                           _loc5_ = param2.imh;
                           _loc6_ = param2.iml;
                           _loc23_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
                           _loc4_ /= _loc23_;
                           _loc5_ /= _loc23_;
                           _loc6_ /= _loc23_;
                           _loc14_ = (-_loc4_ * _loc24_ - _loc5_ * _loc10_ - _loc6_ * _loc8_ - 1) * _loc32_ + 1;
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

