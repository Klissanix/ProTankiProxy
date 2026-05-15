package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import flash.display.Sprite;
   
   use namespace alternativa3d;
   
   public class Occluder extends Object3D
   {
      
      alternativa3d var faceList:Face;
      
      alternativa3d var edgeList:Edge;
      
      alternativa3d var vertexList:Vertex;
      
      public var minSize:Number = 0;
      
      public function Occluder()
      {
         super();
      }
      
      public function createForm(param1:Mesh, param2:Boolean = false) : void
      {
         this.destroyForm();
         if(!param2)
         {
            param1 = param1.clone() as Mesh;
         }
         this.faceList = param1.faceList;
         this.vertexList = param1.vertexList;
         param1.faceList = null;
         param1.vertexList = null;
         var _loc4_:Vertex = this.vertexList;
         while(_loc4_ != null)
         {
            _loc4_.transformId = 0;
            _loc4_ = _loc4_.next;
         }
         var _loc3_:Face = this.faceList;
         while(_loc3_ != null)
         {
            _loc3_ = _loc3_.next;
         }
         var _loc5_:String = this.b31f64f();
         if(_loc5_ != null)
         {
            this.destroyForm();
            throw new ArgumentError(_loc5_);
         }
         calculateBounds();
      }
      
      public function destroyForm() : void
      {
         this.faceList = null;
         this.edgeList = null;
         this.vertexList = null;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Occluder = new Occluder();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         var _loc3_:Vertex = null;
         var _loc11_:Face = null;
         var _loc13_:Vertex = null;
         var _loc9_:Face = null;
         var _loc2_:Edge = null;
         var _loc12_:Vertex = null;
         var _loc8_:Face = null;
         var _loc14_:Wrapper = null;
         var _loc7_:Wrapper = null;
         var _loc6_:Wrapper = null;
         var _loc5_:Edge = null;
         super.clonePropertiesFrom(param1);
         var _loc4_:Occluder = param1 as Occluder;
         this.minSize = _loc4_.minSize;
         _loc3_ = _loc4_.vertexList;
         while(_loc3_ != null)
         {
            _loc12_ = new Vertex();
            _loc12_.x = _loc3_.x;
            _loc12_.y = _loc3_.y;
            _loc12_.z = _loc3_.z;
            _loc12_.u = _loc3_.u;
            _loc12_.v = _loc3_.v;
            _loc12_.normalX = _loc3_.normalX;
            _loc12_.normalY = _loc3_.normalY;
            _loc12_.normalZ = _loc3_.normalZ;
            _loc3_.value = _loc12_;
            if(_loc13_ != null)
            {
               _loc13_.next = _loc12_;
            }
            else
            {
               this.vertexList = _loc12_;
            }
            _loc13_ = _loc12_;
            _loc3_ = _loc3_.next;
         }
         _loc11_ = _loc4_.faceList;
         while(_loc11_ != null)
         {
            _loc8_ = new Face();
            _loc8_.material = _loc11_.material;
            _loc8_.normalX = _loc11_.normalX;
            _loc8_.normalY = _loc11_.normalY;
            _loc8_.normalZ = _loc11_.normalZ;
            _loc8_.offset = _loc11_.offset;
            _loc11_.processNext = _loc8_;
            _loc14_ = null;
            _loc7_ = _loc11_.wrapper;
            while(_loc7_ != null)
            {
               _loc6_ = new Wrapper();
               _loc6_.vertex = _loc7_.vertex.value;
               if(_loc14_ != null)
               {
                  _loc14_.next = _loc6_;
               }
               else
               {
                  _loc8_.wrapper = _loc6_;
               }
               _loc14_ = _loc6_;
               _loc7_ = _loc7_.next;
            }
            if(_loc9_ != null)
            {
               _loc9_.next = _loc8_;
            }
            else
            {
               this.faceList = _loc8_;
            }
            _loc9_ = _loc8_;
            _loc11_ = _loc11_.next;
         }
         var _loc10_:Edge = _loc4_.edgeList;
         while(_loc10_ != null)
         {
            _loc5_ = new Edge();
            _loc5_.a = _loc10_.a.value;
            _loc5_.b = _loc10_.b.value;
            _loc5_.left = _loc10_.left.processNext;
            _loc5_.right = _loc10_.right.processNext;
            if(_loc2_ != null)
            {
               _loc2_.next = _loc5_;
            }
            else
            {
               this.edgeList = _loc5_;
            }
            _loc2_ = _loc5_;
            _loc10_ = _loc10_.next;
         }
         _loc3_ = _loc4_.vertexList;
         while(_loc3_ != null)
         {
            _loc3_.value = null;
            _loc3_ = _loc3_.next;
         }
         _loc11_ = _loc4_.faceList;
         while(_loc11_ != null)
         {
            _loc11_.processNext = null;
            _loc11_ = _loc11_.next;
         }
      }
      
      private function b31f64f() : String
      {
         var _loc2_:Face = null;
         var _loc7_:Wrapper = null;
         var _loc11_:Edge = null;
         var _loc1_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc10_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc9_:Number = NaN;
         _loc2_ = this.faceList;
         while(_loc2_ != null)
         {
            _loc2_.calculateBestSequenceAndNormal();
            _loc7_ = _loc2_.wrapper;
            while(_loc7_ != null)
            {
               _loc1_ = _loc7_.vertex;
               _loc3_ = _loc7_.next != null ? _loc7_.next.vertex : _loc2_.wrapper.vertex;
               _loc11_ = this.edgeList;
               while(_loc11_ != null)
               {
                  if(_loc11_.a == _loc1_ && _loc11_.b == _loc3_)
                  {
                     return "The supplied geometry is not valid.";
                  }
                  if(_loc11_.a == _loc3_ && _loc11_.b == _loc1_)
                  {
                     break;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc11_ != null)
               {
                  _loc11_.right = _loc2_;
               }
               else
               {
                  _loc11_ = new Edge();
                  _loc11_.a = _loc1_;
                  _loc11_.b = _loc3_;
                  _loc11_.left = _loc2_;
                  _loc11_.next = this.edgeList;
                  this.edgeList = _loc11_;
               }
               _loc7_ = _loc7_.next;
               _loc1_ = _loc3_;
            }
            _loc2_ = _loc2_.next;
         }
         _loc11_ = this.edgeList;
         while(_loc11_ != null)
         {
            if(_loc11_.left == null || _loc11_.right == null)
            {
               return "The supplied geometry is non whole.";
            }
            _loc10_ = _loc11_.b.x - _loc11_.a.x;
            _loc4_ = _loc11_.b.y - _loc11_.a.y;
            _loc8_ = _loc11_.b.z - _loc11_.a.z;
            _loc6_ = _loc11_.right.normalZ * _loc11_.left.normalY - _loc11_.right.normalY * _loc11_.left.normalZ;
            _loc5_ = _loc11_.right.normalX * _loc11_.left.normalZ - _loc11_.right.normalZ * _loc11_.left.normalX;
            _loc9_ = _loc11_.right.normalY * _loc11_.left.normalX - _loc11_.right.normalX * _loc11_.left.normalY;
            if(_loc10_ * _loc6_ + _loc4_ * _loc5_ + _loc8_ * _loc9_ < 0)
            {
            }
            _loc11_ = _loc11_.next;
         }
         return null;
      }
      
      override alternativa3d function draw(param1:Camera3D) : void
      {
         var _loc6_:int = 0;
         var _loc3_:Sprite = null;
         var _loc4_:Vertex = null;
         var _loc2_:Vertex = null;
         var _loc5_:Vertex = null;
         var _loc10_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc23_:Vertex = null;
         var _loc11_:Vertex = null;
         var _loc17_:Number = NaN;
         var _loc19_:int = 0;
         if(this.faceList == null || this.edgeList == null)
         {
            return;
         }
         calculateInverseMatrix();
         var _loc18_:Boolean = true;
         var _loc14_:Face = this.faceList;
         while(_loc14_ != null)
         {
            if(_loc14_.normalX * imd + _loc14_.normalY * imh + _loc14_.normalZ * iml > _loc14_.offset)
            {
               _loc14_.distance = 1;
               _loc18_ = false;
            }
            else
            {
               _loc14_.distance = 0;
            }
            _loc14_ = _loc14_.next;
         }
         if(_loc18_)
         {
            return;
         }
         var _loc20_:Boolean = true;
         var _loc22_:Number = param1.viewSizeX;
         var _loc21_:Number = param1.viewSizeY;
         var _loc12_:Edge = this.edgeList;
         for(; _loc12_ != null; _loc12_ = _loc12_.next)
         {
            if(_loc12_.left.distance != _loc12_.right.distance)
            {
               if(_loc12_.left.distance > 0)
               {
                  _loc2_ = _loc12_.a;
                  _loc5_ = _loc12_.b;
               }
               else
               {
                  _loc2_ = _loc12_.b;
                  _loc5_ = _loc12_.a;
               }
               _loc10_ = ma * _loc2_.x + mb * _loc2_.y + mc * _loc2_.z + md;
               _loc13_ = me * _loc2_.x + mf * _loc2_.y + mg * _loc2_.z + mh;
               _loc7_ = mi * _loc2_.x + mj * _loc2_.y + mk * _loc2_.z + ml;
               _loc9_ = ma * _loc5_.x + mb * _loc5_.y + mc * _loc5_.z + md;
               _loc8_ = me * _loc5_.x + mf * _loc5_.y + mg * _loc5_.z + mh;
               _loc16_ = mi * _loc5_.x + mj * _loc5_.y + mk * _loc5_.z + ml;
               if(culling > 0)
               {
                  if(_loc7_ <= -_loc10_ && _loc16_ <= -_loc9_)
                  {
                     if(_loc20_ && _loc8_ * _loc10_ - _loc9_ * _loc13_ > 0)
                     {
                        _loc20_ = false;
                     }
                     continue;
                  }
                  if(_loc16_ > -_loc9_ && _loc7_ <= -_loc10_)
                  {
                     _loc15_ = (_loc10_ + _loc7_) / (_loc10_ + _loc7_ - _loc9_ - _loc16_);
                     _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                     _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                     _loc7_ += (_loc16_ - _loc7_) * _loc15_;
                  }
                  else if(_loc16_ <= -_loc9_ && _loc7_ > -_loc10_)
                  {
                     _loc15_ = (_loc10_ + _loc7_) / (_loc10_ + _loc7_ - _loc9_ - _loc16_);
                     _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                     _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                     _loc16_ = _loc7_ + (_loc16_ - _loc7_) * _loc15_;
                  }
                  if(_loc7_ <= _loc10_ && _loc16_ <= _loc9_)
                  {
                     if(_loc20_ && _loc8_ * _loc10_ - _loc9_ * _loc13_ > 0)
                     {
                        _loc20_ = false;
                     }
                     continue;
                  }
                  if(_loc16_ > _loc9_ && _loc7_ <= _loc10_)
                  {
                     _loc15_ = (_loc7_ - _loc10_) / (_loc7_ - _loc10_ + _loc9_ - _loc16_);
                     _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                     _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                     _loc7_ += (_loc16_ - _loc7_) * _loc15_;
                  }
                  else if(_loc16_ <= _loc9_ && _loc7_ > _loc10_)
                  {
                     _loc15_ = (_loc7_ - _loc10_) / (_loc7_ - _loc10_ + _loc9_ - _loc16_);
                     _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                     _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                     _loc16_ = _loc7_ + (_loc16_ - _loc7_) * _loc15_;
                  }
                  if(_loc7_ <= -_loc13_ && _loc16_ <= -_loc8_)
                  {
                     if(_loc20_ && _loc8_ * _loc10_ - _loc9_ * _loc13_ > 0)
                     {
                        _loc20_ = false;
                     }
                     continue;
                  }
                  if(_loc16_ > -_loc8_ && _loc7_ <= -_loc13_)
                  {
                     _loc15_ = (_loc13_ + _loc7_) / (_loc13_ + _loc7_ - _loc8_ - _loc16_);
                     _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                     _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                     _loc7_ += (_loc16_ - _loc7_) * _loc15_;
                  }
                  else if(_loc16_ <= -_loc8_ && _loc7_ > -_loc13_)
                  {
                     _loc15_ = (_loc13_ + _loc7_) / (_loc13_ + _loc7_ - _loc8_ - _loc16_);
                     _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                     _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                     _loc16_ = _loc7_ + (_loc16_ - _loc7_) * _loc15_;
                  }
                  if(_loc7_ <= _loc13_ && _loc16_ <= _loc8_)
                  {
                     if(_loc20_ && _loc8_ * _loc10_ - _loc9_ * _loc13_ > 0)
                     {
                        _loc20_ = false;
                     }
                     continue;
                  }
                  if(_loc16_ > _loc8_ && _loc7_ <= _loc13_)
                  {
                     _loc15_ = (_loc7_ - _loc13_) / (_loc7_ - _loc13_ + _loc8_ - _loc16_);
                     _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                     _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                     _loc7_ += (_loc16_ - _loc7_) * _loc15_;
                  }
                  else if(_loc16_ <= _loc8_ && _loc7_ > _loc13_)
                  {
                     _loc15_ = (_loc7_ - _loc13_) / (_loc7_ - _loc13_ + _loc8_ - _loc16_);
                     _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                     _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                     _loc16_ = _loc7_ + (_loc16_ - _loc7_) * _loc15_;
                  }
                  _loc20_ = false;
               }
               _loc2_ = _loc2_.create();
               _loc2_.next = _loc4_;
               _loc19_++;
               _loc4_ = _loc2_;
               _loc4_.cameraX = _loc16_ * _loc13_ - _loc8_ * _loc7_;
               _loc4_.cameraY = _loc9_ * _loc7_ - _loc16_ * _loc10_;
               _loc4_.cameraZ = _loc8_ * _loc10_ - _loc9_ * _loc13_;
               _loc4_.x = _loc10_;
               _loc4_.y = _loc13_;
               _loc4_.z = _loc7_;
               _loc4_.u = _loc9_;
               _loc4_.v = _loc8_;
               _loc4_.offset = _loc16_;
            }
         }
         if(_loc4_ != null)
         {
            if(this.minSize > 0)
            {
               _loc23_ = Vertex.createList(_loc19_);
               _loc2_ = _loc4_;
               _loc5_ = _loc23_;
               while(_loc2_ != null)
               {
                  _loc5_.x = _loc2_.x * _loc22_ / _loc2_.z;
                  _loc5_.y = _loc2_.y * _loc21_ / _loc2_.z;
                  _loc5_.u = _loc2_.u * _loc22_ / _loc2_.offset;
                  _loc5_.v = _loc2_.v * _loc21_ / _loc2_.offset;
                  _loc5_.cameraX = _loc5_.y - _loc5_.v;
                  _loc5_.cameraY = _loc5_.u - _loc5_.x;
                  _loc5_.offset = _loc5_.cameraX * _loc5_.x + _loc5_.cameraY * _loc5_.y;
                  _loc2_ = _loc2_.next;
                  _loc5_ = _loc5_.next;
               }
               if(culling > 0)
               {
                  if(culling & 4)
                  {
                     _loc10_ = -param1.viewSizeX;
                     _loc13_ = -param1.viewSizeY;
                     _loc9_ = -param1.viewSizeX;
                     _loc8_ = param1.viewSizeY;
                     _loc2_ = _loc23_;
                     while(_loc2_ != null)
                     {
                        _loc7_ = _loc10_ * _loc2_.cameraX + _loc13_ * _loc2_.cameraY - _loc2_.offset;
                        _loc16_ = _loc9_ * _loc2_.cameraX + _loc8_ * _loc2_.cameraY - _loc2_.offset;
                        if(!(_loc7_ < 0 || _loc16_ < 0))
                        {
                           break;
                        }
                        if(_loc7_ >= 0 && _loc16_ < 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                           _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                        }
                        else if(_loc7_ < 0 && _loc16_ >= 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                           _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                        }
                        _loc2_ = _loc2_.next;
                     }
                     if(_loc2_ == null)
                     {
                        _loc5_ = _loc4_.create();
                        _loc5_.next = _loc11_;
                        _loc11_ = _loc5_;
                        _loc11_.x = _loc10_;
                        _loc11_.y = _loc13_;
                        _loc11_.u = _loc9_;
                        _loc11_.v = _loc8_;
                     }
                  }
                  if(culling & 8)
                  {
                     _loc10_ = param1.viewSizeX;
                     _loc13_ = param1.viewSizeY;
                     _loc9_ = param1.viewSizeX;
                     _loc8_ = -param1.viewSizeY;
                     _loc2_ = _loc23_;
                     while(_loc2_ != null)
                     {
                        _loc7_ = _loc10_ * _loc2_.cameraX + _loc13_ * _loc2_.cameraY - _loc2_.offset;
                        _loc16_ = _loc9_ * _loc2_.cameraX + _loc8_ * _loc2_.cameraY - _loc2_.offset;
                        if(!(_loc7_ < 0 || _loc16_ < 0))
                        {
                           break;
                        }
                        if(_loc7_ >= 0 && _loc16_ < 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                           _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                        }
                        else if(_loc7_ < 0 && _loc16_ >= 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                           _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                        }
                        _loc2_ = _loc2_.next;
                     }
                     if(_loc2_ == null)
                     {
                        _loc5_ = _loc4_.create();
                        _loc5_.next = _loc11_;
                        _loc11_ = _loc5_;
                        _loc11_.x = _loc10_;
                        _loc11_.y = _loc13_;
                        _loc11_.u = _loc9_;
                        _loc11_.v = _loc8_;
                     }
                  }
                  if(culling & 0x10)
                  {
                     _loc10_ = param1.viewSizeX;
                     _loc13_ = -param1.viewSizeY;
                     _loc9_ = -param1.viewSizeX;
                     _loc8_ = -param1.viewSizeY;
                     _loc2_ = _loc23_;
                     while(_loc2_ != null)
                     {
                        _loc7_ = _loc10_ * _loc2_.cameraX + _loc13_ * _loc2_.cameraY - _loc2_.offset;
                        _loc16_ = _loc9_ * _loc2_.cameraX + _loc8_ * _loc2_.cameraY - _loc2_.offset;
                        if(!(_loc7_ < 0 || _loc16_ < 0))
                        {
                           break;
                        }
                        if(_loc7_ >= 0 && _loc16_ < 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                           _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                        }
                        else if(_loc7_ < 0 && _loc16_ >= 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                           _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                        }
                        _loc2_ = _loc2_.next;
                     }
                     if(_loc2_ == null)
                     {
                        _loc5_ = _loc4_.create();
                        _loc5_.next = _loc11_;
                        _loc11_ = _loc5_;
                        _loc11_.x = _loc10_;
                        _loc11_.y = _loc13_;
                        _loc11_.u = _loc9_;
                        _loc11_.v = _loc8_;
                     }
                  }
                  if(culling & 0x20)
                  {
                     _loc10_ = -param1.viewSizeX;
                     _loc13_ = param1.viewSizeY;
                     _loc9_ = param1.viewSizeX;
                     _loc8_ = param1.viewSizeY;
                     _loc2_ = _loc23_;
                     while(_loc2_ != null)
                     {
                        _loc7_ = _loc10_ * _loc2_.cameraX + _loc13_ * _loc2_.cameraY - _loc2_.offset;
                        _loc16_ = _loc9_ * _loc2_.cameraX + _loc8_ * _loc2_.cameraY - _loc2_.offset;
                        if(!(_loc7_ < 0 || _loc16_ < 0))
                        {
                           break;
                        }
                        if(_loc7_ >= 0 && _loc16_ < 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc10_ += (_loc9_ - _loc10_) * _loc15_;
                           _loc13_ += (_loc8_ - _loc13_) * _loc15_;
                        }
                        else if(_loc7_ < 0 && _loc16_ >= 0)
                        {
                           _loc15_ = _loc7_ / (_loc7_ - _loc16_);
                           _loc9_ = _loc10_ + (_loc9_ - _loc10_) * _loc15_;
                           _loc8_ = _loc13_ + (_loc8_ - _loc13_) * _loc15_;
                        }
                        _loc2_ = _loc2_.next;
                     }
                     if(_loc2_ == null)
                     {
                        _loc5_ = _loc4_.create();
                        _loc5_.next = _loc11_;
                        _loc11_ = _loc5_;
                        _loc11_.x = _loc10_;
                        _loc11_.y = _loc13_;
                        _loc11_.u = _loc9_;
                        _loc11_.v = _loc8_;
                     }
                  }
               }
               _loc17_ = 0;
               _loc7_ = _loc23_.x;
               _loc16_ = _loc23_.y;
               _loc2_ = _loc23_;
               while(_loc2_.next != null)
               {
                  _loc2_ = _loc2_.next;
               }
               _loc2_.next = _loc11_;
               _loc2_ = _loc23_;
               while(_loc2_ != null)
               {
                  _loc17_ += (_loc2_.u - _loc7_) * (_loc2_.y - _loc16_) - (_loc2_.v - _loc16_) * (_loc2_.x - _loc7_);
                  if(_loc2_.next == null)
                  {
                     break;
                  }
                  _loc2_ = _loc2_.next;
               }
               _loc2_.next = Vertex.collector;
               Vertex.collector = _loc23_;
               if(_loc17_ / (param1.viewSizeX * param1.viewSizeY * 8) < this.minSize)
               {
                  _loc2_ = _loc4_;
                  while(_loc2_.next != null)
                  {
                     _loc2_ = _loc2_.next;
                  }
                  _loc2_.next = Vertex.collector;
                  Vertex.collector = _loc4_;
                  return;
               }
            }
            if(param1.debug && (_loc6_ = param1.checkInDebug(this)) > 0)
            {
               if(_loc6_ & 0x10)
               {
                  _loc2_ = _loc4_;
                  while(_loc2_ != null)
                  {
                     _loc10_ = _loc2_.x * _loc22_ / _loc2_.z;
                     _loc13_ = _loc2_.y * _loc21_ / _loc2_.z;
                     _loc9_ = _loc2_.u * _loc22_ / _loc2_.offset;
                     _loc8_ = _loc2_.v * _loc21_ / _loc2_.offset;
                     _loc3_ = param1.view.canvas;
                     _loc3_.graphics.moveTo(_loc10_,_loc13_);
                     _loc3_.graphics.lineStyle(3,255);
                     _loc3_.graphics.lineTo(_loc10_ + (_loc9_ - _loc10_) * 0.8,_loc13_ + (_loc8_ - _loc13_) * 0.8);
                     _loc3_.graphics.lineStyle(3,16711680);
                     _loc3_.graphics.lineTo(_loc9_,_loc8_);
                     _loc2_ = _loc2_.next;
                  }
               }
               if(_loc6_ & 8)
               {
                  Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            param1.occluders[param1.numOccluders] = _loc4_;
            param1.numOccluders++;
         }
         else if(_loc20_)
         {
            if(param1.debug && (_loc6_ = param1.checkInDebug(this)) > 0)
            {
               if(_loc6_ & 0x10)
               {
                  _loc15_ = 1.5;
                  _loc3_ = param1.view.canvas;
                  _loc3_.graphics.moveTo(-_loc22_ + _loc15_,-_loc21_ + _loc15_);
                  _loc3_.graphics.lineStyle(3,255);
                  _loc3_.graphics.lineTo(-_loc22_ + _loc15_,_loc21_ * 0.6);
                  _loc3_.graphics.lineStyle(3,16711680);
                  _loc3_.graphics.lineTo(-_loc22_ + _loc15_,_loc21_ - _loc15_);
                  _loc3_.graphics.lineStyle(3,255);
                  _loc3_.graphics.lineTo(_loc22_ * 0.6,_loc21_ - _loc15_);
                  _loc3_.graphics.lineStyle(3,16711680);
                  _loc3_.graphics.lineTo(_loc22_ - _loc15_,_loc21_ - _loc15_);
                  _loc3_.graphics.lineStyle(3,255);
                  _loc3_.graphics.lineTo(_loc22_ - _loc15_,-_loc21_ * 0.6);
                  _loc3_.graphics.lineStyle(3,16711680);
                  _loc3_.graphics.lineTo(_loc22_ - _loc15_,-_loc21_ + _loc15_);
                  _loc3_.graphics.lineStyle(3,255);
                  _loc3_.graphics.lineTo(-_loc22_ * 0.6,-_loc21_ + _loc15_);
                  _loc3_.graphics.lineStyle(3,16711680);
                  _loc3_.graphics.lineTo(-_loc22_ + _loc15_,-_loc21_ + _loc15_);
               }
               if(_loc6_ & 8)
               {
                  Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            param1.clearOccluders();
            param1.occludedAll = true;
         }
      }
      
      override alternativa3d function updateBounds(param1:Object3D, param2:Object3D = null) : void
      {
         var _loc3_:Vertex = this.vertexList;
         while(_loc3_ != null)
         {
            if(param2 != null)
            {
               _loc3_.cameraX = param2.ma * _loc3_.x + param2.mb * _loc3_.y + param2.mc * _loc3_.z + param2.md;
               _loc3_.cameraY = param2.me * _loc3_.x + param2.mf * _loc3_.y + param2.mg * _loc3_.z + param2.mh;
               _loc3_.cameraZ = param2.mi * _loc3_.x + param2.mj * _loc3_.y + param2.mk * _loc3_.z + param2.ml;
            }
            else
            {
               _loc3_.cameraX = _loc3_.x;
               _loc3_.cameraY = _loc3_.y;
               _loc3_.cameraZ = _loc3_.z;
            }
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
   }
}

import alternativa.engine3d.core.Face;
import alternativa.engine3d.core.Vertex;

class Edge
{
   
   public var next:Edge;
   
   public var a:Vertex;
   
   public var b:Vertex;
   
   public var left:Face;
   
   public var right:Face;
   
   public function Edge()
   {
      super();
   }
}
