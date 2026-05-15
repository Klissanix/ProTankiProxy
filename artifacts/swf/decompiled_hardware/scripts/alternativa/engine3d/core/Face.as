package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.materials.Material;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   use namespace alternativa3d;
   
   public class Face
   {
      
      alternativa3d static var collector:Face;
      
      public var material:Material;
      
      public var smoothingGroups:uint = 0;
      
      alternativa3d var normalX:Number;
      
      alternativa3d var normalY:Number;
      
      alternativa3d var normalZ:Number;
      
      alternativa3d var offset:Number;
      
      alternativa3d var wrapper:Wrapper;
      
      alternativa3d var next:Face;
      
      alternativa3d var processNext:Face;
      
      alternativa3d var processNegative:Face;
      
      alternativa3d var processPositive:Face;
      
      alternativa3d var distance:Number;
      
      alternativa3d var geometry:VG;
      
      public function Face()
      {
         super();
      }
      
      alternativa3d static function createStatic() : Face
      {
         var _loc1_:Face = null;
         if(collector != null)
         {
            _loc1_ = collector;
            collector = _loc1_.next;
            _loc1_.next = null;
            return _loc1_;
         }
         return new Face();
      }
      
      alternativa3d function create() : Face
      {
         var _loc1_:Face = null;
         if(collector != null)
         {
            _loc1_ = collector;
            collector = _loc1_.next;
            _loc1_.next = null;
            return _loc1_;
         }
         return new Face();
      }
      
      public function get normal() : Vector3D
      {
         var _loc11_:Wrapper = this.wrapper;
         var _loc1_:Vertex = _loc11_.vertex;
         _loc11_ = _loc11_.next;
         var _loc3_:Vertex = _loc11_.vertex;
         _loc11_ = _loc11_.next;
         var _loc4_:Vertex = _loc11_.vertex;
         var _loc14_:Number = _loc3_.x - _loc1_.x;
         var _loc9_:Number = _loc3_.y - _loc1_.y;
         var _loc6_:Number = _loc3_.z - _loc1_.z;
         var _loc12_:Number = _loc4_.x - _loc1_.x;
         var _loc13_:Number = _loc4_.y - _loc1_.y;
         var _loc5_:Number = _loc4_.z - _loc1_.z;
         var _loc10_:Number = _loc5_ * _loc9_ - _loc13_ * _loc6_;
         var _loc2_:Number = _loc12_ * _loc6_ - _loc5_ * _loc14_;
         var _loc8_:Number = _loc13_ * _loc14_ - _loc12_ * _loc9_;
         var _loc7_:Number = _loc10_ * _loc10_ + _loc2_ * _loc2_ + _loc8_ * _loc8_;
         if(_loc7_ > 0.001)
         {
            _loc7_ = 1 / Math.sqrt(_loc7_);
            _loc10_ *= _loc7_;
            _loc2_ *= _loc7_;
            _loc8_ *= _loc7_;
         }
         return new Vector3D(_loc10_,_loc2_,_loc8_,_loc1_.x * _loc10_ + _loc1_.y * _loc2_ + _loc1_.z * _loc8_);
      }
      
      public function get vertices() : Vector.<Vertex>
      {
         var _loc1_:int = 0;
         var _loc3_:Vector.<Vertex> = new Vector.<Vertex>();
         var _loc2_:Wrapper = this.wrapper;
         while(_loc2_ != null)
         {
            _loc3_[_loc1_] = _loc2_.vertex;
            _loc1_++;
            _loc2_ = _loc2_.next;
         }
         return _loc3_;
      }
      
      public function getUV(param1:Vector3D) : Point
      {
         var _loc19_:Vertex = this.wrapper.vertex;
         var _loc20_:Vertex = this.wrapper.next.vertex;
         var _loc21_:Vertex = this.wrapper.next.next.vertex;
         var _loc17_:Number = _loc20_.x - _loc19_.x;
         var _loc26_:Number = _loc20_.y - _loc19_.y;
         var _loc23_:Number = _loc20_.z - _loc19_.z;
         var _loc18_:Number = _loc20_.u - _loc19_.u;
         var _loc8_:Number = _loc20_.v - _loc19_.v;
         var _loc14_:Number = _loc21_.x - _loc19_.x;
         var _loc27_:Number = _loc21_.y - _loc19_.y;
         var _loc22_:Number = _loc21_.z - _loc19_.z;
         var _loc24_:Number = _loc21_.u - _loc19_.u;
         var _loc29_:Number = _loc21_.v - _loc19_.v;
         var _loc25_:Number = -this.normalX * _loc27_ * _loc23_ + _loc14_ * this.normalY * _loc23_ + this.normalX * _loc26_ * _loc22_ - _loc17_ * this.normalY * _loc22_ - _loc14_ * _loc26_ * this.normalZ + _loc17_ * _loc27_ * this.normalZ;
         var _loc28_:Number = (-this.normalY * _loc22_ + _loc27_ * this.normalZ) / _loc25_;
         var _loc31_:Number = (this.normalX * _loc22_ - _loc14_ * this.normalZ) / _loc25_;
         var _loc30_:Number = (-this.normalX * _loc27_ + _loc14_ * this.normalY) / _loc25_;
         var _loc3_:Number = (_loc19_.x * this.normalY * _loc22_ - this.normalX * _loc19_.y * _loc22_ - _loc19_.x * _loc27_ * this.normalZ + _loc14_ * _loc19_.y * this.normalZ + this.normalX * _loc27_ * _loc19_.z - _loc14_ * this.normalY * _loc19_.z) / _loc25_;
         var _loc2_:Number = (this.normalY * _loc23_ - _loc26_ * this.normalZ) / _loc25_;
         var _loc5_:Number = (-this.normalX * _loc23_ + _loc17_ * this.normalZ) / _loc25_;
         var _loc4_:Number = (this.normalX * _loc26_ - _loc17_ * this.normalY) / _loc25_;
         var _loc6_:Number = (this.normalX * _loc19_.y * _loc23_ - _loc19_.x * this.normalY * _loc23_ + _loc19_.x * _loc26_ * this.normalZ - _loc17_ * _loc19_.y * this.normalZ - this.normalX * _loc26_ * _loc19_.z + _loc17_ * this.normalY * _loc19_.z) / _loc25_;
         var _loc7_:Number = _loc18_ * _loc28_ + _loc24_ * _loc2_;
         var _loc9_:Number = _loc18_ * _loc31_ + _loc24_ * _loc5_;
         var _loc10_:Number = _loc18_ * _loc30_ + _loc24_ * _loc4_;
         var _loc11_:Number = _loc18_ * _loc3_ + _loc24_ * _loc6_ + _loc19_.u;
         var _loc12_:Number = _loc8_ * _loc28_ + _loc29_ * _loc2_;
         var _loc13_:Number = _loc8_ * _loc31_ + _loc29_ * _loc5_;
         var _loc15_:Number = _loc8_ * _loc30_ + _loc29_ * _loc4_;
         var _loc16_:Number = _loc8_ * _loc3_ + _loc29_ * _loc6_ + _loc19_.v;
         return new Point(_loc7_ * param1.x + _loc9_ * param1.y + _loc10_ * param1.z + _loc11_,_loc12_ * param1.x + _loc13_ * param1.y + _loc15_ * param1.z + _loc16_);
      }
      
      public function toString() : String
      {
         return "[Face ]";
      }
      
      alternativa3d function calculateBestSequenceAndNormal() : void
      {
         var _loc16_:Wrapper = null;
         var _loc1_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc20_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc13_:Wrapper = null;
         var _loc10_:Wrapper = null;
         var _loc7_:Wrapper = null;
         var _loc17_:Wrapper = null;
         var _loc11_:Wrapper = null;
         if(this.wrapper.next.next.next != null)
         {
            _loc6_ = -1e+22;
            _loc16_ = this.wrapper;
            while(_loc16_ != null)
            {
               _loc17_ = _loc16_.next != null ? _loc16_.next : this.wrapper;
               _loc11_ = _loc17_.next != null ? _loc17_.next : this.wrapper;
               _loc1_ = _loc16_.vertex;
               _loc3_ = _loc17_.vertex;
               _loc4_ = _loc11_.vertex;
               _loc20_ = _loc3_.x - _loc1_.x;
               _loc14_ = _loc3_.y - _loc1_.y;
               _loc8_ = _loc3_.z - _loc1_.z;
               _loc18_ = _loc4_.x - _loc1_.x;
               _loc19_ = _loc4_.y - _loc1_.y;
               _loc5_ = _loc4_.z - _loc1_.z;
               _loc15_ = _loc5_ * _loc14_ - _loc19_ * _loc8_;
               _loc2_ = _loc18_ * _loc8_ - _loc5_ * _loc20_;
               _loc12_ = _loc19_ * _loc20_ - _loc18_ * _loc14_;
               _loc9_ = _loc15_ * _loc15_ + _loc2_ * _loc2_ + _loc12_ * _loc12_;
               if(_loc9_ > _loc6_)
               {
                  _loc6_ = _loc9_;
                  _loc13_ = _loc16_;
               }
               _loc16_ = _loc16_.next;
            }
            if(_loc13_ != this.wrapper)
            {
               _loc10_ = this.wrapper.next.next.next;
               while(_loc10_.next != null)
               {
                  _loc10_ = _loc10_.next;
               }
               _loc7_ = this.wrapper;
               while(_loc7_.next != _loc13_ && _loc7_.next != null)
               {
                  _loc7_ = _loc7_.next;
               }
               _loc10_.next = this.wrapper;
               _loc7_.next = null;
               this.wrapper = _loc13_;
            }
         }
         _loc16_ = this.wrapper;
         _loc1_ = _loc16_.vertex;
         _loc16_ = _loc16_.next;
         _loc3_ = _loc16_.vertex;
         _loc16_ = _loc16_.next;
         _loc4_ = _loc16_.vertex;
         _loc20_ = _loc3_.x - _loc1_.x;
         _loc14_ = _loc3_.y - _loc1_.y;
         _loc8_ = _loc3_.z - _loc1_.z;
         _loc18_ = _loc4_.x - _loc1_.x;
         _loc19_ = _loc4_.y - _loc1_.y;
         _loc5_ = _loc4_.z - _loc1_.z;
         _loc15_ = _loc5_ * _loc14_ - _loc19_ * _loc8_;
         _loc2_ = _loc18_ * _loc8_ - _loc5_ * _loc20_;
         _loc12_ = _loc19_ * _loc20_ - _loc18_ * _loc14_;
         _loc9_ = _loc15_ * _loc15_ + _loc2_ * _loc2_ + _loc12_ * _loc12_;
         if(_loc9_ > 0)
         {
            _loc9_ = 1 / Math.sqrt(_loc9_);
            _loc15_ *= _loc9_;
            _loc2_ *= _loc9_;
            _loc12_ *= _loc9_;
            this.normalX = _loc15_;
            this.normalY = _loc2_;
            this.normalZ = _loc12_;
         }
         this.offset = _loc1_.x * _loc15_ + _loc1_.y * _loc2_ + _loc1_.z * _loc12_;
      }
   }
}

