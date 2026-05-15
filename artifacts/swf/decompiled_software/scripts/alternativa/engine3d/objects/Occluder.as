package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   
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
            _loc4_.id = null;
            _loc4_ = _loc4_.next;
         }
         var _loc3_:Face = this.faceList;
         while(_loc3_ != null)
         {
            _loc3_.id = null;
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
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas) : void
      {
         var _loc4_:Canvas = null;
         var _loc7_:int = 0;
         var _loc5_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc6_:Vertex = null;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc24_:Vertex = null;
         var _loc12_:Vertex = null;
         var _loc18_:Number = NaN;
         var _loc20_:int = 0;
         if(this.faceList == null || this.edgeList == null)
         {
            return;
         }
         calculateInverseMatrix();
         var _loc19_:Boolean = true;
         var _loc15_:Face = this.faceList;
         while(_loc15_ != null)
         {
            if(_loc15_.normalX * imd + _loc15_.normalY * imh + _loc15_.normalZ * iml > _loc15_.offset)
            {
               _loc15_.distance = 1;
               _loc19_ = false;
            }
            else
            {
               _loc15_.distance = 0;
            }
            _loc15_ = _loc15_.next;
         }
         if(_loc19_)
         {
            return;
         }
         var _loc21_:Boolean = true;
         var _loc23_:Number = param1.viewSizeX;
         var _loc22_:Number = param1.viewSizeY;
         var _loc13_:Edge = this.edgeList;
         for(; _loc13_ != null; _loc13_ = _loc13_.next)
         {
            if(_loc13_.left.distance != _loc13_.right.distance)
            {
               if(_loc13_.left.distance > 0)
               {
                  _loc3_ = _loc13_.a;
                  _loc6_ = _loc13_.b;
               }
               else
               {
                  _loc3_ = _loc13_.b;
                  _loc6_ = _loc13_.a;
               }
               _loc11_ = ma * _loc3_.x + mb * _loc3_.y + mc * _loc3_.z + md;
               _loc14_ = me * _loc3_.x + mf * _loc3_.y + mg * _loc3_.z + mh;
               _loc8_ = mi * _loc3_.x + mj * _loc3_.y + mk * _loc3_.z + ml;
               _loc10_ = ma * _loc6_.x + mb * _loc6_.y + mc * _loc6_.z + md;
               _loc9_ = me * _loc6_.x + mf * _loc6_.y + mg * _loc6_.z + mh;
               _loc17_ = mi * _loc6_.x + mj * _loc6_.y + mk * _loc6_.z + ml;
               if(culling > 0)
               {
                  if(_loc8_ <= -_loc11_ && _loc17_ <= -_loc10_)
                  {
                     if(_loc21_ && _loc9_ * _loc11_ - _loc10_ * _loc14_ > 0)
                     {
                        _loc21_ = false;
                     }
                     continue;
                  }
                  if(_loc17_ > -_loc10_ && _loc8_ <= -_loc11_)
                  {
                     _loc16_ = (_loc11_ + _loc8_) / (_loc11_ + _loc8_ - _loc10_ - _loc17_);
                     _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                     _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                     _loc8_ += (_loc17_ - _loc8_) * _loc16_;
                  }
                  else if(_loc17_ <= -_loc10_ && _loc8_ > -_loc11_)
                  {
                     _loc16_ = (_loc11_ + _loc8_) / (_loc11_ + _loc8_ - _loc10_ - _loc17_);
                     _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                     _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                     _loc17_ = _loc8_ + (_loc17_ - _loc8_) * _loc16_;
                  }
                  if(_loc8_ <= _loc11_ && _loc17_ <= _loc10_)
                  {
                     if(_loc21_ && _loc9_ * _loc11_ - _loc10_ * _loc14_ > 0)
                     {
                        _loc21_ = false;
                     }
                     continue;
                  }
                  if(_loc17_ > _loc10_ && _loc8_ <= _loc11_)
                  {
                     _loc16_ = (_loc8_ - _loc11_) / (_loc8_ - _loc11_ + _loc10_ - _loc17_);
                     _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                     _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                     _loc8_ += (_loc17_ - _loc8_) * _loc16_;
                  }
                  else if(_loc17_ <= _loc10_ && _loc8_ > _loc11_)
                  {
                     _loc16_ = (_loc8_ - _loc11_) / (_loc8_ - _loc11_ + _loc10_ - _loc17_);
                     _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                     _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                     _loc17_ = _loc8_ + (_loc17_ - _loc8_) * _loc16_;
                  }
                  if(_loc8_ <= -_loc14_ && _loc17_ <= -_loc9_)
                  {
                     if(_loc21_ && _loc9_ * _loc11_ - _loc10_ * _loc14_ > 0)
                     {
                        _loc21_ = false;
                     }
                     continue;
                  }
                  if(_loc17_ > -_loc9_ && _loc8_ <= -_loc14_)
                  {
                     _loc16_ = (_loc14_ + _loc8_) / (_loc14_ + _loc8_ - _loc9_ - _loc17_);
                     _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                     _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                     _loc8_ += (_loc17_ - _loc8_) * _loc16_;
                  }
                  else if(_loc17_ <= -_loc9_ && _loc8_ > -_loc14_)
                  {
                     _loc16_ = (_loc14_ + _loc8_) / (_loc14_ + _loc8_ - _loc9_ - _loc17_);
                     _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                     _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                     _loc17_ = _loc8_ + (_loc17_ - _loc8_) * _loc16_;
                  }
                  if(_loc8_ <= _loc14_ && _loc17_ <= _loc9_)
                  {
                     if(_loc21_ && _loc9_ * _loc11_ - _loc10_ * _loc14_ > 0)
                     {
                        _loc21_ = false;
                     }
                     continue;
                  }
                  if(_loc17_ > _loc9_ && _loc8_ <= _loc14_)
                  {
                     _loc16_ = (_loc8_ - _loc14_) / (_loc8_ - _loc14_ + _loc9_ - _loc17_);
                     _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                     _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                     _loc8_ += (_loc17_ - _loc8_) * _loc16_;
                  }
                  else if(_loc17_ <= _loc9_ && _loc8_ > _loc14_)
                  {
                     _loc16_ = (_loc8_ - _loc14_) / (_loc8_ - _loc14_ + _loc9_ - _loc17_);
                     _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                     _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                     _loc17_ = _loc8_ + (_loc17_ - _loc8_) * _loc16_;
                  }
                  _loc21_ = false;
               }
               _loc3_ = _loc3_.create();
               _loc3_.next = _loc5_;
               _loc20_++;
               _loc5_ = _loc3_;
               _loc5_.cameraX = _loc17_ * _loc14_ - _loc9_ * _loc8_;
               _loc5_.cameraY = _loc10_ * _loc8_ - _loc17_ * _loc11_;
               _loc5_.cameraZ = _loc9_ * _loc11_ - _loc10_ * _loc14_;
               _loc5_.x = _loc11_;
               _loc5_.y = _loc14_;
               _loc5_.z = _loc8_;
               _loc5_.u = _loc10_;
               _loc5_.v = _loc9_;
               _loc5_.offset = _loc17_;
            }
         }
         if(_loc5_ != null)
         {
            if(this.minSize > 0)
            {
               _loc24_ = Vertex.createList(_loc20_);
               _loc3_ = _loc5_;
               _loc6_ = _loc24_;
               while(_loc3_ != null)
               {
                  _loc6_.x = _loc3_.x * _loc23_ / _loc3_.z;
                  _loc6_.y = _loc3_.y * _loc22_ / _loc3_.z;
                  _loc6_.u = _loc3_.u * _loc23_ / _loc3_.offset;
                  _loc6_.v = _loc3_.v * _loc22_ / _loc3_.offset;
                  _loc6_.cameraX = _loc6_.y - _loc6_.v;
                  _loc6_.cameraY = _loc6_.u - _loc6_.x;
                  _loc6_.offset = _loc6_.cameraX * _loc6_.x + _loc6_.cameraY * _loc6_.y;
                  _loc3_ = _loc3_.next;
                  _loc6_ = _loc6_.next;
               }
               if(culling > 0)
               {
                  if(culling & 4)
                  {
                     _loc11_ = -param1.viewSizeX;
                     _loc14_ = -param1.viewSizeY;
                     _loc10_ = -param1.viewSizeX;
                     _loc9_ = param1.viewSizeY;
                     _loc3_ = _loc24_;
                     while(_loc3_ != null)
                     {
                        _loc8_ = _loc11_ * _loc3_.cameraX + _loc14_ * _loc3_.cameraY - _loc3_.offset;
                        _loc17_ = _loc10_ * _loc3_.cameraX + _loc9_ * _loc3_.cameraY - _loc3_.offset;
                        if(!(_loc8_ < 0 || _loc17_ < 0))
                        {
                           break;
                        }
                        if(_loc8_ >= 0 && _loc17_ < 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                           _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                        }
                        else if(_loc8_ < 0 && _loc17_ >= 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                           _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                        }
                        _loc3_ = _loc3_.next;
                     }
                     if(_loc3_ == null)
                     {
                        _loc6_ = _loc5_.create();
                        _loc6_.next = _loc12_;
                        _loc12_ = _loc6_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc14_;
                        _loc12_.u = _loc10_;
                        _loc12_.v = _loc9_;
                     }
                  }
                  if(culling & 8)
                  {
                     _loc11_ = param1.viewSizeX;
                     _loc14_ = param1.viewSizeY;
                     _loc10_ = param1.viewSizeX;
                     _loc9_ = -param1.viewSizeY;
                     _loc3_ = _loc24_;
                     while(_loc3_ != null)
                     {
                        _loc8_ = _loc11_ * _loc3_.cameraX + _loc14_ * _loc3_.cameraY - _loc3_.offset;
                        _loc17_ = _loc10_ * _loc3_.cameraX + _loc9_ * _loc3_.cameraY - _loc3_.offset;
                        if(!(_loc8_ < 0 || _loc17_ < 0))
                        {
                           break;
                        }
                        if(_loc8_ >= 0 && _loc17_ < 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                           _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                        }
                        else if(_loc8_ < 0 && _loc17_ >= 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                           _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                        }
                        _loc3_ = _loc3_.next;
                     }
                     if(_loc3_ == null)
                     {
                        _loc6_ = _loc5_.create();
                        _loc6_.next = _loc12_;
                        _loc12_ = _loc6_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc14_;
                        _loc12_.u = _loc10_;
                        _loc12_.v = _loc9_;
                     }
                  }
                  if(culling & 0x10)
                  {
                     _loc11_ = param1.viewSizeX;
                     _loc14_ = -param1.viewSizeY;
                     _loc10_ = -param1.viewSizeX;
                     _loc9_ = -param1.viewSizeY;
                     _loc3_ = _loc24_;
                     while(_loc3_ != null)
                     {
                        _loc8_ = _loc11_ * _loc3_.cameraX + _loc14_ * _loc3_.cameraY - _loc3_.offset;
                        _loc17_ = _loc10_ * _loc3_.cameraX + _loc9_ * _loc3_.cameraY - _loc3_.offset;
                        if(!(_loc8_ < 0 || _loc17_ < 0))
                        {
                           break;
                        }
                        if(_loc8_ >= 0 && _loc17_ < 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                           _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                        }
                        else if(_loc8_ < 0 && _loc17_ >= 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                           _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                        }
                        _loc3_ = _loc3_.next;
                     }
                     if(_loc3_ == null)
                     {
                        _loc6_ = _loc5_.create();
                        _loc6_.next = _loc12_;
                        _loc12_ = _loc6_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc14_;
                        _loc12_.u = _loc10_;
                        _loc12_.v = _loc9_;
                     }
                  }
                  if(culling & 0x20)
                  {
                     _loc11_ = -param1.viewSizeX;
                     _loc14_ = param1.viewSizeY;
                     _loc10_ = param1.viewSizeX;
                     _loc9_ = param1.viewSizeY;
                     _loc3_ = _loc24_;
                     while(_loc3_ != null)
                     {
                        _loc8_ = _loc11_ * _loc3_.cameraX + _loc14_ * _loc3_.cameraY - _loc3_.offset;
                        _loc17_ = _loc10_ * _loc3_.cameraX + _loc9_ * _loc3_.cameraY - _loc3_.offset;
                        if(!(_loc8_ < 0 || _loc17_ < 0))
                        {
                           break;
                        }
                        if(_loc8_ >= 0 && _loc17_ < 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc11_ += (_loc10_ - _loc11_) * _loc16_;
                           _loc14_ += (_loc9_ - _loc14_) * _loc16_;
                        }
                        else if(_loc8_ < 0 && _loc17_ >= 0)
                        {
                           _loc16_ = _loc8_ / (_loc8_ - _loc17_);
                           _loc10_ = _loc11_ + (_loc10_ - _loc11_) * _loc16_;
                           _loc9_ = _loc14_ + (_loc9_ - _loc14_) * _loc16_;
                        }
                        _loc3_ = _loc3_.next;
                     }
                     if(_loc3_ == null)
                     {
                        _loc6_ = _loc5_.create();
                        _loc6_.next = _loc12_;
                        _loc12_ = _loc6_;
                        _loc12_.x = _loc11_;
                        _loc12_.y = _loc14_;
                        _loc12_.u = _loc10_;
                        _loc12_.v = _loc9_;
                     }
                  }
               }
               _loc18_ = 0;
               _loc8_ = _loc24_.x;
               _loc17_ = _loc24_.y;
               _loc3_ = _loc24_;
               while(_loc3_.next != null)
               {
                  _loc3_ = _loc3_.next;
               }
               _loc3_.next = _loc12_;
               _loc3_ = _loc24_;
               while(_loc3_ != null)
               {
                  _loc18_ += (_loc3_.u - _loc8_) * (_loc3_.y - _loc17_) - (_loc3_.v - _loc17_) * (_loc3_.x - _loc8_);
                  if(_loc3_.next == null)
                  {
                     break;
                  }
                  _loc3_ = _loc3_.next;
               }
               _loc3_.next = Vertex.collector;
               Vertex.collector = _loc24_;
               if(_loc18_ / (param1.viewSizeX * param1.viewSizeY * 8) < this.minSize)
               {
                  _loc3_ = _loc5_;
                  while(_loc3_.next != null)
                  {
                     _loc3_ = _loc3_.next;
                  }
                  _loc3_.next = Vertex.collector;
                  Vertex.collector = _loc5_;
                  return;
               }
            }
            if(param1.debug && (_loc7_ = param1.checkInDebug(this)) > 0)
            {
               _loc4_ = param2.getChildCanvas(true,false);
               if(_loc7_ & 0x10)
               {
                  _loc3_ = _loc5_;
                  while(_loc3_ != null)
                  {
                     _loc11_ = _loc3_.x * _loc23_ / _loc3_.z;
                     _loc14_ = _loc3_.y * _loc22_ / _loc3_.z;
                     _loc10_ = _loc3_.u * _loc23_ / _loc3_.offset;
                     _loc9_ = _loc3_.v * _loc22_ / _loc3_.offset;
                     _loc4_.gfx.moveTo(_loc11_,_loc14_);
                     _loc4_.gfx.lineStyle(3,255);
                     _loc4_.gfx.lineTo(_loc11_ + (_loc10_ - _loc11_) * 0.8,_loc14_ + (_loc9_ - _loc14_) * 0.8);
                     _loc4_.gfx.lineStyle(3,16711680);
                     _loc4_.gfx.lineTo(_loc10_,_loc9_);
                     _loc3_ = _loc3_.next;
                  }
               }
               if(_loc7_ & 8)
               {
                  Debug.drawBounds(param1,_loc4_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            param1.occluders[param1.numOccluders] = _loc5_;
            param1.numOccluders++;
         }
         else if(_loc21_)
         {
            if(param1.debug && (_loc7_ = param1.checkInDebug(this)) > 0)
            {
               _loc4_ = param2.getChildCanvas(true,false);
               if(_loc7_ & 0x10)
               {
                  _loc16_ = 1.5;
                  _loc4_.gfx.moveTo(-_loc23_ + _loc16_,-_loc22_ + _loc16_);
                  _loc4_.gfx.lineStyle(3,255);
                  _loc4_.gfx.lineTo(-_loc23_ + _loc16_,_loc22_ * 0.6);
                  _loc4_.gfx.lineStyle(3,16711680);
                  _loc4_.gfx.lineTo(-_loc23_ + _loc16_,_loc22_ - _loc16_);
                  _loc4_.gfx.lineStyle(3,255);
                  _loc4_.gfx.lineTo(_loc23_ * 0.6,_loc22_ - _loc16_);
                  _loc4_.gfx.lineStyle(3,16711680);
                  _loc4_.gfx.lineTo(_loc23_ - _loc16_,_loc22_ - _loc16_);
                  _loc4_.gfx.lineStyle(3,255);
                  _loc4_.gfx.lineTo(_loc23_ - _loc16_,-_loc22_ * 0.6);
                  _loc4_.gfx.lineStyle(3,16711680);
                  _loc4_.gfx.lineTo(_loc23_ - _loc16_,-_loc22_ + _loc16_);
                  _loc4_.gfx.lineStyle(3,255);
                  _loc4_.gfx.lineTo(-_loc23_ * 0.6,-_loc22_ + _loc16_);
                  _loc4_.gfx.lineStyle(3,16711680);
                  _loc4_.gfx.lineTo(-_loc23_ + _loc16_,-_loc22_ + _loc16_);
               }
               if(_loc7_ & 8)
               {
                  Debug.drawBounds(param1,_loc4_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
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
