package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.lights.AmbientLight;
   import alternativa.engine3d.lights.DirectionalLight;
   import alternativa.engine3d.objects.Sprite3D;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class NormalMapMaterial extends TextureMaterial
   {
      
      alternativa3d static const multiplier:ColorTransform = new ColorTransform(2,2,2);
      
      alternativa3d static const lights:Vector.<Light3D> = new Vector.<Light3D>();
      
      alternativa3d static const layers:Vector.<Canvas> = new Vector.<Canvas>();
      
      alternativa3d static const lightmapFilter:ColorMatrixFilter = new ColorMatrixFilter();
      
      alternativa3d static const lightmapMatrix:Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0];
      
      alternativa3d static const lightmapAmbient:ColorTransform = new ColorTransform();
      
      alternativa3d var lightmapsMap:Dictionary = new Dictionary();
      
      alternativa3d var lightmapPoint:Point = new Point();
      
      alternativa3d var lightmapRect:Rectangle;
      
      alternativa3d var weights:Dictionary = new Dictionary();
      
      alternativa3d var _normalMap:BitmapData;
      
      public var defaultLightWeight:Number = 1;
      
      public var multipliedDiffuse:Boolean = false;
      
      public function NormalMapMaterial(param1:BitmapData = null, param2:BitmapData = null, param3:Boolean = false, param4:Boolean = true, param5:int = 0, param6:Number = 1)
      {
         super(param1,param3,param4,param5,param6);
         this.normalMap = param2;
      }
      
      public static function transformNormalMap(param1:BitmapData, param2:Matrix3D) : BitmapData
      {
         var _loc4_:BitmapData = param1.width * param1.height > 16777215 ? param1.clone() : new BitmapData(param1.width,param1.height,param1.transparent);
         var _loc3_:Vector.<Number> = param2.rawData;
         lightmapMatrix[0] = _loc3_[0];
         lightmapMatrix[1] = _loc3_[4];
         lightmapMatrix[2] = _loc3_[8];
         lightmapMatrix[4] = (1 - _loc3_[0] - _loc3_[4] - _loc3_[8]) * 127.5;
         lightmapMatrix[5] = _loc3_[1];
         lightmapMatrix[6] = _loc3_[5];
         lightmapMatrix[7] = _loc3_[9];
         lightmapMatrix[9] = (1 - _loc3_[1] - _loc3_[5] - _loc3_[9]) * 127.5;
         lightmapMatrix[10] = _loc3_[2];
         lightmapMatrix[11] = _loc3_[6];
         lightmapMatrix[12] = _loc3_[10];
         lightmapMatrix[14] = (1 - _loc3_[2] - _loc3_[6] - _loc3_[10]) * 127.5;
         lightmapFilter.matrix = lightmapMatrix;
         _loc4_.applyFilter(param1,param1.rect,new Point(),lightmapFilter);
         return _loc4_;
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
      
      public function get normalMap() : BitmapData
      {
         return this._normalMap;
      }
      
      public function set normalMap(param1:BitmapData) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:* = null;
         if(param1 != this._normalMap)
         {
            this._normalMap = param1;
            for(_loc3_ in this.lightmapsMap)
            {
               for each(_loc2_ in this.lightmapsMap[_loc3_])
               {
                  _loc2_.dispose();
               }
               delete this.lightmapsMap[_loc3_];
            }
            if(param1 != null)
            {
               this.lightmapRect = this._normalMap.rect;
            }
         }
      }
      
      override public function clone() : Material
      {
         var _loc1_:NormalMapMaterial = new NormalMapMaterial(_texture,this._normalMap,repeat,smooth,_mipMapping,resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Material) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:NormalMapMaterial = param1 as NormalMapMaterial;
         this.defaultLightWeight = _loc2_.defaultLightWeight;
         this.multipliedDiffuse = _loc2_.multipliedDiffuse;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         var _loc64_:Face = null;
         var _loc33_:Face = null;
         var _loc37_:Face = null;
         var _loc12_:Wrapper = null;
         var _loc6_:Vertex = null;
         var _loc50_:int = 0;
         var _loc52_:* = 0;
         var _loc53_:* = 0;
         var _loc66_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc59_:int = 0;
         var _loc60_:int = 0;
         var _loc41_:Number = NaN;
         var _loc63_:Number = NaN;
         var _loc70_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc38_:BitmapData = null;
         var _loc28_:int = 0;
         var _loc18_:int = 0;
         var _loc22_:int = 0;
         var _loc73_:int = 0;
         var _loc26_:Light3D = null;
         var _loc42_:Canvas = null;
         var _loc21_:Number = NaN;
         var _loc71_:DirectionalLight = null;
         var _loc15_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc67_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc62_:int = 0;
         var _loc14_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc25_:int = 0;
         var _loc24_:int = 0;
         var _loc51_:Wrapper = null;
         var _loc16_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc10_:Wrapper = null;
         var _loc36_:Number = NaN;
         var _loc72_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc32_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc17_:Number = NaN;
         var _loc7_:Face = null;
         var _loc43_:Wrapper = null;
         var _loc68_:Wrapper = null;
         var _loc20_:Wrapper = null;
         var _loc44_:Vertex = null;
         var _loc46_:Vertex = null;
         var _loc69_:Vertex = null;
         var _loc45_:int = 0;
         var _loc11_:int = 0;
         var _loc56_:int = 0;
         var _loc48_:Number = param1.viewSizeX;
         var _loc47_:Number = param1.viewSizeY;
         var _loc40_:Vector.<Number> = drawVertices;
         var _loc30_:Vector.<Number> = drawUVTs;
         var _loc65_:Vector.<int> = drawIndices;
         var _loc58_:int = param1.numDraws;
         if(_texture == null || this._normalMap == null)
         {
            clearLinks(param3);
            return;
         }
         var _loc29_:Number = 0;
         var _loc61_:Number = 0;
         var _loc23_:Number = 0;
         _loc59_ = 0;
         while(_loc59_ < param1.lightsLength)
         {
            _loc26_ = param1.lights[_loc59_];
            if(_loc26_.intensity > 0)
            {
               _loc21_ = Number(this.weights[_loc26_]);
               if(_loc21_ != _loc21_)
               {
                  _loc21_ = this.defaultLightWeight;
               }
               if(_loc21_ > 0)
               {
                  _loc26_.calculateObjectMatrix(param2.object);
                  if(_loc26_.checkBoundsIntersection(param2.object))
                  {
                     if(_loc26_ is AmbientLight)
                     {
                        _loc29_ += (_loc26_.color >> 16 & 0xFF) * _loc26_.intensity * _loc21_;
                        _loc61_ += (_loc26_.color >> 8 & 0xFF) * _loc26_.intensity * _loc21_;
                        _loc23_ += (_loc26_.color & 0xFF) * _loc26_.intensity * _loc21_;
                     }
                     else if(_loc26_ is DirectionalLight)
                     {
                        _loc26_.localWeight = _loc21_;
                        lights[_loc56_] = _loc26_;
                        _loc56_++;
                     }
                  }
               }
            }
            _loc59_++;
         }
         var _loc5_:Vector.<BitmapData> = this.lightmapsMap[param2.object];
         if(_loc5_ == null)
         {
            _loc5_ = new Vector.<BitmapData>();
            this.lightmapsMap[param2.object] = _loc5_;
         }
         _loc59_ = int(_loc5_.length);
         while(_loc59_ < _loc56_)
         {
            _loc5_[_loc59_] = new BitmapData(this.lightmapRect.width,this.lightmapRect.height,this._normalMap.transparent);
            _loc59_++;
         }
         lightmapAmbient.redOffset = _loc29_;
         lightmapAmbient.greenOffset = _loc61_;
         lightmapAmbient.blueOffset = _loc23_;
         var _loc27_:Canvas = param2.getChildCanvas(_loc56_ <= 1,_loc56_ > 1,param2.object,1,"multiply",_loc56_ == 1 && (_loc29_ > 0 || _loc61_ > 0 || _loc23_ > 0) ? lightmapAmbient : null);
         if(_loc56_ <= 1)
         {
            layers[0] = _loc27_;
            if(this._normalMap.transparent)
            {
               lightmapMatrix[0] = 0;
               lightmapMatrix[1] = 0;
               lightmapMatrix[2] = 0;
               lightmapMatrix[4] = _loc29_ > 255 ? 255 : _loc29_;
               lightmapMatrix[5] = 0;
               lightmapMatrix[6] = 0;
               lightmapMatrix[7] = 0;
               lightmapMatrix[9] = _loc61_ > 255 ? 255 : _loc61_;
               lightmapMatrix[10] = 0;
               lightmapMatrix[11] = 0;
               lightmapMatrix[12] = 0;
               lightmapMatrix[14] = _loc23_ > 255 ? 255 : _loc23_;
               if(_loc5_.length == 0)
               {
                  _loc5_[0] = new BitmapData(this.lightmapRect.width,this.lightmapRect.height,this._normalMap.transparent);
               }
               lightmapFilter.matrix = lightmapMatrix;
               (_loc5_[0] as BitmapData).applyFilter(this._normalMap,this.lightmapRect,this.lightmapPoint,lightmapFilter);
            }
         }
         _loc59_ = 0;
         while(_loc59_ < _loc56_)
         {
            _loc71_ = lights[_loc59_] as DirectionalLight;
            _loc15_ = (_loc71_.color >> 16 & 0xFF) * _loc71_.intensity * _loc71_.localWeight / 255;
            _loc54_ = (_loc71_.color >> 8 & 0xFF) * _loc71_.intensity * _loc71_.localWeight / 255;
            _loc67_ = (_loc71_.color & 0xFF) * _loc71_.intensity * _loc71_.localWeight / 255;
            _loc55_ = _loc71_.omc;
            _loc9_ = _loc71_.omg;
            _loc8_ = _loc71_.omk;
            _loc49_ = Math.sqrt(_loc55_ * _loc55_ + _loc9_ * _loc9_ + _loc8_ * _loc8_);
            _loc55_ /= _loc49_;
            _loc9_ /= _loc49_;
            _loc8_ /= _loc49_;
            lightmapMatrix[0] = -_loc55_ * 2 * _loc15_;
            lightmapMatrix[1] = -_loc9_ * 2 * _loc15_;
            lightmapMatrix[2] = -_loc8_ * 2 * _loc15_;
            lightmapMatrix[4] = (_loc55_ + _loc9_ + _loc8_) * _loc15_ * 255;
            lightmapMatrix[5] = -_loc55_ * 2 * _loc54_;
            lightmapMatrix[6] = -_loc9_ * 2 * _loc54_;
            lightmapMatrix[7] = -_loc8_ * 2 * _loc54_;
            lightmapMatrix[9] = (_loc55_ + _loc9_ + _loc8_) * _loc54_ * 255;
            lightmapMatrix[10] = -_loc55_ * 2 * _loc67_;
            lightmapMatrix[11] = -_loc9_ * 2 * _loc67_;
            lightmapMatrix[12] = -_loc8_ * 2 * _loc67_;
            lightmapMatrix[14] = (_loc55_ + _loc9_ + _loc8_) * _loc67_ * 255;
            if(_loc56_ > 1)
            {
               layers[_loc59_] = _loc27_.getChildCanvas(true,false,param2.object,1,_loc59_ == _loc56_ - 1 ? "normal" : "add",_loc59_ == _loc56_ - 1 && (_loc29_ > 0 || _loc61_ > 0 || _loc23_ > 0) ? lightmapAmbient : null);
            }
            lightmapFilter.matrix = lightmapMatrix;
            (_loc5_[_loc59_] as BitmapData).applyFilter(this._normalMap,this.lightmapRect,this.lightmapPoint,lightmapFilter);
            _loc59_++;
         }
         if(!this.multipliedDiffuse)
         {
            param2 = param2.getChildCanvas(true,false,param2.object,1,"normal",multiplier);
         }
         if(_mipMapping < 2)
         {
            _loc58_++;
            _loc28_ = 0;
            _loc18_ = 0;
            _loc22_ = 0;
            _loc73_ = 0;
            _loc64_ = param3;
            while(_loc64_ != null)
            {
               _loc33_ = _loc64_.processNext;
               _loc64_.processNext = null;
               _loc12_ = _loc64_.wrapper;
               _loc6_ = _loc12_.vertex;
               if(_loc6_.drawId != _loc58_)
               {
                  _loc66_ = 1 / _loc6_.cameraZ;
                  _loc40_[_loc18_] = _loc6_.cameraX * _loc48_ * _loc66_;
                  _loc18_++;
                  _loc40_[_loc18_] = _loc6_.cameraY * _loc47_ * _loc66_;
                  _loc18_++;
                  _loc30_[_loc22_] = _loc6_.u;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc6_.v;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc66_;
                  _loc22_++;
                  _loc50_ = _loc28_;
                  _loc6_.index = _loc28_++;
                  _loc6_.drawId = _loc58_;
               }
               else
               {
                  _loc50_ = _loc6_.index;
               }
               _loc12_ = _loc12_.next;
               _loc6_ = _loc12_.vertex;
               if(_loc6_.drawId != _loc58_)
               {
                  _loc66_ = 1 / _loc6_.cameraZ;
                  _loc40_[_loc18_] = _loc6_.cameraX * _loc48_ * _loc66_;
                  _loc18_++;
                  _loc40_[_loc18_] = _loc6_.cameraY * _loc47_ * _loc66_;
                  _loc18_++;
                  _loc30_[_loc22_] = _loc6_.u;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc6_.v;
                  _loc22_++;
                  _loc30_[_loc22_] = _loc66_;
                  _loc22_++;
                  _loc52_ = _loc28_;
                  _loc6_.index = _loc28_++;
                  _loc6_.drawId = _loc58_;
               }
               else
               {
                  _loc52_ = _loc6_.index;
               }
               _loc12_ = _loc12_.next;
               while(_loc12_ != null)
               {
                  _loc6_ = _loc12_.vertex;
                  if(_loc6_.drawId != _loc58_)
                  {
                     _loc66_ = 1 / _loc6_.cameraZ;
                     _loc40_[_loc18_] = _loc6_.cameraX * _loc48_ * _loc66_;
                     _loc18_++;
                     _loc40_[_loc18_] = _loc6_.cameraY * _loc47_ * _loc66_;
                     _loc18_++;
                     _loc30_[_loc22_] = _loc6_.u;
                     _loc22_++;
                     _loc30_[_loc22_] = _loc6_.v;
                     _loc22_++;
                     _loc30_[_loc22_] = _loc66_;
                     _loc22_++;
                     _loc53_ = _loc28_;
                     _loc6_.index = _loc28_++;
                     _loc6_.drawId = _loc58_;
                  }
                  else
                  {
                     _loc53_ = _loc6_.index;
                  }
                  drawIndices[_loc73_] = _loc50_;
                  _loc73_++;
                  drawIndices[_loc73_] = _loc52_;
                  _loc73_++;
                  drawIndices[_loc73_] = _loc53_;
                  _loc73_++;
                  _loc52_ = _loc53_;
                  _loc11_++;
                  _loc12_ = _loc12_.next;
               }
               _loc45_++;
               _loc64_ = _loc33_;
            }
            _loc40_.length = _loc18_;
            _loc30_.length = _loc22_;
            _loc65_.length = _loc73_;
            if(_mipMapping == 0)
            {
               _loc38_ = _texture;
            }
            else
            {
               _loc57_ = param1.focalLength * resolution;
               _loc62_ = int(param4 >= _loc57_ ? int(1 + Math.log(param4 / _loc57_) * 1.44269504088896) : 0);
               if(_loc62_ >= numMaps)
               {
                  _loc62_ = numMaps - 1;
               }
               _loc38_ = mipMap[_loc62_];
            }
            if(correctUV)
            {
               _loc70_ = -0.5 / (_loc38_.width - 1);
               _loc13_ = -0.5 / (_loc38_.height - 1);
               _loc41_ = 1 - _loc70_ - _loc70_;
               _loc63_ = 1 - _loc13_ - _loc13_;
               _loc60_ = 0;
               while(_loc60_ < _loc22_)
               {
                  _loc30_[_loc60_] = _loc30_[_loc60_] * _loc41_ + _loc70_;
                  _loc60_++;
                  _loc30_[_loc60_] = _loc30_[_loc60_] * _loc63_ + _loc13_;
                  _loc60_++;
                  _loc60_++;
               }
            }
            param2.gfx.beginBitmapFill(_loc38_,null,repeat,smooth);
            param2.gfx.drawTriangles(_loc40_,_loc65_,_loc30_,"none");
            if(_loc56_ > 0)
            {
               _loc60_ = 0;
               while(_loc60_ < _loc56_)
               {
                  _loc42_ = layers[_loc60_];
                  _loc42_.gfx.beginBitmapFill(_loc5_[_loc60_],null,repeat,smooth);
                  _loc42_.gfx.drawTriangles(_loc40_,_loc65_,_loc30_,"none");
                  _loc60_++;
               }
            }
            else
            {
               _loc42_ = layers[0];
               if(this._normalMap.transparent)
               {
                  _loc42_.gfx.beginBitmapFill(_loc5_[0],null,repeat,smooth);
                  _loc42_.gfx.drawTriangles(_loc40_,_loc65_,_loc30_,"none");
               }
               else
               {
                  _loc42_.gfx.beginFill(((_loc29_ > 255 ? 255 : _loc29_) << 16) + ((_loc61_ > 255 ? 255 : _loc61_) << 8) + (_loc23_ > 255 ? 255 : _loc23_));
                  _loc42_.gfx.drawTriangles(_loc40_,_loc65_,null,"none");
               }
            }
         }
         else
         {
            _loc35_ = 1e+22;
            _loc34_ = -1;
            _loc64_ = param3;
            while(_loc64_ != null)
            {
               _loc12_ = _loc64_.wrapper;
               while(_loc12_ != null)
               {
                  _loc14_ = _loc12_.vertex.cameraZ;
                  if(_loc14_ < _loc35_)
                  {
                     _loc35_ = _loc14_;
                  }
                  if(_loc14_ > _loc34_)
                  {
                     _loc34_ = _loc14_;
                  }
                  _loc12_ = _loc12_.next;
               }
               _loc64_ = _loc64_.processNext;
            }
            _loc57_ = param1.focalLength * resolution;
            _loc25_ = int(_loc35_ >= _loc57_ ? int(1 + Math.log(_loc35_ / _loc57_) * 1.44269504088896) : 0);
            if(_loc25_ >= numMaps)
            {
               _loc25_ = numMaps - 1;
            }
            _loc24_ = int(_loc34_ >= _loc57_ ? int(1 + Math.log(_loc34_ / _loc57_) * 1.44269504088896) : 0);
            if(_loc24_ >= numMaps)
            {
               _loc24_ = numMaps - 1;
            }
            _loc14_ = _loc57_ * Math.pow(2,_loc24_ - 1);
            _loc59_ = _loc24_;
            while(_loc59_ >= _loc25_)
            {
               _loc58_++;
               _loc28_ = 0;
               _loc18_ = 0;
               _loc22_ = 0;
               _loc73_ = 0;
               _loc16_ = _loc14_ - threshold;
               _loc19_ = _loc14_ + threshold;
               _loc64_ = param3;
               param3 = null;
               _loc37_ = null;
               while(_loc64_ != null)
               {
                  _loc33_ = _loc64_.processNext;
                  _loc64_.processNext = null;
                  _loc12_ = null;
                  if(_loc59_ == _loc25_)
                  {
                     _loc12_ = _loc64_.wrapper;
                  }
                  else
                  {
                     _loc10_ = _loc64_.wrapper;
                     _loc36_ = _loc10_.vertex.cameraZ;
                     _loc10_ = _loc10_.next;
                     _loc72_ = _loc10_.vertex.cameraZ;
                     _loc10_ = _loc10_.next;
                     _loc39_ = _loc10_.vertex.cameraZ;
                     _loc10_ = _loc10_.next;
                     _loc32_ = _loc36_ < _loc16_ || _loc72_ < _loc16_ || _loc39_ < _loc16_;
                     _loc31_ = _loc36_ > _loc19_ || _loc72_ > _loc19_ || _loc39_ > _loc19_;
                     while(_loc10_ != null)
                     {
                        _loc17_ = _loc10_.vertex.cameraZ;
                        if(_loc17_ < _loc16_)
                        {
                           _loc32_ = true;
                        }
                        else if(_loc17_ > _loc19_)
                        {
                           _loc31_ = true;
                        }
                        _loc10_ = _loc10_.next;
                     }
                     if(!_loc32_)
                     {
                        _loc12_ = _loc64_.wrapper;
                     }
                     else if(!_loc31_)
                     {
                        if(param3 != null)
                        {
                           _loc37_.processNext = _loc64_;
                        }
                        else
                        {
                           param3 = _loc64_;
                        }
                        _loc37_ = _loc64_;
                     }
                     else
                     {
                        _loc7_ = _loc64_.create();
                        param1.lastFace.next = _loc7_;
                        param1.lastFace = _loc7_;
                        _loc43_ = null;
                        _loc68_ = null;
                        _loc10_ = _loc64_.wrapper.next.next;
                        while(_loc10_.next != null)
                        {
                           _loc10_ = _loc10_.next;
                        }
                        _loc44_ = _loc10_.vertex;
                        _loc36_ = _loc44_.cameraZ;
                        _loc10_ = _loc64_.wrapper;
                        while(_loc10_ != null)
                        {
                           _loc46_ = _loc10_.vertex;
                           _loc72_ = _loc46_.cameraZ;
                           if(_loc36_ < _loc16_ && _loc72_ > _loc19_ || _loc36_ > _loc19_ && _loc72_ < _loc16_)
                           {
                              _loc66_ = (_loc14_ - _loc36_) / (_loc72_ - _loc36_);
                              _loc69_ = _loc46_.create();
                              param1.lastVertex.next = _loc69_;
                              param1.lastVertex = _loc69_;
                              _loc69_.cameraX = _loc44_.cameraX + (_loc46_.cameraX - _loc44_.cameraX) * _loc66_;
                              _loc69_.cameraY = _loc44_.cameraY + (_loc46_.cameraY - _loc44_.cameraY) * _loc66_;
                              _loc69_.cameraZ = _loc14_;
                              _loc69_.u = _loc44_.u + (_loc46_.u - _loc44_.u) * _loc66_;
                              _loc69_.v = _loc44_.v + (_loc46_.v - _loc44_.v) * _loc66_;
                              _loc20_ = _loc10_.create();
                              _loc20_.vertex = _loc69_;
                              if(_loc43_ != null)
                              {
                                 _loc43_.next = _loc20_;
                              }
                              else
                              {
                                 _loc7_.wrapper = _loc20_;
                              }
                              _loc43_ = _loc20_;
                              _loc20_ = _loc10_.create();
                              _loc20_.vertex = _loc69_;
                              if(_loc68_ != null)
                              {
                                 _loc68_.next = _loc20_;
                              }
                              else
                              {
                                 _loc12_ = _loc20_;
                              }
                              _loc68_ = _loc20_;
                           }
                           if(_loc72_ <= _loc19_)
                           {
                              _loc20_ = _loc10_.create();
                              _loc20_.vertex = _loc46_;
                              if(_loc43_ != null)
                              {
                                 _loc43_.next = _loc20_;
                              }
                              else
                              {
                                 _loc7_.wrapper = _loc20_;
                              }
                              _loc43_ = _loc20_;
                           }
                           if(_loc72_ >= _loc16_)
                           {
                              _loc20_ = _loc10_.create();
                              _loc20_.vertex = _loc46_;
                              if(_loc68_ != null)
                              {
                                 _loc68_.next = _loc20_;
                              }
                              else
                              {
                                 _loc12_ = _loc20_;
                              }
                              _loc68_ = _loc20_;
                           }
                           _loc44_ = _loc46_;
                           _loc36_ = _loc72_;
                           _loc10_ = _loc10_.next;
                        }
                        if(param3 != null)
                        {
                           _loc37_.processNext = _loc7_;
                        }
                        else
                        {
                           param3 = _loc7_;
                        }
                        _loc37_ = _loc7_;
                        _loc51_ = _loc12_;
                     }
                  }
                  if(_loc12_ != null)
                  {
                     _loc6_ = _loc12_.vertex;
                     if(_loc6_.drawId != _loc58_)
                     {
                        _loc66_ = 1 / _loc6_.cameraZ;
                        _loc40_[_loc18_] = _loc6_.cameraX * _loc48_ * _loc66_;
                        _loc18_++;
                        _loc40_[_loc18_] = _loc6_.cameraY * _loc47_ * _loc66_;
                        _loc18_++;
                        _loc30_[_loc22_] = _loc6_.u;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc6_.v;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc66_;
                        _loc22_++;
                        _loc50_ = _loc28_;
                        _loc6_.index = _loc28_++;
                        _loc6_.drawId = _loc58_;
                     }
                     else
                     {
                        _loc50_ = _loc6_.index;
                     }
                     _loc12_ = _loc12_.next;
                     _loc6_ = _loc12_.vertex;
                     if(_loc6_.drawId != _loc58_)
                     {
                        _loc66_ = 1 / _loc6_.cameraZ;
                        _loc40_[_loc18_] = _loc6_.cameraX * _loc48_ * _loc66_;
                        _loc18_++;
                        _loc40_[_loc18_] = _loc6_.cameraY * _loc47_ * _loc66_;
                        _loc18_++;
                        _loc30_[_loc22_] = _loc6_.u;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc6_.v;
                        _loc22_++;
                        _loc30_[_loc22_] = _loc66_;
                        _loc22_++;
                        _loc52_ = _loc28_;
                        _loc6_.index = _loc28_++;
                        _loc6_.drawId = _loc58_;
                     }
                     else
                     {
                        _loc52_ = _loc6_.index;
                     }
                     _loc12_ = _loc12_.next;
                     while(_loc12_ != null)
                     {
                        _loc6_ = _loc12_.vertex;
                        if(_loc6_.drawId != _loc58_)
                        {
                           _loc66_ = 1 / _loc6_.cameraZ;
                           _loc40_[_loc18_] = _loc6_.cameraX * _loc48_ * _loc66_;
                           _loc18_++;
                           _loc40_[_loc18_] = _loc6_.cameraY * _loc47_ * _loc66_;
                           _loc18_++;
                           _loc30_[_loc22_] = _loc6_.u;
                           _loc22_++;
                           _loc30_[_loc22_] = _loc6_.v;
                           _loc22_++;
                           _loc30_[_loc22_] = _loc66_;
                           _loc22_++;
                           _loc53_ = _loc28_;
                           _loc6_.index = _loc28_++;
                           _loc6_.drawId = _loc58_;
                        }
                        else
                        {
                           _loc53_ = _loc6_.index;
                        }
                        drawIndices[_loc73_] = _loc50_;
                        _loc73_++;
                        drawIndices[_loc73_] = _loc52_;
                        _loc73_++;
                        drawIndices[_loc73_] = _loc53_;
                        _loc73_++;
                        _loc52_ = _loc53_;
                        _loc11_++;
                        _loc12_ = _loc12_.next;
                     }
                     _loc45_++;
                     if(_loc51_ != null)
                     {
                        _loc12_ = _loc51_;
                        while(_loc12_ != null)
                        {
                           _loc12_.vertex = null;
                           _loc12_ = _loc12_.next;
                        }
                        param1.lastWrapper.next = _loc51_;
                        param1.lastWrapper = _loc68_;
                        _loc51_ = null;
                     }
                  }
                  _loc64_ = _loc33_;
               }
               _loc14_ *= 0.5;
               _loc40_.length = _loc18_;
               _loc30_.length = _loc22_;
               _loc65_.length = _loc73_;
               _loc38_ = mipMap[_loc59_];
               if(correctUV)
               {
                  _loc70_ = -0.5 / (_loc38_.width - 1);
                  _loc13_ = -0.5 / (_loc38_.height - 1);
                  _loc41_ = 1 - _loc70_ - _loc70_;
                  _loc63_ = 1 - _loc13_ - _loc13_;
                  _loc60_ = 0;
                  while(_loc60_ < _loc22_)
                  {
                     _loc30_[_loc60_] = _loc30_[_loc60_] * _loc41_ + _loc70_;
                     _loc60_++;
                     _loc30_[_loc60_] = _loc30_[_loc60_] * _loc63_ + _loc13_;
                     _loc60_++;
                     _loc60_++;
                  }
               }
               param2.gfx.beginBitmapFill(_loc38_,null,repeat,smooth);
               param2.gfx.drawTriangles(_loc40_,_loc65_,_loc30_,"none");
               if(_loc56_ > 0)
               {
                  _loc60_ = 0;
                  while(_loc60_ < _loc56_)
                  {
                     _loc42_ = layers[_loc60_];
                     _loc42_.gfx.beginBitmapFill(_loc5_[_loc60_],null,repeat,smooth);
                     _loc42_.gfx.drawTriangles(_loc40_,_loc65_,_loc30_,"none");
                     _loc60_++;
                  }
               }
               else
               {
                  _loc42_ = layers[0];
                  if(this._normalMap.transparent)
                  {
                     _loc42_.gfx.beginBitmapFill(_loc5_[0],null,repeat,smooth);
                     _loc42_.gfx.drawTriangles(_loc40_,_loc65_,_loc30_,"none");
                  }
                  else
                  {
                     _loc42_.gfx.beginFill(((_loc29_ > 255 ? 255 : _loc29_) << 16) + ((_loc61_ > 255 ? 255 : _loc61_) << 8) + (_loc23_ > 255 ? 255 : _loc23_));
                     _loc42_.gfx.drawTriangles(_loc40_,_loc65_,null,"none");
                  }
               }
               _loc59_--;
            }
         }
         _loc50_ = _loc56_ < 1 ? 2 : _loc56_ + 1;
         param1.numDraws = _loc58_;
         param1.numPolygons += _loc45_ * _loc50_;
         param1.numTriangles += _loc11_ * _loc50_;
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc33_:int = 0;
         var _loc32_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc37_:Face = null;
         var _loc11_:Face = null;
         var _loc17_:Wrapper = null;
         var _loc13_:Vertex = null;
         var _loc41_:int = 0;
         var _loc43_:BitmapData = null;
         var _loc39_:Light3D = null;
         var _loc18_:Canvas = null;
         var _loc22_:Number = NaN;
         var _loc44_:DirectionalLight = null;
         var _loc19_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc34_:int = 0;
         var _loc36_:Number = NaN;
         var _loc20_:int = 0;
         var _loc29_:int = 0;
         var _loc24_:Number = param1.viewSizeX;
         var _loc23_:Number = param1.viewSizeY;
         if(_texture == null || this._normalMap == null)
         {
            clearLinks(param3);
            return;
         }
         var _loc42_:Number = 0;
         var _loc35_:Number = 0;
         var _loc30_:Number = 0;
         _loc33_ = 0;
         while(_loc33_ < param1.lightsLength)
         {
            _loc39_ = param1.lights[_loc33_];
            if(_loc39_.intensity > 0)
            {
               _loc22_ = Number(this.weights[_loc39_]);
               if(_loc22_ != _loc22_)
               {
                  _loc22_ = this.defaultLightWeight;
               }
               if(_loc22_ > 0)
               {
                  _loc39_.calculateObjectMatrix(param2.object);
                  if(_loc39_.checkBoundsIntersection(param2.object))
                  {
                     if(_loc39_ is AmbientLight)
                     {
                        _loc42_ += (_loc39_.color >> 16 & 0xFF) * _loc39_.intensity * _loc22_;
                        _loc35_ += (_loc39_.color >> 8 & 0xFF) * _loc39_.intensity * _loc22_;
                        _loc30_ += (_loc39_.color & 0xFF) * _loc39_.intensity * _loc22_;
                     }
                     else if(_loc39_ is DirectionalLight)
                     {
                        _loc39_.localWeight = _loc22_;
                        lights[_loc29_] = _loc39_;
                        _loc29_++;
                     }
                  }
               }
            }
            _loc33_++;
         }
         var _loc12_:Vector.<BitmapData> = this.lightmapsMap[param2.object];
         if(_loc12_ == null)
         {
            _loc12_ = new Vector.<BitmapData>();
            this.lightmapsMap[param2.object] = _loc12_;
         }
         _loc33_ = int(_loc12_.length);
         while(_loc33_ < _loc29_)
         {
            _loc12_[_loc33_] = new BitmapData(this.lightmapRect.width,this.lightmapRect.height,this._normalMap.transparent);
            _loc33_++;
         }
         lightmapAmbient.redOffset = _loc42_;
         lightmapAmbient.greenOffset = _loc35_;
         lightmapAmbient.blueOffset = _loc30_;
         var _loc40_:Canvas = param2.getChildCanvas(_loc29_ <= 1,_loc29_ > 1,param2.object,1,"multiply",_loc29_ == 1 && (_loc42_ > 0 || _loc35_ > 0 || _loc30_ > 0) ? lightmapAmbient : null);
         if(_loc29_ <= 1)
         {
            layers[0] = _loc40_;
            if(this._normalMap.transparent)
            {
               lightmapMatrix[0] = 0;
               lightmapMatrix[1] = 0;
               lightmapMatrix[2] = 0;
               lightmapMatrix[4] = _loc42_ > 255 ? 255 : _loc42_;
               lightmapMatrix[5] = 0;
               lightmapMatrix[6] = 0;
               lightmapMatrix[7] = 0;
               lightmapMatrix[9] = _loc35_ > 255 ? 255 : _loc35_;
               lightmapMatrix[10] = 0;
               lightmapMatrix[11] = 0;
               lightmapMatrix[12] = 0;
               lightmapMatrix[14] = _loc30_ > 255 ? 255 : _loc30_;
               if(_loc12_.length == 0)
               {
                  _loc12_[0] = new BitmapData(this.lightmapRect.width,this.lightmapRect.height,this._normalMap.transparent);
               }
               lightmapFilter.matrix = lightmapMatrix;
               (_loc12_[0] as BitmapData).applyFilter(this._normalMap,this.lightmapRect,this.lightmapPoint,lightmapFilter);
            }
         }
         _loc33_ = 0;
         while(_loc33_ < _loc29_)
         {
            _loc44_ = lights[_loc33_] as DirectionalLight;
            _loc19_ = (_loc44_.color >> 16 & 0xFF) * _loc44_.intensity * _loc44_.localWeight / 255;
            _loc27_ = (_loc44_.color >> 8 & 0xFF) * _loc44_.intensity * _loc44_.localWeight / 255;
            _loc38_ = (_loc44_.color & 0xFF) * _loc44_.intensity * _loc44_.localWeight / 255;
            _loc31_ = param2.object is Sprite3D ? (param2.object as Sprite3D).rotation : 0;
            _loc21_ = Math.sin(_loc31_);
            _loc15_ = Math.cos(_loc31_);
            _loc28_ = _loc44_.cmc * _loc15_ + _loc44_.cmg * _loc21_;
            _loc16_ = -_loc44_.cmc * _loc21_ + _loc44_.cmg * _loc15_;
            _loc14_ = _loc44_.cmk;
            _loc25_ = Math.sqrt(_loc28_ * _loc28_ + _loc16_ * _loc16_ + _loc14_ * _loc14_);
            _loc28_ /= _loc25_;
            _loc16_ /= _loc25_;
            _loc14_ /= _loc25_;
            lightmapMatrix[0] = -_loc28_ * 2 * _loc19_;
            lightmapMatrix[1] = -_loc16_ * 2 * _loc19_;
            lightmapMatrix[2] = -_loc14_ * 2 * _loc19_;
            lightmapMatrix[4] = (_loc28_ + _loc16_ + _loc14_) * _loc19_ * 255;
            lightmapMatrix[5] = -_loc28_ * 2 * _loc27_;
            lightmapMatrix[6] = -_loc16_ * 2 * _loc27_;
            lightmapMatrix[7] = -_loc14_ * 2 * _loc27_;
            lightmapMatrix[9] = (_loc28_ + _loc16_ + _loc14_) * _loc27_ * 255;
            lightmapMatrix[10] = -_loc28_ * 2 * _loc38_;
            lightmapMatrix[11] = -_loc16_ * 2 * _loc38_;
            lightmapMatrix[12] = -_loc14_ * 2 * _loc38_;
            lightmapMatrix[14] = (_loc28_ + _loc16_ + _loc14_) * _loc38_ * 255;
            if(_loc29_ > 1)
            {
               layers[_loc33_] = _loc40_.getChildCanvas(true,false,param2.object,1,_loc33_ == _loc29_ - 1 ? "normal" : "add",_loc33_ == _loc29_ - 1 && (_loc42_ > 0 || _loc35_ > 0 || _loc30_ > 0) ? lightmapAmbient : null);
            }
            lightmapFilter.matrix = lightmapMatrix;
            (_loc12_[_loc33_] as BitmapData).applyFilter(this._normalMap,this.lightmapRect,this.lightmapPoint,lightmapFilter);
            _loc33_++;
         }
         if(!this.multipliedDiffuse)
         {
            param2 = param2.getChildCanvas(true,false,param2.object,1,"normal",multiplier);
         }
         if(_loc29_ > 0)
         {
            _loc32_ = this._normalMap.width;
            _loc26_ = this._normalMap.height;
            drawMatrix.a = param5 / _loc32_;
            drawMatrix.b = param6 / _loc32_;
            drawMatrix.c = param7 / _loc26_;
            drawMatrix.d = param8 / _loc26_;
            drawMatrix.tx = param9;
            drawMatrix.ty = param10;
            _loc34_ = 0;
            while(_loc34_ < _loc29_)
            {
               _loc18_ = layers[_loc34_];
               _loc18_.gfx.beginBitmapFill(_loc12_[_loc34_],drawMatrix,repeat,smooth);
               _loc37_ = param3;
               while(_loc37_ != null)
               {
                  _loc17_ = _loc37_.wrapper;
                  _loc13_ = _loc17_.vertex;
                  _loc18_.gfx.moveTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
                  _loc41_ = -1;
                  _loc17_ = _loc17_.next;
                  while(_loc17_ != null)
                  {
                     _loc13_ = _loc17_.vertex;
                     _loc18_.gfx.lineTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
                     _loc41_++;
                     _loc17_ = _loc17_.next;
                  }
                  param1.numTriangles += _loc41_;
                  param1.numPolygons++;
                  _loc37_ = _loc37_.processNext;
               }
               param1.numDraws++;
               _loc34_++;
            }
         }
         else if(this._normalMap.transparent)
         {
            _loc32_ = this._normalMap.width;
            _loc26_ = this._normalMap.height;
            drawMatrix.a = param5 / _loc32_;
            drawMatrix.b = param6 / _loc32_;
            drawMatrix.c = param7 / _loc26_;
            drawMatrix.d = param8 / _loc26_;
            drawMatrix.tx = param9;
            drawMatrix.ty = param10;
            _loc18_ = layers[0];
            _loc18_.gfx.beginBitmapFill(_loc12_[0],drawMatrix,repeat,smooth);
            _loc37_ = param3;
            while(_loc37_ != null)
            {
               _loc17_ = _loc37_.wrapper;
               _loc13_ = _loc17_.vertex;
               _loc18_.gfx.moveTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
               _loc41_ = -1;
               _loc17_ = _loc17_.next;
               while(_loc17_ != null)
               {
                  _loc13_ = _loc17_.vertex;
                  _loc18_.gfx.lineTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
                  _loc41_++;
                  _loc17_ = _loc17_.next;
               }
               param1.numTriangles += _loc41_;
               param1.numPolygons++;
               _loc37_ = _loc37_.processNext;
            }
            param1.numDraws++;
         }
         else
         {
            _loc18_ = layers[0];
            _loc18_.gfx.beginFill(((_loc42_ > 255 ? 255 : _loc42_) << 16) + ((_loc35_ > 255 ? 255 : _loc35_) << 8) + (_loc30_ > 255 ? 255 : _loc30_));
            _loc37_ = param3;
            while(_loc37_ != null)
            {
               _loc17_ = _loc37_.wrapper;
               _loc13_ = _loc17_.vertex;
               _loc18_.gfx.moveTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
               _loc41_ = -1;
               _loc17_ = _loc17_.next;
               while(_loc17_ != null)
               {
                  _loc13_ = _loc17_.vertex;
                  _loc18_.gfx.lineTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
                  _loc41_++;
                  _loc17_ = _loc17_.next;
               }
               param1.numTriangles += _loc41_;
               param1.numPolygons++;
               _loc37_ = _loc37_.processNext;
            }
            param1.numDraws++;
         }
         if(_mipMapping == 0)
         {
            _loc43_ = _texture;
         }
         else
         {
            _loc36_ = param1.focalLength * resolution;
            _loc20_ = int(param4 >= _loc36_ ? int(1 + Math.log(param4 / _loc36_) * 1.44269504088896) : 0);
            if(_loc20_ >= numMaps)
            {
               _loc20_ = numMaps - 1;
            }
            _loc43_ = mipMap[_loc20_];
         }
         _loc32_ = _loc43_.width;
         _loc26_ = _loc43_.height;
         drawMatrix.a = param5 / _loc32_;
         drawMatrix.b = param6 / _loc32_;
         drawMatrix.c = param7 / _loc26_;
         drawMatrix.d = param8 / _loc26_;
         drawMatrix.tx = param9;
         drawMatrix.ty = param10;
         param2.gfx.beginBitmapFill(_loc43_,drawMatrix,repeat,smooth);
         _loc37_ = param3;
         while(_loc37_ != null)
         {
            _loc11_ = _loc37_.processNext;
            _loc37_.processNext = null;
            _loc17_ = _loc37_.wrapper;
            _loc13_ = _loc17_.vertex;
            param2.gfx.moveTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
            _loc41_ = -1;
            _loc17_ = _loc17_.next;
            while(_loc17_ != null)
            {
               _loc13_ = _loc17_.vertex;
               param2.gfx.lineTo(_loc13_.cameraX * _loc24_ / param4,_loc13_.cameraY * _loc23_ / param4);
               _loc41_++;
               _loc17_ = _loc17_.next;
            }
            param1.numTriangles += _loc41_;
            param1.numPolygons++;
            _loc37_ = _loc11_;
         }
         param1.numDraws++;
      }
   }
}

