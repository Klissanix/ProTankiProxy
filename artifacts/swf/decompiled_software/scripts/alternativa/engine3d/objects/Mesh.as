package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class Mesh extends Object3D
   {
      
      public var clipping:int = 2;
      
      public var sorting:int = 1;
      
      public var threshold:Number = 0.01;
      
      alternativa3d var vertexList:Vertex;
      
      alternativa3d var faceList:Face;
      
      public function Mesh()
      {
         super();
      }
      
      public static function calculateVerticesNormalsBySmoothingGroupsForMeshList(param1:Vector.<Object3D>, param2:Number = 0) : void
      {
      }
      
      public function updateUVsBuffer() : void
      {
      }
      
      public function addVertex(param1:Number, param2:Number, param3:Number, param4:Number = 0, param5:Number = 0, param6:Object = null) : Vertex
      {
         var _loc8_:Vertex = null;
         var _loc7_:Vertex = null;
         _loc8_ = new Vertex();
         _loc8_.x = param1;
         _loc8_.y = param2;
         _loc8_.z = param3;
         _loc8_.u = param4;
         _loc8_.v = param5;
         _loc8_.id = param6;
         if(this.vertexList != null)
         {
            _loc7_ = this.vertexList;
            while(_loc7_.next != null)
            {
               _loc7_ = _loc7_.next;
            }
            _loc7_.next = _loc8_;
         }
         else
         {
            this.vertexList = _loc8_;
         }
         return _loc8_;
      }
      
      public function removeVertex(param1:Vertex) : Vertex
      {
         var _loc2_:Vertex = null;
         var _loc7_:* = null;
         var _loc6_:Face = null;
         var _loc5_:Wrapper = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter vertex must be non-null.");
         }
         var _loc3_:Vertex = this.vertexList;
         while(_loc3_ != null)
         {
            if(_loc3_ == param1)
            {
               if(_loc2_ != null)
               {
                  _loc2_.next = _loc3_.next;
               }
               else
               {
                  this.vertexList = _loc3_.next;
               }
               _loc3_.next = null;
               break;
            }
            _loc2_ = _loc3_;
            _loc3_ = _loc3_.next;
         }
         if(_loc3_ == null)
         {
            throw new ArgumentError("Vertex not found.");
         }
         var _loc4_:Face = this.faceList;
         while(_loc4_ != null)
         {
            _loc6_ = _loc4_.next;
            _loc5_ = _loc4_.wrapper;
            while(_loc5_ != null)
            {
               if(_loc5_.vertex == _loc3_)
               {
                  break;
               }
               _loc5_ = _loc5_.next;
            }
            if(_loc5_ != null)
            {
               if(_loc7_ != null)
               {
                  _loc7_.alternativa3d::next = _loc6_;
               }
               else
               {
                  this.faceList = _loc6_;
               }
               _loc4_.next = null;
            }
            else
            {
               _loc7_ = _loc4_;
            }
            _loc4_ = _loc6_;
         }
         return _loc3_;
      }
      
      public function removeVertexById(param1:Object) : Vertex
      {
         var _loc2_:Vertex = null;
         var _loc7_:* = null;
         var _loc6_:Face = null;
         var _loc5_:Wrapper = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter id must be non-null.");
         }
         var _loc3_:Vertex = this.vertexList;
         while(_loc3_ != null)
         {
            if(_loc3_.id == param1)
            {
               if(_loc2_ != null)
               {
                  _loc2_.next = _loc3_.next;
               }
               else
               {
                  this.vertexList = _loc3_.next;
               }
               _loc3_.next = null;
               break;
            }
            _loc2_ = _loc3_;
            _loc3_ = _loc3_.next;
         }
         if(_loc3_ == null)
         {
            throw new ArgumentError("Vertex not found.");
         }
         var _loc4_:Face = this.faceList;
         while(_loc4_ != null)
         {
            _loc6_ = _loc4_.next;
            _loc5_ = _loc4_.wrapper;
            while(_loc5_ != null)
            {
               if(_loc5_.vertex == _loc3_)
               {
                  break;
               }
               _loc5_ = _loc5_.next;
            }
            if(_loc5_ != null)
            {
               if(_loc7_ != null)
               {
                  _loc7_.alternativa3d::next = _loc6_;
               }
               else
               {
                  this.faceList = _loc6_;
               }
               _loc4_.next = null;
            }
            else
            {
               _loc7_ = _loc4_;
            }
            _loc4_ = _loc6_;
         }
         return _loc3_;
      }
      
      public function containsVertex(param1:Vertex) : Boolean
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter vertex must be non-null.");
         }
         var _loc2_:Vertex = this.vertexList;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
            _loc2_ = _loc2_.next;
         }
         return false;
      }
      
      public function containsVertexWithId(param1:Object) : Boolean
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter id must be non-null.");
         }
         var _loc2_:Vertex = this.vertexList;
         while(_loc2_ != null)
         {
            if(_loc2_.id == param1)
            {
               return true;
            }
            _loc2_ = _loc2_.next;
         }
         return false;
      }
      
      public function getVertexById(param1:Object) : Vertex
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter id must be non-null.");
         }
         var _loc2_:Vertex = this.vertexList;
         while(_loc2_ != null)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
            _loc2_ = _loc2_.next;
         }
         return null;
      }
      
      public function addFace(param1:Vector.<Vertex>, param2:Material = null, param3:Object = null) : Face
      {
         var _loc7_:Wrapper = null;
         var _loc8_:Vertex = null;
         var _loc6_:Face = null;
         var _loc9_:Wrapper = null;
         var _loc10_:int = 0;
         if(param1 == null)
         {
            throw new TypeError("Parameter vertices must be non-null.");
         }
         var _loc4_:int = int(param1.length);
         if(_loc4_ < 3)
         {
            throw new ArgumentError(_loc4_ + " vertices not enough.");
         }
         var _loc5_:Face = new Face();
         _loc5_.material = param2;
         _loc5_.id = param3;
         while(_loc10_ < _loc4_)
         {
            _loc7_ = new Wrapper();
            _loc8_ = param1[_loc10_];
            if(_loc8_ == null)
            {
               throw new ArgumentError("Null vertex in vector.");
            }
            if(!this.containsVertex(_loc8_))
            {
               throw new ArgumentError("Vertex not found.");
            }
            _loc7_.vertex = _loc8_;
            if(_loc9_ != null)
            {
               _loc9_.next = _loc7_;
            }
            else
            {
               _loc5_.wrapper = _loc7_;
            }
            _loc9_ = _loc7_;
            _loc10_++;
         }
         if(this.faceList != null)
         {
            _loc6_ = this.faceList;
            while(_loc6_.next != null)
            {
               _loc6_ = _loc6_.next;
            }
            _loc6_.next = _loc5_;
         }
         else
         {
            this.faceList = _loc5_;
         }
         return _loc5_;
      }
      
      public function addFaceByIds(param1:Array, param2:Material = null, param3:Object = null) : Face
      {
         var _loc7_:Wrapper = null;
         var _loc8_:Vertex = null;
         var _loc6_:Face = null;
         var _loc9_:Wrapper = null;
         var _loc10_:int = 0;
         if(param1 == null)
         {
            throw new TypeError("Parameter vertices must be non-null.");
         }
         var _loc4_:int = int(param1.length);
         if(_loc4_ < 3)
         {
            throw new ArgumentError(_loc4_ + " vertices not enough.");
         }
         var _loc5_:Face = new Face();
         _loc5_.material = param2;
         _loc5_.id = param3;
         while(_loc10_ < _loc4_)
         {
            _loc7_ = new Wrapper();
            _loc8_ = this.getVertexById(param1[_loc10_]);
            if(_loc8_ == null)
            {
               throw new ArgumentError("Vertex not found.");
            }
            _loc7_.vertex = _loc8_;
            if(_loc9_ != null)
            {
               _loc9_.next = _loc7_;
            }
            else
            {
               _loc5_.wrapper = _loc7_;
            }
            _loc9_ = _loc7_;
            _loc10_++;
         }
         if(this.faceList != null)
         {
            _loc6_ = this.faceList;
            while(_loc6_.next != null)
            {
               _loc6_ = _loc6_.next;
            }
            _loc6_.next = _loc5_;
         }
         else
         {
            this.faceList = _loc5_;
         }
         return _loc5_;
      }
      
      public function addTriFace(param1:Vertex, param2:Vertex, param3:Vertex, param4:Material = null, param5:Object = null) : Face
      {
         var _loc7_:Face = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter v1 must be non-null.");
         }
         if(param2 == null)
         {
            throw new TypeError("Parameter v2 must be non-null.");
         }
         if(param3 == null)
         {
            throw new TypeError("Parameter v3 must be non-null.");
         }
         if(!this.containsVertex(param1))
         {
            throw new ArgumentError("Vertex not found.");
         }
         if(!this.containsVertex(param2))
         {
            throw new ArgumentError("Vertex not found.");
         }
         if(!this.containsVertex(param3))
         {
            throw new ArgumentError("Vertex not found.");
         }
         var _loc6_:Face = new Face();
         _loc6_.material = param4;
         _loc6_.id = param5;
         _loc6_.wrapper = new Wrapper();
         _loc6_.wrapper.vertex = param1;
         _loc6_.wrapper.next = new Wrapper();
         _loc6_.wrapper.next.vertex = param2;
         _loc6_.wrapper.next.next = new Wrapper();
         _loc6_.wrapper.next.next.vertex = param3;
         if(this.faceList != null)
         {
            _loc7_ = this.faceList;
            while(_loc7_.next != null)
            {
               _loc7_ = _loc7_.next;
            }
            _loc7_.next = _loc6_;
         }
         else
         {
            this.faceList = _loc6_;
         }
         return _loc6_;
      }
      
      public function addQuadFace(param1:Vertex, param2:Vertex, param3:Vertex, param4:Vertex, param5:Material = null, param6:Object = null) : Face
      {
         var _loc8_:Face = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter v1 must be non-null.");
         }
         if(param2 == null)
         {
            throw new TypeError("Parameter v2 must be non-null.");
         }
         if(param3 == null)
         {
            throw new TypeError("Parameter v3 must be non-null.");
         }
         if(param4 == null)
         {
            throw new TypeError("Parameter v4 must be non-null.");
         }
         if(!this.containsVertex(param1))
         {
            throw new ArgumentError("Vertex not found.");
         }
         if(!this.containsVertex(param2))
         {
            throw new ArgumentError("Vertex not found.");
         }
         if(!this.containsVertex(param3))
         {
            throw new ArgumentError("Vertex not found.");
         }
         if(!this.containsVertex(param4))
         {
            throw new ArgumentError("Vertex not found.");
         }
         var _loc7_:Face = new Face();
         _loc7_.material = param5;
         _loc7_.id = param6;
         _loc7_.wrapper = new Wrapper();
         _loc7_.wrapper.vertex = param1;
         _loc7_.wrapper.next = new Wrapper();
         _loc7_.wrapper.next.vertex = param2;
         _loc7_.wrapper.next.next = new Wrapper();
         _loc7_.wrapper.next.next.vertex = param3;
         _loc7_.wrapper.next.next.next = new Wrapper();
         _loc7_.wrapper.next.next.next.vertex = param4;
         if(this.faceList != null)
         {
            _loc8_ = this.faceList;
            while(_loc8_.next != null)
            {
               _loc8_ = _loc8_.next;
            }
            _loc8_.next = _loc7_;
         }
         else
         {
            this.faceList = _loc7_;
         }
         return _loc7_;
      }
      
      public function removeFace(param1:Face) : Face
      {
         var _loc3_:Face = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter face must be non-null.");
         }
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_ != null)
               {
                  _loc3_.next = _loc2_.next;
               }
               else
               {
                  this.faceList = _loc2_.next;
               }
               _loc2_.next = null;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         if(_loc2_ == null)
         {
            throw new ArgumentError("Face not found.");
         }
         return _loc2_;
      }
      
      public function removeFaceById(param1:Object) : Face
      {
         var _loc3_:Face = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter id must be non-null.");
         }
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            if(_loc2_.id == param1)
            {
               if(_loc3_ != null)
               {
                  _loc3_.next = _loc2_.next;
               }
               else
               {
                  this.faceList = _loc2_.next;
               }
               _loc2_.next = null;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         if(_loc2_ == null)
         {
            throw new ArgumentError("Face not found.");
         }
         return _loc2_;
      }
      
      public function containsFace(param1:Face) : Boolean
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter face must be non-null.");
         }
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
            _loc2_ = _loc2_.next;
         }
         return false;
      }
      
      public function containsFaceWithId(param1:Object) : Boolean
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter id must be non-null.");
         }
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            if(_loc2_.id == param1)
            {
               return true;
            }
            _loc2_ = _loc2_.next;
         }
         return false;
      }
      
      public function getFaceById(param1:Object) : Face
      {
         if(param1 == null)
         {
            throw new TypeError("Parameter id must be non-null.");
         }
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
            _loc2_ = _loc2_.next;
         }
         return null;
      }
      
      public function addVerticesAndFaces(param1:Vector.<Number>, param2:Vector.<Number>, param3:Vector.<int>, param4:Boolean = false, param5:Material = null) : void
      {
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc15_:Vertex = null;
         var _loc13_:Face = null;
         var _loc14_:Face = null;
         var _loc17_:Wrapper = null;
         var _loc9_:int = 0;
         var _loc18_:int = 0;
         var _loc7_:Vertex = null;
         var _loc16_:Wrapper = null;
         if(param1 == null)
         {
            throw new TypeError("Parameter vertices must be non-null.");
         }
         if(param2 == null)
         {
            throw new TypeError("Parameter uvs must be non-null.");
         }
         if(param3 == null)
         {
            throw new TypeError("Parameter indices must be non-null.");
         }
         var _loc6_:int = param1.length / 3;
         if(_loc6_ != param2.length / 2)
         {
            throw new ArgumentError("Vertices count and uvs count doesn\'t match.");
         }
         var _loc19_:int = int(param3.length);
         if(!param4 && _loc19_ % 3)
         {
            throw new ArgumentError("Incorrect indices.");
         }
         _loc8_ = 0;
         _loc11_ = 0;
         while(_loc8_ < _loc19_)
         {
            if(_loc8_ == _loc11_)
            {
               _loc18_ = int(param4 ? param3[_loc8_] : 3);
               if(_loc18_ < 3)
               {
                  throw new ArgumentError(_loc18_ + " vertices not enough.");
               }
               _loc11_ = param4 ? _loc18_ + ++_loc8_ : _loc8_ + _loc18_;
               if(_loc11_ > _loc19_)
               {
                  throw new ArgumentError("Incorrect indices.");
               }
            }
            _loc9_ = param3[_loc8_];
            if(_loc9_ < 0 || _loc9_ >= _loc6_)
            {
               throw new RangeError("Index is out of d6904c70.");
            }
            _loc8_++;
         }
         if(this.vertexList != null)
         {
            _loc15_ = this.vertexList;
            while(_loc15_.next != null)
            {
               _loc15_ = _loc15_.next;
            }
         }
         var _loc12_:Vector.<Vertex> = new Vector.<Vertex>(_loc6_);
         _loc8_ = 0;
         _loc10_ = 0;
         _loc11_ = 0;
         while(_loc8_ < _loc6_)
         {
            _loc7_ = new Vertex();
            _loc7_.x = param1[_loc10_];
            _loc10_++;
            _loc7_.y = param1[_loc10_];
            _loc10_++;
            _loc7_.z = param1[_loc10_];
            _loc10_++;
            _loc7_.u = param2[_loc11_];
            _loc11_++;
            _loc7_.v = param2[_loc11_];
            _loc11_++;
            _loc12_[_loc8_] = _loc7_;
            if(_loc15_ != null)
            {
               _loc15_.next = _loc7_;
            }
            else
            {
               this.vertexList = _loc7_;
            }
            _loc15_ = _loc7_;
            _loc8_++;
         }
         if(this.faceList != null)
         {
            _loc13_ = this.faceList;
            while(_loc13_.next != null)
            {
               _loc13_ = _loc13_.next;
            }
         }
         _loc8_ = 0;
         _loc11_ = 0;
         while(_loc8_ < _loc19_)
         {
            if(_loc8_ == _loc11_)
            {
               _loc11_ = param4 ? param3[_loc8_] + ++_loc8_ : _loc8_ + 3;
               _loc17_ = null;
               _loc14_ = new Face();
               _loc14_.material = param5;
               if(_loc13_ != null)
               {
                  _loc13_.next = _loc14_;
               }
               else
               {
                  this.faceList = _loc14_;
               }
               _loc13_ = _loc14_;
            }
            _loc16_ = new Wrapper();
            _loc16_.vertex = _loc12_[param3[_loc8_]];
            if(_loc17_ != null)
            {
               _loc17_.next = _loc16_;
            }
            else
            {
               _loc14_.wrapper = _loc16_;
            }
            _loc17_ = _loc16_;
            _loc8_++;
         }
      }
      
      public function get vertices() : Vector.<Vertex>
      {
         var _loc1_:int = 0;
         var _loc3_:Vector.<Vertex> = new Vector.<Vertex>();
         var _loc2_:Vertex = this.vertexList;
         while(_loc2_ != null)
         {
            _loc3_[_loc1_] = _loc2_;
            _loc1_++;
            _loc2_ = _loc2_.next;
         }
         return _loc3_;
      }
      
      public function get faces() : Vector.<Face>
      {
         var _loc1_:int = 0;
         var _loc3_:Vector.<Face> = new Vector.<Face>();
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            _loc3_[_loc1_] = _loc2_;
            _loc1_++;
            _loc2_ = _loc2_.next;
         }
         return _loc3_;
      }
      
      public function weldVertices(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc6_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc8_:Wrapper = null;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:Vector.<Vertex> = new Vector.<Vertex>();
         _loc6_ = this.vertexList;
         while(_loc6_ != null)
         {
            _loc3_ = _loc6_.next;
            _loc6_.next = null;
            _loc9_[_loc4_] = _loc6_;
            _loc4_++;
            _loc6_ = _loc3_;
         }
         this.vertexList = null;
         this.f27fc475(_loc9_,0,_loc4_,0,param1,param2,new Vector.<int>());
         var _loc5_:Face = this.faceList;
         while(_loc5_ != null)
         {
            _loc8_ = _loc5_.wrapper;
            while(_loc8_ != null)
            {
               if(_loc8_.vertex.value != null)
               {
                  _loc8_.vertex = _loc8_.vertex.value;
               }
               _loc8_ = _loc8_.next;
            }
            _loc5_ = _loc5_.next;
         }
         while(_loc7_ < _loc4_)
         {
            _loc6_ = _loc9_[_loc7_];
            if(_loc6_.value == null)
            {
               _loc6_.next = this.vertexList;
               this.vertexList = _loc6_;
            }
            _loc7_++;
         }
      }
      
      alternativa3d function prepareResources() : void
      {
      }
      
      alternativa3d function addOpaque(param1:Camera3D) : void
      {
      }
      
      alternativa3d function deleteResources() : void
      {
      }
      
      public function weldFaces(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Boolean = false) : void
      {
         var _loc56_:int = 0;
         var _loc57_:int = 0;
         var _loc52_:* = undefined;
         var _loc25_:Face = null;
         var _loc61_:Face = null;
         var _loc40_:Face = null;
         var _loc59_:Wrapper = null;
         var _loc23_:Wrapper = null;
         var _loc64_:Wrapper = null;
         var _loc62_:Wrapper = null;
         var _loc32_:Wrapper = null;
         var _loc46_:Wrapper = null;
         var _loc8_:Wrapper = null;
         var _loc47_:Wrapper = null;
         var _loc5_:Vertex = null;
         var _loc53_:Vertex = null;
         var _loc54_:Vertex = null;
         var _loc55_:Vertex = null;
         var _loc19_:Number = NaN;
         var _loc63_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc60_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc6_:Dictionary = null;
         var _loc34_:int = 0;
         var _loc30_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc65_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc33_:Boolean = false;
         var _loc58_:Face = null;
         var _loc26_:Number = 0.001;
         param1 = Math.cos(param1) - _loc26_;
         param2 += _loc26_;
         param3 = Math.cos(3.141592653589793 - param3) - _loc26_;
         var _loc49_:Dictionary = new Dictionary();
         var _loc51_:Dictionary = new Dictionary();
         _loc61_ = this.faceList;
         while(_loc61_ != null)
         {
            _loc40_ = _loc61_.next;
            _loc61_.next = null;
            _loc53_ = _loc61_.wrapper.vertex;
            _loc54_ = _loc61_.wrapper.next.vertex;
            _loc55_ = _loc61_.wrapper.next.next.vertex;
            _loc19_ = _loc54_.x - _loc53_.x;
            _loc63_ = _loc54_.y - _loc53_.y;
            _loc24_ = _loc54_.z - _loc53_.z;
            _loc16_ = _loc55_.x - _loc53_.x;
            _loc35_ = _loc55_.y - _loc53_.y;
            _loc22_ = _loc55_.z - _loc53_.z;
            _loc31_ = _loc22_ * _loc63_ - _loc35_ * _loc24_;
            _loc21_ = _loc16_ * _loc24_ - _loc22_ * _loc19_;
            _loc28_ = _loc35_ * _loc19_ - _loc16_ * _loc63_;
            _loc27_ = _loc31_ * _loc31_ + _loc21_ * _loc21_ + _loc28_ * _loc28_;
            if(_loc27_ > _loc26_)
            {
               _loc27_ = 1 / Math.sqrt(_loc27_);
               _loc31_ *= _loc27_;
               _loc21_ *= _loc27_;
               _loc28_ *= _loc27_;
               _loc61_.normalX = _loc31_;
               _loc61_.normalY = _loc21_;
               _loc61_.normalZ = _loc28_;
               _loc61_.offset = _loc53_.x * _loc31_ + _loc53_.y * _loc21_ + _loc53_.z * _loc28_;
               _loc49_[_loc61_] = true;
               _loc32_ = _loc61_.wrapper;
               while(_loc32_ != null)
               {
                  _loc5_ = _loc32_.vertex;
                  _loc6_ = _loc51_[_loc5_];
                  if(_loc6_ == null)
                  {
                     _loc6_ = new Dictionary();
                     _loc51_[_loc5_] = _loc6_;
                  }
                  _loc6_[_loc61_] = true;
                  _loc32_ = _loc32_.next;
               }
            }
            _loc61_ = _loc40_;
         }
         this.faceList = null;
         var _loc29_:Vector.<Face> = new Vector.<Face>();
         var _loc48_:Dictionary = new Dictionary();
         var _loc50_:Dictionary = new Dictionary();
         while(true)
         {
            _loc61_ = null;
            var _loc67_:int = 0;
            var _loc66_:Dictionary = _loc49_;
            for(_loc52_ in _loc66_)
            {
               _loc61_ = _loc52_;
               delete _loc49_[_loc52_];
            }
            if(_loc61_ == null)
            {
               break;
            }
            _loc34_ = 0;
            _loc29_[_loc34_] = _loc61_;
            _loc34_++;
            _loc53_ = _loc61_.wrapper.vertex;
            _loc54_ = _loc61_.wrapper.next.vertex;
            _loc55_ = _loc61_.wrapper.next.next.vertex;
            _loc19_ = _loc54_.x - _loc53_.x;
            _loc63_ = _loc54_.y - _loc53_.y;
            _loc24_ = _loc54_.z - _loc53_.z;
            _loc20_ = _loc54_.u - _loc53_.u;
            _loc10_ = _loc54_.v - _loc53_.v;
            _loc16_ = _loc55_.x - _loc53_.x;
            _loc35_ = _loc55_.y - _loc53_.y;
            _loc22_ = _loc55_.z - _loc53_.z;
            _loc60_ = _loc55_.u - _loc53_.u;
            _loc37_ = _loc55_.v - _loc53_.v;
            _loc31_ = _loc61_.normalX;
            _loc21_ = _loc61_.normalY;
            _loc28_ = _loc61_.normalZ;
            _loc30_ = -_loc31_ * _loc35_ * _loc24_ + _loc16_ * _loc21_ * _loc24_ + _loc31_ * _loc63_ * _loc22_ - _loc19_ * _loc21_ * _loc22_ - _loc16_ * _loc63_ * _loc28_ + _loc19_ * _loc35_ * _loc28_;
            _loc36_ = (-_loc21_ * _loc22_ + _loc35_ * _loc28_) / _loc30_;
            _loc39_ = (_loc31_ * _loc22_ - _loc16_ * _loc28_) / _loc30_;
            _loc38_ = (-_loc31_ * _loc35_ + _loc16_ * _loc21_) / _loc30_;
            _loc42_ = (_loc53_.x * _loc21_ * _loc22_ - _loc31_ * _loc53_.y * _loc22_ - _loc53_.x * _loc35_ * _loc28_ + _loc16_ * _loc53_.y * _loc28_ + _loc31_ * _loc35_ * _loc53_.z - _loc16_ * _loc21_ * _loc53_.z) / _loc30_;
            _loc41_ = (_loc21_ * _loc24_ - _loc63_ * _loc28_) / _loc30_;
            _loc44_ = (-_loc31_ * _loc24_ + _loc19_ * _loc28_) / _loc30_;
            _loc43_ = (_loc31_ * _loc63_ - _loc19_ * _loc21_) / _loc30_;
            _loc45_ = (_loc31_ * _loc53_.y * _loc24_ - _loc53_.x * _loc21_ * _loc24_ + _loc53_.x * _loc63_ * _loc28_ - _loc19_ * _loc53_.y * _loc28_ - _loc31_ * _loc63_ * _loc53_.z + _loc19_ * _loc21_ * _loc53_.z) / _loc30_;
            _loc9_ = _loc20_ * _loc36_ + _loc60_ * _loc41_;
            _loc11_ = _loc20_ * _loc39_ + _loc60_ * _loc44_;
            _loc12_ = _loc20_ * _loc38_ + _loc60_ * _loc43_;
            _loc13_ = _loc20_ * _loc42_ + _loc60_ * _loc45_ + _loc53_.u;
            _loc14_ = _loc10_ * _loc36_ + _loc37_ * _loc41_;
            _loc15_ = _loc10_ * _loc39_ + _loc37_ * _loc44_;
            _loc17_ = _loc10_ * _loc38_ + _loc37_ * _loc43_;
            _loc18_ = _loc10_ * _loc42_ + _loc37_ * _loc45_ + _loc53_.v;
            for(_loc52_ in _loc50_)
            {
               delete _loc50_[_loc52_];
            }
            _loc56_ = 0;
            while(_loc56_ < _loc34_)
            {
               _loc61_ = _loc29_[_loc56_];
               for(_loc52_ in _loc48_)
               {
                  delete _loc48_[_loc52_];
               }
               _loc64_ = _loc61_.wrapper;
               while(_loc64_ != null)
               {
                  for(_loc52_ in _loc51_[_loc64_.vertex])
                  {
                     if(_loc49_[_loc52_] && !_loc50_[_loc52_])
                     {
                        _loc48_[_loc52_] = true;
                     }
                  }
                  _loc64_ = _loc64_.next;
               }
               for(_loc52_ in _loc48_)
               {
                  _loc25_ = _loc52_;
                  if(_loc31_ * _loc25_.normalX + _loc21_ * _loc25_.normalY + _loc28_ * _loc25_.normalZ >= param1)
                  {
                     _loc62_ = _loc25_.wrapper;
                     while(_loc62_ != null)
                     {
                        _loc5_ = _loc62_.vertex;
                        _loc65_ = _loc9_ * _loc5_.x + _loc11_ * _loc5_.y + _loc12_ * _loc5_.z + _loc13_ - _loc5_.u;
                        _loc7_ = _loc14_ * _loc5_.x + _loc15_ * _loc5_.y + _loc17_ * _loc5_.z + _loc18_ - _loc5_.v;
                        if(_loc65_ > param2 || _loc65_ < -param2 || _loc7_ > param2 || _loc7_ < -param2)
                        {
                           break;
                        }
                        _loc62_ = _loc62_.next;
                     }
                     if(_loc62_ == null)
                     {
                        _loc64_ = _loc61_.wrapper;
                        while(_loc64_ != null)
                        {
                           _loc32_ = _loc64_.next != null ? _loc64_.next : _loc61_.wrapper;
                           _loc62_ = _loc25_.wrapper;
                           while(_loc62_ != null)
                           {
                              _loc46_ = _loc62_.next != null ? _loc62_.next : _loc25_.wrapper;
                              if(_loc64_.vertex == _loc46_.vertex && _loc32_.vertex == _loc62_.vertex)
                              {
                                 break;
                              }
                              _loc62_ = _loc62_.next;
                           }
                           if(_loc62_ != null)
                           {
                              break;
                           }
                           _loc64_ = _loc64_.next;
                        }
                        if(_loc64_ != null)
                        {
                           _loc29_[_loc34_] = _loc25_;
                           _loc34_++;
                           delete _loc49_[_loc25_];
                        }
                     }
                     else
                     {
                        _loc50_[_loc25_] = true;
                     }
                  }
                  else
                  {
                     _loc50_[_loc25_] = true;
                  }
               }
               _loc56_++;
            }
            if(_loc34_ == 1)
            {
               _loc61_ = _loc29_[0];
               _loc61_.next = this.faceList;
               this.faceList = _loc61_;
            }
            else
            {
               do
               {
                  _loc33_ = false;
                  _loc56_ = 0;
                  while(_loc56_ < _loc34_ - 1)
                  {
                     _loc61_ = _loc29_[_loc56_];
                     if(_loc61_ != null)
                     {
                        _loc57_ = 1;
                        for(; _loc57_ < _loc34_; _loc57_++)
                        {
                           _loc25_ = _loc29_[_loc57_];
                           if(_loc25_ != null)
                           {
                              _loc64_ = _loc61_.wrapper;
                              while(_loc64_ != null)
                              {
                                 _loc32_ = _loc64_.next != null ? _loc64_.next : _loc61_.wrapper;
                                 _loc62_ = _loc25_.wrapper;
                                 while(_loc62_ != null)
                                 {
                                    _loc46_ = _loc62_.next != null ? _loc62_.next : _loc25_.wrapper;
                                    if(_loc64_.vertex == _loc46_.vertex && _loc32_.vertex == _loc62_.vertex)
                                    {
                                       break;
                                    }
                                    _loc62_ = _loc62_.next;
                                 }
                                 if(_loc62_ != null)
                                 {
                                    break;
                                 }
                                 _loc64_ = _loc64_.next;
                              }
                              if(_loc64_ != null)
                              {
                                 while(true)
                                 {
                                    _loc8_ = _loc32_.next != null ? _loc32_.next : _loc61_.wrapper;
                                    _loc23_ = _loc25_.wrapper;
                                    while(_loc23_.next != _loc62_ && _loc23_.next != null)
                                    {
                                       _loc23_ = _loc23_.next;
                                    }
                                    if(_loc8_.vertex != _loc23_.vertex)
                                    {
                                       break;
                                    }
                                    _loc32_ = _loc8_;
                                    _loc62_ = _loc23_;
                                 }
                                 while(true)
                                 {
                                    _loc59_ = _loc61_.wrapper;
                                    while(_loc59_.next != _loc64_ && _loc59_.next != null)
                                    {
                                       _loc59_ = _loc59_.next;
                                    }
                                    _loc47_ = _loc46_.next != null ? _loc46_.next : _loc25_.wrapper;
                                    if(_loc59_.vertex != _loc47_.vertex)
                                    {
                                       break;
                                    }
                                    _loc64_ = _loc59_;
                                    _loc46_ = _loc47_;
                                 }
                                 _loc53_ = _loc64_.vertex;
                                 _loc54_ = _loc47_.vertex;
                                 _loc55_ = _loc59_.vertex;
                                 _loc19_ = _loc54_.x - _loc53_.x;
                                 _loc63_ = _loc54_.y - _loc53_.y;
                                 _loc24_ = _loc54_.z - _loc53_.z;
                                 _loc16_ = _loc55_.x - _loc53_.x;
                                 _loc35_ = _loc55_.y - _loc53_.y;
                                 _loc22_ = _loc55_.z - _loc53_.z;
                                 _loc31_ = _loc22_ * _loc63_ - _loc35_ * _loc24_;
                                 _loc21_ = _loc16_ * _loc24_ - _loc22_ * _loc19_;
                                 _loc28_ = _loc35_ * _loc19_ - _loc16_ * _loc63_;
                                 if(_loc31_ < _loc26_ && _loc31_ > -_loc26_ && _loc21_ < _loc26_ && _loc21_ > -_loc26_ && _loc28_ < _loc26_ && _loc28_ > -_loc26_)
                                 {
                                    if(_loc19_ * _loc16_ + _loc63_ * _loc35_ + _loc24_ * _loc22_ > 0)
                                    {
                                       continue;
                                    }
                                 }
                                 else if(_loc61_.normalX * _loc31_ + _loc61_.normalY * _loc21_ + _loc61_.normalZ * _loc28_ < 0)
                                 {
                                    continue;
                                 }
                                 _loc27_ = 1 / Math.sqrt(_loc19_ * _loc19_ + _loc63_ * _loc63_ + _loc24_ * _loc24_);
                                 _loc19_ *= _loc27_;
                                 _loc63_ *= _loc27_;
                                 _loc24_ *= _loc27_;
                                 _loc27_ = 1 / Math.sqrt(_loc16_ * _loc16_ + _loc35_ * _loc35_ + _loc22_ * _loc22_);
                                 _loc16_ *= _loc27_;
                                 _loc35_ *= _loc27_;
                                 _loc22_ *= _loc27_;
                                 if(_loc19_ * _loc16_ + _loc63_ * _loc35_ + _loc24_ * _loc22_ >= param3)
                                 {
                                    _loc53_ = _loc62_.vertex;
                                    _loc54_ = _loc8_.vertex;
                                    _loc55_ = _loc23_.vertex;
                                    _loc19_ = _loc54_.x - _loc53_.x;
                                    _loc63_ = _loc54_.y - _loc53_.y;
                                    _loc24_ = _loc54_.z - _loc53_.z;
                                    _loc16_ = _loc55_.x - _loc53_.x;
                                    _loc35_ = _loc55_.y - _loc53_.y;
                                    _loc22_ = _loc55_.z - _loc53_.z;
                                    _loc31_ = _loc22_ * _loc63_ - _loc35_ * _loc24_;
                                    _loc21_ = _loc16_ * _loc24_ - _loc22_ * _loc19_;
                                    _loc28_ = _loc35_ * _loc19_ - _loc16_ * _loc63_;
                                    if(_loc31_ < _loc26_ && _loc31_ > -_loc26_ && _loc21_ < _loc26_ && _loc21_ > -_loc26_ && _loc28_ < _loc26_ && _loc28_ > -_loc26_)
                                    {
                                       if(_loc19_ * _loc16_ + _loc63_ * _loc35_ + _loc24_ * _loc22_ > 0)
                                       {
                                          continue;
                                       }
                                    }
                                    else if(_loc61_.normalX * _loc31_ + _loc61_.normalY * _loc21_ + _loc61_.normalZ * _loc28_ < 0)
                                    {
                                       continue;
                                    }
                                    _loc27_ = 1 / Math.sqrt(_loc19_ * _loc19_ + _loc63_ * _loc63_ + _loc24_ * _loc24_);
                                    _loc19_ *= _loc27_;
                                    _loc63_ *= _loc27_;
                                    _loc24_ *= _loc27_;
                                    _loc27_ = 1 / Math.sqrt(_loc16_ * _loc16_ + _loc35_ * _loc35_ + _loc22_ * _loc22_);
                                    _loc16_ *= _loc27_;
                                    _loc35_ *= _loc27_;
                                    _loc22_ *= _loc27_;
                                    if(_loc19_ * _loc16_ + _loc63_ * _loc35_ + _loc24_ * _loc22_ >= param3)
                                    {
                                       _loc33_ = true;
                                       _loc58_ = new Face();
                                       _loc58_.material = _loc61_.material;
                                       _loc58_.smoothingGroups = _loc61_.smoothingGroups;
                                       _loc58_.normalX = _loc61_.normalX;
                                       _loc58_.normalY = _loc61_.normalY;
                                       _loc58_.normalZ = _loc61_.normalZ;
                                       _loc58_.offset = _loc61_.offset;
                                       _loc58_.id = _loc61_.id;
                                       _loc8_ = null;
                                       while(_loc32_ != _loc64_)
                                       {
                                          _loc47_ = new Wrapper();
                                          _loc47_.vertex = _loc32_.vertex;
                                          if(_loc8_ != null)
                                          {
                                             _loc8_.next = _loc47_;
                                          }
                                          else
                                          {
                                             _loc58_.wrapper = _loc47_;
                                          }
                                          _loc8_ = _loc47_;
                                          _loc32_ = _loc32_.next != null ? _loc32_.next : _loc61_.wrapper;
                                       }
                                       while(_loc46_ != _loc62_)
                                       {
                                          _loc47_ = new Wrapper();
                                          _loc47_.vertex = _loc46_.vertex;
                                          if(_loc8_ != null)
                                          {
                                             _loc8_.next = _loc47_;
                                          }
                                          else
                                          {
                                             _loc58_.wrapper = _loc47_;
                                          }
                                          _loc8_ = _loc47_;
                                          _loc46_ = _loc46_.next != null ? _loc46_.next : _loc25_.wrapper;
                                       }
                                       _loc29_[_loc56_] = _loc58_;
                                       _loc29_[_loc57_] = null;
                                       _loc61_ = _loc58_;
                                       if(param4)
                                       {
                                          break;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     _loc56_++;
                  }
               }
               while(_loc33_);
               _loc56_ = 0;
               while(_loc56_ < _loc34_)
               {
                  _loc61_ = _loc29_[_loc56_];
                  if(_loc61_ != null)
                  {
                     _loc61_.calculateBestSequenceAndNormal();
                     _loc61_.next = this.faceList;
                     this.faceList = _loc61_;
                  }
                  _loc56_++;
               }
            }
         }
      }
      
      private function f27fc475(param1:Vector.<Vertex>, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Vector.<int>) : void
      {
         var _loc10_:int = 0;
         var _loc12_:int = 0;
         var _loc8_:Vertex = null;
         var _loc13_:Number = NaN;
         var _loc18_:Vertex = null;
         var _loc16_:int = 0;
         var _loc15_:int = 0;
         var _loc9_:Number = NaN;
         var _loc17_:Vertex = null;
         var _loc14_:Vertex = null;
         switch(param4)
         {
            case 0:
               _loc10_ = param2;
               while(_loc10_ < param3)
               {
                  _loc8_ = param1[_loc10_];
                  _loc8_.offset = _loc8_.x;
                  _loc10_++;
               }
               _loc13_ = param5;
               break;
            case 1:
               _loc10_ = param2;
               while(_loc10_ < param3)
               {
                  _loc8_ = param1[_loc10_];
                  _loc8_.offset = _loc8_.y;
                  _loc10_++;
               }
               _loc13_ = param5;
               break;
            case 2:
               _loc10_ = param2;
               while(_loc10_ < param3)
               {
                  _loc8_ = param1[_loc10_];
                  _loc8_.offset = _loc8_.z;
                  _loc10_++;
               }
               _loc13_ = param5;
               break;
            case 3:
               _loc10_ = param2;
               while(_loc10_ < param3)
               {
                  _loc8_ = param1[_loc10_];
                  _loc8_.offset = _loc8_.u;
                  _loc10_++;
               }
               _loc13_ = param6;
               break;
            case 4:
               _loc10_ = param2;
               while(_loc10_ < param3)
               {
                  _loc8_ = param1[_loc10_];
                  _loc8_.offset = _loc8_.v;
                  _loc10_++;
               }
               _loc13_ = param6;
         }
         param7[0] = param2;
         param7[1] = param3 - 1;
         var _loc11_:int = 2;
         while(_loc11_ > 0)
         {
            _loc11_--;
            _loc12_ = _loc16_ = param7[_loc11_];
            _loc11_--;
            _loc10_ = _loc15_ = param7[_loc11_];
            _loc8_ = param1[_loc16_ + _loc15_ >> 1];
            _loc9_ = _loc8_.offset;
            while(_loc10_ <= _loc12_)
            {
               _loc17_ = param1[_loc10_];
               while(_loc17_.offset > _loc9_)
               {
                  _loc10_++;
                  _loc17_ = param1[_loc10_];
               }
               _loc14_ = param1[_loc12_];
               while(_loc14_.offset < _loc9_)
               {
                  _loc12_--;
                  _loc14_ = param1[_loc12_];
               }
               if(_loc10_ <= _loc12_)
               {
                  param1[_loc10_] = _loc14_;
                  param1[_loc12_] = _loc17_;
                  _loc10_++;
                  _loc12_--;
               }
            }
            if(_loc15_ < _loc12_)
            {
               param7[_loc11_] = _loc15_;
               _loc11_++;
               param7[_loc11_] = _loc12_;
               _loc11_++;
            }
            if(_loc10_ < _loc16_)
            {
               param7[_loc11_] = _loc10_;
               _loc11_++;
               param7[_loc11_] = _loc16_;
               _loc11_++;
            }
         }
         _loc10_ = param2;
         _loc8_ = param1[_loc10_];
         _loc12_ = _loc10_ + 1;
         while(_loc12_ <= param3)
         {
            if(_loc12_ < param3)
            {
               _loc18_ = param1[_loc12_];
            }
            if(_loc12_ == param3 || _loc8_.offset - _loc18_.offset > _loc13_)
            {
               if(param4 < 4 && _loc12_ - _loc10_ > 1)
               {
                  this.f27fc475(param1,_loc10_,_loc12_,param4 + 1,param5,param6,param7);
               }
               if(_loc12_ < param3)
               {
                  _loc10_ = _loc12_;
                  _loc8_ = param1[_loc10_];
               }
            }
            else if(param4 == 4)
            {
               _loc18_.value = _loc8_;
            }
            _loc12_++;
         }
      }
      
      public function setMaterialToAllFaces(param1:Material) : void
      {
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            _loc2_.material = param1;
            _loc2_ = _loc2_.next;
         }
      }
      
      public function calculateFacesNormals(param1:Boolean = true) : void
      {
         var _loc13_:Wrapper = null;
         var _loc2_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:Vertex = null;
         var _loc16_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Face = this.faceList;
         while(_loc9_ != null)
         {
            _loc13_ = _loc9_.wrapper;
            _loc2_ = _loc13_.vertex;
            _loc13_ = _loc13_.next;
            _loc4_ = _loc13_.vertex;
            _loc13_ = _loc13_.next;
            _loc5_ = _loc13_.vertex;
            _loc16_ = _loc4_.x - _loc2_.x;
            _loc11_ = _loc4_.y - _loc2_.y;
            _loc8_ = _loc4_.z - _loc2_.z;
            _loc14_ = _loc5_.x - _loc2_.x;
            _loc15_ = _loc5_.y - _loc2_.y;
            _loc6_ = _loc5_.z - _loc2_.z;
            _loc12_ = _loc6_ * _loc11_ - _loc15_ * _loc8_;
            _loc3_ = _loc14_ * _loc8_ - _loc6_ * _loc16_;
            _loc10_ = _loc15_ * _loc16_ - _loc14_ * _loc11_;
            if(param1)
            {
               _loc7_ = _loc12_ * _loc12_ + _loc3_ * _loc3_ + _loc10_ * _loc10_;
               if(_loc7_ > 0.001)
               {
                  _loc7_ = 1 / Math.sqrt(_loc7_);
                  _loc12_ *= _loc7_;
                  _loc3_ *= _loc7_;
                  _loc10_ *= _loc7_;
               }
            }
            _loc9_.normalX = _loc12_;
            _loc9_.normalY = _loc3_;
            _loc9_.normalZ = _loc10_;
            _loc9_.offset = _loc2_.x * _loc12_ + _loc2_.y * _loc3_ + _loc2_.z * _loc10_;
            _loc9_ = _loc9_.next;
         }
      }
      
      public function calculateVerticesNormals(param1:Boolean = false, param2:Number = 0) : void
      {
         var _loc7_:Vertex = null;
         var _loc9_:Number = NaN;
         var _loc16_:Wrapper = null;
         var _loc3_:Vertex = null;
         var _loc5_:Vertex = null;
         var _loc6_:Vertex = null;
         var _loc19_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc11_:* = undefined;
         _loc7_ = this.vertexList;
         while(_loc7_ != null)
         {
            _loc7_.normalX = 0;
            _loc7_.normalY = 0;
            _loc7_.normalZ = 0;
            _loc7_ = _loc7_.next;
         }
         var _loc12_:Face = this.faceList;
         while(_loc12_ != null)
         {
            _loc16_ = _loc12_.wrapper;
            _loc3_ = _loc16_.vertex;
            _loc16_ = _loc16_.next;
            _loc5_ = _loc16_.vertex;
            _loc16_ = _loc16_.next;
            _loc6_ = _loc16_.vertex;
            _loc19_ = _loc5_.x - _loc3_.x;
            _loc14_ = _loc5_.y - _loc3_.y;
            _loc10_ = _loc5_.z - _loc3_.z;
            _loc17_ = _loc6_.x - _loc3_.x;
            _loc18_ = _loc6_.y - _loc3_.y;
            _loc8_ = _loc6_.z - _loc3_.z;
            _loc15_ = _loc8_ * _loc14_ - _loc18_ * _loc10_;
            _loc4_ = _loc17_ * _loc10_ - _loc8_ * _loc19_;
            _loc13_ = _loc18_ * _loc19_ - _loc17_ * _loc14_;
            _loc9_ = _loc15_ * _loc15_ + _loc4_ * _loc4_ + _loc13_ * _loc13_;
            if(_loc9_ > 0.001)
            {
               _loc9_ = 1 / Math.sqrt(_loc9_);
               _loc15_ *= _loc9_;
               _loc4_ *= _loc9_;
               _loc13_ *= _loc9_;
            }
            _loc16_ = _loc12_.wrapper;
            while(_loc16_ != null)
            {
               _loc7_ = _loc16_.vertex;
               _loc7_.normalX += _loc15_;
               _loc7_.normalY += _loc4_;
               _loc7_.normalZ += _loc13_;
               _loc16_ = _loc16_.next;
            }
            _loc12_ = _loc12_.next;
         }
         if(param1)
         {
            _loc11_ = this.vertices;
            this.weldNormals(_loc11_,0,_loc11_.length,0,param2,new Vector.<int>());
         }
         _loc7_ = this.vertexList;
         while(_loc7_ != null)
         {
            _loc9_ = _loc7_.normalX * _loc7_.normalX + _loc7_.normalY * _loc7_.normalY + _loc7_.normalZ * _loc7_.normalZ;
            if(_loc9_ > 0.001)
            {
               _loc9_ = 1 / Math.sqrt(_loc9_);
               _loc7_.normalX *= _loc9_;
               _loc7_.normalY *= _loc9_;
               _loc7_.normalZ *= _loc9_;
            }
            _loc7_ = _loc7_.next;
         }
      }
      
      alternativa3d function weldNormals(param1:Vector.<Vertex>, param2:int, param3:int, param4:int, param5:Number, param6:Vector.<int>) : void
      {
         var _loc9_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc7_:Vertex = null;
         var _loc17_:Vertex = null;
         var _loc15_:int = 0;
         var _loc14_:int = 0;
         var _loc8_:Number = NaN;
         var _loc16_:Vertex = null;
         var _loc13_:Vertex = null;
         switch(param4)
         {
            case 0:
               _loc9_ = param2;
               while(_loc9_ < param3)
               {
                  _loc7_ = param1[_loc9_];
                  _loc7_.offset = _loc7_.x;
                  _loc9_++;
               }
               break;
            case 1:
               _loc9_ = param2;
               while(_loc9_ < param3)
               {
                  _loc7_ = param1[_loc9_];
                  _loc7_.offset = _loc7_.y;
                  _loc9_++;
               }
               break;
            case 2:
               _loc9_ = param2;
               while(_loc9_ < param3)
               {
                  _loc7_ = param1[_loc9_];
                  _loc7_.offset = _loc7_.z;
                  _loc9_++;
               }
         }
         param6[0] = param2;
         param6[1] = param3 - 1;
         var _loc10_:int = 2;
         while(_loc10_ > 0)
         {
            _loc10_--;
            _loc11_ = _loc15_ = param6[_loc10_];
            _loc10_--;
            _loc9_ = _loc14_ = param6[_loc10_];
            _loc7_ = param1[_loc15_ + _loc14_ >> 1];
            _loc8_ = _loc7_.offset;
            while(_loc9_ <= _loc11_)
            {
               _loc16_ = param1[_loc9_];
               while(_loc16_.offset > _loc8_)
               {
                  _loc9_++;
                  _loc16_ = param1[_loc9_];
               }
               _loc13_ = param1[_loc11_];
               while(_loc13_.offset < _loc8_)
               {
                  _loc11_--;
                  _loc13_ = param1[_loc11_];
               }
               if(_loc9_ <= _loc11_)
               {
                  param1[_loc9_] = _loc13_;
                  param1[_loc11_] = _loc16_;
                  _loc9_++;
                  _loc11_--;
               }
            }
            if(_loc14_ < _loc11_)
            {
               param6[_loc10_] = _loc14_;
               _loc10_++;
               param6[_loc10_] = _loc11_;
               _loc10_++;
            }
            if(_loc9_ < _loc15_)
            {
               param6[_loc10_] = _loc9_;
               _loc10_++;
               param6[_loc10_] = _loc15_;
               _loc10_++;
            }
         }
         _loc9_ = param2;
         _loc7_ = param1[_loc9_];
         _loc11_ = _loc9_ + 1;
         while(_loc11_ <= param3)
         {
            if(_loc11_ < param3)
            {
               _loc17_ = param1[_loc11_];
            }
            if(_loc11_ == param3 || _loc7_.offset - _loc17_.offset > param5)
            {
               if(_loc11_ - _loc9_ > 1)
               {
                  if(param4 < 2)
                  {
                     this.weldNormals(param1,_loc9_,_loc11_,param4 + 1,param5,param6);
                  }
                  else
                  {
                     _loc12_ = _loc9_ + 1;
                     while(_loc12_ < _loc11_)
                     {
                        _loc17_ = param1[_loc12_];
                        _loc7_.normalX += _loc17_.normalX;
                        _loc7_.normalY += _loc17_.normalY;
                        _loc7_.normalZ += _loc17_.normalZ;
                        _loc12_++;
                     }
                     _loc12_ = _loc9_ + 1;
                     while(_loc12_ < _loc11_)
                     {
                        _loc17_ = param1[_loc12_];
                        _loc17_.normalX = _loc7_.normalX;
                        _loc17_.normalY = _loc7_.normalY;
                        _loc17_.normalZ = _loc7_.normalZ;
                        _loc12_++;
                     }
                  }
               }
               if(_loc11_ < param3)
               {
                  _loc9_ = _loc11_;
                  _loc7_ = param1[_loc9_];
               }
            }
            _loc11_++;
         }
      }
      
      public function calculateVerticesNormalsByAngle(param1:Number, param2:Number = 0) : void
      {
      }
      
      public function calculateVerticesNormalsBySmoothingGroups(param1:Number = 0) : void
      {
      }
      
      public function optimizeForDynamicBSP(param1:int = 1) : void
      {
         var _loc4_:Face = null;
         var _loc6_:Face = null;
         var _loc20_:Face = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc7_:int = 0;
         var _loc16_:Face = null;
         var _loc23_:Wrapper = null;
         var _loc11_:Vertex = null;
         var _loc12_:Vertex = null;
         var _loc13_:Vertex = null;
         var _loc9_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc25_:Boolean = false;
         var _loc21_:Boolean = false;
         var _loc22_:Vertex = null;
         var _loc19_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:Face = this.faceList;
         while(_loc17_ < param1)
         {
            _loc6_ = null;
            _loc20_ = _loc18_;
            while(_loc20_ != null)
            {
               _loc2_ = _loc20_.normalX;
               _loc3_ = _loc20_.normalY;
               _loc5_ = _loc20_.normalZ;
               _loc14_ = _loc20_.offset;
               _loc24_ = _loc14_ - this.threshold;
               _loc15_ = _loc14_ + this.threshold;
               _loc7_ = 0;
               _loc16_ = _loc18_;
               while(_loc16_ != null)
               {
                  if(_loc16_ != _loc20_)
                  {
                     _loc23_ = _loc16_.wrapper;
                     _loc11_ = _loc23_.vertex;
                     _loc23_ = _loc23_.next;
                     _loc12_ = _loc23_.vertex;
                     _loc23_ = _loc23_.next;
                     _loc13_ = _loc23_.vertex;
                     _loc23_ = _loc23_.next;
                     _loc9_ = _loc11_.x * _loc2_ + _loc11_.y * _loc3_ + _loc11_.z * _loc5_;
                     _loc8_ = _loc12_.x * _loc2_ + _loc12_.y * _loc3_ + _loc12_.z * _loc5_;
                     _loc10_ = _loc13_.x * _loc2_ + _loc13_.y * _loc3_ + _loc13_.z * _loc5_;
                     _loc25_ = _loc9_ < _loc24_ || _loc8_ < _loc24_ || _loc10_ < _loc24_;
                     _loc21_ = _loc9_ > _loc15_ || _loc8_ > _loc15_ || _loc10_ > _loc15_;
                     while(_loc23_ != null)
                     {
                        _loc22_ = _loc23_.vertex;
                        _loc19_ = _loc22_.x * _loc2_ + _loc22_.y * _loc3_ + _loc22_.z * _loc5_;
                        if(_loc19_ < _loc24_)
                        {
                           _loc25_ = true;
                           if(_loc21_)
                           {
                              break;
                           }
                        }
                        else if(_loc19_ > _loc15_)
                        {
                           _loc21_ = true;
                           if(_loc25_)
                           {
                              break;
                           }
                        }
                        _loc23_ = _loc23_.next;
                     }
                     if(_loc21_ && _loc25_)
                     {
                        if(++_loc7_ > _loc17_)
                        {
                           break;
                        }
                     }
                  }
                  _loc16_ = _loc16_.next;
               }
               if(_loc16_ == null)
               {
                  if(_loc6_ != null)
                  {
                     _loc6_.next = _loc20_.next;
                  }
                  else
                  {
                     _loc18_ = _loc20_.next;
                  }
                  if(_loc4_ != null)
                  {
                     _loc4_.next = _loc20_;
                  }
                  else
                  {
                     this.faceList = _loc20_;
                  }
                  _loc4_ = _loc20_;
               }
               else
               {
                  _loc6_ = _loc20_;
               }
               _loc20_ = _loc20_.next;
            }
            if(_loc18_ == null)
            {
               break;
            }
            _loc17_++;
         }
         if(_loc4_ != null)
         {
            _loc4_.next = _loc18_;
         }
      }
      
      override public function calculateResolution(param1:int, param2:int, param3:int = 1, param4:Matrix3D = null) : Number
      {
         var _loc21_:Object3D = null;
         var _loc10_:Wrapper = null;
         var _loc5_:Vertex = null;
         var _loc7_:Vertex = null;
         var _loc8_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc19_:int = 0;
         if(param4 != null)
         {
            _loc21_ = new Object3D();
            _loc21_.matrix = param4;
            _loc21_.composeMatrix();
         }
         var _loc16_:Number = 1e+22;
         var _loc9_:Number = 0;
         var _loc11_:Number = 0;
         var _loc14_:Face = this.faceList;
         while(_loc14_ != null)
         {
            _loc10_ = _loc14_.wrapper;
            while(_loc10_ != null)
            {
               _loc5_ = _loc10_.vertex;
               _loc7_ = _loc10_.next != null ? _loc10_.next.vertex : _loc14_.wrapper.vertex;
               _loc8_ = _loc21_ != null ? _loc21_.ma * (_loc7_.x - _loc5_.x) + _loc21_.mb * (_loc7_.y - _loc5_.y) + _loc21_.mc * (_loc7_.z - _loc5_.z) : _loc7_.x - _loc5_.x;
               _loc13_ = _loc21_ != null ? _loc21_.me * (_loc7_.x - _loc5_.x) + _loc21_.mf * (_loc7_.y - _loc5_.y) + _loc21_.mg * (_loc7_.z - _loc5_.z) : _loc7_.y - _loc5_.y;
               _loc15_ = _loc21_ != null ? _loc21_.mi * (_loc7_.x - _loc5_.x) + _loc21_.mj * (_loc7_.y - _loc5_.y) + _loc21_.mk * (_loc7_.z - _loc5_.z) : _loc7_.z - _loc5_.z;
               _loc17_ = (_loc7_.u - _loc5_.u) * param1;
               _loc12_ = (_loc7_.v - _loc5_.v) * param2;
               _loc18_ = _loc8_ * _loc8_ + _loc13_ * _loc13_ + _loc15_ * _loc15_;
               _loc6_ = _loc17_ * _loc17_ + _loc12_ * _loc12_;
               if(_loc18_ > 0.001 && _loc6_ > 0.001)
               {
                  _loc20_ = Math.sqrt(_loc18_ / _loc6_);
                  if(_loc20_ < _loc16_)
                  {
                     _loc16_ = _loc20_;
                  }
                  if(_loc20_ > _loc9_)
                  {
                     _loc9_ = _loc20_;
                  }
                  _loc11_ += _loc20_;
                  _loc19_++;
                  if(param3 == 0)
                  {
                     break;
                  }
               }
               _loc10_ = _loc10_.next;
            }
            _loc14_ = _loc14_.next;
         }
         if(_loc19_ == 0)
         {
            return 1;
         }
         return param3 < 2 ? _loc11_ / _loc19_ : (param3 == 2 ? _loc16_ : _loc9_);
      }
      
      override public function intersectRay(param1:Vector3D, param2:Vector3D, param3:Dictionary = null, param4:Camera3D = null) : RayIntersectionData
      {
         var _loc13_:Vector3D = null;
         var _loc11_:Face = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc10_:Wrapper = null;
         var _loc19_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc18_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc30_:RayIntersectionData = null;
         if(param3 != null && param3[this])
         {
            return null;
         }
         if(!boundIntersectRay(param1,param2,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return null;
         }
         var _loc24_:Number = param1.x;
         var _loc25_:Number = param1.y;
         var _loc27_:Number = param1.z;
         var _loc21_:Number = param2.x;
         var _loc14_:Number = param2.y;
         var _loc16_:Number = param2.z;
         var _loc31_:Number = 1e+22;
         var _loc28_:Face = this.faceList;
         while(_loc28_ != null)
         {
            _loc5_ = _loc28_.normalX;
            _loc6_ = _loc28_.normalY;
            _loc7_ = _loc28_.normalZ;
            _loc9_ = _loc21_ * _loc5_ + _loc14_ * _loc6_ + _loc16_ * _loc7_;
            if(_loc9_ < 0)
            {
               _loc22_ = _loc24_ * _loc5_ + _loc25_ * _loc6_ + _loc27_ * _loc7_ - _loc28_.offset;
               if(_loc22_ > 0)
               {
                  _loc32_ = -_loc22_ / _loc9_;
                  if(_loc13_ == null || _loc32_ < _loc31_)
                  {
                     _loc15_ = _loc24_ + _loc21_ * _loc32_;
                     _loc8_ = _loc25_ + _loc14_ * _loc32_;
                     _loc12_ = _loc27_ + _loc16_ * _loc32_;
                     _loc10_ = _loc28_.wrapper;
                     while(_loc10_ != null)
                     {
                        _loc19_ = _loc10_.vertex;
                        _loc20_ = _loc10_.next != null ? _loc10_.next.vertex : _loc28_.wrapper.vertex;
                        _loc18_ = _loc20_.x - _loc19_.x;
                        _loc29_ = _loc20_.y - _loc19_.y;
                        _loc26_ = _loc20_.z - _loc19_.z;
                        _loc17_ = _loc15_ - _loc19_.x;
                        _loc33_ = _loc8_ - _loc19_.y;
                        _loc23_ = _loc12_ - _loc19_.z;
                        if((_loc23_ * _loc29_ - _loc33_ * _loc26_) * _loc5_ + (_loc17_ * _loc26_ - _loc23_ * _loc18_) * _loc6_ + (_loc33_ * _loc18_ - _loc17_ * _loc29_) * _loc7_ < 0)
                        {
                           break;
                        }
                        _loc10_ = _loc10_.next;
                     }
                     if(_loc10_ == null)
                     {
                        if(_loc32_ < _loc31_)
                        {
                           _loc31_ = _loc32_;
                           if(_loc13_ == null)
                           {
                              _loc13_ = new Vector3D();
                           }
                           _loc13_.x = _loc15_;
                           _loc13_.y = _loc8_;
                           _loc13_.z = _loc12_;
                           _loc11_ = _loc28_;
                        }
                     }
                  }
               }
            }
            _loc28_ = _loc28_.next;
         }
         if(_loc13_ != null)
         {
            _loc30_ = new RayIntersectionData();
            _loc30_.object = this;
            _loc30_.face = _loc11_;
            _loc30_.point = _loc13_;
            _loc30_.time = _loc31_;
            return _loc30_;
         }
         return null;
      }
      
      override alternativa3d function checkIntersection(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Dictionary) : Boolean
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc14_:Wrapper = null;
         var _loc19_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc18_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc24_:Face = this.faceList;
         while(_loc24_ != null)
         {
            _loc9_ = _loc24_.normalX;
            _loc10_ = _loc24_.normalY;
            _loc11_ = _loc24_.normalZ;
            _loc13_ = param4 * _loc9_ + param5 * _loc10_ + param6 * _loc11_;
            if(_loc13_ < 0)
            {
               _loc21_ = param1 * _loc9_ + param2 * _loc10_ + param3 * _loc11_ - _loc24_.offset;
               if(_loc21_ > 0)
               {
                  _loc26_ = -_loc21_ / _loc13_;
                  if(_loc26_ < param7)
                  {
                     _loc16_ = param1 + param4 * _loc26_;
                     _loc12_ = param2 + param5 * _loc26_;
                     _loc15_ = param3 + param6 * _loc26_;
                     _loc14_ = _loc24_.wrapper;
                     while(_loc14_ != null)
                     {
                        _loc19_ = _loc14_.vertex;
                        _loc20_ = _loc14_.next != null ? _loc14_.next.vertex : _loc24_.wrapper.vertex;
                        _loc18_ = _loc20_.x - _loc19_.x;
                        _loc25_ = _loc20_.y - _loc19_.y;
                        _loc23_ = _loc20_.z - _loc19_.z;
                        _loc17_ = _loc16_ - _loc19_.x;
                        _loc27_ = _loc12_ - _loc19_.y;
                        _loc22_ = _loc15_ - _loc19_.z;
                        if((_loc22_ * _loc25_ - _loc27_ * _loc23_) * _loc9_ + (_loc17_ * _loc23_ - _loc22_ * _loc18_) * _loc10_ + (_loc27_ * _loc18_ - _loc17_ * _loc25_) * _loc11_ < 0)
                        {
                           break;
                        }
                        _loc14_ = _loc14_.next;
                     }
                     if(_loc14_ == null)
                     {
                        return true;
                     }
                  }
               }
            }
            _loc24_ = _loc24_.next;
         }
         return false;
      }
      
      override alternativa3d function collectPlanes(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Vector3D, param6:Vector.<Face>, param7:Dictionary = null) : void
      {
         var _loc9_:Vertex = null;
         var _loc10_:Number = NaN;
         var _loc11_:Wrapper = null;
         if(param7 != null && param7[this])
         {
            return;
         }
         var _loc12_:Vector3D = calculateSphere(param1,param2,param3,param4,param5);
         if(!boundIntersectSphere(_loc12_,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return;
         }
         if(transformId > 500000000)
         {
            transformId = 0;
            _loc9_ = this.vertexList;
            while(_loc9_ != null)
            {
               _loc9_.transformId = 0;
               _loc9_ = _loc9_.next;
            }
         }
         transformId = transformId + 1;
         var _loc8_:Face = this.faceList;
         while(_loc8_ != null)
         {
            _loc10_ = _loc12_.x * _loc8_.normalX + _loc12_.y * _loc8_.normalY + _loc12_.z * _loc8_.normalZ - _loc8_.offset;
            if(_loc10_ < _loc12_.w && _loc10_ > -_loc12_.w)
            {
               _loc11_ = _loc8_.wrapper;
               while(_loc11_ != null)
               {
                  _loc9_ = _loc11_.vertex;
                  if(_loc9_.transformId != transformId)
                  {
                     _loc9_.cameraX = ma * _loc9_.x + mb * _loc9_.y + mc * _loc9_.z + md;
                     _loc9_.cameraY = me * _loc9_.x + mf * _loc9_.y + mg * _loc9_.z + mh;
                     _loc9_.cameraZ = mi * _loc9_.x + mj * _loc9_.y + mk * _loc9_.z + ml;
                     _loc9_.transformId = transformId;
                  }
                  _loc11_ = _loc11_.next;
               }
               param6[param6.length] = _loc8_;
            }
            _loc8_ = _loc8_.next;
         }
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Mesh = new Mesh();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         var _loc5_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc11_:Face = null;
         var _loc2_:Vertex = null;
         var _loc10_:Face = null;
         var _loc8_:Wrapper = null;
         var _loc9_:Wrapper = null;
         var _loc7_:Wrapper = null;
         super.clonePropertiesFrom(param1);
         var _loc6_:Mesh = param1 as Mesh;
         this.clipping = _loc6_.clipping;
         this.sorting = _loc6_.sorting;
         this.threshold = _loc6_.threshold;
         _loc5_ = _loc6_.vertexList;
         while(_loc5_ != null)
         {
            _loc2_ = new Vertex();
            _loc2_.x = _loc5_.x;
            _loc2_.y = _loc5_.y;
            _loc2_.z = _loc5_.z;
            _loc2_.u = _loc5_.u;
            _loc2_.v = _loc5_.v;
            _loc2_.normalX = _loc5_.normalX;
            _loc2_.normalY = _loc5_.normalY;
            _loc2_.normalZ = _loc5_.normalZ;
            _loc2_.offset = _loc5_.offset;
            _loc2_.id = _loc5_.id;
            _loc5_.value = _loc2_;
            if(_loc4_ != null)
            {
               _loc4_.next = _loc2_;
            }
            else
            {
               this.vertexList = _loc2_;
            }
            _loc4_ = _loc2_;
            _loc5_ = _loc5_.next;
         }
         var _loc3_:Face = _loc6_.faceList;
         while(_loc3_ != null)
         {
            _loc10_ = new Face();
            _loc10_.material = _loc3_.material;
            _loc10_.smoothingGroups = _loc3_.smoothingGroups;
            _loc10_.id = _loc3_.id;
            _loc10_.normalX = _loc3_.normalX;
            _loc10_.normalY = _loc3_.normalY;
            _loc10_.normalZ = _loc3_.normalZ;
            _loc10_.offset = _loc3_.offset;
            _loc8_ = null;
            _loc9_ = _loc3_.wrapper;
            while(_loc9_ != null)
            {
               _loc7_ = new Wrapper();
               _loc7_.vertex = _loc9_.vertex.value;
               if(_loc8_ != null)
               {
                  _loc8_.next = _loc7_;
               }
               else
               {
                  _loc10_.wrapper = _loc7_;
               }
               _loc8_ = _loc7_;
               _loc9_ = _loc9_.next;
            }
            if(_loc11_ != null)
            {
               _loc11_.next = _loc10_;
            }
            else
            {
               this.faceList = _loc10_;
            }
            _loc11_ = _loc10_;
            _loc3_ = _loc3_.next;
         }
         _loc5_ = _loc6_.vertexList;
         while(_loc5_ != null)
         {
            _loc5_.value = null;
            _loc5_ = _loc5_.next;
         }
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas) : void
      {
         var _loc4_:Vertex = null;
         var _loc3_:int = 0;
         if(this.faceList == null)
         {
            return;
         }
         if(this.clipping == 0)
         {
            if(culling & 1)
            {
               return;
            }
            culling = 0;
         }
         if(transformId > 500000000)
         {
            transformId = 0;
            _loc4_ = this.vertexList;
            while(_loc4_ != null)
            {
               _loc4_.transformId = 0;
               _loc4_ = _loc4_.next;
            }
         }
         transformId = transformId + 1;
         calculateInverseMatrix();
         var _loc5_:Face = this.prepareFaces(param1);
         if(_loc5_ == null)
         {
            return;
         }
         if(culling > 0)
         {
            if(this.clipping == 1)
            {
               _loc5_ = param1.cull(_loc5_,culling);
            }
            else
            {
               _loc5_ = param1.clip(_loc5_,culling);
            }
            if(_loc5_ == null)
            {
               return;
            }
         }
         if(_loc5_.processNext != null)
         {
            if(this.sorting == 1)
            {
               _loc5_ = param1.sortByAverageZ(_loc5_);
            }
            else if(this.sorting == 2)
            {
               _loc5_ = param1.sortByDynamicBSP(_loc5_,this.threshold);
            }
         }
         if(param1.debug)
         {
            _loc3_ = param1.checkInDebug(this);
            if(_loc3_ > 0)
            {
               this.drawDebug(param1,param2.getChildCanvas(true,false),_loc5_,_loc3_);
            }
         }
         this.drawFaces(param1,param2.getChildCanvas(true,false,this,alpha,blendMode,colorTransform,filters),_loc5_);
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         var _loc2_:Vertex = null;
         if(this.faceList == null)
         {
            return null;
         }
         if(transformId > 500000000)
         {
            transformId = 0;
            _loc2_ = this.vertexList;
            while(_loc2_ != null)
            {
               _loc2_.transformId = 0;
               _loc2_ = _loc2_.next;
            }
         }
         transformId = transformId + 1;
         if(this.clipping == 0)
         {
            if(culling & 1)
            {
               return null;
            }
            culling = 0;
         }
         calculateInverseMatrix();
         var _loc3_:Face = this.prepareFaces(param1);
         if(_loc3_ == null)
         {
            return null;
         }
         if(culling > 0)
         {
            if(this.clipping == 1)
            {
               _loc3_ = param1.cull(_loc3_,culling);
            }
            else
            {
               _loc3_ = param1.clip(_loc3_,culling);
            }
            if(_loc3_ == null)
            {
               return null;
            }
         }
         return VG.create(this,_loc3_,this.sorting,param1.debug ? param1.checkInDebug(this) : 0,false);
      }
      
      alternativa3d function prepareFaces(param1:Camera3D) : Face
      {
         var _loc5_:Face = null;
         var _loc3_:Face = null;
         var _loc8_:Wrapper = null;
         var _loc4_:Vertex = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:Face = this.faceList;
         while(_loc2_ != null)
         {
            if(_loc2_.normalX * imd + _loc2_.normalY * imh + _loc2_.normalZ * iml > _loc2_.offset)
            {
               _loc8_ = _loc2_.wrapper;
               while(_loc8_ != null)
               {
                  _loc4_ = _loc8_.vertex;
                  if(_loc4_.transformId != transformId)
                  {
                     _loc6_ = _loc4_.x;
                     _loc7_ = _loc4_.y;
                     _loc9_ = _loc4_.z;
                     _loc4_.cameraX = ma * _loc6_ + mb * _loc7_ + mc * _loc9_ + md;
                     _loc4_.cameraY = me * _loc6_ + mf * _loc7_ + mg * _loc9_ + mh;
                     _loc4_.cameraZ = mi * _loc6_ + mj * _loc7_ + mk * _loc9_ + ml;
                     _loc4_.transformId = transformId;
                     _loc4_.drawId = 0;
                  }
                  _loc8_ = _loc8_.next;
               }
               if(_loc5_ != null)
               {
                  _loc3_.processNext = _loc2_;
               }
               else
               {
                  _loc5_ = _loc2_;
               }
               _loc3_ = _loc2_;
            }
            _loc2_ = _loc2_.next;
         }
         if(_loc3_ != null)
         {
            _loc3_.processNext = null;
         }
         return _loc5_;
      }
      
      alternativa3d function drawDebug(param1:Camera3D, param2:Canvas, param3:Face, param4:int) : void
      {
         if(param4 & 0x10)
         {
            Debug.drawEdges(param1,param2,param3,16777215);
         }
         if(param4 & 8)
         {
            Debug.drawBounds(param1,param2,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
         }
      }
      
      alternativa3d function drawFaces(param1:Camera3D, param2:Canvas, param3:Face) : void
      {
         var _loc4_:Face = null;
         var _loc5_:Face = param3;
         while(_loc5_ != null)
         {
            _loc4_ = _loc5_.processNext;
            if(_loc4_ == null || _loc4_.material != param3.material)
            {
               _loc5_.processNext = null;
               if(param3.material != null)
               {
                  param3.material.draw(param1,param2,param3,ml);
               }
               else
               {
                  while(param3 != null)
                  {
                     _loc5_ = param3.processNext;
                     param3.processNext = null;
                     param3 = _loc5_;
                  }
               }
               param3 = _loc4_;
            }
            _loc5_ = _loc4_;
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
      
      override alternativa3d function split(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Number) : Vector.<Object3D>
      {
         var _loc21_:Vertex = null;
         var _loc18_:Vertex = null;
         var _loc10_:Face = null;
         var _loc22_:Face = null;
         var _loc5_:Face = null;
         var _loc23_:Wrapper = null;
         var _loc13_:Vertex = null;
         var _loc11_:Vertex = null;
         var _loc15_:Vertex = null;
         var _loc29_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc8_:Face = null;
         var _loc14_:Face = null;
         var _loc24_:Wrapper = null;
         var _loc9_:Wrapper = null;
         var _loc26_:Wrapper = null;
         var _loc20_:Number = NaN;
         var _loc28_:Vertex = null;
         var _loc25_:Vector.<Object3D> = new Vector.<Object3D>(2);
         var _loc6_:Vector3D = calculatePlane(param1,param2,param3);
         var _loc27_:Number = _loc6_.w - param4;
         var _loc12_:Number = _loc6_.w + param4;
         _loc21_ = this.vertexList;
         while(_loc21_ != null)
         {
            _loc18_ = _loc21_.next;
            _loc21_.next = null;
            _loc21_.offset = _loc21_.x * _loc6_.x + _loc21_.y * _loc6_.y + _loc21_.z * _loc6_.z;
            if(_loc21_.offset >= _loc27_ && _loc21_.offset <= _loc12_)
            {
               _loc21_.value = new Vertex();
               _loc21_.value.x = _loc21_.x;
               _loc21_.value.y = _loc21_.y;
               _loc21_.value.z = _loc21_.z;
               _loc21_.value.u = _loc21_.u;
               _loc21_.value.v = _loc21_.v;
               _loc21_.value.normalX = _loc21_.normalX;
               _loc21_.value.normalY = _loc21_.normalY;
               _loc21_.value.normalZ = _loc21_.normalZ;
            }
            _loc21_.transformId = 0;
            _loc21_ = _loc18_;
         }
         this.vertexList = null;
         var _loc7_:Face = this.faceList;
         this.faceList = null;
         var _loc30_:Mesh = this.clone() as Mesh;
         var _loc16_:Mesh = this.clone() as Mesh;
         var _loc17_:Face = _loc7_;
         while(_loc17_ != null)
         {
            _loc5_ = _loc17_.next;
            _loc23_ = _loc17_.wrapper;
            _loc13_ = _loc23_.vertex;
            _loc23_ = _loc23_.next;
            _loc11_ = _loc23_.vertex;
            _loc23_ = _loc23_.next;
            _loc15_ = _loc23_.vertex;
            _loc29_ = _loc13_.offset < _loc27_ || _loc11_.offset < _loc27_ || _loc15_.offset < _loc27_;
            _loc19_ = _loc13_.offset > _loc12_ || _loc11_.offset > _loc12_ || _loc15_.offset > _loc12_;
            _loc23_ = _loc23_.next;
            while(_loc23_ != null)
            {
               _loc21_ = _loc23_.vertex;
               if(_loc21_.offset < _loc27_)
               {
                  _loc29_ = true;
               }
               else if(_loc21_.offset > _loc12_)
               {
                  _loc19_ = true;
               }
               _loc23_ = _loc23_.next;
            }
            if(!_loc29_)
            {
               if(_loc22_ != null)
               {
                  _loc22_.next = _loc17_;
               }
               else
               {
                  _loc16_.faceList = _loc17_;
               }
               _loc22_ = _loc17_;
            }
            else if(!_loc19_)
            {
               if(_loc10_ != null)
               {
                  _loc10_.next = _loc17_;
               }
               else
               {
                  _loc30_.faceList = _loc17_;
               }
               _loc10_ = _loc17_;
               _loc23_ = _loc17_.wrapper;
               while(_loc23_ != null)
               {
                  if(_loc23_.vertex.value != null)
                  {
                     _loc23_.vertex = _loc23_.vertex.value;
                  }
                  _loc23_ = _loc23_.next;
               }
            }
            else
            {
               _loc8_ = new Face();
               _loc14_ = new Face();
               _loc24_ = null;
               _loc9_ = null;
               _loc23_ = _loc17_.wrapper.next.next;
               while(_loc23_.next != null)
               {
                  _loc23_ = _loc23_.next;
               }
               _loc13_ = _loc23_.vertex;
               _loc23_ = _loc17_.wrapper;
               while(_loc23_ != null)
               {
                  _loc11_ = _loc23_.vertex;
                  if(_loc13_.offset < _loc27_ && _loc11_.offset > _loc12_ || _loc13_.offset > _loc12_ && _loc11_.offset < _loc27_)
                  {
                     _loc20_ = (_loc6_.w - _loc13_.offset) / (_loc11_.offset - _loc13_.offset);
                     _loc21_ = new Vertex();
                     _loc21_.x = _loc13_.x + (_loc11_.x - _loc13_.x) * _loc20_;
                     _loc21_.y = _loc13_.y + (_loc11_.y - _loc13_.y) * _loc20_;
                     _loc21_.z = _loc13_.z + (_loc11_.z - _loc13_.z) * _loc20_;
                     _loc21_.u = _loc13_.u + (_loc11_.u - _loc13_.u) * _loc20_;
                     _loc21_.v = _loc13_.v + (_loc11_.v - _loc13_.v) * _loc20_;
                     _loc21_.normalX = _loc13_.normalX + (_loc11_.normalX - _loc13_.normalX) * _loc20_;
                     _loc21_.normalY = _loc13_.normalY + (_loc11_.normalY - _loc13_.normalY) * _loc20_;
                     _loc21_.normalZ = _loc13_.normalZ + (_loc11_.normalZ - _loc13_.normalZ) * _loc20_;
                     _loc26_ = new Wrapper();
                     _loc26_.vertex = _loc21_;
                     if(_loc24_ != null)
                     {
                        _loc24_.next = _loc26_;
                     }
                     else
                     {
                        _loc8_.wrapper = _loc26_;
                     }
                     _loc24_ = _loc26_;
                     _loc28_ = new Vertex();
                     _loc28_.x = _loc21_.x;
                     _loc28_.y = _loc21_.y;
                     _loc28_.z = _loc21_.z;
                     _loc28_.u = _loc21_.u;
                     _loc28_.v = _loc21_.v;
                     _loc28_.normalX = _loc21_.normalX;
                     _loc28_.normalY = _loc21_.normalY;
                     _loc28_.normalZ = _loc21_.normalZ;
                     _loc26_ = new Wrapper();
                     _loc26_.vertex = _loc28_;
                     if(_loc9_ != null)
                     {
                        _loc9_.next = _loc26_;
                     }
                     else
                     {
                        _loc14_.wrapper = _loc26_;
                     }
                     _loc9_ = _loc26_;
                  }
                  if(_loc11_.offset < _loc27_)
                  {
                     _loc26_ = _loc23_.create();
                     _loc26_.vertex = _loc11_;
                     if(_loc24_ != null)
                     {
                        _loc24_.next = _loc26_;
                     }
                     else
                     {
                        _loc8_.wrapper = _loc26_;
                     }
                     _loc24_ = _loc26_;
                  }
                  else if(_loc11_.offset > _loc12_)
                  {
                     _loc26_ = _loc23_.create();
                     _loc26_.vertex = _loc11_;
                     if(_loc9_ != null)
                     {
                        _loc9_.next = _loc26_;
                     }
                     else
                     {
                        _loc14_.wrapper = _loc26_;
                     }
                     _loc9_ = _loc26_;
                  }
                  else
                  {
                     _loc26_ = _loc23_.create();
                     _loc26_.vertex = _loc11_.value;
                     if(_loc24_ != null)
                     {
                        _loc24_.next = _loc26_;
                     }
                     else
                     {
                        _loc8_.wrapper = _loc26_;
                     }
                     _loc24_ = _loc26_;
                     _loc26_ = _loc23_.create();
                     _loc26_.vertex = _loc11_;
                     if(_loc9_ != null)
                     {
                        _loc9_.next = _loc26_;
                     }
                     else
                     {
                        _loc14_.wrapper = _loc26_;
                     }
                     _loc9_ = _loc26_;
                  }
                  _loc13_ = _loc11_;
                  _loc23_ = _loc23_.next;
               }
               _loc8_.material = _loc17_.material;
               _loc8_.calculateBestSequenceAndNormal();
               if(_loc10_ != null)
               {
                  _loc10_.next = _loc8_;
               }
               else
               {
                  _loc30_.faceList = _loc8_;
               }
               _loc10_ = _loc8_;
               _loc14_.material = _loc17_.material;
               _loc14_.calculateBestSequenceAndNormal();
               if(_loc22_ != null)
               {
                  _loc22_.next = _loc14_;
               }
               else
               {
                  _loc16_.faceList = _loc14_;
               }
               _loc22_ = _loc14_;
            }
            _loc17_ = _loc5_;
         }
         if(_loc10_ != null)
         {
            _loc10_.next = null;
            _loc30_.transformId++;
            _loc30_.c6df1b0c();
            _loc30_.calculateBounds();
            _loc25_[0] = _loc30_;
         }
         if(_loc22_ != null)
         {
            _loc22_.next = null;
            _loc16_.transformId++;
            _loc16_.c6df1b0c();
            _loc16_.calculateBounds();
            _loc25_[1] = _loc16_;
         }
         return _loc25_;
      }
      
      private function c6df1b0c() : void
      {
         var _loc3_:Wrapper = null;
         var _loc2_:Vertex = null;
         var _loc1_:Face = this.faceList;
         while(_loc1_ != null)
         {
            _loc3_ = _loc1_.wrapper;
            while(_loc3_ != null)
            {
               _loc2_ = _loc3_.vertex;
               if(_loc2_.transformId != transformId)
               {
                  _loc2_.next = this.vertexList;
                  this.vertexList = _loc2_;
                  _loc2_.transformId = transformId;
                  _loc2_.value = null;
               }
               _loc3_ = _loc3_.next;
            }
            _loc1_ = _loc1_.next;
         }
      }
   }
}

