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
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class VertexLightMaterial extends TextureMaterial
   {
      
      alternativa3d static var colorTransform:ColorTransform = new ColorTransform();
      
      alternativa3d static const lights:Vector.<Light3D> = new Vector.<Light3D>();
      
      alternativa3d static const layers:Vector.<Canvas> = new Vector.<Canvas>();
      
      alternativa3d static const gradientRect:Rectangle = new Rectangle(0,0,256,1);
      
      alternativa3d static const gradientColors:Vector.<uint> = new Vector.<uint>(256);
      
      alternativa3d static const multiplier:ColorTransform = new ColorTransform(2,2,2);
      
      alternativa3d var gradientMap:Dictionary = new Dictionary();
      
      alternativa3d var weights:Dictionary = new Dictionary();
      
      public var defaultLightWeight:Number = 1;
      
      public var multipliedDiffuse:Boolean = false;
      
      public function VertexLightMaterial(param1:BitmapData = null, param2:Boolean = false, param3:Boolean = true, param4:int = 0, param5:Number = 1)
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
         var _loc1_:VertexLightMaterial = new VertexLightMaterial(_texture,repeat,smooth,_mipMapping,resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Material) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:VertexLightMaterial = param1 as VertexLightMaterial;
         this.defaultLightWeight = _loc2_.defaultLightWeight;
         this.multipliedDiffuse = _loc2_.multipliedDiffuse;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         var _loc61_:Face = null;
         var _loc36_:Face = null;
         var _loc38_:Face = null;
         var _loc10_:Wrapper = null;
         var _loc5_:Vertex = null;
         var _loc48_:int = 0;
         var _loc50_:* = 0;
         var _loc51_:* = 0;
         var _loc63_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc56_:int = 0;
         var _loc57_:int = 0;
         var _loc42_:Number = NaN;
         var _loc60_:Number = NaN;
         var _loc67_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc39_:BitmapData = null;
         var _loc28_:int = 0;
         var _loc18_:int = 0;
         var _loc22_:int = 0;
         var _loc69_:int = 0;
         var _loc26_:Light3D = null;
         var _loc20_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc64_:Number = NaN;
         var _loc33_:int = 0;
         var _loc8_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc13_:int = 0;
         var _loc59_:int = 0;
         var _loc16_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc65_:Face = null;
         var _loc12_:Face = null;
         var _loc25_:Wrapper = null;
         var _loc49_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc37_:Boolean = false;
         var _loc17_:Number = NaN;
         var _loc40_:Face = null;
         var _loc35_:Face = null;
         var _loc34_:Wrapper = null;
         var _loc32_:Wrapper = null;
         var _loc6_:Wrapper = null;
         var _loc43_:Vertex = null;
         var _loc45_:Vertex = null;
         var _loc66_:Vertex = null;
         var _loc44_:int = 0;
         var _loc9_:int = 0;
         var _loc53_:int = 0;
         var _loc47_:Number = param1.viewSizeX;
         var _loc46_:Number = param1.viewSizeY;
         var _loc41_:Vector.<Number> = drawVertices;
         var _loc30_:Vector.<Number> = drawUVTs;
         var _loc62_:Vector.<int> = drawIndices;
         var _loc55_:int = param1.numDraws;
         if(_texture == null)
         {
            clearLinks(param3);
            return;
         }
         var _loc29_:Number = 0;
         var _loc58_:Number = 0;
         var _loc24_:Number = 0;
         _loc56_ = 0;
         while(_loc56_ < param1.lightsLength)
         {
            _loc26_ = param1.lights[_loc56_];
            if(_loc26_.intensity > 0)
            {
               _loc20_ = Number(this.weights[_loc26_]);
               if(_loc20_ != _loc20_)
               {
                  _loc20_ = this.defaultLightWeight;
               }
               if(_loc20_ > 0)
               {
                  _loc26_.calculateObjectMatrix(param2.object);
                  if(_loc26_.checkBoundsIntersection(param2.object))
                  {
                     if(_loc26_ is AmbientLight)
                     {
                        _loc29_ += (_loc26_.color >> 16 & 0xFF) * _loc26_.intensity * _loc20_;
                        _loc58_ += (_loc26_.color >> 8 & 0xFF) * _loc26_.intensity * _loc20_;
                        _loc24_ += (_loc26_.color & 0xFF) * _loc26_.intensity * _loc20_;
                     }
                     else
                     {
                        _loc26_.localWeight = _loc20_;
                        lights[_loc53_] = _loc26_;
                        _loc53_++;
                     }
                  }
               }
            }
            _loc56_++;
         }
         var _loc68_:Vector.<BitmapData> = this.gradientMap[param2.object];
         if(_loc68_ == null)
         {
            _loc68_ = new Vector.<BitmapData>();
            this.gradientMap[param2.object] = _loc68_;
         }
         _loc56_ = int(_loc68_.length);
         while(_loc56_ < _loc53_)
         {
            _loc68_[_loc56_] = new BitmapData(256,1,false);
            _loc56_++;
         }
         var _loc70_:Vector.<uint> = gradientColors;
         var _loc27_:Canvas = param2.getChildCanvas(_loc53_ <= 1,_loc53_ > 1,param2.object,1,"multiply");
         if(_loc53_ <= 1)
         {
            layers[0] = _loc27_;
         }
         _loc56_ = 0;
         while(_loc56_ < _loc53_)
         {
            _loc26_ = lights[_loc56_];
            _loc15_ = (_loc26_.color >> 16 & 0xFF) * _loc26_.intensity * _loc26_.localWeight;
            _loc52_ = (_loc26_.color >> 8 & 0xFF) * _loc26_.intensity * _loc26_.localWeight;
            _loc64_ = (_loc26_.color & 0xFF) * _loc26_.intensity * _loc26_.localWeight;
            if(_loc56_ == 0 && (_loc29_ > 0 || _loc58_ > 0 || _loc24_ > 0))
            {
               _loc57_ = 0;
               while(_loc57_ < 256)
               {
                  _loc63_ = _loc57_ / 255;
                  _loc48_ = _loc15_ * _loc63_ + _loc29_;
                  _loc50_ = int(_loc52_ * _loc63_ + _loc58_);
                  _loc51_ = int(_loc64_ * _loc63_ + _loc24_);
                  _loc70_[_loc57_] = ((_loc48_ > 255 ? 255 : _loc48_) << 16) + ((_loc50_ > 255 ? 255 : _loc50_) << 8) + (_loc51_ > 255 ? 255 : _loc51_);
                  _loc57_++;
               }
            }
            else
            {
               _loc57_ = 0;
               while(_loc57_ < 256)
               {
                  _loc63_ = _loc57_ / 255;
                  _loc48_ = _loc15_ * _loc63_;
                  _loc50_ = int(_loc52_ * _loc63_);
                  _loc51_ = int(_loc64_ * _loc63_);
                  _loc70_[_loc57_] = ((_loc48_ > 255 ? 255 : _loc48_) << 16) + ((_loc50_ > 255 ? 255 : _loc50_) << 8) + (_loc51_ > 255 ? 255 : _loc51_);
                  _loc57_++;
               }
            }
            if(_loc53_ > 1)
            {
               layers[_loc56_] = _loc27_.getChildCanvas(true,false,param2.object,1,_loc56_ == _loc53_ - 1 ? "normal" : "add");
            }
            (_loc68_[_loc56_] as BitmapData).setVector(gradientRect,_loc70_);
            _loc56_++;
         }
         if(!this.multipliedDiffuse)
         {
            param2 = param2.getChildCanvas(true,false,param2.object,1,"normal",multiplier);
         }
         if(_mipMapping < 2)
         {
            _loc55_++;
            _loc28_ = 0;
            _loc18_ = 0;
            _loc22_ = 0;
            _loc69_ = 0;
            _loc61_ = param3;
            while(_loc61_ != null)
            {
               _loc10_ = _loc61_.wrapper;
               _loc5_ = _loc10_.vertex;
               if(_loc5_.drawId != _loc55_)
               {
                  _loc63_ = 1 / _loc5_.cameraZ;
                  _loc41_[_loc18_] = _loc5_.cameraX * _loc47_ * _loc63_;
                  _loc18_++;
                  _loc41_[_loc18_] = _loc5_.cameraY * _loc46_ * _loc63_;
                  _loc18_++;
                  _loc30_[_loc22_] = _loc5_.u;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc5_.v;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc63_;
                  _loc22_++;
                  _loc48_ = _loc28_;
                  _loc5_.index = _loc28_++;
                  _loc5_.drawId = _loc55_;
               }
               else
               {
                  _loc48_ = _loc5_.index;
               }
               _loc10_ = _loc10_.next;
               _loc5_ = _loc10_.vertex;
               if(_loc5_.drawId != _loc55_)
               {
                  _loc63_ = 1 / _loc5_.cameraZ;
                  _loc41_[_loc18_] = _loc5_.cameraX * _loc47_ * _loc63_;
                  _loc18_++;
                  _loc41_[_loc18_] = _loc5_.cameraY * _loc46_ * _loc63_;
                  _loc18_++;
                  _loc30_[_loc22_] = _loc5_.u;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc5_.v;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc63_;
                  _loc22_++;
                  _loc50_ = _loc28_;
                  _loc5_.index = _loc28_++;
                  _loc5_.drawId = _loc55_;
               }
               else
               {
                  _loc50_ = _loc5_.index;
               }
               _loc10_ = _loc10_.next;
               while(_loc10_ != null)
               {
                  _loc5_ = _loc10_.vertex;
                  if(_loc5_.drawId != _loc55_)
                  {
                     _loc63_ = 1 / _loc5_.cameraZ;
                     _loc41_[_loc18_] = _loc5_.cameraX * _loc47_ * _loc63_;
                     _loc18_++;
                     _loc41_[_loc18_] = _loc5_.cameraY * _loc46_ * _loc63_;
                     _loc18_++;
                     _loc30_[_loc22_] = _loc5_.u;
                     _loc22_++;
                     _loc30_[_loc22_] = _loc5_.v;
                     _loc22_++;
                     _loc30_[_loc22_] = _loc63_;
                     _loc22_++;
                     _loc51_ = _loc28_;
                     _loc5_.index = _loc28_++;
                     _loc5_.drawId = _loc55_;
                  }
                  else
                  {
                     _loc51_ = _loc5_.index;
                  }
                  drawIndices[_loc69_] = _loc48_;
                  _loc69_++;
                  drawIndices[_loc69_] = _loc50_;
                  _loc69_++;
                  drawIndices[_loc69_] = _loc51_;
                  _loc69_++;
                  _loc50_ = _loc51_;
                  _loc9_++;
                  _loc10_ = _loc10_.next;
               }
               _loc44_++;
               _loc61_ = _loc61_.processNext;
            }
            _loc41_.length = _loc18_;
            _loc30_.length = _loc22_;
            _loc62_.length = _loc69_;
            if(_mipMapping == 0)
            {
               _loc39_ = _texture;
            }
            else
            {
               _loc54_ = param1.focalLength * resolution;
               _loc33_ = int(param4 >= _loc54_ ? int(1 + Math.log(param4 / _loc54_) * 1.44269504088896) : 0);
               if(_loc33_ >= numMaps)
               {
                  _loc33_ = numMaps - 1;
               }
               _loc39_ = mipMap[_loc33_];
            }
            if(correctUV)
            {
               _loc67_ = -0.5 / (_loc39_.width - 1);
               _loc11_ = -0.5 / (_loc39_.height - 1);
               _loc42_ = 1 - _loc67_ - _loc67_;
               _loc60_ = 1 - _loc11_ - _loc11_;
               _loc57_ = 0;
               while(_loc57_ < _loc22_)
               {
                  _loc30_[_loc57_] = _loc30_[_loc57_] * _loc42_ + _loc67_;
                  _loc57_++;
                  _loc30_[_loc57_] = _loc30_[_loc57_] * _loc60_ + _loc11_;
                  _loc57_++;
                  _loc57_++;
               }
            }
            param2.gfx.beginBitmapFill(_loc39_,null,repeat,smooth);
            param2.gfx.drawTriangles(_loc41_,_loc62_,_loc30_,"none");
            if(_loc53_ > 0)
            {
               _loc57_ = 0;
               while(_loc57_ < _loc53_)
               {
                  this.drawLight(param3,_loc57_ == _loc53_ - 1,++_loc55_,_loc41_,_loc62_,_loc30_,layers[_loc57_],lights[_loc57_],_loc68_[_loc57_],0);
                  _loc57_++;
               }
            }
            else
            {
               this.drawLight(param3,true,++_loc55_,_loc41_,_loc62_,_loc30_,layers[0],null,null,((_loc29_ > 255 ? 255 : _loc29_) << 16) + ((_loc58_ > 255 ? 255 : _loc58_) << 8) + (_loc24_ > 255 ? 255 : _loc24_));
            }
         }
         else
         {
            _loc14_ = 1e+22;
            _loc31_ = -1;
            _loc61_ = param3;
            while(_loc61_ != null)
            {
               _loc10_ = _loc61_.wrapper;
               while(_loc10_ != null)
               {
                  _loc8_ = _loc10_.vertex.cameraZ;
                  if(_loc8_ < _loc14_)
                  {
                     _loc14_ = _loc8_;
                  }
                  if(_loc8_ > _loc31_)
                  {
                     _loc31_ = _loc8_;
                  }
                  _loc10_ = _loc10_.next;
               }
               _loc61_ = _loc61_.processNext;
            }
            _loc54_ = param1.focalLength * resolution;
            _loc13_ = int(_loc14_ >= _loc54_ ? int(1 + Math.log(_loc14_ / _loc54_) * 1.44269504088896) : 0);
            if(_loc13_ >= numMaps)
            {
               _loc13_ = numMaps - 1;
            }
            _loc59_ = int(_loc31_ >= _loc54_ ? int(1 + Math.log(_loc31_ / _loc54_) * 1.44269504088896) : 0);
            if(_loc59_ >= numMaps)
            {
               _loc59_ = numMaps - 1;
            }
            _loc8_ = _loc54_ * Math.pow(2,_loc59_ - 1);
            _loc56_ = _loc59_;
            while(_loc56_ >= _loc13_)
            {
               _loc55_++;
               _loc28_ = 0;
               _loc18_ = 0;
               _loc22_ = 0;
               _loc69_ = 0;
               _loc16_ = _loc8_ - threshold;
               _loc19_ = _loc8_ + threshold;
               _loc65_ = _loc56_ == _loc13_ ? param3 : null;
               _loc12_ = null;
               _loc61_ = param3;
               param3 = null;
               _loc38_ = null;
               while(_loc61_ != null)
               {
                  _loc36_ = _loc61_.processNext;
                  _loc10_ = null;
                  if(_loc56_ == _loc13_)
                  {
                     _loc10_ = _loc61_.wrapper;
                  }
                  else
                  {
                     _loc25_ = _loc61_.wrapper;
                     _loc49_ = _loc25_.vertex.cameraZ;
                     _loc25_ = _loc25_.next;
                     _loc23_ = _loc25_.vertex.cameraZ;
                     _loc25_ = _loc25_.next;
                     _loc21_ = _loc25_.vertex.cameraZ;
                     _loc25_ = _loc25_.next;
                     _loc7_ = _loc49_ < _loc16_ || _loc23_ < _loc16_ || _loc21_ < _loc16_;
                     _loc37_ = _loc49_ > _loc19_ || _loc23_ > _loc19_ || _loc21_ > _loc19_;
                     while(_loc25_ != null)
                     {
                        _loc17_ = _loc25_.vertex.cameraZ;
                        if(_loc17_ < _loc16_)
                        {
                           _loc7_ = true;
                        }
                        else if(_loc17_ > _loc19_)
                        {
                           _loc37_ = true;
                        }
                        _loc25_ = _loc25_.next;
                     }
                     if(!_loc7_)
                     {
                        if(_loc65_ != null)
                        {
                           _loc12_.processNext = _loc61_;
                        }
                        else
                        {
                           _loc65_ = _loc61_;
                        }
                        _loc12_ = _loc61_;
                        _loc10_ = _loc61_.wrapper;
                     }
                     else if(!_loc37_)
                     {
                        if(param3 != null)
                        {
                           _loc38_.processNext = _loc61_;
                        }
                        else
                        {
                           param3 = _loc61_;
                        }
                        _loc38_ = _loc61_;
                     }
                     else
                     {
                        _loc40_ = _loc61_.create();
                        param1.lastFace.next = _loc40_;
                        param1.lastFace = _loc40_;
                        _loc35_ = _loc61_.create();
                        param1.lastFace.next = _loc35_;
                        param1.lastFace = _loc35_;
                        _loc34_ = null;
                        _loc32_ = null;
                        _loc25_ = _loc61_.wrapper.next.next;
                        while(_loc25_.next != null)
                        {
                           _loc25_ = _loc25_.next;
                        }
                        _loc43_ = _loc25_.vertex;
                        _loc49_ = _loc43_.cameraZ;
                        _loc25_ = _loc61_.wrapper;
                        while(_loc25_ != null)
                        {
                           _loc45_ = _loc25_.vertex;
                           _loc23_ = _loc45_.cameraZ;
                           if(_loc49_ < _loc16_ && _loc23_ > _loc19_ || _loc49_ > _loc19_ && _loc23_ < _loc16_)
                           {
                              _loc63_ = (_loc8_ - _loc49_) / (_loc23_ - _loc49_);
                              _loc66_ = _loc45_.create();
                              param1.lastVertex.next = _loc66_;
                              param1.lastVertex = _loc66_;
                              _loc66_.cameraX = _loc43_.cameraX + (_loc45_.cameraX - _loc43_.cameraX) * _loc63_;
                              _loc66_.cameraY = _loc43_.cameraY + (_loc45_.cameraY - _loc43_.cameraY) * _loc63_;
                              _loc66_.cameraZ = _loc8_;
                              _loc66_.u = _loc43_.u + (_loc45_.u - _loc43_.u) * _loc63_;
                              _loc66_.v = _loc43_.v + (_loc45_.v - _loc43_.v) * _loc63_;
                              _loc66_.x = _loc43_.x + (_loc45_.x - _loc43_.x) * _loc63_;
                              _loc66_.y = _loc43_.y + (_loc45_.y - _loc43_.y) * _loc63_;
                              _loc66_.z = _loc43_.z + (_loc45_.z - _loc43_.z) * _loc63_;
                              _loc66_.normalX = _loc43_.normalX + (_loc45_.normalX - _loc43_.normalX) * _loc63_;
                              _loc66_.normalY = _loc43_.normalY + (_loc45_.normalY - _loc43_.normalY) * _loc63_;
                              _loc66_.normalZ = _loc43_.normalZ + (_loc45_.normalZ - _loc43_.normalZ) * _loc63_;
                              _loc6_ = _loc25_.create();
                              _loc6_.vertex = _loc66_;
                              if(_loc34_ != null)
                              {
                                 _loc34_.next = _loc6_;
                              }
                              else
                              {
                                 _loc40_.wrapper = _loc6_;
                              }
                              _loc34_ = _loc6_;
                              _loc6_ = _loc25_.create();
                              _loc6_.vertex = _loc66_;
                              if(_loc32_ != null)
                              {
                                 _loc32_.next = _loc6_;
                              }
                              else
                              {
                                 _loc35_.wrapper = _loc6_;
                                 _loc10_ = _loc6_;
                              }
                              _loc32_ = _loc6_;
                           }
                           if(_loc23_ <= _loc19_)
                           {
                              _loc6_ = _loc25_.create();
                              _loc6_.vertex = _loc45_;
                              if(_loc34_ != null)
                              {
                                 _loc34_.next = _loc6_;
                              }
                              else
                              {
                                 _loc40_.wrapper = _loc6_;
                              }
                              _loc34_ = _loc6_;
                           }
                           if(_loc23_ >= _loc16_)
                           {
                              _loc6_ = _loc25_.create();
                              _loc6_.vertex = _loc45_;
                              if(_loc32_ != null)
                              {
                                 _loc32_.next = _loc6_;
                              }
                              else
                              {
                                 _loc35_.wrapper = _loc6_;
                                 _loc10_ = _loc6_;
                              }
                              _loc32_ = _loc6_;
                           }
                           _loc43_ = _loc45_;
                           _loc49_ = _loc23_;
                           _loc25_ = _loc25_.next;
                        }
                        if(param3 != null)
                        {
                           _loc38_.processNext = _loc40_;
                        }
                        else
                        {
                           param3 = _loc40_;
                        }
                        _loc38_ = _loc40_;
                        if(_loc65_ != null)
                        {
                           _loc12_.processNext = _loc35_;
                        }
                        else
                        {
                           _loc65_ = _loc35_;
                        }
                        _loc12_ = _loc35_;
                        _loc61_.processNext = null;
                     }
                  }
                  if(_loc10_ != null)
                  {
                     _loc5_ = _loc10_.vertex;
                     if(_loc5_.drawId != _loc55_)
                     {
                        _loc63_ = 1 / _loc5_.cameraZ;
                        _loc41_[_loc18_] = _loc5_.cameraX * _loc47_ * _loc63_;
                        _loc18_++;
                        _loc41_[_loc18_] = _loc5_.cameraY * _loc46_ * _loc63_;
                        _loc18_++;
                        _loc30_[_loc22_] = _loc5_.u;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc5_.v;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc63_;
                        _loc22_++;
                        _loc48_ = _loc28_;
                        _loc5_.index = _loc28_++;
                        _loc5_.drawId = _loc55_;
                     }
                     else
                     {
                        _loc48_ = _loc5_.index;
                     }
                     _loc10_ = _loc10_.next;
                     _loc5_ = _loc10_.vertex;
                     if(_loc5_.drawId != _loc55_)
                     {
                        _loc63_ = 1 / _loc5_.cameraZ;
                        _loc41_[_loc18_] = _loc5_.cameraX * _loc47_ * _loc63_;
                        _loc18_++;
                        _loc41_[_loc18_] = _loc5_.cameraY * _loc46_ * _loc63_;
                        _loc18_++;
                        _loc30_[_loc22_] = _loc5_.u;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc5_.v;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc63_;
                        _loc22_++;
                        _loc50_ = _loc28_;
                        _loc5_.index = _loc28_++;
                        _loc5_.drawId = _loc55_;
                     }
                     else
                     {
                        _loc50_ = _loc5_.index;
                     }
                     _loc10_ = _loc10_.next;
                     while(_loc10_ != null)
                     {
                        _loc5_ = _loc10_.vertex;
                        if(_loc5_.drawId != _loc55_)
                        {
                           _loc63_ = 1 / _loc5_.cameraZ;
                           _loc41_[_loc18_] = _loc5_.cameraX * _loc47_ * _loc63_;
                           _loc18_++;
                           _loc41_[_loc18_] = _loc5_.cameraY * _loc46_ * _loc63_;
                           _loc18_++;
                           _loc30_[_loc22_] = _loc5_.u;
                           _loc22_++;
                           _loc30_[_loc22_] = _loc5_.v;
                           _loc22_++;
                           _loc30_[_loc22_] = _loc63_;
                           _loc22_++;
                           _loc51_ = _loc28_;
                           _loc5_.index = _loc28_++;
                           _loc5_.drawId = _loc55_;
                        }
                        else
                        {
                           _loc51_ = _loc5_.index;
                        }
                        drawIndices[_loc69_] = _loc48_;
                        _loc69_++;
                        drawIndices[_loc69_] = _loc50_;
                        _loc69_++;
                        drawIndices[_loc69_] = _loc51_;
                        _loc69_++;
                        _loc50_ = _loc51_;
                        _loc9_++;
                        _loc10_ = _loc10_.next;
                     }
                     _loc44_++;
                  }
                  _loc61_ = _loc36_;
               }
               if(_loc38_ != null)
               {
                  _loc38_.processNext = null;
               }
               if(_loc12_ != null)
               {
                  _loc12_.processNext = null;
               }
               _loc8_ *= 0.5;
               _loc41_.length = _loc18_;
               _loc30_.length = _loc22_;
               _loc62_.length = _loc69_;
               _loc39_ = mipMap[_loc56_];
               if(correctUV)
               {
                  _loc67_ = -0.5 / (_loc39_.width - 1);
                  _loc11_ = -0.5 / (_loc39_.height - 1);
                  _loc42_ = 1 - _loc67_ - _loc67_;
                  _loc60_ = 1 - _loc11_ - _loc11_;
                  _loc57_ = 0;
                  while(_loc57_ < _loc22_)
                  {
                     _loc30_[_loc57_] = _loc30_[_loc57_] * _loc42_ + _loc67_;
                     _loc57_++;
                     _loc30_[_loc57_] = _loc30_[_loc57_] * _loc60_ + _loc11_;
                     _loc57_++;
                     _loc57_++;
                  }
               }
               param2.gfx.beginBitmapFill(_loc39_,null,repeat,smooth);
               param2.gfx.drawTriangles(_loc41_,_loc62_,_loc30_,"none");
               if(_loc53_ > 0)
               {
                  _loc57_ = 0;
                  while(_loc57_ < _loc53_)
                  {
                     this.drawLight(_loc65_,_loc57_ == _loc53_ - 1,++_loc55_,_loc41_,_loc62_,_loc30_,layers[_loc57_],lights[_loc57_],_loc68_[_loc57_],0);
                     _loc57_++;
                  }
               }
               else
               {
                  this.drawLight(_loc65_,true,++_loc55_,_loc41_,_loc62_,_loc30_,layers[0],null,null,((_loc29_ > 255 ? 255 : _loc29_) << 16) + ((_loc58_ > 255 ? 255 : _loc58_) << 8) + (_loc24_ > 255 ? 255 : _loc24_));
               }
               _loc56_--;
            }
         }
         _loc48_ = _loc53_ < 1 ? 2 : _loc53_ + 1;
         param1.numDraws = _loc55_;
         param1.numPolygons += _loc44_ * _loc48_;
         param1.numTriangles += _loc9_ * _loc48_;
      }
      
      alternativa3d function drawLight(param1:Face, param2:Boolean, param3:int, param4:Vector.<Number>, param5:Vector.<int>, param6:Vector.<Number>, param7:Canvas, param8:Light3D, param9:BitmapData, param10:int) : void
      {
         var _loc31_:Face = null;
         var _loc11_:Face = null;
         var _loc20_:Wrapper = null;
         var _loc14_:Vertex = null;
         var _loc29_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc34_:DirectionalLight = null;
         var _loc35_:OmniLight = null;
         var _loc21_:SpotLight = null;
         var _loc24_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc28_:int = 0;
         if(param8 is DirectionalLight)
         {
            _loc34_ = param8 as DirectionalLight;
            _loc29_ = _loc34_.omc;
            _loc17_ = _loc34_.omg;
            _loc15_ = _loc34_.omk;
            _loc27_ = Math.sqrt(_loc29_ * _loc29_ + _loc17_ * _loc17_ + _loc15_ * _loc15_);
            _loc29_ /= _loc27_;
            _loc17_ /= _loc27_;
            _loc15_ /= _loc27_;
            _loc31_ = param1;
            while(_loc31_ != null)
            {
               _loc11_ = _loc31_.processNext;
               if(param2)
               {
                  _loc31_.processNext = null;
               }
               _loc20_ = _loc31_.wrapper;
               while(_loc20_ != null)
               {
                  _loc14_ = _loc20_.vertex;
                  if(_loc14_.drawId != param3)
                  {
                     param6[_loc28_] = -_loc14_.normalX * _loc29_ - _loc14_.normalY * _loc17_ - _loc14_.normalZ * _loc15_;
                     _loc28_ += 3;
                     _loc14_.drawId = param3;
                  }
                  _loc20_ = _loc20_.next;
               }
               _loc31_ = _loc11_;
            }
            param7.gfx.beginBitmapFill(param9,null,false,smooth);
            param7.gfx.drawTriangles(param4,param5,param6,"none");
         }
         else if(param8 is OmniLight)
         {
            _loc35_ = param8 as OmniLight;
            _loc18_ = Math.sqrt(_loc35_.oma * _loc35_.oma + _loc35_.ome * _loc35_.ome + _loc35_.omi * _loc35_.omi);
            _loc18_ = _loc18_ + Math.sqrt(_loc35_.omb * _loc35_.omb + _loc35_.omf * _loc35_.omf + _loc35_.omj * _loc35_.omj);
            _loc18_ = _loc18_ + Math.sqrt(_loc35_.omc * _loc35_.omc + _loc35_.omg * _loc35_.omg + _loc35_.omk * _loc35_.omk);
            _loc18_ = _loc18_ / 3;
            _loc25_ = _loc35_.attenuationBegin * _loc18_;
            _loc19_ = _loc35_.attenuationEnd * _loc18_;
            _loc32_ = _loc19_ * _loc19_;
            _loc13_ = _loc19_ - _loc25_;
            _loc31_ = param1;
            while(_loc31_ != null)
            {
               _loc11_ = _loc31_.processNext;
               if(param2)
               {
                  _loc31_.processNext = null;
               }
               _loc20_ = _loc31_.wrapper;
               while(_loc20_ != null)
               {
                  _loc14_ = _loc20_.vertex;
                  if(_loc14_.drawId != param3)
                  {
                     _loc29_ = _loc14_.x - _loc35_.omd;
                     _loc17_ = _loc14_.y - _loc35_.omh;
                     _loc15_ = _loc14_.z - _loc35_.oml;
                     _loc27_ = _loc29_ * _loc29_ + _loc17_ * _loc17_ + _loc15_ * _loc15_;
                     if(_loc27_ < _loc32_)
                     {
                        _loc27_ = Math.sqrt(_loc27_);
                        _loc29_ /= _loc27_;
                        _loc17_ /= _loc27_;
                        _loc15_ /= _loc27_;
                        _loc22_ = -_loc14_.normalX * _loc29_ - _loc14_.normalY * _loc17_ - _loc14_.normalZ * _loc15_;
                        if(_loc22_ > 0)
                        {
                           if(_loc27_ > _loc25_)
                           {
                              param6[_loc28_] = _loc22_ * (1 - (_loc27_ - _loc25_) / _loc13_);
                           }
                           else
                           {
                              param6[_loc28_] = _loc22_;
                           }
                        }
                        else
                        {
                           param6[_loc28_] = 0;
                        }
                     }
                     else
                     {
                        param6[_loc28_] = 0;
                     }
                     _loc28_ += 3;
                     _loc14_.drawId = param3;
                  }
                  _loc20_ = _loc20_.next;
               }
               _loc31_ = _loc11_;
            }
            param7.gfx.beginBitmapFill(param9,null,false,smooth);
            param7.gfx.drawTriangles(param4,param5,param6,"none");
         }
         else if(param8 is SpotLight)
         {
            _loc21_ = param8 as SpotLight;
            _loc18_ = Math.sqrt(_loc21_.oma * _loc21_.oma + _loc21_.ome * _loc21_.ome + _loc21_.omi * _loc21_.omi);
            _loc18_ = _loc18_ + Math.sqrt(_loc21_.omb * _loc21_.omb + _loc21_.omf * _loc21_.omf + _loc21_.omj * _loc21_.omj);
            _loc18_ = _loc18_ + Math.sqrt(_loc21_.omc * _loc21_.omc + _loc21_.omg * _loc21_.omg + _loc21_.omk * _loc21_.omk);
            _loc18_ = _loc18_ / 3;
            _loc25_ = _loc21_.attenuationBegin * _loc18_;
            _loc19_ = _loc21_.attenuationEnd * _loc18_;
            _loc32_ = _loc19_ * _loc19_;
            _loc13_ = _loc19_ - _loc25_;
            _loc24_ = _loc21_.omc;
            _loc26_ = _loc21_.omg;
            _loc30_ = _loc21_.omk;
            _loc27_ = Math.sqrt(_loc24_ * _loc24_ + _loc26_ * _loc26_ + _loc30_ * _loc30_);
            _loc24_ /= _loc27_;
            _loc26_ /= _loc27_;
            _loc30_ /= _loc27_;
            _loc16_ = Math.cos(_loc21_.hotspot * 0.5);
            _loc33_ = Math.cos(_loc21_.falloff * 0.5);
            _loc23_ = _loc16_ - _loc33_;
            _loc31_ = param1;
            while(_loc31_ != null)
            {
               _loc11_ = _loc31_.processNext;
               if(param2)
               {
                  _loc31_.processNext = null;
               }
               _loc20_ = _loc31_.wrapper;
               while(_loc20_ != null)
               {
                  _loc14_ = _loc20_.vertex;
                  if(_loc14_.drawId != param3)
                  {
                     _loc29_ = _loc14_.x - _loc21_.omd;
                     _loc17_ = _loc14_.y - _loc21_.omh;
                     _loc15_ = _loc14_.z - _loc21_.oml;
                     _loc27_ = _loc29_ * _loc29_ + _loc17_ * _loc17_ + _loc15_ * _loc15_;
                     if(_loc27_ < _loc32_)
                     {
                        _loc27_ = Math.sqrt(_loc27_);
                        _loc29_ /= _loc27_;
                        _loc17_ /= _loc27_;
                        _loc15_ /= _loc27_;
                        _loc22_ = -_loc14_.normalX * _loc29_ - _loc14_.normalY * _loc17_ - _loc14_.normalZ * _loc15_;
                        if(_loc22_ > 0)
                        {
                           _loc12_ = _loc24_ * _loc29_ + _loc26_ * _loc17_ + _loc30_ * _loc15_;
                           if(_loc12_ > _loc33_)
                           {
                              if(_loc12_ < _loc16_)
                              {
                                 if(_loc27_ > _loc25_)
                                 {
                                    param6[_loc28_] = _loc22_ * (1 - (_loc27_ - _loc25_) / _loc13_) * (_loc12_ - _loc33_) / _loc23_;
                                 }
                                 else
                                 {
                                    param6[_loc28_] = _loc22_ * (_loc12_ - _loc33_) / _loc23_;
                                 }
                              }
                              else if(_loc27_ > _loc25_)
                              {
                                 param6[_loc28_] = _loc22_ * (1 - (_loc27_ - _loc25_) / _loc13_);
                              }
                              else
                              {
                                 param6[_loc28_] = _loc22_;
                              }
                           }
                           else
                           {
                              param6[_loc28_] = 0;
                           }
                        }
                        else
                        {
                           param6[_loc28_] = 0;
                        }
                     }
                     else
                     {
                        param6[_loc28_] = 0;
                     }
                     _loc28_ += 3;
                     _loc14_.drawId = param3;
                  }
                  _loc20_ = _loc20_.next;
               }
               _loc31_ = _loc11_;
            }
            param7.gfx.beginBitmapFill(param9,null,false,smooth);
            param7.gfx.drawTriangles(param4,param5,param6,"none");
         }
         else
         {
            _loc31_ = param1;
            while(_loc31_ != null)
            {
               _loc11_ = _loc31_.processNext;
               if(param2)
               {
                  _loc31_.processNext = null;
               }
               _loc31_ = _loc11_;
            }
            param7.gfx.beginFill(param10);
            param7.gfx.drawTriangles(param4,param5,null,"none");
         }
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

