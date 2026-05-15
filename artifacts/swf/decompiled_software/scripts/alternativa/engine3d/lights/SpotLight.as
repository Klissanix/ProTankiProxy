package alternativa.engine3d.lights
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   
   use namespace alternativa3d;
   
   public class SpotLight extends Light3D
   {
      
      public var attenuationBegin:Number;
      
      public var attenuationEnd:Number;
      
      public var hotspot:Number;
      
      public var falloff:Number;
      
      alternativa3d var localAttenuationBegin:Number;
      
      alternativa3d var localAttenuationEnd:Number;
      
      alternativa3d var localDirectionX:Number;
      
      alternativa3d var localDirectionY:Number;
      
      alternativa3d var localDirectionZ:Number;
      
      alternativa3d var localHotspot:Number;
      
      alternativa3d var localFalloff:Number;
      
      public function SpotLight(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.color = param1;
         this.attenuationBegin = param2;
         this.attenuationEnd = param3;
         this.hotspot = param4;
         this.falloff = param5;
         calculateBounds();
      }
      
      public function lookAt(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Number = NaN;
         _loc5_ = param1 - this.x;
         var _loc4_:Number = param2 - this.y;
         var _loc6_:Number = param3 - this.z;
         rotationX = Math.atan2(_loc6_,Math.sqrt(_loc5_ * _loc5_ + _loc4_ * _loc4_)) - 3.141592653589793 / 2;
         rotationY = 0;
         rotationZ = -Math.atan2(_loc5_,_loc4_);
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:SpotLight = new SpotLight(color,this.attenuationBegin,this.attenuationEnd,this.hotspot,this.falloff);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function drawDebug(param1:Camera3D, param2:Canvas) : void
      {
         var _loc27_:Canvas = null;
         var _loc43_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc14_:int = 0;
         var _loc10_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc30_:int = param1.checkInDebug(this);
         if(_loc30_ > 0)
         {
            _loc27_ = param2.getChildCanvas(true,false);
            if(_loc30_ & 0x0100 && ml > param1.nearClipping)
            {
               _loc43_ = (color >> 16 & 0xFF) * intensity;
               _loc32_ = (color >> 8 & 0xFF) * intensity;
               _loc28_ = (color & 0xFF) * intensity;
               _loc14_ = ((_loc43_ > 255 ? 255 : _loc43_) << 16) + ((_loc32_ > 255 ? 255 : _loc32_) << 8) + (_loc28_ > 255 ? 255 : _loc28_);
               _loc10_ = 0;
               _loc34_ = md * param1.viewSizeX / param1.focalLength;
               _loc35_ = mh * param1.viewSizeY / param1.focalLength;
               _loc37_ = ml;
               _loc29_ = mc * param1.viewSizeX / param1.focalLength;
               _loc17_ = mg * param1.viewSizeY / param1.focalLength;
               _loc22_ = mk;
               _loc20_ = Math.sqrt(_loc29_ * _loc29_ + _loc17_ * _loc17_ + _loc22_ * _loc22_);
               _loc10_ += _loc20_;
               _loc29_ /= _loc20_;
               _loc17_ /= _loc20_;
               _loc22_ /= _loc20_;
               _loc15_ = ma * param1.viewSizeX / param1.focalLength;
               _loc18_ = me * param1.viewSizeY / param1.focalLength;
               _loc31_ = mi;
               _loc10_ += Math.sqrt(_loc15_ * _loc15_ + _loc18_ * _loc18_ + _loc31_ * _loc31_);
               _loc36_ = _loc31_ * _loc17_ - _loc18_ * _loc22_;
               _loc11_ = _loc15_ * _loc22_ - _loc31_ * _loc29_;
               _loc45_ = _loc18_ * _loc29_ - _loc15_ * _loc17_;
               _loc20_ = Math.sqrt(_loc36_ * _loc36_ + _loc11_ * _loc11_ + _loc45_ * _loc45_);
               _loc36_ /= _loc20_;
               _loc11_ /= _loc20_;
               _loc45_ /= _loc20_;
               _loc15_ = mb * param1.viewSizeX / param1.focalLength;
               _loc18_ = mf * param1.viewSizeY / param1.focalLength;
               _loc31_ = mj;
               _loc10_ += Math.sqrt(_loc15_ * _loc15_ + _loc18_ * _loc18_ + _loc31_ * _loc31_);
               _loc10_ = _loc10_ / 3;
               _loc15_ = _loc45_ * _loc17_ - _loc11_ * _loc22_;
               _loc18_ = _loc36_ * _loc22_ - _loc45_ * _loc29_;
               _loc31_ = _loc11_ * _loc29_ - _loc36_ * _loc17_;
               _loc7_ = Math.cos(this.hotspot / 2);
               _loc25_ = Math.sin(this.hotspot / 2);
               _loc13_ = _loc34_ + (_loc29_ * _loc7_ + _loc15_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc21_ = _loc35_ + (_loc17_ * _loc7_ + _loc18_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc46_ = _loc37_ + (_loc22_ * _loc7_ + _loc31_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc38_ = _loc34_ + (_loc29_ * _loc7_ + (_loc15_ + _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc48_ = _loc35_ + (_loc17_ * _loc7_ + (_loc18_ + _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc12_ = _loc37_ + (_loc22_ * _loc7_ + (_loc31_ + _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc39_ = _loc34_ + (_loc29_ * _loc7_ + _loc36_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc33_ = _loc35_ + (_loc17_ * _loc7_ + _loc11_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc19_ = _loc37_ + (_loc22_ * _loc7_ + _loc45_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc40_ = _loc34_ + (_loc29_ * _loc7_ - (_loc15_ - _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc23_ = _loc35_ + (_loc17_ * _loc7_ - (_loc18_ - _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc41_ = _loc37_ + (_loc22_ * _loc7_ - (_loc31_ - _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc4_ = _loc34_ + (_loc29_ * _loc7_ - _loc15_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc16_ = _loc35_ + (_loc17_ * _loc7_ - _loc18_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc44_ = _loc37_ + (_loc22_ * _loc7_ - _loc31_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc26_ = _loc34_ + (_loc29_ * _loc7_ - (_loc15_ + _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc3_ = _loc35_ + (_loc17_ * _loc7_ - (_loc18_ + _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc8_ = _loc37_ + (_loc22_ * _loc7_ - (_loc31_ + _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc47_ = _loc34_ + (_loc29_ * _loc7_ - _loc36_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc5_ = _loc35_ + (_loc17_ * _loc7_ - _loc11_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc24_ = _loc37_ + (_loc22_ * _loc7_ - _loc45_ * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc42_ = _loc34_ + (_loc29_ * _loc7_ + (_loc15_ - _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc9_ = _loc35_ + (_loc17_ * _loc7_ + (_loc18_ - _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               _loc6_ = _loc37_ + (_loc22_ * _loc7_ + (_loc31_ - _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationBegin;
               if(_loc46_ > param1.nearClipping && _loc12_ > param1.nearClipping && _loc19_ > param1.nearClipping && _loc41_ > param1.nearClipping && _loc44_ > param1.nearClipping && _loc8_ > param1.nearClipping && _loc24_ > param1.nearClipping && _loc6_ > param1.nearClipping)
               {
                  _loc27_.gfx.lineStyle(1,_loc14_);
                  _loc27_.gfx.moveTo(_loc13_ * param1.focalLength / _loc46_,_loc21_ * param1.focalLength / _loc46_);
                  _loc27_.gfx.curveTo(_loc38_ * param1.focalLength / _loc12_,_loc48_ * param1.focalLength / _loc12_,_loc39_ * param1.focalLength / _loc19_,_loc33_ * param1.focalLength / _loc19_);
                  _loc27_.gfx.curveTo(_loc40_ * param1.focalLength / _loc41_,_loc23_ * param1.focalLength / _loc41_,_loc4_ * param1.focalLength / _loc44_,_loc16_ * param1.focalLength / _loc44_);
                  _loc27_.gfx.curveTo(_loc26_ * param1.focalLength / _loc8_,_loc3_ * param1.focalLength / _loc8_,_loc47_ * param1.focalLength / _loc24_,_loc5_ * param1.focalLength / _loc24_);
                  _loc27_.gfx.curveTo(_loc42_ * param1.focalLength / _loc6_,_loc9_ * param1.focalLength / _loc6_,_loc13_ * param1.focalLength / _loc46_,_loc21_ * param1.focalLength / _loc46_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc13_ * param1.focalLength / _loc46_,_loc21_ * param1.focalLength / _loc46_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc39_ * param1.focalLength / _loc19_,_loc33_ * param1.focalLength / _loc19_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc4_ * param1.focalLength / _loc44_,_loc16_ * param1.focalLength / _loc44_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc47_ * param1.focalLength / _loc24_,_loc5_ * param1.focalLength / _loc24_);
               }
               _loc7_ = Math.cos(this.falloff / 2);
               _loc25_ = Math.sin(this.falloff / 2);
               _loc13_ = _loc34_ + (_loc29_ * _loc7_ + _loc15_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc21_ = _loc35_ + (_loc17_ * _loc7_ + _loc18_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc46_ = _loc37_ + (_loc22_ * _loc7_ + _loc31_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc38_ = _loc34_ + (_loc29_ * _loc7_ + (_loc15_ + _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc48_ = _loc35_ + (_loc17_ * _loc7_ + (_loc18_ + _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc12_ = _loc37_ + (_loc22_ * _loc7_ + (_loc31_ + _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc39_ = _loc34_ + (_loc29_ * _loc7_ + _loc36_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc33_ = _loc35_ + (_loc17_ * _loc7_ + _loc11_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc19_ = _loc37_ + (_loc22_ * _loc7_ + _loc45_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc40_ = _loc34_ + (_loc29_ * _loc7_ - (_loc15_ - _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc23_ = _loc35_ + (_loc17_ * _loc7_ - (_loc18_ - _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc41_ = _loc37_ + (_loc22_ * _loc7_ - (_loc31_ - _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc4_ = _loc34_ + (_loc29_ * _loc7_ - _loc15_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc16_ = _loc35_ + (_loc17_ * _loc7_ - _loc18_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc44_ = _loc37_ + (_loc22_ * _loc7_ - _loc31_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc26_ = _loc34_ + (_loc29_ * _loc7_ - (_loc15_ + _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc3_ = _loc35_ + (_loc17_ * _loc7_ - (_loc18_ + _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc8_ = _loc37_ + (_loc22_ * _loc7_ - (_loc31_ + _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc47_ = _loc34_ + (_loc29_ * _loc7_ - _loc36_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc5_ = _loc35_ + (_loc17_ * _loc7_ - _loc11_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc24_ = _loc37_ + (_loc22_ * _loc7_ - _loc45_ * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc42_ = _loc34_ + (_loc29_ * _loc7_ + (_loc15_ - _loc36_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc9_ = _loc35_ + (_loc17_ * _loc7_ + (_loc18_ - _loc11_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               _loc6_ = _loc37_ + (_loc22_ * _loc7_ + (_loc31_ - _loc45_) * 0.9 * _loc25_) * _loc10_ * this.attenuationEnd;
               if(_loc46_ > param1.nearClipping && _loc12_ > param1.nearClipping && _loc19_ > param1.nearClipping && _loc41_ > param1.nearClipping && _loc44_ > param1.nearClipping && _loc8_ > param1.nearClipping && _loc24_ > param1.nearClipping && _loc6_ > param1.nearClipping)
               {
                  _loc27_.gfx.lineStyle(1,_loc14_,0.5);
                  _loc27_.gfx.moveTo(_loc13_ * param1.focalLength / _loc46_,_loc21_ * param1.focalLength / _loc46_);
                  _loc27_.gfx.curveTo(_loc38_ * param1.focalLength / _loc12_,_loc48_ * param1.focalLength / _loc12_,_loc39_ * param1.focalLength / _loc19_,_loc33_ * param1.focalLength / _loc19_);
                  _loc27_.gfx.curveTo(_loc40_ * param1.focalLength / _loc41_,_loc23_ * param1.focalLength / _loc41_,_loc4_ * param1.focalLength / _loc44_,_loc16_ * param1.focalLength / _loc44_);
                  _loc27_.gfx.curveTo(_loc26_ * param1.focalLength / _loc8_,_loc3_ * param1.focalLength / _loc8_,_loc47_ * param1.focalLength / _loc24_,_loc5_ * param1.focalLength / _loc24_);
                  _loc27_.gfx.curveTo(_loc42_ * param1.focalLength / _loc6_,_loc9_ * param1.focalLength / _loc6_,_loc13_ * param1.focalLength / _loc46_,_loc21_ * param1.focalLength / _loc46_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc13_ * param1.focalLength / _loc46_,_loc21_ * param1.focalLength / _loc46_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc39_ * param1.focalLength / _loc19_,_loc33_ * param1.focalLength / _loc19_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc4_ * param1.focalLength / _loc44_,_loc16_ * param1.focalLength / _loc44_);
                  _loc27_.gfx.moveTo(_loc34_ * param1.focalLength / _loc37_,_loc35_ * param1.focalLength / _loc37_);
                  _loc27_.gfx.lineTo(_loc47_ * param1.focalLength / _loc24_,_loc5_ * param1.focalLength / _loc24_);
               }
            }
            if(_loc30_ & 8)
            {
               Debug.drawBounds(param1,_loc27_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ,10092288);
            }
         }
      }
      
      override alternativa3d function updateBounds(param1:Object3D, param2:Object3D = null) : void
      {
         var _loc3_:Vertex = null;
         var _loc5_:Number = this.falloff < 3.141592653589793 ? Math.sin(this.falloff / 2) * this.attenuationEnd : this.attenuationEnd;
         var _loc4_:Number = this.falloff < 3.141592653589793 ? 0 : Math.cos(this.falloff / 2) * this.attenuationEnd;
         if(param2 != null)
         {
            _loc3_ = boundVertexList;
            _loc3_.x = -_loc5_;
            _loc3_.y = -_loc5_;
            _loc3_.z = _loc4_;
            _loc3_ = _loc3_.next;
            _loc3_.x = _loc5_;
            _loc3_.y = -_loc5_;
            _loc3_.z = _loc4_;
            _loc3_ = _loc3_.next;
            _loc3_.x = -_loc5_;
            _loc3_.y = _loc5_;
            _loc3_.z = _loc4_;
            _loc3_ = _loc3_.next;
            _loc3_.x = _loc5_;
            _loc3_.y = _loc5_;
            _loc3_.z = _loc4_;
            _loc3_ = _loc3_.next;
            _loc3_.x = -_loc5_;
            _loc3_.y = -_loc5_;
            _loc3_.z = this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = _loc5_;
            _loc3_.y = -_loc5_;
            _loc3_.z = this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = -_loc5_;
            _loc3_.y = _loc5_;
            _loc3_.z = this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = _loc5_;
            _loc3_.y = _loc5_;
            _loc3_.z = this.attenuationEnd;
            _loc3_ = boundVertexList;
            while(_loc3_ != null)
            {
               _loc3_.cameraX = param2.ma * _loc3_.x + param2.mb * _loc3_.y + param2.mc * _loc3_.z + param2.md;
               _loc3_.cameraY = param2.me * _loc3_.x + param2.mf * _loc3_.y + param2.mg * _loc3_.z + param2.mh;
               _loc3_.cameraZ = param2.mi * _loc3_.x + param2.mj * _loc3_.y + param2.mk * _loc3_.z + param2.ml;
               if(_loc3_.cameraX < param1.boundMinX)
               {
                  param1.boundMinX = _loc3_.cameraX;
               }
               if(_loc3_.cameraX > param1.boundMaxX)
               {
                  param1.boundMaxX = _loc3_.cameraX;
               }
               if(_loc3_.cameraY < param1.boundMinY)
               {
                  param1.boundMinY = _loc3_.cameraY;
               }
               if(_loc3_.cameraY > param1.boundMaxY)
               {
                  param1.boundMaxY = _loc3_.cameraY;
               }
               if(_loc3_.cameraZ < param1.boundMinZ)
               {
                  param1.boundMinZ = _loc3_.cameraZ;
               }
               if(_loc3_.cameraZ > param1.boundMaxZ)
               {
                  param1.boundMaxZ = _loc3_.cameraZ;
               }
               _loc3_ = _loc3_.next;
            }
         }
         else
         {
            if(-_loc5_ < param1.boundMinX)
            {
               param1.boundMinX = -_loc5_;
            }
            if(_loc5_ > param1.boundMaxX)
            {
               param1.boundMaxX = _loc5_;
            }
            if(-_loc5_ < param1.boundMinY)
            {
               param1.boundMinY = -_loc5_;
            }
            if(_loc5_ > param1.boundMaxY)
            {
               param1.boundMaxY = _loc5_;
            }
            if(-_loc4_ < param1.boundMinZ)
            {
               param1.boundMinZ = _loc4_;
            }
            if(this.attenuationEnd > param1.boundMaxZ)
            {
               param1.boundMaxZ = this.attenuationEnd;
            }
         }
      }
   }
}

