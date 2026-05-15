package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import flash.display.BitmapData;
   import flash.filters.ConvolutionFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   use namespace alternativa3d;
   
   public class TextureMaterial extends Material
   {
      
      private static const filter:ConvolutionFilter = new ConvolutionFilter(2,2,[1,1,1,1],4,0,false,true);
      
      private static const matrix:Matrix = new Matrix(0.5,0,0,0.5);
      
      private static const rect:Rectangle = new Rectangle();
      
      private static const point:Point = new Point();
      
      alternativa3d static var drawVertices:Vector.<Number> = new Vector.<Number>();
      
      alternativa3d static var drawUVTs:Vector.<Number> = new Vector.<Number>();
      
      alternativa3d static var drawIndices:Vector.<int> = new Vector.<int>();
      
      alternativa3d static var drawMatrix:Matrix = new Matrix();
      
      public var diffuseMapURL:String;
      
      public var opacityMapURL:String;
      
      public var repeat:Boolean = false;
      
      public var smooth:Boolean = true;
      
      public var resolution:Number = 1;
      
      public var threshold:Number = 0.01;
      
      public var correctUV:Boolean = false;
      
      alternativa3d var _texture:BitmapData;
      
      alternativa3d var _textureATF:ByteArray;
      
      alternativa3d var _textureATFAlpha:ByteArray;
      
      alternativa3d var _mipMapping:int = 0;
      
      alternativa3d var _hardwareMipMaps:Boolean = false;
      
      alternativa3d var textureResource:Object;
      
      alternativa3d var mipMap:Vector.<BitmapData>;
      
      alternativa3d var numMaps:int = 0;
      
      public function TextureMaterial(param1:BitmapData = null, param2:Boolean = false, param3:Boolean = true, param4:int = 0, param5:Number = 1)
      {
         super();
         this._texture = param1;
         this.repeat = param2;
         this.smooth = param3;
         this._mipMapping = param4;
         if(this._texture != null && this._mipMapping > 0)
         {
            this.calculateMipMaps();
         }
         this.resolution = param5;
      }
      
      public function get texture() : BitmapData
      {
         return this._texture;
      }
      
      public function set texture(param1:BitmapData) : void
      {
         if(param1 != this._texture)
         {
            this._texture = param1;
            this.disposeMipMaps();
            if(param1 != null && this._mipMapping > 0)
            {
               this.calculateMipMaps();
            }
         }
      }
      
      public function get textureATF() : ByteArray
      {
         return this._textureATF;
      }
      
      public function set textureATF(param1:ByteArray) : void
      {
         if(param1 != this._textureATF)
         {
            this._textureATF = param1;
            this._texture = new BitmapData(1,1,true,1442840575);
         }
      }
      
      public function get textureATFAlpha() : ByteArray
      {
         return this._textureATFAlpha;
      }
      
      public function set textureATFAlpha(param1:ByteArray) : void
      {
         if(param1 != this._textureATFAlpha)
         {
            this._textureATFAlpha = param1;
         }
      }
      
      public function get mipMapping() : int
      {
         return this._mipMapping;
      }
      
      public function set mipMapping(param1:int) : void
      {
         _mipMapping = param1;
         if(param1 > 0 && this._texture != null)
         {
            calculateMipMaps();
         }
      }
      
      public function get hardwareMipMaps() : Boolean
      {
         return this._hardwareMipMaps;
      }
      
      public function set hardwareMipMaps(param1:Boolean) : void
      {
         if(param1 != this._hardwareMipMaps)
         {
            this._hardwareMipMaps = param1;
         }
      }
      
      override public function clone() : Material
      {
         var _loc1_:TextureMaterial = new TextureMaterial(this._texture,this.repeat,this.smooth,this._mipMapping,this.resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Material) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:TextureMaterial = param1 as TextureMaterial;
         this.diffuseMapURL = _loc2_.diffuseMapURL;
         this.opacityMapURL = _loc2_.opacityMapURL;
         this.threshold = _loc2_.threshold;
         this.correctUV = _loc2_.correctUV;
         this._textureATF = _loc2_._textureATF;
         this._textureATFAlpha = _loc2_._textureATFAlpha;
      }
      
      alternativa3d function disposeMipMaps() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < this.numMaps)
         {
            (this.mipMap[_loc1_] as BitmapData).dispose();
            _loc1_++;
         }
         this.mipMap = null;
         this.numMaps = 0;
      }
      
      alternativa3d function calculateMipMaps() : void
      {
         var _loc2_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc8_:int = 0;
         var _loc1_:BitmapData = null;
         var _loc7_:Number = NaN;
         var _loc5_:Number = NaN;
         this.mipMap = new Vector.<BitmapData>();
         this.numMaps = 0;
         this.mipMap[this.numMaps] = this._texture;
         this.numMaps++;
         var _loc3_:int = Math.pow(2,Math.ceil(Math.log(this._texture.width) / 0.6931471805599453));
         var _loc6_:int = Math.pow(2,Math.ceil(Math.log(this._texture.height) / 0.6931471805599453));
         if(this._texture.width == _loc3_ && this._texture.height == _loc6_)
         {
            _loc4_ = this._texture.width;
            _loc8_ = this._texture.height;
            while(_loc4_ % 2 == 0 && _loc8_ % 2 == 0)
            {
               _loc4_ >>= 1;
               _loc8_ >>= 1;
               _loc2_ = new BitmapData(_loc4_,_loc8_,this._texture.transparent,0);
               matrix.a = _loc4_ / this._texture.width;
               matrix.d = _loc8_ / this._texture.height;
               _loc2_.draw(this._texture,matrix,null,null,null,false);
               this.mipMap[this.numMaps] = _loc2_;
               this.numMaps++;
            }
         }
         else
         {
            matrix.identity();
            filter.preserveAlpha = !this._texture.transparent;
            _loc2_ = this._texture.width * this._texture.height > 16777215 ? this._texture.clone() : new BitmapData(this._texture.width,this._texture.height,this._texture.transparent);
            _loc1_ = this._texture;
            _loc7_ = rect.width = this._texture.width;
            _loc5_ = rect.height = this._texture.height;
            while(_loc7_ > 1 && _loc5_ > 1 && rect.width > 1 && rect.height > 1)
            {
               _loc2_.applyFilter(_loc1_,rect,point,filter);
               rect.width = _loc7_ >> 1;
               rect.height = _loc5_ >> 1;
               matrix.a = rect.width / _loc7_;
               matrix.d = rect.height / _loc5_;
               _loc7_ *= 0.5;
               _loc5_ *= 0.5;
               _loc1_ = new BitmapData(rect.width,rect.height,this._texture.transparent,0);
               _loc1_.draw(_loc2_,matrix,null,null,null,false);
               this.mipMap[this.numMaps] = _loc1_;
               this.numMaps++;
            }
            _loc2_.dispose();
         }
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         var _loc43_:Face = null;
         var _loc20_:Face = null;
         var _loc21_:Face = null;
         var _loc7_:Wrapper = null;
         var _loc5_:Vertex = null;
         var _loc34_:int = 0;
         var _loc35_:* = 0;
         var _loc36_:* = 0;
         var _loc46_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc41_:int = 0;
         var _loc24_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc22_:BitmapData = null;
         var _loc18_:int = 0;
         var _loc12_:int = 0;
         var _loc14_:int = 0;
         var _loc55_:int = 0;
         var _loc15_:int = 0;
         var _loc53_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc47_:Wrapper = null;
         var _loc40_:int = 0;
         var _loc10_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc51_:Wrapper = null;
         var _loc16_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc56_:Boolean = false;
         var _loc45_:Boolean = false;
         var _loc11_:Number = NaN;
         var _loc27_:Face = null;
         var _loc52_:Wrapper = null;
         var _loc9_:Wrapper = null;
         var _loc54_:Wrapper = null;
         var _loc17_:Vertex = null;
         var _loc29_:Vertex = null;
         var _loc49_:Vertex = null;
         var _loc26_:int = 0;
         var _loc6_:int = 0;
         var _loc31_:Number = param1.viewSizeX;
         var _loc30_:Number = param1.viewSizeY;
         var _loc23_:Vector.<Number> = drawVertices;
         var _loc19_:Vector.<Number> = drawUVTs;
         var _loc44_:Vector.<int> = drawIndices;
         var _loc39_:int = param1.numDraws;
         if(this._texture == null)
         {
            clearLinks(param3);
            return;
         }
         if(this._mipMapping < 2)
         {
            _loc39_++;
            _loc18_ = 0;
            _loc12_ = 0;
            _loc14_ = 0;
            _loc55_ = 0;
            _loc43_ = param3;
            while(_loc43_ != null)
            {
               _loc20_ = _loc43_.processNext;
               _loc43_.processNext = null;
               _loc7_ = _loc43_.wrapper;
               _loc5_ = _loc7_.vertex;
               if(_loc5_.drawId != _loc39_)
               {
                  _loc46_ = 1 / _loc5_.cameraZ;
                  _loc23_[_loc12_] = _loc5_.cameraX * _loc31_ * _loc46_;
                  _loc12_++;
                  _loc23_[_loc12_] = _loc5_.cameraY * _loc30_ * _loc46_;
                  _loc12_++;
                  _loc19_[_loc14_] = _loc5_.u;
                  _loc14_++;
                  _loc19_[_loc14_] = _loc5_.v;
                  _loc14_++;
                  _loc19_[_loc14_] = _loc46_;
                  _loc14_++;
                  _loc34_ = _loc18_;
                  _loc5_.index = _loc18_++;
                  _loc5_.drawId = _loc39_;
               }
               else
               {
                  _loc34_ = _loc5_.index;
               }
               _loc7_ = _loc7_.next;
               _loc5_ = _loc7_.vertex;
               if(_loc5_.drawId != _loc39_)
               {
                  _loc46_ = 1 / _loc5_.cameraZ;
                  _loc23_[_loc12_] = _loc5_.cameraX * _loc31_ * _loc46_;
                  _loc12_++;
                  _loc23_[_loc12_] = _loc5_.cameraY * _loc30_ * _loc46_;
                  _loc12_++;
                  _loc19_[_loc14_] = _loc5_.u;
                  _loc14_++;
                  _loc19_[_loc14_] = _loc5_.v;
                  _loc14_++;
                  _loc19_[_loc14_] = _loc46_;
                  _loc14_++;
                  _loc35_ = _loc18_;
                  _loc5_.index = _loc18_++;
                  _loc5_.drawId = _loc39_;
               }
               else
               {
                  _loc35_ = _loc5_.index;
               }
               _loc7_ = _loc7_.next;
               while(_loc7_ != null)
               {
                  _loc5_ = _loc7_.vertex;
                  if(_loc5_.drawId != _loc39_)
                  {
                     _loc46_ = 1 / _loc5_.cameraZ;
                     _loc23_[_loc12_] = _loc5_.cameraX * _loc31_ * _loc46_;
                     _loc12_++;
                     _loc23_[_loc12_] = _loc5_.cameraY * _loc30_ * _loc46_;
                     _loc12_++;
                     _loc19_[_loc14_] = _loc5_.u;
                     _loc14_++;
                     _loc19_[_loc14_] = _loc5_.v;
                     _loc14_++;
                     _loc19_[_loc14_] = _loc46_;
                     _loc14_++;
                     _loc36_ = _loc18_;
                     _loc5_.index = _loc18_++;
                     _loc5_.drawId = _loc39_;
                  }
                  else
                  {
                     _loc36_ = _loc5_.index;
                  }
                  drawIndices[_loc55_] = _loc34_;
                  _loc55_++;
                  drawIndices[_loc55_] = _loc35_;
                  _loc55_++;
                  drawIndices[_loc55_] = _loc36_;
                  _loc55_++;
                  _loc35_ = _loc36_;
                  _loc6_++;
                  _loc7_ = _loc7_.next;
               }
               _loc26_++;
               _loc43_ = _loc20_;
            }
            _loc23_.length = _loc12_;
            _loc19_.length = _loc14_;
            _loc44_.length = _loc55_;
            if(this._mipMapping == 0)
            {
               _loc22_ = this._texture;
            }
            else
            {
               _loc38_ = param1.focalLength * this.resolution;
               _loc15_ = int(param4 >= _loc38_ ? int(1 + Math.log(param4 / _loc38_) * 1.44269504088896) : 0);
               if(_loc15_ >= this.numMaps)
               {
                  _loc15_ = this.numMaps - 1;
               }
               _loc22_ = this.mipMap[_loc15_];
            }
            if(this.correctUV)
            {
               _loc50_ = -0.5 / (_loc22_.width - 1);
               _loc8_ = -0.5 / (_loc22_.height - 1);
               _loc24_ = 1 - _loc50_ - _loc50_;
               _loc42_ = 1 - _loc8_ - _loc8_;
               _loc41_ = 0;
               while(_loc41_ < _loc14_)
               {
                  _loc19_[_loc41_] = _loc19_[_loc41_] * _loc24_ + _loc50_;
                  _loc41_++;
                  _loc19_[_loc41_] = _loc19_[_loc41_] * _loc42_ + _loc8_;
                  _loc41_++;
                  _loc41_++;
               }
            }
            param2.gfx.beginBitmapFill(_loc22_,null,this.repeat,this.smooth);
            param2.gfx.drawTriangles(_loc23_,_loc44_,_loc19_,"none");
         }
         else
         {
            _loc28_ = 1e+22;
            _loc37_ = -1;
            _loc43_ = param3;
            while(_loc43_ != null)
            {
               _loc7_ = _loc43_.wrapper;
               while(_loc7_ != null)
               {
                  _loc53_ = _loc7_.vertex.cameraZ;
                  if(_loc53_ < _loc28_)
                  {
                     _loc28_ = _loc53_;
                  }
                  if(_loc53_ > _loc37_)
                  {
                     _loc37_ = _loc53_;
                  }
                  _loc7_ = _loc7_.next;
               }
               _loc43_ = _loc43_.processNext;
            }
            _loc38_ = param1.focalLength * this.resolution;
            _loc32_ = int(_loc28_ >= _loc38_ ? int(1 + Math.log(_loc28_ / _loc38_) * 1.44269504088896) : 0);
            if(_loc32_ >= this.numMaps)
            {
               _loc32_ = this.numMaps - 1;
            }
            _loc33_ = int(_loc37_ >= _loc38_ ? int(1 + Math.log(_loc37_ / _loc38_) * 1.44269504088896) : 0);
            if(_loc33_ >= this.numMaps)
            {
               _loc33_ = this.numMaps - 1;
            }
            _loc53_ = _loc38_ * Math.pow(2,_loc33_ - 1);
            _loc40_ = _loc33_;
            while(_loc40_ >= _loc32_)
            {
               _loc39_++;
               _loc18_ = 0;
               _loc12_ = 0;
               _loc14_ = 0;
               _loc55_ = 0;
               _loc10_ = _loc53_ - this.threshold;
               _loc13_ = _loc53_ + this.threshold;
               _loc43_ = param3;
               param3 = null;
               _loc21_ = null;
               while(_loc43_ != null)
               {
                  _loc20_ = _loc43_.processNext;
                  _loc43_.processNext = null;
                  _loc7_ = null;
                  if(_loc40_ == _loc32_)
                  {
                     _loc7_ = _loc43_.wrapper;
                  }
                  else
                  {
                     _loc51_ = _loc43_.wrapper;
                     _loc16_ = _loc51_.vertex.cameraZ;
                     _loc51_ = _loc51_.next;
                     _loc48_ = _loc51_.vertex.cameraZ;
                     _loc51_ = _loc51_.next;
                     _loc25_ = _loc51_.vertex.cameraZ;
                     _loc51_ = _loc51_.next;
                     _loc56_ = _loc16_ < _loc10_ || _loc48_ < _loc10_ || _loc25_ < _loc10_;
                     _loc45_ = _loc16_ > _loc13_ || _loc48_ > _loc13_ || _loc25_ > _loc13_;
                     while(_loc51_ != null)
                     {
                        _loc11_ = _loc51_.vertex.cameraZ;
                        if(_loc11_ < _loc10_)
                        {
                           _loc56_ = true;
                        }
                        else if(_loc11_ > _loc13_)
                        {
                           _loc45_ = true;
                        }
                        _loc51_ = _loc51_.next;
                     }
                     if(!_loc56_)
                     {
                        _loc7_ = _loc43_.wrapper;
                     }
                     else if(!_loc45_)
                     {
                        if(param3 != null)
                        {
                           _loc21_.processNext = _loc43_;
                        }
                        else
                        {
                           param3 = _loc43_;
                        }
                        _loc21_ = _loc43_;
                     }
                     else
                     {
                        _loc27_ = _loc43_.create();
                        param1.lastFace.next = _loc27_;
                        param1.lastFace = _loc27_;
                        _loc52_ = null;
                        _loc9_ = null;
                        _loc51_ = _loc43_.wrapper.next.next;
                        while(_loc51_.next != null)
                        {
                           _loc51_ = _loc51_.next;
                        }
                        _loc17_ = _loc51_.vertex;
                        _loc16_ = _loc17_.cameraZ;
                        _loc51_ = _loc43_.wrapper;
                        while(_loc51_ != null)
                        {
                           _loc29_ = _loc51_.vertex;
                           _loc48_ = _loc29_.cameraZ;
                           if(_loc16_ < _loc10_ && _loc48_ > _loc13_ || _loc16_ > _loc13_ && _loc48_ < _loc10_)
                           {
                              _loc46_ = (_loc53_ - _loc16_) / (_loc48_ - _loc16_);
                              _loc49_ = _loc29_.create();
                              param1.lastVertex.next = _loc49_;
                              param1.lastVertex = _loc49_;
                              _loc49_.cameraX = _loc17_.cameraX + (_loc29_.cameraX - _loc17_.cameraX) * _loc46_;
                              _loc49_.cameraY = _loc17_.cameraY + (_loc29_.cameraY - _loc17_.cameraY) * _loc46_;
                              _loc49_.cameraZ = _loc53_;
                              _loc49_.u = _loc17_.u + (_loc29_.u - _loc17_.u) * _loc46_;
                              _loc49_.v = _loc17_.v + (_loc29_.v - _loc17_.v) * _loc46_;
                              _loc54_ = _loc51_.create();
                              _loc54_.vertex = _loc49_;
                              if(_loc52_ != null)
                              {
                                 _loc52_.next = _loc54_;
                              }
                              else
                              {
                                 _loc27_.wrapper = _loc54_;
                              }
                              _loc52_ = _loc54_;
                              _loc54_ = _loc51_.create();
                              _loc54_.vertex = _loc49_;
                              if(_loc9_ != null)
                              {
                                 _loc9_.next = _loc54_;
                              }
                              else
                              {
                                 _loc7_ = _loc54_;
                              }
                              _loc9_ = _loc54_;
                           }
                           if(_loc48_ <= _loc13_)
                           {
                              _loc54_ = _loc51_.create();
                              _loc54_.vertex = _loc29_;
                              if(_loc52_ != null)
                              {
                                 _loc52_.next = _loc54_;
                              }
                              else
                              {
                                 _loc27_.wrapper = _loc54_;
                              }
                              _loc52_ = _loc54_;
                           }
                           if(_loc48_ >= _loc10_)
                           {
                              _loc54_ = _loc51_.create();
                              _loc54_.vertex = _loc29_;
                              if(_loc9_ != null)
                              {
                                 _loc9_.next = _loc54_;
                              }
                              else
                              {
                                 _loc7_ = _loc54_;
                              }
                              _loc9_ = _loc54_;
                           }
                           _loc17_ = _loc29_;
                           _loc16_ = _loc48_;
                           _loc51_ = _loc51_.next;
                        }
                        if(param3 != null)
                        {
                           _loc21_.processNext = _loc27_;
                        }
                        else
                        {
                           param3 = _loc27_;
                        }
                        _loc21_ = _loc27_;
                        _loc47_ = _loc7_;
                     }
                  }
                  if(_loc7_ != null)
                  {
                     _loc5_ = _loc7_.vertex;
                     if(_loc5_.drawId != _loc39_)
                     {
                        _loc46_ = 1 / _loc5_.cameraZ;
                        _loc23_[_loc12_] = _loc5_.cameraX * _loc31_ * _loc46_;
                        _loc12_++;
                        _loc23_[_loc12_] = _loc5_.cameraY * _loc30_ * _loc46_;
                        _loc12_++;
                        _loc19_[_loc14_] = _loc5_.u;
                        _loc14_++;
                        _loc19_[_loc14_] = _loc5_.v;
                        _loc14_++;
                        _loc19_[_loc14_] = _loc46_;
                        _loc14_++;
                        _loc34_ = _loc18_;
                        _loc5_.index = _loc18_++;
                        _loc5_.drawId = _loc39_;
                     }
                     else
                     {
                        _loc34_ = _loc5_.index;
                     }
                     _loc7_ = _loc7_.next;
                     _loc5_ = _loc7_.vertex;
                     if(_loc5_.drawId != _loc39_)
                     {
                        _loc46_ = 1 / _loc5_.cameraZ;
                        _loc23_[_loc12_] = _loc5_.cameraX * _loc31_ * _loc46_;
                        _loc12_++;
                        _loc23_[_loc12_] = _loc5_.cameraY * _loc30_ * _loc46_;
                        _loc12_++;
                        _loc19_[_loc14_] = _loc5_.u;
                        _loc14_++;
                        _loc19_[_loc14_] = _loc5_.v;
                        _loc14_++;
                        _loc19_[_loc14_] = _loc46_;
                        _loc14_++;
                        _loc35_ = _loc18_;
                        _loc5_.index = _loc18_++;
                        _loc5_.drawId = _loc39_;
                     }
                     else
                     {
                        _loc35_ = _loc5_.index;
                     }
                     _loc7_ = _loc7_.next;
                     while(_loc7_ != null)
                     {
                        _loc5_ = _loc7_.vertex;
                        if(_loc5_.drawId != _loc39_)
                        {
                           _loc46_ = 1 / _loc5_.cameraZ;
                           _loc23_[_loc12_] = _loc5_.cameraX * _loc31_ * _loc46_;
                           _loc12_++;
                           _loc23_[_loc12_] = _loc5_.cameraY * _loc30_ * _loc46_;
                           _loc12_++;
                           _loc19_[_loc14_] = _loc5_.u;
                           _loc14_++;
                           _loc19_[_loc14_] = _loc5_.v;
                           _loc14_++;
                           _loc19_[_loc14_] = _loc46_;
                           _loc14_++;
                           _loc36_ = _loc18_;
                           _loc5_.index = _loc18_++;
                           _loc5_.drawId = _loc39_;
                        }
                        else
                        {
                           _loc36_ = _loc5_.index;
                        }
                        drawIndices[_loc55_] = _loc34_;
                        _loc55_++;
                        drawIndices[_loc55_] = _loc35_;
                        _loc55_++;
                        drawIndices[_loc55_] = _loc36_;
                        _loc55_++;
                        _loc35_ = _loc36_;
                        _loc6_++;
                        _loc7_ = _loc7_.next;
                     }
                     _loc26_++;
                     if(_loc47_ != null)
                     {
                        _loc7_ = _loc47_;
                        while(_loc7_ != null)
                        {
                           _loc7_.vertex = null;
                           _loc7_ = _loc7_.next;
                        }
                        param1.lastWrapper.next = _loc47_;
                        param1.lastWrapper = _loc9_;
                        _loc47_ = null;
                     }
                  }
                  _loc43_ = _loc20_;
               }
               _loc53_ *= 0.5;
               _loc23_.length = _loc12_;
               _loc19_.length = _loc14_;
               _loc44_.length = _loc55_;
               _loc22_ = this.mipMap[_loc40_];
               if(this.correctUV)
               {
                  _loc50_ = -0.5 / (_loc22_.width - 1);
                  _loc8_ = -0.5 / (_loc22_.height - 1);
                  _loc24_ = 1 - _loc50_ - _loc50_;
                  _loc42_ = 1 - _loc8_ - _loc8_;
                  _loc41_ = 0;
                  while(_loc41_ < _loc14_)
                  {
                     _loc19_[_loc41_] = _loc19_[_loc41_] * _loc24_ + _loc50_;
                     _loc41_++;
                     _loc19_[_loc41_] = _loc19_[_loc41_] * _loc42_ + _loc8_;
                     _loc41_++;
                     _loc41_++;
                  }
               }
               param2.gfx.beginBitmapFill(_loc22_,null,this.repeat,this.smooth);
               param2.gfx.drawTriangles(_loc23_,_loc44_,_loc19_,"none");
               _loc40_--;
            }
         }
         param1.numDraws = _loc39_;
         param1.numPolygons += _loc26_;
         param1.numTriangles += _loc6_;
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc18_:Face = null;
         var _loc11_:Face = null;
         var _loc20_:BitmapData = null;
         var _loc15_:Number = NaN;
         var _loc14_:int = 0;
         var _loc17_:Wrapper = null;
         var _loc13_:Vertex = null;
         var _loc19_:int = 0;
         var _loc22_:Number = param1.viewSizeX;
         var _loc21_:Number = param1.viewSizeY;
         if(this._texture == null)
         {
            clearLinks(param3);
            return;
         }
         if(this._mipMapping == 0)
         {
            _loc20_ = this._texture;
         }
         else
         {
            _loc15_ = param1.focalLength * this.resolution;
            _loc14_ = int(param4 >= _loc15_ ? int(1 + Math.log(param4 / _loc15_) * 1.44269504088896) : 0);
            if(_loc14_ >= this.numMaps)
            {
               _loc14_ = this.numMaps - 1;
            }
            _loc20_ = this.mipMap[_loc14_];
         }
         var _loc16_:Number = _loc20_.width;
         var _loc12_:Number = _loc20_.height;
         drawMatrix.a = param5 / _loc16_;
         drawMatrix.b = param6 / _loc16_;
         drawMatrix.c = param7 / _loc12_;
         drawMatrix.d = param8 / _loc12_;
         drawMatrix.tx = param9;
         drawMatrix.ty = param10;
         param2.gfx.beginBitmapFill(_loc20_,drawMatrix,this.repeat,this.smooth);
         _loc18_ = param3;
         while(_loc18_ != null)
         {
            _loc11_ = _loc18_.processNext;
            _loc18_.processNext = null;
            _loc17_ = _loc18_.wrapper;
            _loc13_ = _loc17_.vertex;
            param2.gfx.moveTo(_loc13_.cameraX * _loc22_ / param4,_loc13_.cameraY * _loc21_ / param4);
            _loc19_ = -1;
            _loc17_ = _loc17_.next;
            while(_loc17_ != null)
            {
               _loc13_ = _loc17_.vertex;
               param2.gfx.lineTo(_loc13_.cameraX * _loc22_ / param4,_loc13_.cameraY * _loc21_ / param4);
               _loc19_++;
               _loc17_ = _loc17_.next;
            }
            param1.numTriangles += _loc19_;
            param1.numPolygons++;
            _loc18_ = _loc11_;
         }
         param1.numDraws++;
      }
      
      public function disposeResource() : void
      {
      }
   }
}

