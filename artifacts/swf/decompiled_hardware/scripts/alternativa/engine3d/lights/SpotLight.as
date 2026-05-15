package alternativa.engine3d.lights
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   import flash.display.Sprite;
   
   use namespace alternativa3d;
   
   public class SpotLight extends Light3D
   {
      
      public var attenuationBegin:Number;
      
      public var attenuationEnd:Number;
      
      public var hotspot:Number;
      
      public var falloff:Number;
      
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
      
      override alternativa3d function drawDebug(param1:Camera3D) : void
      {
         var _loc26_:Sprite = null;
         var _loc42_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc13_:int = 0;
         var _loc9_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc29_:int = param1.checkInDebug(this);
         if(_loc29_ > 0)
         {
            _loc26_ = param1.view.canvas;
            if(_loc29_ & 0x0100 && ml > param1.nearClipping)
            {
               _loc42_ = (color >> 16 & 0xFF) * intensity;
               _loc31_ = (color >> 8 & 0xFF) * intensity;
               _loc27_ = (color & 0xFF) * intensity;
               _loc13_ = ((_loc42_ > 255 ? 255 : _loc42_) << 16) + ((_loc31_ > 255 ? 255 : _loc31_) << 8) + (_loc27_ > 255 ? 255 : _loc27_);
               _loc9_ = 0;
               _loc33_ = md * param1.viewSizeX / param1.focalLength;
               _loc34_ = mh * param1.viewSizeY / param1.focalLength;
               _loc36_ = ml;
               _loc28_ = mc * param1.viewSizeX / param1.focalLength;
               _loc16_ = mg * param1.viewSizeY / param1.focalLength;
               _loc21_ = mk;
               _loc19_ = Math.sqrt(_loc28_ * _loc28_ + _loc16_ * _loc16_ + _loc21_ * _loc21_);
               _loc9_ += _loc19_;
               _loc28_ /= _loc19_;
               _loc16_ /= _loc19_;
               _loc21_ /= _loc19_;
               _loc14_ = ma * param1.viewSizeX / param1.focalLength;
               _loc17_ = me * param1.viewSizeY / param1.focalLength;
               _loc30_ = mi;
               _loc9_ += Math.sqrt(_loc14_ * _loc14_ + _loc17_ * _loc17_ + _loc30_ * _loc30_);
               _loc35_ = _loc30_ * _loc16_ - _loc17_ * _loc21_;
               _loc10_ = _loc14_ * _loc21_ - _loc30_ * _loc28_;
               _loc44_ = _loc17_ * _loc28_ - _loc14_ * _loc16_;
               _loc19_ = Math.sqrt(_loc35_ * _loc35_ + _loc10_ * _loc10_ + _loc44_ * _loc44_);
               _loc35_ /= _loc19_;
               _loc10_ /= _loc19_;
               _loc44_ /= _loc19_;
               _loc14_ = mb * param1.viewSizeX / param1.focalLength;
               _loc17_ = mf * param1.viewSizeY / param1.focalLength;
               _loc30_ = mj;
               _loc9_ += Math.sqrt(_loc14_ * _loc14_ + _loc17_ * _loc17_ + _loc30_ * _loc30_);
               _loc9_ = _loc9_ / 3;
               _loc14_ = _loc44_ * _loc16_ - _loc10_ * _loc21_;
               _loc17_ = _loc35_ * _loc21_ - _loc44_ * _loc28_;
               _loc30_ = _loc10_ * _loc28_ - _loc35_ * _loc16_;
               _loc6_ = Math.cos(this.hotspot / 2);
               _loc24_ = Math.sin(this.hotspot / 2);
               _loc12_ = _loc33_ + (_loc28_ * _loc6_ + _loc14_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc20_ = _loc34_ + (_loc16_ * _loc6_ + _loc17_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc45_ = _loc36_ + (_loc21_ * _loc6_ + _loc30_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc37_ = _loc33_ + (_loc28_ * _loc6_ + (_loc14_ + _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc47_ = _loc34_ + (_loc16_ * _loc6_ + (_loc17_ + _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc11_ = _loc36_ + (_loc21_ * _loc6_ + (_loc30_ + _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc38_ = _loc33_ + (_loc28_ * _loc6_ + _loc35_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc32_ = _loc34_ + (_loc16_ * _loc6_ + _loc10_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc18_ = _loc36_ + (_loc21_ * _loc6_ + _loc44_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc39_ = _loc33_ + (_loc28_ * _loc6_ - (_loc14_ - _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc22_ = _loc34_ + (_loc16_ * _loc6_ - (_loc17_ - _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc40_ = _loc36_ + (_loc21_ * _loc6_ - (_loc30_ - _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc3_ = _loc33_ + (_loc28_ * _loc6_ - _loc14_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc15_ = _loc34_ + (_loc16_ * _loc6_ - _loc17_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc43_ = _loc36_ + (_loc21_ * _loc6_ - _loc30_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc25_ = _loc33_ + (_loc28_ * _loc6_ - (_loc14_ + _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc2_ = _loc34_ + (_loc16_ * _loc6_ - (_loc17_ + _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc7_ = _loc36_ + (_loc21_ * _loc6_ - (_loc30_ + _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc46_ = _loc33_ + (_loc28_ * _loc6_ - _loc35_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc4_ = _loc34_ + (_loc16_ * _loc6_ - _loc10_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc23_ = _loc36_ + (_loc21_ * _loc6_ - _loc44_ * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc41_ = _loc33_ + (_loc28_ * _loc6_ + (_loc14_ - _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc8_ = _loc34_ + (_loc16_ * _loc6_ + (_loc17_ - _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               _loc5_ = _loc36_ + (_loc21_ * _loc6_ + (_loc30_ - _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationBegin;
               if(_loc45_ > param1.nearClipping && _loc11_ > param1.nearClipping && _loc18_ > param1.nearClipping && _loc40_ > param1.nearClipping && _loc43_ > param1.nearClipping && _loc7_ > param1.nearClipping && _loc23_ > param1.nearClipping && _loc5_ > param1.nearClipping)
               {
                  _loc26_.graphics.lineStyle(1,_loc13_);
                  _loc26_.graphics.moveTo(_loc12_ * param1.focalLength / _loc45_,_loc20_ * param1.focalLength / _loc45_);
                  _loc26_.graphics.curveTo(_loc37_ * param1.focalLength / _loc11_,_loc47_ * param1.focalLength / _loc11_,_loc38_ * param1.focalLength / _loc18_,_loc32_ * param1.focalLength / _loc18_);
                  _loc26_.graphics.curveTo(_loc39_ * param1.focalLength / _loc40_,_loc22_ * param1.focalLength / _loc40_,_loc3_ * param1.focalLength / _loc43_,_loc15_ * param1.focalLength / _loc43_);
                  _loc26_.graphics.curveTo(_loc25_ * param1.focalLength / _loc7_,_loc2_ * param1.focalLength / _loc7_,_loc46_ * param1.focalLength / _loc23_,_loc4_ * param1.focalLength / _loc23_);
                  _loc26_.graphics.curveTo(_loc41_ * param1.focalLength / _loc5_,_loc8_ * param1.focalLength / _loc5_,_loc12_ * param1.focalLength / _loc45_,_loc20_ * param1.focalLength / _loc45_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc12_ * param1.focalLength / _loc45_,_loc20_ * param1.focalLength / _loc45_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc38_ * param1.focalLength / _loc18_,_loc32_ * param1.focalLength / _loc18_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc3_ * param1.focalLength / _loc43_,_loc15_ * param1.focalLength / _loc43_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc46_ * param1.focalLength / _loc23_,_loc4_ * param1.focalLength / _loc23_);
               }
               _loc6_ = Math.cos(this.falloff / 2);
               _loc24_ = Math.sin(this.falloff / 2);
               _loc12_ = _loc33_ + (_loc28_ * _loc6_ + _loc14_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc20_ = _loc34_ + (_loc16_ * _loc6_ + _loc17_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc45_ = _loc36_ + (_loc21_ * _loc6_ + _loc30_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc37_ = _loc33_ + (_loc28_ * _loc6_ + (_loc14_ + _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc47_ = _loc34_ + (_loc16_ * _loc6_ + (_loc17_ + _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc11_ = _loc36_ + (_loc21_ * _loc6_ + (_loc30_ + _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc38_ = _loc33_ + (_loc28_ * _loc6_ + _loc35_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc32_ = _loc34_ + (_loc16_ * _loc6_ + _loc10_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc18_ = _loc36_ + (_loc21_ * _loc6_ + _loc44_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc39_ = _loc33_ + (_loc28_ * _loc6_ - (_loc14_ - _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc22_ = _loc34_ + (_loc16_ * _loc6_ - (_loc17_ - _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc40_ = _loc36_ + (_loc21_ * _loc6_ - (_loc30_ - _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc3_ = _loc33_ + (_loc28_ * _loc6_ - _loc14_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc15_ = _loc34_ + (_loc16_ * _loc6_ - _loc17_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc43_ = _loc36_ + (_loc21_ * _loc6_ - _loc30_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc25_ = _loc33_ + (_loc28_ * _loc6_ - (_loc14_ + _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc2_ = _loc34_ + (_loc16_ * _loc6_ - (_loc17_ + _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc7_ = _loc36_ + (_loc21_ * _loc6_ - (_loc30_ + _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc46_ = _loc33_ + (_loc28_ * _loc6_ - _loc35_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc4_ = _loc34_ + (_loc16_ * _loc6_ - _loc10_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc23_ = _loc36_ + (_loc21_ * _loc6_ - _loc44_ * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc41_ = _loc33_ + (_loc28_ * _loc6_ + (_loc14_ - _loc35_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc8_ = _loc34_ + (_loc16_ * _loc6_ + (_loc17_ - _loc10_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               _loc5_ = _loc36_ + (_loc21_ * _loc6_ + (_loc30_ - _loc44_) * 0.9 * _loc24_) * _loc9_ * this.attenuationEnd;
               if(_loc45_ > param1.nearClipping && _loc11_ > param1.nearClipping && _loc18_ > param1.nearClipping && _loc40_ > param1.nearClipping && _loc43_ > param1.nearClipping && _loc7_ > param1.nearClipping && _loc23_ > param1.nearClipping && _loc5_ > param1.nearClipping)
               {
                  _loc26_.graphics.lineStyle(1,_loc13_,0.5);
                  _loc26_.graphics.moveTo(_loc12_ * param1.focalLength / _loc45_,_loc20_ * param1.focalLength / _loc45_);
                  _loc26_.graphics.curveTo(_loc37_ * param1.focalLength / _loc11_,_loc47_ * param1.focalLength / _loc11_,_loc38_ * param1.focalLength / _loc18_,_loc32_ * param1.focalLength / _loc18_);
                  _loc26_.graphics.curveTo(_loc39_ * param1.focalLength / _loc40_,_loc22_ * param1.focalLength / _loc40_,_loc3_ * param1.focalLength / _loc43_,_loc15_ * param1.focalLength / _loc43_);
                  _loc26_.graphics.curveTo(_loc25_ * param1.focalLength / _loc7_,_loc2_ * param1.focalLength / _loc7_,_loc46_ * param1.focalLength / _loc23_,_loc4_ * param1.focalLength / _loc23_);
                  _loc26_.graphics.curveTo(_loc41_ * param1.focalLength / _loc5_,_loc8_ * param1.focalLength / _loc5_,_loc12_ * param1.focalLength / _loc45_,_loc20_ * param1.focalLength / _loc45_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc12_ * param1.focalLength / _loc45_,_loc20_ * param1.focalLength / _loc45_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc38_ * param1.focalLength / _loc18_,_loc32_ * param1.focalLength / _loc18_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc3_ * param1.focalLength / _loc43_,_loc15_ * param1.focalLength / _loc43_);
                  _loc26_.graphics.moveTo(_loc33_ * param1.focalLength / _loc36_,_loc34_ * param1.focalLength / _loc36_);
                  _loc26_.graphics.lineTo(_loc46_ * param1.focalLength / _loc23_,_loc4_ * param1.focalLength / _loc23_);
               }
            }
            if(_loc29_ & 8)
            {
               Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ,10092288);
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
            if(_loc4_ < param1.boundMinZ)
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

