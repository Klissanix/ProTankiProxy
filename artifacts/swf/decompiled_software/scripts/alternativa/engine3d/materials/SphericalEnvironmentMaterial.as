package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   
   use namespace alternativa3d;
   
   public class SphericalEnvironmentMaterial extends TextureMaterial
   {
      
      alternativa3d static var drawUVs:Vector.<Number> = new Vector.<Number>();
      
      public var alpha:Number = 1;
      
      public var blendMode:String = "normal";
      
      public var colorTransform:ColorTransform = null;
      
      public var environmentMap:BitmapData;
      
      public function SphericalEnvironmentMaterial(param1:BitmapData = null, param2:BitmapData = null, param3:Boolean = false, param4:Boolean = true, param5:int = 0, param6:Number = 1)
      {
         super(param1,param3,param4,param5,param6);
         this.environmentMap = param2;
         alternativa3d::useVerticesNormals = true;
      }
      
      override public function clone() : Material
      {
         var _loc1_:SphericalEnvironmentMaterial = new SphericalEnvironmentMaterial(_texture,this.environmentMap,repeat,smooth,_mipMapping,resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Material) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:SphericalEnvironmentMaterial = param1 as SphericalEnvironmentMaterial;
         this.alpha = _loc2_.alpha;
         this.blendMode = _loc2_.blendMode;
         if(_loc2_.colorTransform != null)
         {
            this.colorTransform = new ColorTransform();
            this.colorTransform.concat(_loc2_.colorTransform);
         }
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         var _loc63_:Face = null;
         var _loc39_:Face = null;
         var _loc42_:Face = null;
         var _loc15_:Wrapper = null;
         var _loc8_:Vertex = null;
         var _loc52_:int = 0;
         var _loc54_:* = 0;
         var _loc55_:* = 0;
         var _loc66_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc59_:int = 0;
         var _loc60_:int = 0;
         var _loc46_:Number = NaN;
         var _loc62_:Number = NaN;
         var _loc68_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc43_:BitmapData = null;
         var _loc22_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc32_:int = 0;
         var _loc25_:int = 0;
         var _loc29_:int = 0;
         var _loc27_:int = 0;
         var _loc69_:int = 0;
         var _loc51_:Canvas = null;
         var _loc13_:int = 0;
         var _loc18_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc61_:int = 0;
         var _loc19_:int = 0;
         var _loc40_:Wrapper = null;
         var _loc23_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc31_:Wrapper = null;
         var _loc53_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc41_:Boolean = false;
         var _loc24_:Number = NaN;
         var _loc44_:Face = null;
         var _loc37_:Wrapper = null;
         var _loc36_:Wrapper = null;
         var _loc35_:Wrapper = null;
         var _loc9_:Vertex = null;
         var _loc48_:Vertex = null;
         var _loc67_:Vertex = null;
         var _loc47_:int = 0;
         var _loc14_:int = 0;
         var _loc50_:Number = param1.viewSizeX;
         var _loc49_:Number = param1.viewSizeY;
         var _loc20_:Number = param1.viewSizeX / param1.focalLength;
         var _loc21_:Number = param1.viewSizeY / param1.focalLength;
         var _loc38_:Object3D = param2.object;
         var _loc45_:Vector.<Number> = drawVertices;
         var _loc33_:Vector.<Number> = drawUVTs;
         var _loc65_:Vector.<Number> = drawUVs;
         var _loc64_:Vector.<int> = drawIndices;
         var _loc58_:int = param1.numDraws;
         if(this.environmentMap == null)
         {
            clearLinks(param3);
            return;
         }
         if(this.alpha == 1 && this.blendMode == "normal" && this.colorTransform == null)
         {
            _loc51_ = param2;
         }
         else
         {
            _loc51_ = param2.getChildCanvas(true,false,param2.object,this.alpha,this.blendMode,this.colorTransform);
         }
         if(_mipMapping < 2 || _texture == null)
         {
            _loc58_++;
            _loc32_ = 0;
            _loc25_ = 0;
            _loc29_ = 0;
            _loc27_ = 0;
            _loc69_ = 0;
            _loc63_ = param3;
            while(_loc63_ != null)
            {
               _loc39_ = _loc63_.processNext;
               _loc63_.processNext = null;
               _loc15_ = _loc63_.wrapper;
               _loc8_ = _loc15_.vertex;
               if(_loc8_.drawId != _loc58_)
               {
                  _loc66_ = 1 / _loc8_.cameraZ;
                  _loc45_[_loc25_] = _loc8_.cameraX * _loc50_ * _loc66_;
                  _loc25_++;
                  _loc45_[_loc25_] = _loc8_.cameraY * _loc49_ * _loc66_;
                  _loc25_++;
                  _loc33_[_loc29_] = _loc8_.u;
                  _loc29_++;
                  _loc33_[_loc29_] = _loc8_.v;
                  _loc29_++;
                  _loc33_[_loc29_] = _loc66_;
                  _loc29_++;
                  _loc52_ = _loc32_;
                  _loc8_.index = _loc32_++;
                  _loc8_.drawId = _loc58_;
                  _loc56_ = _loc8_.cameraX * _loc20_;
                  _loc11_ = _loc8_.cameraY * _loc21_;
                  _loc10_ = _loc8_.cameraZ;
                  _loc22_ = 1 / Math.sqrt(_loc56_ * _loc56_ + _loc11_ * _loc11_ + _loc10_ * _loc10_);
                  _loc56_ *= _loc22_;
                  _loc11_ *= _loc22_;
                  _loc10_ *= _loc22_;
                  _loc5_ = (_loc8_.normalX * _loc38_.ima + _loc8_.normalY * _loc38_.ime + _loc8_.normalZ * _loc38_.imi) / _loc20_;
                  _loc6_ = (_loc8_.normalX * _loc38_.imb + _loc8_.normalY * _loc38_.imf + _loc8_.normalZ * _loc38_.imj) / _loc21_;
                  _loc7_ = _loc8_.normalX * _loc38_.imc + _loc8_.normalY * _loc38_.img + _loc8_.normalZ * _loc38_.imk;
                  if(_loc7_ > 0)
                  {
                     _loc7_ = 0;
                  }
                  _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                  _loc5_ *= _loc22_;
                  _loc6_ *= _loc22_;
                  _loc7_ *= _loc22_;
                  _loc22_ = _loc56_ * _loc5_ + _loc11_ * _loc6_ + _loc10_ * _loc7_;
                  _loc22_ += _loc22_;
                  _loc5_ = _loc56_ - _loc5_ * _loc22_;
                  _loc6_ = _loc11_ - _loc6_ * _loc22_;
                  _loc7_ = _loc10_ - _loc7_ * _loc22_ - 1;
                  _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                  _loc5_ *= _loc22_;
                  _loc6_ *= _loc22_;
                  _loc7_ *= _loc22_;
                  _loc65_[_loc27_] = _loc5_ * 0.5 + 0.5;
                  _loc27_++;
                  _loc65_[_loc27_] = _loc6_ * 0.5 + 0.5;
                  _loc27_++;
               }
               else
               {
                  _loc52_ = _loc8_.index;
               }
               _loc15_ = _loc15_.next;
               _loc8_ = _loc15_.vertex;
               if(_loc8_.drawId != _loc58_)
               {
                  _loc66_ = 1 / _loc8_.cameraZ;
                  _loc45_[_loc25_] = _loc8_.cameraX * _loc50_ * _loc66_;
                  _loc25_++;
                  _loc45_[_loc25_] = _loc8_.cameraY * _loc49_ * _loc66_;
                  _loc25_++;
                  _loc33_[_loc29_] = _loc8_.u;
                  _loc29_++;
                  _loc33_[_loc29_] = _loc8_.v;
                  _loc29_++;
                  _loc33_[_loc29_] = _loc66_;
                  _loc29_++;
                  _loc54_ = _loc32_;
                  _loc8_.index = _loc32_++;
                  _loc8_.drawId = _loc58_;
                  _loc56_ = _loc8_.cameraX * _loc20_;
                  _loc11_ = _loc8_.cameraY * _loc21_;
                  _loc10_ = _loc8_.cameraZ;
                  _loc22_ = 1 / Math.sqrt(_loc56_ * _loc56_ + _loc11_ * _loc11_ + _loc10_ * _loc10_);
                  _loc56_ *= _loc22_;
                  _loc11_ *= _loc22_;
                  _loc10_ *= _loc22_;
                  _loc5_ = (_loc8_.normalX * _loc38_.ima + _loc8_.normalY * _loc38_.ime + _loc8_.normalZ * _loc38_.imi) / _loc20_;
                  _loc6_ = (_loc8_.normalX * _loc38_.imb + _loc8_.normalY * _loc38_.imf + _loc8_.normalZ * _loc38_.imj) / _loc21_;
                  _loc7_ = _loc8_.normalX * _loc38_.imc + _loc8_.normalY * _loc38_.img + _loc8_.normalZ * _loc38_.imk;
                  if(_loc7_ > 0)
                  {
                     _loc7_ = 0;
                  }
                  _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                  _loc5_ *= _loc22_;
                  _loc6_ *= _loc22_;
                  _loc7_ *= _loc22_;
                  _loc22_ = _loc56_ * _loc5_ + _loc11_ * _loc6_ + _loc10_ * _loc7_;
                  _loc22_ += _loc22_;
                  _loc5_ = _loc56_ - _loc5_ * _loc22_;
                  _loc6_ = _loc11_ - _loc6_ * _loc22_;
                  _loc7_ = _loc10_ - _loc7_ * _loc22_ - 1;
                  _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                  _loc5_ *= _loc22_;
                  _loc6_ *= _loc22_;
                  _loc7_ *= _loc22_;
                  _loc65_[_loc27_] = _loc5_ * 0.5 + 0.5;
                  _loc27_++;
                  _loc65_[_loc27_] = _loc6_ * 0.5 + 0.5;
                  _loc27_++;
               }
               else
               {
                  _loc54_ = _loc8_.index;
               }
               _loc15_ = _loc15_.next;
               while(_loc15_ != null)
               {
                  _loc8_ = _loc15_.vertex;
                  if(_loc8_.drawId != _loc58_)
                  {
                     _loc66_ = 1 / _loc8_.cameraZ;
                     _loc45_[_loc25_] = _loc8_.cameraX * _loc50_ * _loc66_;
                     _loc25_++;
                     _loc45_[_loc25_] = _loc8_.cameraY * _loc49_ * _loc66_;
                     _loc25_++;
                     _loc33_[_loc29_] = _loc8_.u;
                     _loc29_++;
                     _loc33_[_loc29_] = _loc8_.v;
                     _loc29_++;
                     _loc33_[_loc29_] = _loc66_;
                     _loc29_++;
                     _loc55_ = _loc32_;
                     _loc8_.index = _loc32_++;
                     _loc8_.drawId = _loc58_;
                     _loc56_ = _loc8_.cameraX * _loc20_;
                     _loc11_ = _loc8_.cameraY * _loc21_;
                     _loc10_ = _loc8_.cameraZ;
                     _loc22_ = 1 / Math.sqrt(_loc56_ * _loc56_ + _loc11_ * _loc11_ + _loc10_ * _loc10_);
                     _loc56_ *= _loc22_;
                     _loc11_ *= _loc22_;
                     _loc10_ *= _loc22_;
                     _loc5_ = (_loc8_.normalX * _loc38_.ima + _loc8_.normalY * _loc38_.ime + _loc8_.normalZ * _loc38_.imi) / _loc20_;
                     _loc6_ = (_loc8_.normalX * _loc38_.imb + _loc8_.normalY * _loc38_.imf + _loc8_.normalZ * _loc38_.imj) / _loc21_;
                     _loc7_ = _loc8_.normalX * _loc38_.imc + _loc8_.normalY * _loc38_.img + _loc8_.normalZ * _loc38_.imk;
                     if(_loc7_ > 0)
                     {
                        _loc7_ = 0;
                     }
                     _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                     _loc5_ *= _loc22_;
                     _loc6_ *= _loc22_;
                     _loc7_ *= _loc22_;
                     _loc22_ = _loc56_ * _loc5_ + _loc11_ * _loc6_ + _loc10_ * _loc7_;
                     _loc22_ += _loc22_;
                     _loc5_ = _loc56_ - _loc5_ * _loc22_;
                     _loc6_ = _loc11_ - _loc6_ * _loc22_;
                     _loc7_ = _loc10_ - _loc7_ * _loc22_ - 1;
                     _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                     _loc5_ *= _loc22_;
                     _loc6_ *= _loc22_;
                     _loc7_ *= _loc22_;
                     _loc65_[_loc27_] = _loc5_ * 0.5 + 0.5;
                     _loc27_++;
                     _loc65_[_loc27_] = _loc6_ * 0.5 + 0.5;
                     _loc27_++;
                  }
                  else
                  {
                     _loc55_ = _loc8_.index;
                  }
                  drawIndices[_loc69_] = _loc52_;
                  _loc69_++;
                  drawIndices[_loc69_] = _loc54_;
                  _loc69_++;
                  drawIndices[_loc69_] = _loc55_;
                  _loc69_++;
                  _loc54_ = _loc55_;
                  _loc14_++;
                  _loc15_ = _loc15_.next;
               }
               _loc47_++;
               _loc63_ = _loc39_;
            }
            _loc45_.length = _loc25_;
            _loc33_.length = _loc29_;
            _loc65_.length = _loc27_;
            _loc64_.length = _loc69_;
            if(_texture != null)
            {
               if(_mipMapping == 0)
               {
                  _loc43_ = _texture;
               }
               else
               {
                  _loc57_ = param1.focalLength * resolution;
                  _loc13_ = int(param4 >= _loc57_ ? int(1 + Math.log(param4 / _loc57_) * 1.44269504088896) : 0);
                  if(_loc13_ >= numMaps)
                  {
                     _loc13_ = numMaps - 1;
                  }
                  _loc43_ = mipMap[_loc13_];
               }
               if(correctUV)
               {
                  _loc68_ = -0.5 / (_loc43_.width - 1);
                  _loc16_ = -0.5 / (_loc43_.height - 1);
                  _loc46_ = 1 - _loc68_ - _loc68_;
                  _loc62_ = 1 - _loc16_ - _loc16_;
                  _loc60_ = 0;
                  while(_loc60_ < _loc29_)
                  {
                     _loc33_[_loc60_] = _loc33_[_loc60_] * _loc46_ + _loc68_;
                     _loc60_++;
                     _loc33_[_loc60_] = _loc33_[_loc60_] * _loc62_ + _loc16_;
                     _loc60_++;
                     _loc60_++;
                  }
               }
               param2.gfx.beginBitmapFill(_loc43_,null,repeat,smooth);
               param2.gfx.drawTriangles(_loc45_,_loc64_,_loc33_,"none");
            }
            _loc51_.gfx.beginBitmapFill(this.environmentMap,null,false,smooth);
            _loc51_.gfx.drawTriangles(_loc45_,_loc64_,_loc65_,"none");
         }
         else
         {
            _loc34_ = 1e+22;
            _loc17_ = -1;
            _loc63_ = param3;
            while(_loc63_ != null)
            {
               _loc15_ = _loc63_.wrapper;
               while(_loc15_ != null)
               {
                  _loc18_ = _loc15_.vertex.cameraZ;
                  if(_loc18_ < _loc34_)
                  {
                     _loc34_ = _loc18_;
                  }
                  if(_loc18_ > _loc17_)
                  {
                     _loc17_ = _loc18_;
                  }
                  _loc15_ = _loc15_.next;
               }
               _loc63_ = _loc63_.processNext;
            }
            _loc57_ = param1.focalLength * resolution;
            _loc61_ = int(_loc34_ >= _loc57_ ? int(1 + Math.log(_loc34_ / _loc57_) * 1.44269504088896) : 0);
            if(_loc61_ >= numMaps)
            {
               _loc61_ = numMaps - 1;
            }
            _loc19_ = int(_loc17_ >= _loc57_ ? int(1 + Math.log(_loc17_ / _loc57_) * 1.44269504088896) : 0);
            if(_loc19_ >= numMaps)
            {
               _loc19_ = numMaps - 1;
            }
            _loc18_ = _loc57_ * Math.pow(2,_loc19_ - 1);
            _loc59_ = _loc19_;
            while(_loc59_ >= _loc61_)
            {
               _loc58_++;
               _loc32_ = 0;
               _loc25_ = 0;
               _loc29_ = 0;
               _loc27_ = 0;
               _loc69_ = 0;
               _loc23_ = _loc18_ - threshold;
               _loc26_ = _loc18_ + threshold;
               _loc63_ = param3;
               param3 = null;
               _loc42_ = null;
               while(_loc63_ != null)
               {
                  _loc39_ = _loc63_.processNext;
                  _loc63_.processNext = null;
                  _loc15_ = null;
                  if(_loc59_ == _loc61_)
                  {
                     _loc15_ = _loc63_.wrapper;
                  }
                  else
                  {
                     _loc31_ = _loc63_.wrapper;
                     _loc53_ = _loc31_.vertex.cameraZ;
                     _loc31_ = _loc31_.next;
                     _loc30_ = _loc31_.vertex.cameraZ;
                     _loc31_ = _loc31_.next;
                     _loc28_ = _loc31_.vertex.cameraZ;
                     _loc31_ = _loc31_.next;
                     _loc12_ = _loc53_ < _loc23_ || _loc30_ < _loc23_ || _loc28_ < _loc23_;
                     _loc41_ = _loc53_ > _loc26_ || _loc30_ > _loc26_ || _loc28_ > _loc26_;
                     while(_loc31_ != null)
                     {
                        _loc24_ = _loc31_.vertex.cameraZ;
                        if(_loc24_ < _loc23_)
                        {
                           _loc12_ = true;
                        }
                        else if(_loc24_ > _loc26_)
                        {
                           _loc41_ = true;
                        }
                        _loc31_ = _loc31_.next;
                     }
                     if(!_loc12_)
                     {
                        _loc15_ = _loc63_.wrapper;
                     }
                     else if(!_loc41_)
                     {
                        if(param3 != null)
                        {
                           _loc42_.processNext = _loc63_;
                        }
                        else
                        {
                           param3 = _loc63_;
                        }
                        _loc42_ = _loc63_;
                     }
                     else
                     {
                        _loc44_ = _loc63_.create();
                        param1.lastFace.next = _loc44_;
                        param1.lastFace = _loc44_;
                        _loc37_ = null;
                        _loc36_ = null;
                        _loc31_ = _loc63_.wrapper.next.next;
                        while(_loc31_.next != null)
                        {
                           _loc31_ = _loc31_.next;
                        }
                        _loc9_ = _loc31_.vertex;
                        _loc53_ = _loc9_.cameraZ;
                        _loc31_ = _loc63_.wrapper;
                        while(_loc31_ != null)
                        {
                           _loc48_ = _loc31_.vertex;
                           _loc30_ = _loc48_.cameraZ;
                           if(_loc53_ < _loc23_ && _loc30_ > _loc26_ || _loc53_ > _loc26_ && _loc30_ < _loc23_)
                           {
                              _loc66_ = (_loc18_ - _loc53_) / (_loc30_ - _loc53_);
                              _loc67_ = _loc48_.create();
                              param1.lastVertex.next = _loc67_;
                              param1.lastVertex = _loc67_;
                              _loc67_.cameraX = _loc9_.cameraX + (_loc48_.cameraX - _loc9_.cameraX) * _loc66_;
                              _loc67_.cameraY = _loc9_.cameraY + (_loc48_.cameraY - _loc9_.cameraY) * _loc66_;
                              _loc67_.cameraZ = _loc18_;
                              _loc67_.u = _loc9_.u + (_loc48_.u - _loc9_.u) * _loc66_;
                              _loc67_.v = _loc9_.v + (_loc48_.v - _loc9_.v) * _loc66_;
                              _loc67_.x = _loc9_.x + (_loc48_.x - _loc9_.x) * _loc66_;
                              _loc67_.y = _loc9_.y + (_loc48_.y - _loc9_.y) * _loc66_;
                              _loc67_.z = _loc9_.z + (_loc48_.z - _loc9_.z) * _loc66_;
                              _loc67_.normalX = _loc9_.normalX + (_loc48_.normalX - _loc9_.normalX) * _loc66_;
                              _loc67_.normalY = _loc9_.normalY + (_loc48_.normalY - _loc9_.normalY) * _loc66_;
                              _loc67_.normalZ = _loc9_.normalZ + (_loc48_.normalZ - _loc9_.normalZ) * _loc66_;
                              _loc35_ = _loc31_.create();
                              _loc35_.vertex = _loc67_;
                              if(_loc37_ != null)
                              {
                                 _loc37_.next = _loc35_;
                              }
                              else
                              {
                                 _loc44_.wrapper = _loc35_;
                              }
                              _loc37_ = _loc35_;
                              _loc35_ = _loc31_.create();
                              _loc35_.vertex = _loc67_;
                              if(_loc36_ != null)
                              {
                                 _loc36_.next = _loc35_;
                              }
                              else
                              {
                                 _loc15_ = _loc35_;
                              }
                              _loc36_ = _loc35_;
                           }
                           if(_loc30_ <= _loc26_)
                           {
                              _loc35_ = _loc31_.create();
                              _loc35_.vertex = _loc48_;
                              if(_loc37_ != null)
                              {
                                 _loc37_.next = _loc35_;
                              }
                              else
                              {
                                 _loc44_.wrapper = _loc35_;
                              }
                              _loc37_ = _loc35_;
                           }
                           if(_loc30_ >= _loc23_)
                           {
                              _loc35_ = _loc31_.create();
                              _loc35_.vertex = _loc48_;
                              if(_loc36_ != null)
                              {
                                 _loc36_.next = _loc35_;
                              }
                              else
                              {
                                 _loc15_ = _loc35_;
                              }
                              _loc36_ = _loc35_;
                           }
                           _loc9_ = _loc48_;
                           _loc53_ = _loc30_;
                           _loc31_ = _loc31_.next;
                        }
                        if(param3 != null)
                        {
                           _loc42_.processNext = _loc44_;
                        }
                        else
                        {
                           param3 = _loc44_;
                        }
                        _loc42_ = _loc44_;
                        _loc40_ = _loc15_;
                     }
                  }
                  if(_loc15_ != null)
                  {
                     _loc8_ = _loc15_.vertex;
                     if(_loc8_.drawId != _loc58_)
                     {
                        _loc66_ = 1 / _loc8_.cameraZ;
                        _loc45_[_loc25_] = _loc8_.cameraX * _loc50_ * _loc66_;
                        _loc25_++;
                        _loc45_[_loc25_] = _loc8_.cameraY * _loc49_ * _loc66_;
                        _loc25_++;
                        _loc33_[_loc29_] = _loc8_.u;
                        _loc29_++;
                        _loc33_[_loc29_] = _loc8_.v;
                        _loc29_++;
                        _loc33_[_loc29_] = _loc66_;
                        _loc29_++;
                        _loc52_ = _loc32_;
                        _loc8_.index = _loc32_++;
                        _loc8_.drawId = _loc58_;
                        _loc56_ = _loc8_.cameraX * _loc20_;
                        _loc11_ = _loc8_.cameraY * _loc21_;
                        _loc10_ = _loc8_.cameraZ;
                        _loc22_ = 1 / Math.sqrt(_loc56_ * _loc56_ + _loc11_ * _loc11_ + _loc10_ * _loc10_);
                        _loc56_ *= _loc22_;
                        _loc11_ *= _loc22_;
                        _loc10_ *= _loc22_;
                        _loc5_ = (_loc8_.normalX * _loc38_.ima + _loc8_.normalY * _loc38_.ime + _loc8_.normalZ * _loc38_.imi) * _loc20_;
                        _loc6_ = (_loc8_.normalX * _loc38_.imb + _loc8_.normalY * _loc38_.imf + _loc8_.normalZ * _loc38_.imj) * _loc21_;
                        _loc7_ = _loc8_.normalX * _loc38_.imc + _loc8_.normalY * _loc38_.img + _loc8_.normalZ * _loc38_.imk;
                        if(_loc7_ > 0)
                        {
                           _loc7_ = 0;
                        }
                        _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                        _loc5_ *= _loc22_;
                        _loc6_ *= _loc22_;
                        _loc7_ *= _loc22_;
                        _loc22_ = _loc56_ * _loc5_ + _loc11_ * _loc6_ + _loc10_ * _loc7_;
                        _loc22_ += _loc22_;
                        _loc5_ = _loc56_ - _loc5_ * _loc22_;
                        _loc6_ = _loc11_ - _loc6_ * _loc22_;
                        _loc7_ = _loc10_ - _loc7_ * _loc22_ - 1;
                        _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                        _loc5_ *= _loc22_;
                        _loc6_ *= _loc22_;
                        _loc7_ *= _loc22_;
                        _loc65_[_loc27_] = _loc5_ * 0.5 + 0.5;
                        _loc27_++;
                        _loc65_[_loc27_] = _loc6_ * 0.5 + 0.5;
                        _loc27_++;
                     }
                     else
                     {
                        _loc52_ = _loc8_.index;
                     }
                     _loc15_ = _loc15_.next;
                     _loc8_ = _loc15_.vertex;
                     if(_loc8_.drawId != _loc58_)
                     {
                        _loc66_ = 1 / _loc8_.cameraZ;
                        _loc45_[_loc25_] = _loc8_.cameraX * _loc50_ * _loc66_;
                        _loc25_++;
                        _loc45_[_loc25_] = _loc8_.cameraY * _loc49_ * _loc66_;
                        _loc25_++;
                        _loc33_[_loc29_] = _loc8_.u;
                        _loc29_++;
                        _loc33_[_loc29_] = _loc8_.v;
                        _loc29_++;
                        _loc33_[_loc29_] = _loc66_;
                        _loc29_++;
                        _loc54_ = _loc32_;
                        _loc8_.index = _loc32_++;
                        _loc8_.drawId = _loc58_;
                        _loc56_ = _loc8_.cameraX * _loc20_;
                        _loc11_ = _loc8_.cameraY * _loc21_;
                        _loc10_ = _loc8_.cameraZ;
                        _loc22_ = 1 / Math.sqrt(_loc56_ * _loc56_ + _loc11_ * _loc11_ + _loc10_ * _loc10_);
                        _loc56_ *= _loc22_;
                        _loc11_ *= _loc22_;
                        _loc10_ *= _loc22_;
                        _loc5_ = (_loc8_.normalX * _loc38_.ima + _loc8_.normalY * _loc38_.ime + _loc8_.normalZ * _loc38_.imi) * _loc20_;
                        _loc6_ = (_loc8_.normalX * _loc38_.imb + _loc8_.normalY * _loc38_.imf + _loc8_.normalZ * _loc38_.imj) * _loc21_;
                        _loc7_ = _loc8_.normalX * _loc38_.imc + _loc8_.normalY * _loc38_.img + _loc8_.normalZ * _loc38_.imk;
                        if(_loc7_ > 0)
                        {
                           _loc7_ = 0;
                        }
                        _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                        _loc5_ *= _loc22_;
                        _loc6_ *= _loc22_;
                        _loc7_ *= _loc22_;
                        _loc22_ = _loc56_ * _loc5_ + _loc11_ * _loc6_ + _loc10_ * _loc7_;
                        _loc22_ += _loc22_;
                        _loc5_ = _loc56_ - _loc5_ * _loc22_;
                        _loc6_ = _loc11_ - _loc6_ * _loc22_;
                        _loc7_ = _loc10_ - _loc7_ * _loc22_ - 1;
                        _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                        _loc5_ *= _loc22_;
                        _loc6_ *= _loc22_;
                        _loc7_ *= _loc22_;
                        _loc65_[_loc27_] = _loc5_ * 0.5 + 0.5;
                        _loc27_++;
                        _loc65_[_loc27_] = _loc6_ * 0.5 + 0.5;
                        _loc27_++;
                     }
                     else
                     {
                        _loc54_ = _loc8_.index;
                     }
                     _loc15_ = _loc15_.next;
                     while(_loc15_ != null)
                     {
                        _loc8_ = _loc15_.vertex;
                        if(_loc8_.drawId != _loc58_)
                        {
                           _loc66_ = 1 / _loc8_.cameraZ;
                           _loc45_[_loc25_] = _loc8_.cameraX * _loc50_ * _loc66_;
                           _loc25_++;
                           _loc45_[_loc25_] = _loc8_.cameraY * _loc49_ * _loc66_;
                           _loc25_++;
                           _loc33_[_loc29_] = _loc8_.u;
                           _loc29_++;
                           _loc33_[_loc29_] = _loc8_.v;
                           _loc29_++;
                           _loc33_[_loc29_] = _loc66_;
                           _loc29_++;
                           _loc55_ = _loc32_;
                           _loc8_.index = _loc32_++;
                           _loc8_.drawId = _loc58_;
                           _loc56_ = _loc8_.cameraX * _loc20_;
                           _loc11_ = _loc8_.cameraY * _loc21_;
                           _loc10_ = _loc8_.cameraZ;
                           _loc22_ = 1 / Math.sqrt(_loc56_ * _loc56_ + _loc11_ * _loc11_ + _loc10_ * _loc10_);
                           _loc56_ *= _loc22_;
                           _loc11_ *= _loc22_;
                           _loc10_ *= _loc22_;
                           _loc5_ = (_loc8_.normalX * _loc38_.ima + _loc8_.normalY * _loc38_.ime + _loc8_.normalZ * _loc38_.imi) * _loc20_;
                           _loc6_ = (_loc8_.normalX * _loc38_.imb + _loc8_.normalY * _loc38_.imf + _loc8_.normalZ * _loc38_.imj) * _loc21_;
                           _loc7_ = _loc8_.normalX * _loc38_.imc + _loc8_.normalY * _loc38_.img + _loc8_.normalZ * _loc38_.imk;
                           if(_loc7_ > 0)
                           {
                              _loc7_ = 0;
                           }
                           _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                           _loc5_ *= _loc22_;
                           _loc6_ *= _loc22_;
                           _loc7_ *= _loc22_;
                           _loc22_ = _loc56_ * _loc5_ + _loc11_ * _loc6_ + _loc10_ * _loc7_;
                           _loc22_ += _loc22_;
                           _loc5_ = _loc56_ - _loc5_ * _loc22_;
                           _loc6_ = _loc11_ - _loc6_ * _loc22_;
                           _loc7_ = _loc10_ - _loc7_ * _loc22_ - 1;
                           _loc22_ = 1 / Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_ + _loc7_ * _loc7_);
                           _loc5_ *= _loc22_;
                           _loc6_ *= _loc22_;
                           _loc7_ *= _loc22_;
                           _loc65_[_loc27_] = _loc5_ * 0.5 + 0.5;
                           _loc27_++;
                           _loc65_[_loc27_] = _loc6_ * 0.5 + 0.5;
                           _loc27_++;
                        }
                        else
                        {
                           _loc55_ = _loc8_.index;
                        }
                        drawIndices[_loc69_] = _loc52_;
                        _loc69_++;
                        drawIndices[_loc69_] = _loc54_;
                        _loc69_++;
                        drawIndices[_loc69_] = _loc55_;
                        _loc69_++;
                        _loc54_ = _loc55_;
                        _loc14_++;
                        _loc15_ = _loc15_.next;
                     }
                     _loc47_++;
                     if(_loc40_ != null)
                     {
                        _loc15_ = _loc40_;
                        while(_loc15_ != null)
                        {
                           _loc15_.vertex = null;
                           _loc15_ = _loc15_.next;
                        }
                        param1.lastWrapper.next = _loc40_;
                        param1.lastWrapper = _loc36_;
                        _loc40_ = null;
                     }
                  }
                  _loc63_ = _loc39_;
               }
               _loc18_ *= 0.5;
               _loc45_.length = _loc25_;
               _loc33_.length = _loc29_;
               _loc65_.length = _loc27_;
               _loc64_.length = _loc69_;
               _loc43_ = mipMap[_loc59_];
               if(correctUV)
               {
                  _loc68_ = -0.5 / (_loc43_.width - 1);
                  _loc16_ = -0.5 / (_loc43_.height - 1);
                  _loc46_ = 1 - _loc68_ - _loc68_;
                  _loc62_ = 1 - _loc16_ - _loc16_;
                  _loc60_ = 0;
                  while(_loc60_ < _loc29_)
                  {
                     _loc33_[_loc60_] = _loc33_[_loc60_] * _loc46_ + _loc68_;
                     _loc60_++;
                     _loc33_[_loc60_] = _loc33_[_loc60_] * _loc62_ + _loc16_;
                     _loc60_++;
                     _loc60_++;
                  }
               }
               param2.gfx.beginBitmapFill(_loc43_,null,repeat,smooth);
               param2.gfx.drawTriangles(_loc45_,_loc64_,_loc33_,"none");
               _loc51_.gfx.beginBitmapFill(this.environmentMap,null,false,smooth);
               _loc51_.gfx.drawTriangles(_loc45_,_loc64_,_loc65_,"none");
               _loc59_--;
            }
         }
         if(_texture != null)
         {
            _loc47_ += _loc47_;
            _loc14_ += _loc14_;
         }
         param1.numDraws = _loc58_;
         param1.numPolygons += _loc47_;
         param1.numTriangles += _loc14_;
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc39_:Face = null;
         var _loc11_:Face = null;
         var _loc20_:Wrapper = null;
         var _loc15_:Vertex = null;
         var _loc44_:BitmapData = null;
         var _loc31_:Canvas = null;
         var _loc24_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc36_:int = 0;
         var _loc27_:* = 0;
         var _loc37_:* = 0;
         var _loc35_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc25_:int = 0;
         var _loc43_:int = 0;
         var _loc21_:int = 0;
         var _loc19_:int = 0;
         var _loc42_:int = 0;
         var _loc26_:int = 0;
         var _loc28_:int = 0;
         var _loc45_:int = 0;
         var _loc30_:Number = param1.viewSizeX;
         var _loc29_:Number = param1.viewSizeY;
         if(this.environmentMap == null)
         {
            clearLinks(param3);
            return;
         }
         if(this.alpha == 1 && this.blendMode == "normal" && this.colorTransform == null)
         {
            _loc31_ = param2;
         }
         else
         {
            _loc31_ = param2.getChildCanvas(true,false,param2.object,this.alpha,this.blendMode,this.colorTransform);
         }
         if(_texture != null)
         {
            if(_mipMapping == 0)
            {
               _loc44_ = _texture;
            }
            else
            {
               _loc38_ = param1.focalLength * resolution;
               _loc25_ = int(param4 >= _loc38_ ? int(1 + Math.log(param4 / _loc38_) * 1.44269504088896) : 0);
               if(_loc25_ >= numMaps)
               {
                  _loc25_ = numMaps - 1;
               }
               _loc44_ = mipMap[_loc25_];
            }
            _loc35_ = _loc44_.width;
            _loc32_ = _loc44_.height;
            drawMatrix.a = param5 / _loc35_;
            drawMatrix.b = param6 / _loc35_;
            drawMatrix.c = param7 / _loc32_;
            drawMatrix.d = param8 / _loc32_;
            drawMatrix.tx = param9;
            drawMatrix.ty = param10;
            param2.gfx.beginBitmapFill(_loc44_,drawMatrix,repeat,smooth);
            _loc39_ = param3;
            while(_loc39_ != null)
            {
               _loc20_ = _loc39_.wrapper;
               _loc15_ = _loc20_.vertex;
               param2.gfx.moveTo(_loc15_.cameraX * _loc30_ / param4,_loc15_.cameraY * _loc29_ / param4);
               _loc43_ = -1;
               _loc20_ = _loc20_.next;
               while(_loc20_ != null)
               {
                  _loc15_ = _loc20_.vertex;
                  param2.gfx.lineTo(_loc15_.cameraX * _loc30_ / param4,_loc15_.cameraY * _loc29_ / param4);
                  _loc43_++;
                  _loc20_ = _loc20_.next;
               }
               _loc19_ += _loc43_;
               _loc21_++;
               _loc39_ = _loc39_.processNext;
            }
            param1.numDraws++;
         }
         var _loc17_:Vector.<Number> = drawVertices;
         var _loc41_:Vector.<Number> = drawUVs;
         var _loc40_:Vector.<int> = drawIndices;
         var _loc34_:int = param1.numDraws + 1;
         var _loc22_:Number = param1.viewSizeX / param1.focalLength;
         var _loc23_:Number = param1.viewSizeY / param1.focalLength;
         _loc39_ = param3;
         while(_loc39_ != null)
         {
            _loc11_ = _loc39_.processNext;
            _loc39_.processNext = null;
            _loc20_ = _loc39_.wrapper;
            _loc15_ = _loc20_.vertex;
            if(_loc15_.drawId != _loc34_)
            {
               _loc17_[_loc26_] = _loc15_.cameraX * _loc30_ / param4;
               _loc26_++;
               _loc17_[_loc26_] = _loc15_.cameraY * _loc29_ / param4;
               _loc26_++;
               _loc36_ = _loc42_;
               _loc15_.index = _loc42_++;
               _loc15_.drawId = _loc34_;
               _loc33_ = _loc15_.cameraX * _loc22_;
               _loc18_ = _loc15_.cameraY * _loc23_;
               _loc16_ = _loc15_.cameraZ;
               _loc24_ = 1 / Math.sqrt(_loc33_ * _loc33_ + _loc18_ * _loc18_ + _loc16_ * _loc16_);
               _loc12_ = _loc33_ * _loc24_;
               _loc13_ = _loc18_ * _loc24_;
               _loc14_ = -_loc16_ * _loc24_ - 1;
               _loc24_ = 1 / Math.sqrt(_loc12_ * _loc12_ + _loc13_ * _loc13_ + _loc14_ * _loc14_);
               _loc12_ *= _loc24_;
               _loc13_ *= _loc24_;
               _loc14_ *= _loc24_;
               _loc41_[_loc28_] = _loc12_ * 0.5 + 0.5;
               _loc28_++;
               _loc41_[_loc28_] = _loc13_ * 0.5 + 0.5;
               _loc28_++;
            }
            else
            {
               _loc36_ = _loc15_.index;
            }
            _loc20_ = _loc20_.next;
            _loc15_ = _loc20_.vertex;
            if(_loc15_.drawId != _loc34_)
            {
               _loc17_[_loc26_] = _loc15_.cameraX * _loc30_ / param4;
               _loc26_++;
               _loc17_[_loc26_] = _loc15_.cameraY * _loc29_ / param4;
               _loc26_++;
               _loc27_ = _loc42_;
               _loc15_.index = _loc42_++;
               _loc15_.drawId = _loc34_;
               _loc33_ = _loc15_.cameraX * _loc22_;
               _loc18_ = _loc15_.cameraY * _loc23_;
               _loc16_ = _loc15_.cameraZ;
               _loc24_ = 1 / Math.sqrt(_loc33_ * _loc33_ + _loc18_ * _loc18_ + _loc16_ * _loc16_);
               _loc12_ = _loc33_ * _loc24_;
               _loc13_ = _loc18_ * _loc24_;
               _loc14_ = -_loc16_ * _loc24_ - 1;
               _loc24_ = 1 / Math.sqrt(_loc12_ * _loc12_ + _loc13_ * _loc13_ + _loc14_ * _loc14_);
               _loc12_ *= _loc24_;
               _loc13_ *= _loc24_;
               _loc14_ *= _loc24_;
               _loc41_[_loc28_] = _loc12_ * 0.5 + 0.5;
               _loc28_++;
               _loc41_[_loc28_] = _loc13_ * 0.5 + 0.5;
               _loc28_++;
            }
            else
            {
               _loc27_ = _loc15_.index;
            }
            _loc20_ = _loc20_.next;
            while(_loc20_ != null)
            {
               _loc15_ = _loc20_.vertex;
               if(_loc15_.drawId != _loc34_)
               {
                  _loc17_[_loc26_] = _loc15_.cameraX * _loc30_ / param4;
                  _loc26_++;
                  _loc17_[_loc26_] = _loc15_.cameraY * _loc29_ / param4;
                  _loc26_++;
                  _loc37_ = _loc42_;
                  _loc15_.index = _loc42_++;
                  _loc15_.drawId = _loc34_;
                  _loc33_ = _loc15_.cameraX * _loc22_;
                  _loc18_ = _loc15_.cameraY * _loc23_;
                  _loc16_ = _loc15_.cameraZ;
                  _loc24_ = 1 / Math.sqrt(_loc33_ * _loc33_ + _loc18_ * _loc18_ + _loc16_ * _loc16_);
                  _loc12_ = _loc33_ * _loc24_;
                  _loc13_ = _loc18_ * _loc24_;
                  _loc14_ = -_loc16_ * _loc24_ - 1;
                  _loc24_ = 1 / Math.sqrt(_loc12_ * _loc12_ + _loc13_ * _loc13_ + _loc14_ * _loc14_);
                  _loc12_ *= _loc24_;
                  _loc13_ *= _loc24_;
                  _loc14_ *= _loc24_;
                  _loc41_[_loc28_] = _loc12_ * 0.5 + 0.5;
                  _loc28_++;
                  _loc41_[_loc28_] = _loc13_ * 0.5 + 0.5;
                  _loc28_++;
               }
               else
               {
                  _loc37_ = _loc15_.index;
               }
               drawIndices[_loc45_] = _loc36_;
               _loc45_++;
               drawIndices[_loc45_] = _loc27_;
               _loc45_++;
               drawIndices[_loc45_] = _loc37_;
               _loc45_++;
               _loc27_ = _loc37_;
               _loc19_++;
               _loc20_ = _loc20_.next;
            }
            _loc21_++;
            _loc39_ = _loc11_;
         }
         _loc17_.length = _loc26_;
         _loc41_.length = _loc28_;
         _loc40_.length = _loc45_;
         _loc31_.gfx.beginBitmapFill(this.environmentMap,null,false,smooth);
         _loc31_.gfx.drawTriangles(_loc17_,_loc40_,_loc41_,"none");
         param1.numDraws = _loc34_;
         param1.numPolygons += _loc21_;
         param1.numTriangles += _loc19_;
      }
   }
}

