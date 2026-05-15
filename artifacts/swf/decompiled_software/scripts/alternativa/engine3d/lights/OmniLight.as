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
   
   public class OmniLight extends Light3D
   {
      
      public var attenuationBegin:Number;
      
      public var attenuationEnd:Number;
      
      alternativa3d var localAttenuationBegin:Number;
      
      alternativa3d var localAttenuationEnd:Number;
      
      public function OmniLight(param1:uint, param2:Number, param3:Number)
      {
         super();
         this.color = param1;
         this.attenuationBegin = param2;
         this.attenuationEnd = param3;
         calculateBounds();
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:OmniLight = new OmniLight(color,this.attenuationBegin,this.attenuationEnd);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function drawDebug(param1:Camera3D, param2:Canvas) : void
      {
         var _loc3_:Canvas = null;
         var _loc11_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc5_:int = param1.checkInDebug(this);
         if(_loc5_ > 0)
         {
            _loc3_ = param2.getChildCanvas(true,false);
            if(_loc5_ & 0x0100 && ml > param1.nearClipping)
            {
               _loc11_ = (color >> 16 & 0xFF) * intensity;
               _loc6_ = (color >> 8 & 0xFF) * intensity;
               _loc4_ = (color & 0xFF) * intensity;
               _loc8_ = ((_loc11_ > 255 ? 255 : _loc11_) << 16) + ((_loc6_ > 255 ? 255 : _loc6_) << 8) + (_loc4_ > 255 ? 255 : _loc4_);
               _loc9_ = ma * param1.viewSizeX / param1.focalLength;
               _loc10_ = me * param1.viewSizeY / param1.focalLength;
               _loc7_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_ + mi * mi);
               _loc9_ = mb * param1.viewSizeX / param1.focalLength;
               _loc10_ = mf * param1.viewSizeY / param1.focalLength;
               _loc7_ += Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_ + mj * mj);
               _loc9_ = mc * param1.viewSizeX / param1.focalLength;
               _loc10_ = mg * param1.viewSizeY / param1.focalLength;
               _loc7_ += Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_ + mk * mk);
               _loc7_ = _loc7_ / 3;
               _loc13_ = Math.round(md * param1.viewSizeX / ml);
               _loc14_ = Math.round(mh * param1.viewSizeY / ml);
               _loc12_ = 8;
               _loc3_.gfx.lineStyle(1,_loc8_);
               _loc3_.gfx.moveTo(_loc13_ - _loc12_,_loc14_);
               _loc3_.gfx.lineTo(_loc13_ + _loc12_,_loc14_);
               _loc3_.gfx.moveTo(_loc13_,_loc14_ - _loc12_);
               _loc3_.gfx.lineTo(_loc13_,_loc14_ + _loc12_);
               _loc3_.gfx.moveTo(_loc13_ - _loc12_ * 0.7,_loc14_ - _loc12_ * 0.7);
               _loc3_.gfx.lineTo(_loc13_ + _loc12_ * 0.7,_loc14_ + _loc12_ * 0.7);
               _loc3_.gfx.moveTo(_loc13_ - _loc12_ * 0.7,_loc14_ + _loc12_ * 0.7);
               _loc3_.gfx.lineTo(_loc13_ + _loc12_ * 0.7,_loc14_ - _loc12_ * 0.7);
               _loc3_.gfx.drawCircle(_loc13_,_loc14_,this.attenuationBegin * _loc7_ * param1.focalLength / ml);
               _loc3_.gfx.lineStyle(1,_loc8_,0.5);
               _loc3_.gfx.drawCircle(_loc13_,_loc14_,this.attenuationEnd * _loc7_ * param1.focalLength / ml);
            }
            if(_loc5_ & 8)
            {
               Debug.drawBounds(param1,_loc3_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ,10092288);
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
            _loc3_.z = -this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = -this.attenuationEnd;
            _loc3_.z = -this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = -this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
            _loc3_.z = -this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
            _loc3_.z = -this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = -this.attenuationEnd;
            _loc3_.y = -this.attenuationEnd;
            _loc3_.z = this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = -this.attenuationEnd;
            _loc3_.z = this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = -this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
            _loc3_.z = this.attenuationEnd;
            _loc3_ = _loc3_.next;
            _loc3_.x = this.attenuationEnd;
            _loc3_.y = this.attenuationEnd;
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
            if(-this.attenuationEnd < param1.boundMinZ)
            {
               param1.boundMinZ = -this.attenuationEnd;
            }
            if(this.attenuationEnd > param1.boundMaxZ)
            {
               param1.boundMaxZ = this.attenuationEnd;
            }
         }
      }
   }
}

