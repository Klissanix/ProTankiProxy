package alternativa.engine3d.lights
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   
   use namespace alternativa3d;
   
   public class DirectionalLight extends Light3D
   {
      
      alternativa3d var localDirectionX:Number;
      
      alternativa3d var localDirectionY:Number;
      
      alternativa3d var localDirectionZ:Number;
      
      public function DirectionalLight(param1:uint)
      {
         super();
         this.color = param1;
         calculateBounds();
      }
      
      public function lookAt(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Number = param1 - this.x;
         var _loc4_:Number = param2 - this.y;
         var _loc6_:Number = param3 - this.z;
         rotationX = Math.atan2(_loc6_,Math.sqrt(_loc5_ * _loc5_ + _loc4_ * _loc4_)) - 3.141592653589793 / 2;
         rotationY = 0;
         rotationZ = -Math.atan2(_loc5_,_loc4_);
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:DirectionalLight = new DirectionalLight(color);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function drawDebug(param1:Camera3D, param2:Canvas) : void
      {
         var _loc36_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc62_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc65_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc63_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc64_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc60_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc15_:Canvas = null;
         var _loc61_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc37_:int = 0;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc48_:int = param1.checkInDebug(this);
         if(_loc48_ > 0)
         {
            _loc15_ = param2.getChildCanvas(true,false);
            if(_loc48_ & 0x0100 && ml > param1.nearClipping)
            {
               _loc61_ = (color >> 16 & 0xFF) * intensity;
               _loc50_ = (color >> 8 & 0xFF) * intensity;
               _loc47_ = (color & 0xFF) * intensity;
               _loc37_ = ((_loc61_ > 255 ? 255 : _loc61_) << 16) + ((_loc50_ > 255 ? 255 : _loc50_) << 8) + (_loc47_ > 255 ? 255 : _loc47_);
               _loc51_ = md * param1.viewSizeX / param1.focalLength;
               _loc52_ = mh * param1.viewSizeY / param1.focalLength;
               _loc56_ = ml;
               _loc16_ = mc * param1.viewSizeX / param1.focalLength;
               _loc8_ = mg * param1.viewSizeY / param1.focalLength;
               _loc11_ = mk;
               _loc10_ = Math.sqrt(_loc16_ * _loc16_ + _loc8_ * _loc8_ + _loc11_ * _loc11_);
               _loc16_ /= _loc10_;
               _loc8_ /= _loc10_;
               _loc11_ /= _loc10_;
               _loc36_ = ma * param1.viewSizeX / param1.focalLength;
               _loc39_ = me * param1.viewSizeY / param1.focalLength;
               _loc17_ = mi;
               _loc20_ = _loc17_ * _loc8_ - _loc39_ * _loc11_;
               _loc33_ = _loc36_ * _loc11_ - _loc17_ * _loc16_;
               _loc62_ = _loc39_ * _loc16_ - _loc36_ * _loc8_;
               _loc10_ = Math.sqrt(_loc20_ * _loc20_ + _loc33_ * _loc33_ + _loc62_ * _loc62_);
               _loc20_ /= _loc10_;
               _loc33_ /= _loc10_;
               _loc62_ /= _loc10_;
               _loc36_ = mb * param1.viewSizeX / param1.focalLength;
               _loc39_ = mf * param1.viewSizeY / param1.focalLength;
               _loc17_ = mj;
               _loc36_ = _loc62_ * _loc8_ - _loc33_ * _loc11_;
               _loc39_ = _loc20_ * _loc11_ - _loc62_ * _loc16_;
               _loc17_ = _loc33_ * _loc16_ - _loc20_ * _loc8_;
               _loc53_ = ml / param1.focalLength;
               _loc16_ *= _loc53_;
               _loc8_ *= _loc53_;
               _loc11_ *= _loc53_;
               _loc36_ *= _loc53_;
               _loc39_ *= _loc53_;
               _loc17_ *= _loc53_;
               _loc20_ *= _loc53_;
               _loc33_ *= _loc53_;
               _loc62_ *= _loc53_;
               _loc57_ = 16;
               _loc26_ = 24;
               _loc65_ = 4;
               _loc3_ = 8;
               _loc49_ = _loc51_ + _loc16_ * _loc26_;
               _loc63_ = _loc52_ + _loc8_ * _loc26_;
               _loc9_ = _loc56_ + _loc11_ * _loc26_;
               _loc35_ = _loc51_ + _loc36_ * _loc65_ + _loc20_ * _loc65_;
               _loc41_ = _loc52_ + _loc39_ * _loc65_ + _loc33_ * _loc65_;
               _loc25_ = _loc56_ + _loc17_ * _loc65_ + _loc62_ * _loc65_;
               _loc54_ = _loc51_ - _loc36_ * _loc65_ + _loc20_ * _loc65_;
               _loc28_ = _loc52_ - _loc39_ * _loc65_ + _loc33_ * _loc65_;
               _loc34_ = _loc56_ - _loc17_ * _loc65_ + _loc62_ * _loc65_;
               _loc58_ = _loc51_ - _loc36_ * _loc65_ - _loc20_ * _loc65_;
               _loc18_ = _loc52_ - _loc39_ * _loc65_ - _loc33_ * _loc65_;
               _loc40_ = _loc56_ - _loc17_ * _loc65_ - _loc62_ * _loc65_;
               _loc22_ = _loc51_ + _loc36_ * _loc65_ - _loc20_ * _loc65_;
               _loc12_ = _loc52_ + _loc39_ * _loc65_ - _loc33_ * _loc65_;
               _loc23_ = _loc56_ + _loc17_ * _loc65_ - _loc62_ * _loc65_;
               _loc4_ = _loc51_ + _loc16_ * _loc57_ + _loc36_ * _loc65_ + _loc20_ * _loc65_;
               _loc7_ = _loc52_ + _loc8_ * _loc57_ + _loc39_ * _loc65_ + _loc33_ * _loc65_;
               _loc24_ = _loc56_ + _loc11_ * _loc57_ + _loc17_ * _loc65_ + _loc62_ * _loc65_;
               _loc45_ = _loc51_ + _loc16_ * _loc57_ - _loc36_ * _loc65_ + _loc20_ * _loc65_;
               _loc29_ = _loc52_ + _loc8_ * _loc57_ - _loc39_ * _loc65_ + _loc33_ * _loc65_;
               _loc31_ = _loc56_ + _loc11_ * _loc57_ - _loc17_ * _loc65_ + _loc62_ * _loc65_;
               _loc64_ = _loc51_ + _loc16_ * _loc57_ - _loc36_ * _loc65_ - _loc20_ * _loc65_;
               _loc5_ = _loc52_ + _loc8_ * _loc57_ - _loc39_ * _loc65_ - _loc33_ * _loc65_;
               _loc13_ = _loc56_ + _loc11_ * _loc57_ - _loc17_ * _loc65_ - _loc62_ * _loc65_;
               _loc60_ = _loc51_ + _loc16_ * _loc57_ + _loc36_ * _loc65_ - _loc20_ * _loc65_;
               _loc32_ = _loc52_ + _loc8_ * _loc57_ + _loc39_ * _loc65_ - _loc33_ * _loc65_;
               _loc30_ = _loc56_ + _loc11_ * _loc57_ + _loc17_ * _loc65_ - _loc62_ * _loc65_;
               _loc19_ = _loc51_ + _loc16_ * _loc57_ + _loc36_ * _loc3_ + _loc20_ * _loc3_;
               _loc55_ = _loc52_ + _loc8_ * _loc57_ + _loc39_ * _loc3_ + _loc33_ * _loc3_;
               _loc14_ = _loc56_ + _loc11_ * _loc57_ + _loc17_ * _loc3_ + _loc62_ * _loc3_;
               _loc42_ = _loc51_ + _loc16_ * _loc57_ - _loc36_ * _loc3_ + _loc20_ * _loc3_;
               _loc43_ = _loc52_ + _loc8_ * _loc57_ - _loc39_ * _loc3_ + _loc33_ * _loc3_;
               _loc21_ = _loc56_ + _loc11_ * _loc57_ - _loc17_ * _loc3_ + _loc62_ * _loc3_;
               _loc44_ = _loc51_ + _loc16_ * _loc57_ - _loc36_ * _loc3_ - _loc20_ * _loc3_;
               _loc46_ = _loc52_ + _loc8_ * _loc57_ - _loc39_ * _loc3_ - _loc33_ * _loc3_;
               _loc6_ = _loc56_ + _loc11_ * _loc57_ - _loc17_ * _loc3_ - _loc62_ * _loc3_;
               _loc38_ = _loc51_ + _loc16_ * _loc57_ + _loc36_ * _loc3_ - _loc20_ * _loc3_;
               _loc27_ = _loc52_ + _loc8_ * _loc57_ + _loc39_ * _loc3_ - _loc33_ * _loc3_;
               _loc59_ = _loc56_ + _loc11_ * _loc57_ + _loc17_ * _loc3_ - _loc62_ * _loc3_;
               if(_loc9_ > param1.nearClipping && _loc25_ > param1.nearClipping && _loc34_ > param1.nearClipping && _loc40_ > param1.nearClipping && _loc23_ > param1.nearClipping && _loc24_ > param1.nearClipping && _loc31_ > param1.nearClipping && _loc13_ > param1.nearClipping && _loc30_ > param1.nearClipping && _loc14_ > param1.nearClipping && _loc21_ > param1.nearClipping && _loc6_ > param1.nearClipping && _loc59_ > param1.nearClipping)
               {
                  _loc15_.gfx.lineStyle(1,_loc37_);
                  _loc15_.gfx.moveTo(_loc35_ * param1.focalLength / _loc25_,_loc41_ * param1.focalLength / _loc25_);
                  _loc15_.gfx.lineTo(_loc54_ * param1.focalLength / _loc34_,_loc28_ * param1.focalLength / _loc34_);
                  _loc15_.gfx.lineTo(_loc58_ * param1.focalLength / _loc40_,_loc18_ * param1.focalLength / _loc40_);
                  _loc15_.gfx.lineTo(_loc22_ * param1.focalLength / _loc23_,_loc12_ * param1.focalLength / _loc23_);
                  _loc15_.gfx.lineTo(_loc35_ * param1.focalLength / _loc25_,_loc41_ * param1.focalLength / _loc25_);
                  _loc15_.gfx.moveTo(_loc4_ * param1.focalLength / _loc24_,_loc7_ * param1.focalLength / _loc24_);
                  _loc15_.gfx.lineTo(_loc45_ * param1.focalLength / _loc31_,_loc29_ * param1.focalLength / _loc31_);
                  _loc15_.gfx.lineTo(_loc64_ * param1.focalLength / _loc13_,_loc5_ * param1.focalLength / _loc13_);
                  _loc15_.gfx.lineTo(_loc60_ * param1.focalLength / _loc30_,_loc32_ * param1.focalLength / _loc30_);
                  _loc15_.gfx.lineTo(_loc4_ * param1.focalLength / _loc24_,_loc7_ * param1.focalLength / _loc24_);
                  _loc15_.gfx.moveTo(_loc19_ * param1.focalLength / _loc14_,_loc55_ * param1.focalLength / _loc14_);
                  _loc15_.gfx.lineTo(_loc42_ * param1.focalLength / _loc21_,_loc43_ * param1.focalLength / _loc21_);
                  _loc15_.gfx.lineTo(_loc44_ * param1.focalLength / _loc6_,_loc46_ * param1.focalLength / _loc6_);
                  _loc15_.gfx.lineTo(_loc38_ * param1.focalLength / _loc59_,_loc27_ * param1.focalLength / _loc59_);
                  _loc15_.gfx.lineTo(_loc19_ * param1.focalLength / _loc14_,_loc55_ * param1.focalLength / _loc14_);
                  _loc15_.gfx.moveTo(_loc49_ * param1.focalLength / _loc9_,_loc63_ * param1.focalLength / _loc9_);
                  _loc15_.gfx.lineTo(_loc19_ * param1.focalLength / _loc14_,_loc55_ * param1.focalLength / _loc14_);
                  _loc15_.gfx.moveTo(_loc49_ * param1.focalLength / _loc9_,_loc63_ * param1.focalLength / _loc9_);
                  _loc15_.gfx.lineTo(_loc42_ * param1.focalLength / _loc21_,_loc43_ * param1.focalLength / _loc21_);
                  _loc15_.gfx.moveTo(_loc49_ * param1.focalLength / _loc9_,_loc63_ * param1.focalLength / _loc9_);
                  _loc15_.gfx.lineTo(_loc44_ * param1.focalLength / _loc6_,_loc46_ * param1.focalLength / _loc6_);
                  _loc15_.gfx.moveTo(_loc49_ * param1.focalLength / _loc9_,_loc63_ * param1.focalLength / _loc9_);
                  _loc15_.gfx.lineTo(_loc38_ * param1.focalLength / _loc59_,_loc27_ * param1.focalLength / _loc59_);
                  _loc15_.gfx.moveTo(_loc35_ * param1.focalLength / _loc25_,_loc41_ * param1.focalLength / _loc25_);
                  _loc15_.gfx.lineTo(_loc4_ * param1.focalLength / _loc24_,_loc7_ * param1.focalLength / _loc24_);
                  _loc15_.gfx.moveTo(_loc54_ * param1.focalLength / _loc34_,_loc28_ * param1.focalLength / _loc34_);
                  _loc15_.gfx.lineTo(_loc45_ * param1.focalLength / _loc31_,_loc29_ * param1.focalLength / _loc31_);
                  _loc15_.gfx.moveTo(_loc58_ * param1.focalLength / _loc40_,_loc18_ * param1.focalLength / _loc40_);
                  _loc15_.gfx.lineTo(_loc64_ * param1.focalLength / _loc13_,_loc5_ * param1.focalLength / _loc13_);
                  _loc15_.gfx.moveTo(_loc22_ * param1.focalLength / _loc23_,_loc12_ * param1.focalLength / _loc23_);
                  _loc15_.gfx.lineTo(_loc60_ * param1.focalLength / _loc30_,_loc32_ * param1.focalLength / _loc30_);
               }
            }
            if(_loc48_ & 8)
            {
               Debug.drawBounds(param1,_loc15_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ,10092288);
            }
         }
      }
   }
}

