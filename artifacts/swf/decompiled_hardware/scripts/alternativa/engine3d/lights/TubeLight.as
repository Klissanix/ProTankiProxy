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
   
   public class TubeLight extends Light3D
   {
      
      public var length:Number;
      
      public var attenuationBegin:Number;
      
      public var attenuationEnd:Number;
      
      public var falloff:Number;
      
      public function TubeLight(param1:uint, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.color = param1;
         this.length = param2;
         this.attenuationBegin = param3;
         this.attenuationEnd = param4;
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
         var _loc1_:TubeLight = new TubeLight(color,this.length,this.attenuationBegin,this.attenuationEnd,this.falloff);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function drawDebug(param1:Camera3D) : void
      {
         var _loc14_:Sprite = null;
         var _loc53_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc35_:int = 0;
         var _loc9_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc45_:int = param1.checkInDebug(this);
         if(_loc45_ > 0)
         {
            _loc14_ = param1.view.canvas;
            if(_loc45_ & 0x0100 && ml > param1.nearClipping)
            {
               _loc53_ = (color >> 16 & 0xFF) * intensity;
               _loc46_ = (color >> 8 & 0xFF) * intensity;
               _loc43_ = (color & 0xFF) * intensity;
               _loc35_ = ((_loc53_ > 255 ? 255 : _loc53_) << 16) + ((_loc46_ > 255 ? 255 : _loc46_) << 8) + (_loc43_ > 255 ? 255 : _loc43_);
               _loc9_ = md + ma * this.attenuationBegin;
               _loc12_ = mh + me * this.attenuationBegin;
               _loc30_ = ml + mi * this.attenuationBegin;
               _loc24_ = md + (ma * this.attenuationBegin + mb * this.attenuationBegin) * 0.9;
               _loc8_ = mh + (me * this.attenuationBegin + mf * this.attenuationBegin) * 0.9;
               _loc27_ = ml + (mi * this.attenuationBegin + mj * this.attenuationBegin) * 0.9;
               _loc51_ = md + mb * this.attenuationBegin;
               _loc37_ = mh + mf * this.attenuationBegin;
               _loc54_ = ml + mj * this.attenuationBegin;
               _loc39_ = md - (ma * this.attenuationBegin - mb * this.attenuationBegin) * 0.9;
               _loc36_ = mh - (me * this.attenuationBegin - mf * this.attenuationBegin) * 0.9;
               _loc52_ = ml - (mi * this.attenuationBegin - mj * this.attenuationBegin) * 0.9;
               _loc33_ = md - ma * this.attenuationBegin;
               _loc44_ = mh - me * this.attenuationBegin;
               _loc10_ = ml - mi * this.attenuationBegin;
               _loc42_ = md - (ma * this.attenuationBegin + mb * this.attenuationBegin) * 0.9;
               _loc5_ = mh - (me * this.attenuationBegin + mf * this.attenuationBegin) * 0.9;
               _loc38_ = ml - (mi * this.attenuationBegin + mj * this.attenuationBegin) * 0.9;
               _loc11_ = md - mb * this.attenuationBegin;
               _loc4_ = mh - mf * this.attenuationBegin;
               _loc34_ = ml - mj * this.attenuationBegin;
               _loc23_ = md + (ma * this.attenuationBegin - mb * this.attenuationBegin) * 0.9;
               _loc6_ = mh + (me * this.attenuationBegin - mf * this.attenuationBegin) * 0.9;
               _loc20_ = ml + (mi * this.attenuationBegin - mj * this.attenuationBegin) * 0.9;
               _loc55_ = md + mc * this.length + ma * this.attenuationBegin;
               _loc16_ = mh + mg * this.length + me * this.attenuationBegin;
               _loc28_ = ml + mk * this.length + mi * this.attenuationBegin;
               _loc13_ = md + mc * this.length + (ma * this.attenuationBegin + mb * this.attenuationBegin) * 0.9;
               _loc17_ = mh + mg * this.length + (me * this.attenuationBegin + mf * this.attenuationBegin) * 0.9;
               _loc18_ = ml + mk * this.length + (mi * this.attenuationBegin + mj * this.attenuationBegin) * 0.9;
               _loc3_ = md + mc * this.length + mb * this.attenuationBegin;
               _loc15_ = mh + mg * this.length + mf * this.attenuationBegin;
               _loc25_ = ml + mk * this.length + mj * this.attenuationBegin;
               _loc21_ = md + mc * this.length - (ma * this.attenuationBegin - mb * this.attenuationBegin) * 0.9;
               _loc50_ = mh + mg * this.length - (me * this.attenuationBegin - mf * this.attenuationBegin) * 0.9;
               _loc40_ = ml + mk * this.length - (mi * this.attenuationBegin - mj * this.attenuationBegin) * 0.9;
               _loc31_ = md + mc * this.length - ma * this.attenuationBegin;
               _loc19_ = mh + mg * this.length - me * this.attenuationBegin;
               _loc22_ = ml + mk * this.length - mi * this.attenuationBegin;
               _loc32_ = md + mc * this.length - (ma * this.attenuationBegin + mb * this.attenuationBegin) * 0.9;
               _loc7_ = mh + mg * this.length - (me * this.attenuationBegin + mf * this.attenuationBegin) * 0.9;
               _loc47_ = ml + mk * this.length - (mi * this.attenuationBegin + mj * this.attenuationBegin) * 0.9;
               _loc49_ = md + mc * this.length - mb * this.attenuationBegin;
               _loc41_ = mh + mg * this.length - mf * this.attenuationBegin;
               _loc29_ = ml + mk * this.length - mj * this.attenuationBegin;
               _loc26_ = md + mc * this.length + (ma * this.attenuationBegin - mb * this.attenuationBegin) * 0.9;
               _loc48_ = mh + mg * this.length + (me * this.attenuationBegin - mf * this.attenuationBegin) * 0.9;
               _loc2_ = ml + mk * this.length + (mi * this.attenuationBegin - mj * this.attenuationBegin) * 0.9;
               if(_loc30_ > param1.nearClipping && _loc27_ > param1.nearClipping && _loc54_ > param1.nearClipping && _loc52_ > param1.nearClipping && _loc10_ > param1.nearClipping && _loc38_ > param1.nearClipping && _loc34_ > param1.nearClipping && _loc20_ > param1.nearClipping && _loc28_ > param1.nearClipping && _loc18_ > param1.nearClipping && _loc25_ > param1.nearClipping && _loc40_ > param1.nearClipping && _loc22_ > param1.nearClipping && _loc47_ > param1.nearClipping && _loc29_ > param1.nearClipping && _loc2_ > param1.nearClipping)
               {
                  _loc14_.graphics.lineStyle(1,_loc35_);
                  _loc14_.graphics.moveTo(_loc9_ * param1.viewSizeX / _loc30_,_loc12_ * param1.viewSizeY / _loc30_);
                  _loc14_.graphics.curveTo(_loc24_ * param1.viewSizeX / _loc27_,_loc8_ * param1.viewSizeY / _loc27_,_loc51_ * param1.viewSizeX / _loc54_,_loc37_ * param1.viewSizeY / _loc54_);
                  _loc14_.graphics.curveTo(_loc39_ * param1.viewSizeX / _loc52_,_loc36_ * param1.viewSizeY / _loc52_,_loc33_ * param1.viewSizeX / _loc10_,_loc44_ * param1.viewSizeY / _loc10_);
                  _loc14_.graphics.curveTo(_loc42_ * param1.viewSizeX / _loc38_,_loc5_ * param1.viewSizeY / _loc38_,_loc11_ * param1.viewSizeX / _loc34_,_loc4_ * param1.viewSizeY / _loc34_);
                  _loc14_.graphics.curveTo(_loc23_ * param1.viewSizeX / _loc20_,_loc6_ * param1.viewSizeY / _loc20_,_loc9_ * param1.viewSizeX / _loc30_,_loc12_ * param1.viewSizeY / _loc30_);
                  _loc14_.graphics.moveTo(_loc55_ * param1.viewSizeX / _loc28_,_loc16_ * param1.viewSizeY / _loc28_);
                  _loc14_.graphics.curveTo(_loc13_ * param1.viewSizeX / _loc18_,_loc17_ * param1.viewSizeY / _loc18_,_loc3_ * param1.viewSizeX / _loc25_,_loc15_ * param1.viewSizeY / _loc25_);
                  _loc14_.graphics.curveTo(_loc21_ * param1.viewSizeX / _loc40_,_loc50_ * param1.viewSizeY / _loc40_,_loc31_ * param1.viewSizeX / _loc22_,_loc19_ * param1.viewSizeY / _loc22_);
                  _loc14_.graphics.curveTo(_loc32_ * param1.viewSizeX / _loc47_,_loc7_ * param1.viewSizeY / _loc47_,_loc49_ * param1.viewSizeX / _loc29_,_loc41_ * param1.viewSizeY / _loc29_);
                  _loc14_.graphics.curveTo(_loc26_ * param1.viewSizeX / _loc2_,_loc48_ * param1.viewSizeY / _loc2_,_loc55_ * param1.viewSizeX / _loc28_,_loc16_ * param1.viewSizeY / _loc28_);
                  _loc14_.graphics.moveTo(_loc9_ * param1.viewSizeX / _loc30_,_loc12_ * param1.viewSizeY / _loc30_);
                  _loc14_.graphics.lineTo(_loc55_ * param1.viewSizeX / _loc28_,_loc16_ * param1.viewSizeY / _loc28_);
                  _loc14_.graphics.moveTo(_loc51_ * param1.viewSizeX / _loc54_,_loc37_ * param1.viewSizeY / _loc54_);
                  _loc14_.graphics.lineTo(_loc3_ * param1.viewSizeX / _loc25_,_loc15_ * param1.viewSizeY / _loc25_);
                  _loc14_.graphics.moveTo(_loc33_ * param1.viewSizeX / _loc10_,_loc44_ * param1.viewSizeY / _loc10_);
                  _loc14_.graphics.lineTo(_loc31_ * param1.viewSizeX / _loc22_,_loc19_ * param1.viewSizeY / _loc22_);
                  _loc14_.graphics.moveTo(_loc11_ * param1.viewSizeX / _loc34_,_loc4_ * param1.viewSizeY / _loc34_);
                  _loc14_.graphics.lineTo(_loc49_ * param1.viewSizeX / _loc29_,_loc41_ * param1.viewSizeY / _loc29_);
               }
               _loc9_ = md - mc * this.falloff + ma * this.attenuationEnd;
               _loc12_ = mh - mg * this.falloff + me * this.attenuationEnd;
               _loc30_ = ml - mk * this.falloff + mi * this.attenuationEnd;
               _loc24_ = md - mc * this.falloff + (ma * this.attenuationEnd + mb * this.attenuationEnd) * 0.9;
               _loc8_ = mh - mg * this.falloff + (me * this.attenuationEnd + mf * this.attenuationEnd) * 0.9;
               _loc27_ = ml - mk * this.falloff + (mi * this.attenuationEnd + mj * this.attenuationEnd) * 0.9;
               _loc51_ = md - mc * this.falloff + mb * this.attenuationEnd;
               _loc37_ = mh - mg * this.falloff + mf * this.attenuationEnd;
               _loc54_ = ml - mk * this.falloff + mj * this.attenuationEnd;
               _loc39_ = md - mc * this.falloff - (ma * this.attenuationEnd - mb * this.attenuationEnd) * 0.9;
               _loc36_ = mh - mg * this.falloff - (me * this.attenuationEnd - mf * this.attenuationEnd) * 0.9;
               _loc52_ = ml - mk * this.falloff - (mi * this.attenuationEnd - mj * this.attenuationEnd) * 0.9;
               _loc33_ = md - mc * this.falloff - ma * this.attenuationEnd;
               _loc44_ = mh - mg * this.falloff - me * this.attenuationEnd;
               _loc10_ = ml - mk * this.falloff - mi * this.attenuationEnd;
               _loc42_ = md - mc * this.falloff - (ma * this.attenuationEnd + mb * this.attenuationEnd) * 0.9;
               _loc5_ = mh - mg * this.falloff - (me * this.attenuationEnd + mf * this.attenuationEnd) * 0.9;
               _loc38_ = ml - mk * this.falloff - (mi * this.attenuationEnd + mj * this.attenuationEnd) * 0.9;
               _loc11_ = md - mc * this.falloff - mb * this.attenuationEnd;
               _loc4_ = mh - mg * this.falloff - mf * this.attenuationEnd;
               _loc34_ = ml - mk * this.falloff - mj * this.attenuationEnd;
               _loc23_ = md - mc * this.falloff + (ma * this.attenuationEnd - mb * this.attenuationEnd) * 0.9;
               _loc6_ = mh - mg * this.falloff + (me * this.attenuationEnd - mf * this.attenuationEnd) * 0.9;
               _loc20_ = ml - mk * this.falloff + (mi * this.attenuationEnd - mj * this.attenuationEnd) * 0.9;
               _loc55_ = md + mc * (this.length + this.falloff) + ma * this.attenuationEnd;
               _loc16_ = mh + mg * (this.length + this.falloff) + me * this.attenuationEnd;
               _loc28_ = ml + mk * (this.length + this.falloff) + mi * this.attenuationEnd;
               _loc13_ = md + mc * (this.length + this.falloff) + (ma * this.attenuationEnd + mb * this.attenuationEnd) * 0.9;
               _loc17_ = mh + mg * (this.length + this.falloff) + (me * this.attenuationEnd + mf * this.attenuationEnd) * 0.9;
               _loc18_ = ml + mk * (this.length + this.falloff) + (mi * this.attenuationEnd + mj * this.attenuationEnd) * 0.9;
               _loc3_ = md + mc * (this.length + this.falloff) + mb * this.attenuationEnd;
               _loc15_ = mh + mg * (this.length + this.falloff) + mf * this.attenuationEnd;
               _loc25_ = ml + mk * (this.length + this.falloff) + mj * this.attenuationEnd;
               _loc21_ = md + mc * (this.length + this.falloff) - (ma * this.attenuationEnd - mb * this.attenuationEnd) * 0.9;
               _loc50_ = mh + mg * (this.length + this.falloff) - (me * this.attenuationEnd - mf * this.attenuationEnd) * 0.9;
               _loc40_ = ml + mk * (this.length + this.falloff) - (mi * this.attenuationEnd - mj * this.attenuationEnd) * 0.9;
               _loc31_ = md + mc * (this.length + this.falloff) - ma * this.attenuationEnd;
               _loc19_ = mh + mg * (this.length + this.falloff) - me * this.attenuationEnd;
               _loc22_ = ml + mk * (this.length + this.falloff) - mi * this.attenuationEnd;
               _loc32_ = md + mc * (this.length + this.falloff) - (ma * this.attenuationEnd + mb * this.attenuationEnd) * 0.9;
               _loc7_ = mh + mg * (this.length + this.falloff) - (me * this.attenuationEnd + mf * this.attenuationEnd) * 0.9;
               _loc47_ = ml + mk * (this.length + this.falloff) - (mi * this.attenuationEnd + mj * this.attenuationEnd) * 0.9;
               _loc49_ = md + mc * (this.length + this.falloff) - mb * this.attenuationEnd;
               _loc41_ = mh + mg * (this.length + this.falloff) - mf * this.attenuationEnd;
               _loc29_ = ml + mk * (this.length + this.falloff) - mj * this.attenuationEnd;
               _loc26_ = md + mc * (this.length + this.falloff) + (ma * this.attenuationEnd - mb * this.attenuationEnd) * 0.9;
               _loc48_ = mh + mg * (this.length + this.falloff) + (me * this.attenuationEnd - mf * this.attenuationEnd) * 0.9;
               _loc2_ = ml + mk * (this.length + this.falloff) + (mi * this.attenuationEnd - mj * this.attenuationEnd) * 0.9;
               if(_loc30_ > param1.nearClipping && _loc27_ > param1.nearClipping && _loc54_ > param1.nearClipping && _loc52_ > param1.nearClipping && _loc10_ > param1.nearClipping && _loc38_ > param1.nearClipping && _loc34_ > param1.nearClipping && _loc20_ > param1.nearClipping && _loc28_ > param1.nearClipping && _loc18_ > param1.nearClipping && _loc25_ > param1.nearClipping && _loc40_ > param1.nearClipping && _loc22_ > param1.nearClipping && _loc47_ > param1.nearClipping && _loc29_ > param1.nearClipping && _loc2_ > param1.nearClipping)
               {
                  _loc14_.graphics.lineStyle(1,_loc35_);
                  _loc14_.graphics.moveTo(_loc9_ * param1.viewSizeX / _loc30_,_loc12_ * param1.viewSizeY / _loc30_);
                  _loc14_.graphics.curveTo(_loc24_ * param1.viewSizeX / _loc27_,_loc8_ * param1.viewSizeY / _loc27_,_loc51_ * param1.viewSizeX / _loc54_,_loc37_ * param1.viewSizeY / _loc54_);
                  _loc14_.graphics.curveTo(_loc39_ * param1.viewSizeX / _loc52_,_loc36_ * param1.viewSizeY / _loc52_,_loc33_ * param1.viewSizeX / _loc10_,_loc44_ * param1.viewSizeY / _loc10_);
                  _loc14_.graphics.curveTo(_loc42_ * param1.viewSizeX / _loc38_,_loc5_ * param1.viewSizeY / _loc38_,_loc11_ * param1.viewSizeX / _loc34_,_loc4_ * param1.viewSizeY / _loc34_);
                  _loc14_.graphics.curveTo(_loc23_ * param1.viewSizeX / _loc20_,_loc6_ * param1.viewSizeY / _loc20_,_loc9_ * param1.viewSizeX / _loc30_,_loc12_ * param1.viewSizeY / _loc30_);
                  _loc14_.graphics.moveTo(_loc55_ * param1.viewSizeX / _loc28_,_loc16_ * param1.viewSizeY / _loc28_);
                  _loc14_.graphics.curveTo(_loc13_ * param1.viewSizeX / _loc18_,_loc17_ * param1.viewSizeY / _loc18_,_loc3_ * param1.viewSizeX / _loc25_,_loc15_ * param1.viewSizeY / _loc25_);
                  _loc14_.graphics.curveTo(_loc21_ * param1.viewSizeX / _loc40_,_loc50_ * param1.viewSizeY / _loc40_,_loc31_ * param1.viewSizeX / _loc22_,_loc19_ * param1.viewSizeY / _loc22_);
                  _loc14_.graphics.curveTo(_loc32_ * param1.viewSizeX / _loc47_,_loc7_ * param1.viewSizeY / _loc47_,_loc49_ * param1.viewSizeX / _loc29_,_loc41_ * param1.viewSizeY / _loc29_);
                  _loc14_.graphics.curveTo(_loc26_ * param1.viewSizeX / _loc2_,_loc48_ * param1.viewSizeY / _loc2_,_loc55_ * param1.viewSizeX / _loc28_,_loc16_ * param1.viewSizeY / _loc28_);
                  _loc14_.graphics.moveTo(_loc9_ * param1.viewSizeX / _loc30_,_loc12_ * param1.viewSizeY / _loc30_);
                  _loc14_.graphics.lineTo(_loc55_ * param1.viewSizeX / _loc28_,_loc16_ * param1.viewSizeY / _loc28_);
                  _loc14_.graphics.moveTo(_loc51_ * param1.viewSizeX / _loc54_,_loc37_ * param1.viewSizeY / _loc54_);
                  _loc14_.graphics.lineTo(_loc3_ * param1.viewSizeX / _loc25_,_loc15_ * param1.viewSizeY / _loc25_);
                  _loc14_.graphics.moveTo(_loc33_ * param1.viewSizeX / _loc10_,_loc44_ * param1.viewSizeY / _loc10_);
                  _loc14_.graphics.lineTo(_loc31_ * param1.viewSizeX / _loc22_,_loc19_ * param1.viewSizeY / _loc22_);
                  _loc14_.graphics.moveTo(_loc11_ * param1.viewSizeX / _loc34_,_loc4_ * param1.viewSizeY / _loc34_);
                  _loc14_.graphics.lineTo(_loc49_ * param1.viewSizeX / _loc29_,_loc41_ * param1.viewSizeY / _loc29_);
               }
            }
            if(_loc45_ & 8)
            {
               Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ,10092288);
            }
         }
      }
      
      override alternativa3d function updateBounds(param1:Object3D, param2:Object3D = null) : void
      {
         var _loc3_:Vertex = null;
         if(param2 != null)
         {
            _loc3_ = boundVertexList;
            _loc3_.x = -this.attenuationEnd;
            _loc3_.y = -this.attenuationEnd;
            _loc3_.z = -this.falloff;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = -this.attenuationEnd;
            _loc3_.z = -this.falloff;
            _loc3_ = _loc3_.next;
            _loc3_.x = -this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
            _loc3_.z = -this.falloff;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
            _loc3_.z = -this.falloff;
            _loc3_ = _loc3_.next;
            _loc3_.x = -this.attenuationEnd;
            _loc3_.y = -this.attenuationEnd;
            _loc3_.z = this.length + this.falloff;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = -this.attenuationEnd;
            _loc3_.z = this.length + this.falloff;
            _loc3_ = _loc3_.next;
            _loc3_.x = -this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
            _loc3_.z = this.length + this.falloff;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
            _loc3_.z = this.length + this.falloff;
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
            if(-this.attenuationEnd < param1.boundMinX)
            {
               param1.boundMinX = -this.attenuationEnd;
            }
            if(this.attenuationEnd > param1.boundMaxX)
            {
               param1.boundMaxX = this.attenuationEnd;
            }
            if(-this.attenuationEnd < param1.boundMinY)
            {
               param1.boundMinY = -this.attenuationEnd;
            }
            if(this.attenuationEnd > param1.boundMaxY)
            {
               param1.boundMaxY = this.attenuationEnd;
            }
            if(-this.falloff < param1.boundMinZ)
            {
               param1.boundMinZ = -this.falloff;
            }
            if(this.length + this.falloff > param1.boundMaxZ)
            {
               param1.boundMaxZ = this.length + this.falloff;
            }
         }
      }
   }
}

