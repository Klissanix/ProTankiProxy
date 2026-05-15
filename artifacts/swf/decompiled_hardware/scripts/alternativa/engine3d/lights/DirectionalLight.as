package alternativa.engine3d.lights
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   import flash.display.Sprite;
   
   use namespace alternativa3d;
   
   public class DirectionalLight extends Light3D
   {
      
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
      
      override alternativa3d function drawDebug(param1:Camera3D) : void
      {
         var _loc14_:Sprite = null;
         var _loc60_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc35_:int = 0;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc61_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc64_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc62_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc63_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc47_:int = param1.checkInDebug(this);
         if(_loc47_ > 0)
         {
            _loc14_ = param1.view.canvas;
            if(_loc47_ & 0x0100 && ml > param1.nearClipping)
            {
               _loc60_ = (color >> 16 & 0xFF) * intensity;
               _loc49_ = (color >> 8 & 0xFF) * intensity;
               _loc46_ = (color & 0xFF) * intensity;
               _loc35_ = ((_loc60_ > 255 ? 255 : _loc60_) << 16) + ((_loc49_ > 255 ? 255 : _loc49_) << 8) + (_loc46_ > 255 ? 255 : _loc46_);
               _loc50_ = md * param1.viewSizeX / param1.focalLength;
               _loc51_ = mh * param1.viewSizeY / param1.focalLength;
               _loc52_ = ml;
               _loc15_ = mc * param1.viewSizeX / param1.focalLength;
               _loc7_ = mg * param1.viewSizeY / param1.focalLength;
               _loc10_ = mk;
               _loc8_ = Math.sqrt(_loc15_ * _loc15_ + _loc7_ * _loc7_ + _loc10_ * _loc10_);
               _loc15_ /= _loc8_;
               _loc7_ /= _loc8_;
               _loc10_ /= _loc8_;
               _loc36_ = ma * param1.viewSizeX / param1.focalLength;
               _loc38_ = me * param1.viewSizeY / param1.focalLength;
               _loc16_ = mi;
               _loc19_ = _loc16_ * _loc7_ - _loc38_ * _loc10_;
               _loc32_ = _loc36_ * _loc10_ - _loc16_ * _loc15_;
               _loc61_ = _loc38_ * _loc15_ - _loc36_ * _loc7_;
               _loc8_ = Math.sqrt(_loc19_ * _loc19_ + _loc32_ * _loc32_ + _loc61_ * _loc61_);
               _loc19_ /= _loc8_;
               _loc32_ /= _loc8_;
               _loc61_ /= _loc8_;
               _loc36_ = mb * param1.viewSizeX / param1.focalLength;
               _loc38_ = mf * param1.viewSizeY / param1.focalLength;
               _loc16_ = mj;
               _loc36_ = _loc61_ * _loc7_ - _loc32_ * _loc10_;
               _loc38_ = _loc19_ * _loc10_ - _loc61_ * _loc15_;
               _loc16_ = _loc32_ * _loc15_ - _loc19_ * _loc7_;
               _loc53_ = ml / param1.focalLength;
               _loc15_ *= _loc53_;
               _loc7_ *= _loc53_;
               _loc10_ *= _loc53_;
               _loc36_ *= _loc53_;
               _loc38_ *= _loc53_;
               _loc16_ *= _loc53_;
               _loc19_ *= _loc53_;
               _loc32_ *= _loc53_;
               _loc61_ *= _loc53_;
               _loc56_ = 16;
               _loc25_ = 24;
               _loc64_ = 4;
               _loc2_ = 8;
               _loc48_ = _loc50_ + _loc15_ * _loc25_;
               _loc62_ = _loc51_ + _loc7_ * _loc25_;
               _loc9_ = _loc52_ + _loc10_ * _loc25_;
               _loc34_ = _loc50_ + _loc36_ * _loc64_ + _loc19_ * _loc64_;
               _loc40_ = _loc51_ + _loc38_ * _loc64_ + _loc32_ * _loc64_;
               _loc24_ = _loc52_ + _loc16_ * _loc64_ + _loc61_ * _loc64_;
               _loc54_ = _loc50_ - _loc36_ * _loc64_ + _loc19_ * _loc64_;
               _loc27_ = _loc51_ - _loc38_ * _loc64_ + _loc32_ * _loc64_;
               _loc33_ = _loc52_ - _loc16_ * _loc64_ + _loc61_ * _loc64_;
               _loc57_ = _loc50_ - _loc36_ * _loc64_ - _loc19_ * _loc64_;
               _loc17_ = _loc51_ - _loc38_ * _loc64_ - _loc32_ * _loc64_;
               _loc39_ = _loc52_ - _loc16_ * _loc64_ - _loc61_ * _loc64_;
               _loc21_ = _loc50_ + _loc36_ * _loc64_ - _loc19_ * _loc64_;
               _loc11_ = _loc51_ + _loc38_ * _loc64_ - _loc32_ * _loc64_;
               _loc22_ = _loc52_ + _loc16_ * _loc64_ - _loc61_ * _loc64_;
               _loc3_ = _loc50_ + _loc15_ * _loc56_ + _loc36_ * _loc64_ + _loc19_ * _loc64_;
               _loc6_ = _loc51_ + _loc7_ * _loc56_ + _loc38_ * _loc64_ + _loc32_ * _loc64_;
               _loc23_ = _loc52_ + _loc10_ * _loc56_ + _loc16_ * _loc64_ + _loc61_ * _loc64_;
               _loc44_ = _loc50_ + _loc15_ * _loc56_ - _loc36_ * _loc64_ + _loc19_ * _loc64_;
               _loc28_ = _loc51_ + _loc7_ * _loc56_ - _loc38_ * _loc64_ + _loc32_ * _loc64_;
               _loc30_ = _loc52_ + _loc10_ * _loc56_ - _loc16_ * _loc64_ + _loc61_ * _loc64_;
               _loc63_ = _loc50_ + _loc15_ * _loc56_ - _loc36_ * _loc64_ - _loc19_ * _loc64_;
               _loc4_ = _loc51_ + _loc7_ * _loc56_ - _loc38_ * _loc64_ - _loc32_ * _loc64_;
               _loc12_ = _loc52_ + _loc10_ * _loc56_ - _loc16_ * _loc64_ - _loc61_ * _loc64_;
               _loc59_ = _loc50_ + _loc15_ * _loc56_ + _loc36_ * _loc64_ - _loc19_ * _loc64_;
               _loc31_ = _loc51_ + _loc7_ * _loc56_ + _loc38_ * _loc64_ - _loc32_ * _loc64_;
               _loc29_ = _loc52_ + _loc10_ * _loc56_ + _loc16_ * _loc64_ - _loc61_ * _loc64_;
               _loc18_ = _loc50_ + _loc15_ * _loc56_ + _loc36_ * _loc2_ + _loc19_ * _loc2_;
               _loc55_ = _loc51_ + _loc7_ * _loc56_ + _loc38_ * _loc2_ + _loc32_ * _loc2_;
               _loc13_ = _loc52_ + _loc10_ * _loc56_ + _loc16_ * _loc2_ + _loc61_ * _loc2_;
               _loc41_ = _loc50_ + _loc15_ * _loc56_ - _loc36_ * _loc2_ + _loc19_ * _loc2_;
               _loc42_ = _loc51_ + _loc7_ * _loc56_ - _loc38_ * _loc2_ + _loc32_ * _loc2_;
               _loc20_ = _loc52_ + _loc10_ * _loc56_ - _loc16_ * _loc2_ + _loc61_ * _loc2_;
               _loc43_ = _loc50_ + _loc15_ * _loc56_ - _loc36_ * _loc2_ - _loc19_ * _loc2_;
               _loc45_ = _loc51_ + _loc7_ * _loc56_ - _loc38_ * _loc2_ - _loc32_ * _loc2_;
               _loc5_ = _loc52_ + _loc10_ * _loc56_ - _loc16_ * _loc2_ - _loc61_ * _loc2_;
               _loc37_ = _loc50_ + _loc15_ * _loc56_ + _loc36_ * _loc2_ - _loc19_ * _loc2_;
               _loc26_ = _loc51_ + _loc7_ * _loc56_ + _loc38_ * _loc2_ - _loc32_ * _loc2_;
               _loc58_ = _loc52_ + _loc10_ * _loc56_ + _loc16_ * _loc2_ - _loc61_ * _loc2_;
               if(_loc9_ > param1.nearClipping && _loc24_ > param1.nearClipping && _loc33_ > param1.nearClipping && _loc39_ > param1.nearClipping && _loc22_ > param1.nearClipping && _loc23_ > param1.nearClipping && _loc30_ > param1.nearClipping && _loc12_ > param1.nearClipping && _loc29_ > param1.nearClipping && _loc13_ > param1.nearClipping && _loc20_ > param1.nearClipping && _loc5_ > param1.nearClipping && _loc58_ > param1.nearClipping)
               {
                  _loc14_.graphics.lineStyle(1,_loc35_);
                  _loc14_.graphics.moveTo(_loc34_ * param1.focalLength / _loc24_,_loc40_ * param1.focalLength / _loc24_);
                  _loc14_.graphics.lineTo(_loc54_ * param1.focalLength / _loc33_,_loc27_ * param1.focalLength / _loc33_);
                  _loc14_.graphics.lineTo(_loc57_ * param1.focalLength / _loc39_,_loc17_ * param1.focalLength / _loc39_);
                  _loc14_.graphics.lineTo(_loc21_ * param1.focalLength / _loc22_,_loc11_ * param1.focalLength / _loc22_);
                  _loc14_.graphics.lineTo(_loc34_ * param1.focalLength / _loc24_,_loc40_ * param1.focalLength / _loc24_);
                  _loc14_.graphics.moveTo(_loc3_ * param1.focalLength / _loc23_,_loc6_ * param1.focalLength / _loc23_);
                  _loc14_.graphics.lineTo(_loc44_ * param1.focalLength / _loc30_,_loc28_ * param1.focalLength / _loc30_);
                  _loc14_.graphics.lineTo(_loc63_ * param1.focalLength / _loc12_,_loc4_ * param1.focalLength / _loc12_);
                  _loc14_.graphics.lineTo(_loc59_ * param1.focalLength / _loc29_,_loc31_ * param1.focalLength / _loc29_);
                  _loc14_.graphics.lineTo(_loc3_ * param1.focalLength / _loc23_,_loc6_ * param1.focalLength / _loc23_);
                  _loc14_.graphics.moveTo(_loc18_ * param1.focalLength / _loc13_,_loc55_ * param1.focalLength / _loc13_);
                  _loc14_.graphics.lineTo(_loc41_ * param1.focalLength / _loc20_,_loc42_ * param1.focalLength / _loc20_);
                  _loc14_.graphics.lineTo(_loc43_ * param1.focalLength / _loc5_,_loc45_ * param1.focalLength / _loc5_);
                  _loc14_.graphics.lineTo(_loc37_ * param1.focalLength / _loc58_,_loc26_ * param1.focalLength / _loc58_);
                  _loc14_.graphics.lineTo(_loc18_ * param1.focalLength / _loc13_,_loc55_ * param1.focalLength / _loc13_);
                  _loc14_.graphics.moveTo(_loc48_ * param1.focalLength / _loc9_,_loc62_ * param1.focalLength / _loc9_);
                  _loc14_.graphics.lineTo(_loc18_ * param1.focalLength / _loc13_,_loc55_ * param1.focalLength / _loc13_);
                  _loc14_.graphics.moveTo(_loc48_ * param1.focalLength / _loc9_,_loc62_ * param1.focalLength / _loc9_);
                  _loc14_.graphics.lineTo(_loc41_ * param1.focalLength / _loc20_,_loc42_ * param1.focalLength / _loc20_);
                  _loc14_.graphics.moveTo(_loc48_ * param1.focalLength / _loc9_,_loc62_ * param1.focalLength / _loc9_);
                  _loc14_.graphics.lineTo(_loc43_ * param1.focalLength / _loc5_,_loc45_ * param1.focalLength / _loc5_);
                  _loc14_.graphics.moveTo(_loc48_ * param1.focalLength / _loc9_,_loc62_ * param1.focalLength / _loc9_);
                  _loc14_.graphics.lineTo(_loc37_ * param1.focalLength / _loc58_,_loc26_ * param1.focalLength / _loc58_);
                  _loc14_.graphics.moveTo(_loc34_ * param1.focalLength / _loc24_,_loc40_ * param1.focalLength / _loc24_);
                  _loc14_.graphics.lineTo(_loc3_ * param1.focalLength / _loc23_,_loc6_ * param1.focalLength / _loc23_);
                  _loc14_.graphics.moveTo(_loc54_ * param1.focalLength / _loc33_,_loc27_ * param1.focalLength / _loc33_);
                  _loc14_.graphics.lineTo(_loc44_ * param1.focalLength / _loc30_,_loc28_ * param1.focalLength / _loc30_);
                  _loc14_.graphics.moveTo(_loc57_ * param1.focalLength / _loc39_,_loc17_ * param1.focalLength / _loc39_);
                  _loc14_.graphics.lineTo(_loc63_ * param1.focalLength / _loc12_,_loc4_ * param1.focalLength / _loc12_);
                  _loc14_.graphics.moveTo(_loc21_ * param1.focalLength / _loc22_,_loc11_ * param1.focalLength / _loc22_);
                  _loc14_.graphics.lineTo(_loc59_ * param1.focalLength / _loc29_,_loc31_ * param1.focalLength / _loc29_);
               }
            }
            if(_loc47_ & 8)
            {
               Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ,10092288);
            }
         }
      }
   }
}

