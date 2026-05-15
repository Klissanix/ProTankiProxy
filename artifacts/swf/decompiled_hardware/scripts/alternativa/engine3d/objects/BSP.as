package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class BSP extends Object3D
   {
      
      public var clipping:int = 2;
      
      public var threshold:Number = 0.01;
      
      public var splitAnalysis:Boolean = true;
      
      alternativa3d var vertexList:Vertex;
      
      alternativa3d var root:Node;
      
      alternativa3d var faces:Vector.<Face> = new Vector.<Face>();
      
      alternativa3d var vertexBuffer:VertexBufferResource;
      
      alternativa3d var indexBuffer:IndexBufferResource;
      
      alternativa3d var numTriangles:int;
      
      public function BSP()
      {
         super();
      }
      
      public function createTree(param1:Mesh, param2:Boolean = false) : void
      {
         var _loc5_:int = 0;
         this.destroyTree();
         if(!param2)
         {
            param1 = param1.clone() as Mesh;
         }
         var _loc6_:Face = param1.faceList;
         this.vertexList = param1.vertexList;
         param1.faceList = null;
         param1.vertexList = null;
         var _loc4_:Vertex = this.vertexList;
         while(_loc4_ != null)
         {
            _loc4_.transformId = 0;
            _loc4_ = _loc4_.next;
         }
         var _loc3_:Face = _loc6_;
         while(_loc3_ != null)
         {
            _loc3_.calculateBestSequenceAndNormal();
            this.faces[_loc5_] = _loc3_;
            _loc5_++;
            _loc3_ = _loc3_.next;
         }
         if(_loc6_ != null)
         {
            this.root = this.d3b5165(_loc6_);
         }
         calculateBounds();
      }
      
      public function destroyTree() : void
      {
         this.deleteResources();
         this.vertexList = null;
         if(this.root != null)
         {
            this.f1c2e5d3(this.root);
            this.root = null;
         }
         this.faces.length = 0;
      }
      
      public function setMaterialToAllFaces(param1:Material) : void
      {
         var _loc2_:Face = null;
         var _loc3_:int = 0;
         this.deleteResources();
         var _loc4_:int = int(this.faces.length);
         while(_loc3_ < _loc4_)
         {
            _loc2_ = this.faces[_loc3_];
            _loc2_.material = param1;
            _loc3_++;
         }
         if(this.root != null)
         {
            this.f64ba26e(this.root,param1);
         }
      }
      
      override public function intersectRay(param1:Vector3D, param2:Vector3D, param3:Dictionary = null, param4:Camera3D = null) : RayIntersectionData
      {
         if(param3 != null && param3[this] || this.root == null)
         {
            return null;
         }
         if(!boundIntersectRay(param1,param2,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return null;
         }
         return this.b25cb5ee(this.root,param1.x,param1.y,param1.z,param2.x,param2.y,param2.z);
      }
      
      private function b25cb5ee(param1:Node, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : RayIntersectionData
      {
         var _loc11_:RayIntersectionData = null;
         var _loc13_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc24_:Face = null;
         var _loc14_:Wrapper = null;
         var _loc19_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc18_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc8_:Number = param1.normalX;
         var _loc9_:Number = param1.normalY;
         var _loc10_:Number = param1.normalZ;
         var _loc21_:Number = _loc8_ * param2 + _loc9_ * param3 + _loc10_ * param4 - param1.offset;
         if(_loc21_ > 0)
         {
            if(param1.positive != null)
            {
               _loc11_ = this.b25cb5ee(param1.positive,param2,param3,param4,param5,param6,param7);
               if(_loc11_ != null)
               {
                  return _loc11_;
               }
            }
            _loc13_ = param5 * _loc8_ + param6 * _loc9_ + param7 * _loc10_;
            if(_loc13_ < 0)
            {
               _loc26_ = -_loc21_ / _loc13_;
               _loc16_ = param2 + param5 * _loc26_;
               _loc12_ = param3 + param6 * _loc26_;
               _loc15_ = param4 + param7 * _loc26_;
               _loc24_ = param1.faceList;
               while(_loc24_ != null)
               {
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
                     if((_loc22_ * _loc25_ - _loc27_ * _loc23_) * _loc8_ + (_loc17_ * _loc23_ - _loc22_ * _loc18_) * _loc9_ + (_loc27_ * _loc18_ - _loc17_ * _loc25_) * _loc10_ < 0)
                     {
                        break;
                     }
                     _loc14_ = _loc14_.next;
                  }
                  if(_loc14_ == null)
                  {
                     _loc11_ = new RayIntersectionData();
                     _loc11_.object = this;
                     _loc11_.face = _loc24_;
                     _loc11_.point = new Vector3D(_loc16_,_loc12_,_loc15_);
                     _loc11_.time = _loc26_;
                     return _loc11_;
                  }
                  _loc24_ = _loc24_.next;
               }
               if(param1.negative != null)
               {
                  return this.b25cb5ee(param1.negative,param2,param3,param4,param5,param6,param7);
               }
            }
         }
         else
         {
            if(param1.negative != null)
            {
               _loc11_ = this.b25cb5ee(param1.negative,param2,param3,param4,param5,param6,param7);
               if(_loc11_ != null)
               {
                  return _loc11_;
               }
            }
            if(param1.positive != null && param5 * _loc8_ + param6 * _loc9_ + param7 * _loc10_ > 0)
            {
               return this.b25cb5ee(param1.positive,param2,param3,param4,param5,param6,param7);
            }
         }
         return null;
      }
      
      override alternativa3d function checkIntersection(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Dictionary) : Boolean
      {
         return this.root != null ? this.a3c0be1c(this.root,param1,param2,param3,param4,param5,param6,param7) : false;
      }
      
      private function a3c0be1c(param1:Node, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : Boolean
      {
         var _loc13_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc24_:Face = null;
         var _loc14_:Wrapper = null;
         var _loc19_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc18_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc9_:Number = param1.normalX;
         var _loc10_:Number = param1.normalY;
         var _loc11_:Number = param1.normalZ;
         var _loc21_:Number = _loc9_ * param2 + _loc10_ * param3 + _loc11_ * param4 - param1.offset;
         if(_loc21_ > 0)
         {
            _loc13_ = param5 * _loc9_ + param6 * _loc10_ + param7 * _loc11_;
            if(_loc13_ < 0)
            {
               _loc26_ = -_loc21_ / _loc13_;
               if(_loc26_ < param8)
               {
                  _loc16_ = param2 + param5 * _loc26_;
                  _loc12_ = param3 + param6 * _loc26_;
                  _loc15_ = param4 + param7 * _loc26_;
                  _loc24_ = param1.faceList;
                  while(_loc24_ != null)
                  {
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
                     _loc24_ = _loc24_.next;
                  }
                  if(param1.negative != null && this.a3c0be1c(param1.negative,param2,param3,param4,param5,param6,param7,param8))
                  {
                     return true;
                  }
               }
            }
            return param1.positive != null && this.a3c0be1c(param1.positive,param2,param3,param4,param5,param6,param7,param8);
         }
         if(param1.negative != null && this.a3c0be1c(param1.negative,param2,param3,param4,param5,param6,param7,param8))
         {
            return true;
         }
         if(param1.positive != null)
         {
            _loc13_ = param5 * _loc9_ + param6 * _loc10_ + param7 * _loc11_;
            return _loc13_ > 0 && -_loc21_ / _loc13_ < param8 && this.a3c0be1c(param1.positive,param2,param3,param4,param5,param6,param7,param8);
         }
         return false;
      }
      
      override alternativa3d function collectPlanes(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Vector3D, param6:Vector.<Face>, param7:Dictionary = null) : void
      {
         if(param7 != null && param7[this] || this.root == null)
         {
            return;
         }
         var _loc8_:Vector3D = calculateSphere(param1,param2,param3,param4,param5);
         if(!boundIntersectSphere(_loc8_,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return;
         }
         this.cb9714d(this.root,_loc8_,param6);
      }
      
      private function cb9714d(param1:Node, param2:Vector3D, param3:Vector.<Face>) : void
      {
         var _loc4_:Face = null;
         var _loc5_:Vertex = null;
         var _loc7_:Wrapper = null;
         var _loc6_:Number = param1.normalX * param2.x + param1.normalY * param2.y + param1.normalZ * param2.z - param1.offset;
         if(_loc6_ >= param2.w)
         {
            if(param1.positive != null)
            {
               this.cb9714d(param1.positive,param2,param3);
            }
         }
         else if(_loc6_ <= -param2.w)
         {
            if(param1.negative != null)
            {
               this.cb9714d(param1.negative,param2,param3);
            }
         }
         else
         {
            _loc4_ = param1.faceList;
            while(_loc4_ != null)
            {
               _loc7_ = _loc4_.wrapper;
               while(_loc7_ != null)
               {
                  _loc5_ = _loc7_.vertex;
                  _loc5_.cameraX = ma * _loc5_.x + mb * _loc5_.y + mc * _loc5_.z + md;
                  _loc5_.cameraY = me * _loc5_.x + mf * _loc5_.y + mg * _loc5_.z + mh;
                  _loc5_.cameraZ = mi * _loc5_.x + mj * _loc5_.y + mk * _loc5_.z + ml;
                  _loc7_ = _loc7_.next;
               }
               param3[param3.length] = _loc4_;
               _loc4_ = _loc4_.next;
            }
            if(param1.positive != null)
            {
               this.cb9714d(param1.positive,param2,param3);
            }
            if(param1.negative != null)
            {
               this.cb9714d(param1.negative,param2,param3);
            }
         }
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:BSP = new BSP();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         var _loc2_:Vertex = null;
         var _loc10_:Vertex = null;
         var _loc8_:Vertex = null;
         var _loc9_:Face = null;
         var _loc7_:Face = null;
         var _loc11_:Wrapper = null;
         var _loc6_:Wrapper = null;
         var _loc4_:Wrapper = null;
         var _loc5_:int = 0;
         super.clonePropertiesFrom(param1);
         var _loc3_:BSP = param1 as BSP;
         this.clipping = _loc3_.clipping;
         this.threshold = _loc3_.threshold;
         this.splitAnalysis = _loc3_.splitAnalysis;
         _loc2_ = _loc3_.vertexList;
         while(_loc2_ != null)
         {
            _loc8_ = new Vertex();
            _loc8_.x = _loc2_.x;
            _loc8_.y = _loc2_.y;
            _loc8_.z = _loc2_.z;
            _loc8_.u = _loc2_.u;
            _loc8_.v = _loc2_.v;
            _loc8_.normalX = _loc2_.normalX;
            _loc8_.normalY = _loc2_.normalY;
            _loc8_.normalZ = _loc2_.normalZ;
            _loc2_.value = _loc8_;
            if(_loc10_ != null)
            {
               _loc10_.next = _loc8_;
            }
            else
            {
               this.vertexList = _loc8_;
            }
            _loc10_ = _loc8_;
            _loc2_ = _loc2_.next;
         }
         var _loc13_:Dictionary = new Dictionary();
         var _loc12_:int = int(_loc3_.faces.length);
         while(_loc5_ < _loc12_)
         {
            _loc9_ = _loc3_.faces[_loc5_];
            _loc7_ = new Face();
            _loc7_.material = _loc9_.material;
            _loc7_.smoothingGroups = _loc9_.smoothingGroups;
            _loc7_.normalX = _loc9_.normalX;
            _loc7_.normalY = _loc9_.normalY;
            _loc7_.normalZ = _loc9_.normalZ;
            _loc7_.offset = _loc9_.offset;
            _loc11_ = null;
            _loc6_ = _loc9_.wrapper;
            while(_loc6_ != null)
            {
               _loc4_ = new Wrapper();
               _loc4_.vertex = _loc6_.vertex.value;
               if(_loc11_ != null)
               {
                  _loc11_.next = _loc4_;
               }
               else
               {
                  _loc7_.wrapper = _loc4_;
               }
               _loc11_ = _loc4_;
               _loc6_ = _loc6_.next;
            }
            this.faces[_loc5_] = _loc7_;
            _loc13_[_loc9_] = _loc7_;
            _loc5_++;
         }
         if(_loc3_.root != null)
         {
            this.root = _loc3_.e25c83db(_loc3_.root,_loc13_);
         }
         _loc2_ = _loc3_.vertexList;
         while(_loc2_ != null)
         {
            _loc2_.value = null;
            _loc2_ = _loc2_.next;
         }
      }
      
      private function e25c83db(param1:Node, param2:Dictionary) : Node
      {
         var _loc5_:Face = null;
         var _loc9_:Face = null;
         var _loc7_:Wrapper = null;
         var _loc8_:Wrapper = null;
         var _loc6_:Wrapper = null;
         var _loc3_:Node = new Node();
         var _loc4_:Face = param1.faceList;
         while(_loc4_ != null)
         {
            _loc9_ = param2[_loc4_];
            if(_loc9_ == null)
            {
               _loc9_ = new Face();
               _loc9_.material = _loc4_.material;
               _loc9_.normalX = _loc4_.normalX;
               _loc9_.normalY = _loc4_.normalY;
               _loc9_.normalZ = _loc4_.normalZ;
               _loc9_.offset = _loc4_.offset;
               _loc7_ = null;
               _loc8_ = _loc4_.wrapper;
               while(_loc8_ != null)
               {
                  _loc6_ = new Wrapper();
                  _loc6_.vertex = _loc8_.vertex.value;
                  if(_loc7_ != null)
                  {
                     _loc7_.next = _loc6_;
                  }
                  else
                  {
                     _loc9_.wrapper = _loc6_;
                  }
                  _loc7_ = _loc6_;
                  _loc8_ = _loc8_.next;
               }
            }
            if(_loc3_.faceList != null)
            {
               _loc5_.next = _loc9_;
            }
            else
            {
               _loc3_.faceList = _loc9_;
            }
            _loc5_ = _loc9_;
            _loc4_ = _loc4_.next;
         }
         _loc3_.normalX = param1.normalX;
         _loc3_.normalY = param1.normalY;
         _loc3_.normalZ = param1.normalZ;
         _loc3_.offset = param1.offset;
         if(param1.negative != null)
         {
            _loc3_.negative = this.e25c83db(param1.negative,param2);
         }
         if(param1.positive != null)
         {
            _loc3_.positive = this.e25c83db(param1.positive,param2);
         }
         return _loc3_;
      }
      
      private function f64ba26e(param1:Node, param2:Material) : void
      {
         var _loc3_:Face = param1.faceList;
         while(_loc3_ != null)
         {
            _loc3_.material = param2;
            _loc3_ = _loc3_.next;
         }
         if(param1.negative != null)
         {
            this.f64ba26e(param1.negative,param2);
         }
         if(param1.positive != null)
         {
            this.f64ba26e(param1.positive,param2);
         }
      }
      
      override alternativa3d function draw(param1:Camera3D) : void
      {
         var _loc7_:Face = null;
         var _loc2_:Face = null;
         var _loc6_:Face = null;
         var _loc3_:Face = null;
         var _loc5_:Vertex = null;
         if(this.root == null)
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
         this.prepareResources();
         if(useDepth = !param1.view.constrained && (param1.softTransparency && param1.softTransparencyStrength > 0 || param1.ssao && param1.ssaoStrength > 0 || param1.deferredLighting && param1.deferredLightingStrength > 0) && concatenatedAlpha >= depthMapAlphaThreshold)
         {
            param1.depthObjects[param1.depthCount] = this;
            param1.depthCount++;
         }
         var _loc4_:int = int(param1.debug ? param1.checkInDebug(this) : 0);
         var _loc8_:Face = this.faces[0];
         if(concatenatedAlpha >= 1 && concatenatedBlendMode == "normal" && _loc8_.material != null && (!_loc8_.material.transparent || _loc8_.material.alphaTestThreshold > 0))
         {
            param1.addOpaque(_loc8_.material,this.vertexBuffer,this.indexBuffer,0,this.numTriangles,this);
            if(_loc4_ > 0)
            {
               if(_loc4_ & 0x10)
               {
                  Debug.drawEdges(param1,null,16777215);
               }
               if(_loc4_ & 8)
               {
                  Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
         }
         else
         {
            if(transformId > 500000000)
            {
               transformId = 0;
               _loc5_ = this.vertexList;
               while(_loc5_ != null)
               {
                  _loc5_.transformId = 0;
                  _loc5_ = _loc5_.next;
               }
            }
            transformId = transformId + 1;
            calculateInverseMatrix();
            _loc7_ = this.d1dfe181(this.root);
            if(_loc7_ == null)
            {
               return;
            }
            if(culling > 0)
            {
               if(this.clipping == 1)
               {
                  _loc7_ = param1.cull(_loc7_,culling);
               }
               else
               {
                  _loc7_ = param1.clip(_loc7_,culling);
               }
               if(_loc7_ == null)
               {
                  return;
               }
            }
            if(_loc4_ > 0)
            {
               if(_loc4_ & 0x10)
               {
                  Debug.drawEdges(param1,_loc7_,16777215);
               }
               if(_loc4_ & 8)
               {
                  Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            _loc3_ = _loc7_;
            while(_loc3_ != null)
            {
               _loc2_ = _loc3_.processNext;
               if(_loc2_ == null || _loc2_.material != _loc7_.material)
               {
                  _loc3_.processNext = null;
                  if(_loc7_.material != null)
                  {
                     _loc7_.processNegative = _loc6_;
                     _loc6_ = _loc7_;
                  }
                  else
                  {
                     while(_loc7_ != null)
                     {
                        _loc3_ = _loc7_.processNext;
                        _loc7_.processNext = null;
                        _loc7_ = _loc3_;
                     }
                  }
                  _loc7_ = _loc2_;
               }
               _loc3_ = _loc2_;
            }
            _loc7_ = _loc6_;
            while(_loc7_ != null)
            {
               _loc2_ = _loc7_.processNegative;
               _loc7_.processNegative = null;
               param1.addTransparent(_loc7_,this);
               _loc7_ = _loc2_;
            }
         }
         transformConst[0] = ma;
         transformConst[1] = mb;
         transformConst[2] = mc;
         transformConst[3] = md;
         transformConst[4] = me;
         transformConst[5] = mf;
         transformConst[6] = mg;
         transformConst[7] = mh;
         transformConst[8] = mi;
         transformConst[9] = mj;
         transformConst[10] = mk;
         transformConst[11] = ml;
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         var _loc4_:Face = null;
         var _loc3_:Vertex = null;
         if(this.root == null)
         {
            return null;
         }
         if(this.clipping == 0)
         {
            if(culling & 1)
            {
               return null;
            }
            culling = 0;
         }
         this.prepareResources();
         if(useDepth = !param1.view.constrained && (param1.softTransparency && param1.softTransparencyStrength > 0 || param1.ssao && param1.ssaoStrength > 0 || param1.deferredLighting && param1.deferredLightingStrength > 0) && concatenatedAlpha >= depthMapAlphaThreshold)
         {
            param1.depthObjects[param1.depthCount] = this;
            param1.depthCount++;
         }
         var _loc2_:int = int(param1.debug ? param1.checkInDebug(this) : 0);
         var _loc5_:Face = this.faces[0];
         if(concatenatedAlpha >= 1 && concatenatedBlendMode == "normal" && _loc5_.material != null && (!_loc5_.material.transparent || _loc5_.material.alphaTestThreshold > 0))
         {
            param1.addOpaque(_loc5_.material,this.vertexBuffer,this.indexBuffer,0,this.numTriangles,this);
            if(_loc2_ > 0)
            {
               if(_loc2_ & 0x10)
               {
                  Debug.drawEdges(param1,null,16777215);
               }
               if(_loc2_ & 8)
               {
                  Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            transformConst[0] = ma;
            transformConst[1] = mb;
            transformConst[2] = mc;
            transformConst[3] = md;
            transformConst[4] = me;
            transformConst[5] = mf;
            transformConst[6] = mg;
            transformConst[7] = mh;
            transformConst[8] = mi;
            transformConst[9] = mj;
            transformConst[10] = mk;
            transformConst[11] = ml;
            return null;
         }
         if(transformId > 500000000)
         {
            transformId = 0;
            _loc3_ = this.vertexList;
            while(_loc3_ != null)
            {
               _loc3_.transformId = 0;
               _loc3_ = _loc3_.next;
            }
         }
         transformId = transformId + 1;
         calculateInverseMatrix();
         transformConst[0] = ma;
         transformConst[1] = mb;
         transformConst[2] = mc;
         transformConst[3] = md;
         transformConst[4] = me;
         transformConst[5] = mf;
         transformConst[6] = mg;
         transformConst[7] = mh;
         transformConst[8] = mi;
         transformConst[9] = mj;
         transformConst[10] = mk;
         transformConst[11] = ml;
         _loc4_ = this.b1b2218c(this.root,culling,param1);
         if(_loc4_ != null)
         {
            return VG.create(this,_loc4_,3,_loc2_,false);
         }
         return null;
      }
      
      alternativa3d function prepareResources() : void
      {
         var _loc10_:* = undefined;
         var _loc11_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:Vertex = null;
         var _loc8_:* = undefined;
         var _loc1_:int = 0;
         var _loc4_:* = null;
         var _loc9_:Wrapper = null;
         var _loc2_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(this.vertexBuffer == null)
         {
            _loc10_ = new Vector.<Number>();
            _loc11_ = 0;
            _loc3_ = 0;
            _loc7_ = this.vertexList;
            while(_loc7_ != null)
            {
               _loc10_[_loc11_] = _loc7_.x;
               _loc11_++;
               _loc10_[_loc11_] = _loc7_.y;
               _loc11_++;
               _loc10_[_loc11_] = _loc7_.z;
               _loc11_++;
               _loc10_[_loc11_] = _loc7_.u;
               _loc11_++;
               _loc10_[_loc11_] = _loc7_.v;
               _loc11_++;
               _loc10_[_loc11_] = _loc7_.normalX;
               _loc11_++;
               _loc10_[_loc11_] = _loc7_.normalY;
               _loc11_++;
               _loc10_[_loc11_] = _loc7_.normalZ;
               _loc11_++;
               _loc7_.index = _loc3_;
               _loc3_++;
               _loc7_ = _loc7_.next;
            }
            this.vertexBuffer = new VertexBufferResource(_loc10_,8);
            _loc8_ = new Vector.<uint>();
            _loc1_ = 0;
            this.numTriangles = 0;
            for each(_loc4_ in this.faces)
            {
               _loc9_ = _loc4_.alternativa3d::wrapper;
               _loc2_ = uint(_loc9_.vertex.index);
               _loc9_ = _loc9_.next;
               _loc5_ = uint(_loc9_.vertex.index);
               _loc9_ = _loc9_.next;
               while(_loc9_ != null)
               {
                  _loc6_ = uint(_loc9_.vertex.index);
                  _loc8_[_loc1_] = _loc2_;
                  _loc1_++;
                  _loc8_[_loc1_] = _loc5_;
                  _loc1_++;
                  _loc8_[_loc1_] = _loc6_;
                  _loc1_++;
                  _loc5_ = _loc6_;
                  this.numTriangles++;
                  _loc9_ = _loc9_.next;
               }
            }
            this.indexBuffer = new IndexBufferResource(_loc8_);
         }
      }
      
      alternativa3d function deleteResources() : void
      {
         if(this.vertexBuffer != null)
         {
            this.vertexBuffer.dispose();
            this.vertexBuffer = null;
            this.indexBuffer.dispose();
            this.indexBuffer = null;
            this.numTriangles = 0;
         }
      }
      
      private function d1dfe181(param1:Node, param2:Face = null) : Face
      {
         var _loc3_:Face = null;
         var _loc7_:Wrapper = null;
         var _loc4_:Vertex = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param1.normalX * imd + param1.normalY * imh + param1.normalZ * iml > param1.offset)
         {
            if(param1.positive != null)
            {
               param2 = this.d1dfe181(param1.positive,param2);
            }
            _loc3_ = param1.faceList;
            while(_loc3_ != null)
            {
               _loc7_ = _loc3_.wrapper;
               while(_loc7_ != null)
               {
                  _loc4_ = _loc7_.vertex;
                  if(_loc4_.transformId != transformId)
                  {
                     _loc5_ = _loc4_.x;
                     _loc6_ = _loc4_.y;
                     _loc8_ = _loc4_.z;
                     _loc4_.cameraX = ma * _loc5_ + mb * _loc6_ + mc * _loc8_ + md;
                     _loc4_.cameraY = me * _loc5_ + mf * _loc6_ + mg * _loc8_ + mh;
                     _loc4_.cameraZ = mi * _loc5_ + mj * _loc6_ + mk * _loc8_ + ml;
                     _loc4_.transformId = transformId;
                     _loc4_.drawId = 0;
                  }
                  _loc7_ = _loc7_.next;
               }
               _loc3_.processNext = param2;
               param2 = _loc3_;
               _loc3_ = _loc3_.next;
            }
            if(param1.negative != null)
            {
               param2 = this.d1dfe181(param1.negative,param2);
            }
         }
         else
         {
            if(param1.negative != null)
            {
               param2 = this.d1dfe181(param1.negative,param2);
            }
            if(param1.positive != null)
            {
               param2 = this.d1dfe181(param1.positive,param2);
            }
         }
         return param2;
      }
      
      private function b1b2218c(param1:Node, param2:int, param3:Camera3D) : Face
      {
         var _loc14_:Face = null;
         var _loc21_:Wrapper = null;
         var _loc15_:Face = null;
         var _loc18_:Vertex = null;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc7_:Vertex = null;
         var _loc9_:Vertex = null;
         var _loc10_:Vertex = null;
         var _loc6_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc16_:Number = NaN;
         if(imd * param1.normalX + imh * param1.normalY + iml * param1.normalZ > param1.offset)
         {
            _loc15_ = _loc14_ = param1.faceList;
            while(_loc15_ != null)
            {
               _loc21_ = _loc15_.wrapper;
               while(_loc21_ != null)
               {
                  _loc18_ = _loc21_.vertex;
                  if(_loc18_.transformId != transformId)
                  {
                     _loc22_ = _loc18_.x;
                     _loc23_ = _loc18_.y;
                     _loc24_ = _loc18_.z;
                     _loc18_.cameraX = ma * _loc22_ + mb * _loc23_ + mc * _loc24_ + md;
                     _loc18_.cameraY = me * _loc22_ + mf * _loc23_ + mg * _loc24_ + mh;
                     _loc18_.cameraZ = mi * _loc22_ + mj * _loc23_ + mk * _loc24_ + ml;
                     _loc18_.transformId = transformId;
                     _loc18_.drawId = 0;
                  }
                  _loc21_ = _loc21_.next;
               }
               _loc15_.processNext = _loc15_.next;
               _loc15_ = _loc15_.next;
            }
            if(param2 > 0)
            {
               if(this.clipping == 1)
               {
                  _loc14_ = param3.cull(_loc14_,param2);
               }
               else
               {
                  _loc14_ = param3.clip(_loc14_,param2);
               }
            }
         }
         var _loc4_:Face = param1.negative != null ? this.b1b2218c(param1.negative,param2,param3) : null;
         var _loc13_:Face = param1.positive != null ? this.b1b2218c(param1.positive,param2,param3) : null;
         if(_loc14_ != null || _loc4_ != null && _loc13_ != null)
         {
            if(_loc14_ == null)
            {
               _loc14_ = param1.faceList.create();
               param3.lastFace.next = _loc14_;
               param3.lastFace = _loc14_;
            }
            _loc21_ = param1.faceList.wrapper;
            _loc7_ = _loc21_.vertex;
            _loc21_ = _loc21_.next;
            _loc9_ = _loc21_.vertex;
            _loc21_ = _loc21_.next;
            _loc10_ = _loc21_.vertex;
            if(_loc7_.transformId != transformId)
            {
               _loc7_.cameraX = ma * _loc7_.x + mb * _loc7_.y + mc * _loc7_.z + md;
               _loc7_.cameraY = me * _loc7_.x + mf * _loc7_.y + mg * _loc7_.z + mh;
               _loc7_.cameraZ = mi * _loc7_.x + mj * _loc7_.y + mk * _loc7_.z + ml;
               _loc7_.transformId = transformId;
               _loc7_.drawId = 0;
            }
            if(_loc9_.transformId != transformId)
            {
               _loc9_.cameraX = ma * _loc9_.x + mb * _loc9_.y + mc * _loc9_.z + md;
               _loc9_.cameraY = me * _loc9_.x + mf * _loc9_.y + mg * _loc9_.z + mh;
               _loc9_.cameraZ = mi * _loc9_.x + mj * _loc9_.y + mk * _loc9_.z + ml;
               _loc9_.transformId = transformId;
               _loc9_.drawId = 0;
            }
            if(_loc10_.transformId != transformId)
            {
               _loc10_.cameraX = ma * _loc10_.x + mb * _loc10_.y + mc * _loc10_.z + md;
               _loc10_.cameraY = me * _loc10_.x + mf * _loc10_.y + mg * _loc10_.z + mh;
               _loc10_.cameraZ = mi * _loc10_.x + mj * _loc10_.y + mk * _loc10_.z + ml;
               _loc10_.transformId = transformId;
               _loc10_.drawId = 0;
            }
            _loc6_ = _loc9_.cameraX - _loc7_.cameraX;
            _loc19_ = _loc9_.cameraY - _loc7_.cameraY;
            _loc12_ = _loc9_.cameraZ - _loc7_.cameraZ;
            _loc5_ = _loc10_.cameraX - _loc7_.cameraX;
            _loc25_ = _loc10_.cameraY - _loc7_.cameraY;
            _loc11_ = _loc10_.cameraZ - _loc7_.cameraZ;
            _loc20_ = _loc11_ * _loc19_ - _loc25_ * _loc12_;
            _loc8_ = _loc5_ * _loc12_ - _loc11_ * _loc6_;
            _loc17_ = _loc25_ * _loc6_ - _loc5_ * _loc19_;
            _loc16_ = _loc20_ * _loc20_ + _loc8_ * _loc8_ + _loc17_ * _loc17_;
            if(_loc16_ > 0)
            {
               _loc16_ = 1 / Math.sqrt(1);
               _loc20_ *= _loc16_;
               _loc8_ *= _loc16_;
               _loc17_ *= _loc16_;
            }
            _loc14_.normalX = _loc20_;
            _loc14_.normalY = _loc8_;
            _loc14_.normalZ = _loc17_;
            _loc14_.offset = _loc7_.cameraX * _loc20_ + _loc7_.cameraY * _loc8_ + _loc7_.cameraZ * _loc17_;
            _loc14_.processNegative = _loc4_;
            _loc14_.processPositive = _loc13_;
         }
         else
         {
            _loc14_ = _loc4_ != null ? _loc4_ : _loc13_;
         }
         return _loc14_;
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
         var _loc26_:Vertex = null;
         var _loc23_:Vertex = null;
         var _loc8_:Face = null;
         var _loc12_:Face = null;
         var _loc21_:Face = null;
         var _loc27_:Face = null;
         var _loc22_:Face = null;
         var _loc5_:Face = null;
         var _loc28_:Wrapper = null;
         var _loc18_:Vertex = null;
         var _loc13_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc36_:Boolean = false;
         var _loc24_:Boolean = false;
         var _loc9_:Face = null;
         var _loc19_:Face = null;
         var _loc29_:Wrapper = null;
         var _loc10_:Wrapper = null;
         var _loc32_:Wrapper = null;
         var _loc25_:Number = NaN;
         var _loc34_:Vertex = null;
         var _loc11_:int = 0;
         var _loc14_:int = 0;
         var _loc17_:int = 0;
         var _loc30_:Vector.<Object3D> = new Vector.<Object3D>(2);
         var _loc6_:Vector3D = calculatePlane(param1,param2,param3);
         var _loc33_:Number = _loc6_.w - param4;
         var _loc16_:Number = _loc6_.w + param4;
         _loc26_ = this.vertexList;
         while(_loc26_ != null)
         {
            _loc23_ = _loc26_.next;
            _loc26_.next = null;
            _loc26_.offset = _loc26_.x * _loc6_.x + _loc26_.y * _loc6_.y + _loc26_.z * _loc6_.z;
            if(_loc26_.offset >= _loc33_ && _loc26_.offset <= _loc16_)
            {
               _loc26_.value = new Vertex();
               _loc26_.value.x = _loc26_.x;
               _loc26_.value.y = _loc26_.y;
               _loc26_.value.z = _loc26_.z;
               _loc26_.value.u = _loc26_.u;
               _loc26_.value.v = _loc26_.v;
               _loc26_.value.normalX = _loc26_.normalX;
               _loc26_.value.normalY = _loc26_.normalY;
               _loc26_.value.normalZ = _loc26_.normalZ;
            }
            _loc26_.transformId = 0;
            _loc26_ = _loc23_;
         }
         this.vertexList = null;
         if(this.root != null)
         {
            this.f1c2e5d3(this.root);
            this.root = null;
         }
         var _loc35_:Vector.<Face> = this.faces;
         this.faces = new Vector.<Face>();
         var _loc7_:BSP = this.clone() as BSP;
         var _loc15_:BSP = this.clone() as BSP;
         var _loc31_:int = int(_loc35_.length);
         while(_loc17_ < _loc31_)
         {
            _loc22_ = _loc35_[_loc17_];
            _loc5_ = _loc22_.next;
            _loc28_ = _loc22_.wrapper;
            _loc18_ = _loc28_.vertex;
            _loc28_ = _loc28_.next;
            _loc13_ = _loc28_.vertex;
            _loc28_ = _loc28_.next;
            _loc20_ = _loc28_.vertex;
            _loc36_ = _loc18_.offset < _loc33_ || _loc13_.offset < _loc33_ || _loc20_.offset < _loc33_;
            _loc24_ = _loc18_.offset > _loc16_ || _loc13_.offset > _loc16_ || _loc20_.offset > _loc16_;
            _loc28_ = _loc28_.next;
            while(_loc28_ != null)
            {
               _loc26_ = _loc28_.vertex;
               if(_loc26_.offset < _loc33_)
               {
                  _loc36_ = true;
               }
               else if(_loc26_.offset > _loc16_)
               {
                  _loc24_ = true;
               }
               _loc28_ = _loc28_.next;
            }
            if(!_loc36_)
            {
               if(_loc27_ != null)
               {
                  _loc27_.next = _loc22_;
               }
               else
               {
                  _loc21_ = _loc22_;
               }
               _loc27_ = _loc22_;
               _loc15_.faces[_loc14_] = _loc22_;
               _loc14_++;
            }
            else if(!_loc24_)
            {
               if(_loc12_ != null)
               {
                  _loc12_.next = _loc22_;
               }
               else
               {
                  _loc8_ = _loc22_;
               }
               _loc12_ = _loc22_;
               _loc7_.faces[_loc11_] = _loc22_;
               _loc11_++;
               _loc28_ = _loc22_.wrapper;
               while(_loc28_ != null)
               {
                  if(_loc28_.vertex.value != null)
                  {
                     _loc28_.vertex = _loc28_.vertex.value;
                  }
                  _loc28_ = _loc28_.next;
               }
            }
            else
            {
               _loc9_ = new Face();
               _loc19_ = new Face();
               _loc29_ = null;
               _loc10_ = null;
               _loc28_ = _loc22_.wrapper.next.next;
               while(_loc28_.next != null)
               {
                  _loc28_ = _loc28_.next;
               }
               _loc18_ = _loc28_.vertex;
               _loc28_ = _loc22_.wrapper;
               while(_loc28_ != null)
               {
                  _loc13_ = _loc28_.vertex;
                  if(_loc18_.offset < _loc33_ && _loc13_.offset > _loc16_ || _loc18_.offset > _loc16_ && _loc13_.offset < _loc33_)
                  {
                     _loc25_ = (_loc6_.w - _loc18_.offset) / (_loc13_.offset - _loc18_.offset);
                     _loc26_ = new Vertex();
                     _loc26_.x = _loc18_.x + (_loc13_.x - _loc18_.x) * _loc25_;
                     _loc26_.y = _loc18_.y + (_loc13_.y - _loc18_.y) * _loc25_;
                     _loc26_.z = _loc18_.z + (_loc13_.z - _loc18_.z) * _loc25_;
                     _loc26_.u = _loc18_.u + (_loc13_.u - _loc18_.u) * _loc25_;
                     _loc26_.v = _loc18_.v + (_loc13_.v - _loc18_.v) * _loc25_;
                     _loc26_.normalX = _loc18_.normalX + (_loc13_.normalX - _loc18_.normalX) * _loc25_;
                     _loc26_.normalY = _loc18_.normalY + (_loc13_.normalY - _loc18_.normalY) * _loc25_;
                     _loc26_.normalZ = _loc18_.normalZ + (_loc13_.normalZ - _loc18_.normalZ) * _loc25_;
                     _loc32_ = new Wrapper();
                     _loc32_.vertex = _loc26_;
                     if(_loc29_ != null)
                     {
                        _loc29_.next = _loc32_;
                     }
                     else
                     {
                        _loc9_.wrapper = _loc32_;
                     }
                     _loc29_ = _loc32_;
                     _loc34_ = new Vertex();
                     _loc34_.x = _loc26_.x;
                     _loc34_.y = _loc26_.y;
                     _loc34_.z = _loc26_.z;
                     _loc34_.u = _loc26_.u;
                     _loc34_.v = _loc26_.v;
                     _loc34_.normalX = _loc26_.normalX;
                     _loc34_.normalY = _loc26_.normalY;
                     _loc34_.normalZ = _loc26_.normalZ;
                     _loc32_ = new Wrapper();
                     _loc32_.vertex = _loc34_;
                     if(_loc10_ != null)
                     {
                        _loc10_.next = _loc32_;
                     }
                     else
                     {
                        _loc19_.wrapper = _loc32_;
                     }
                     _loc10_ = _loc32_;
                  }
                  if(_loc13_.offset < _loc33_)
                  {
                     _loc32_ = _loc28_.create();
                     _loc32_.vertex = _loc13_;
                     if(_loc29_ != null)
                     {
                        _loc29_.next = _loc32_;
                     }
                     else
                     {
                        _loc9_.wrapper = _loc32_;
                     }
                     _loc29_ = _loc32_;
                  }
                  else if(_loc13_.offset > _loc16_)
                  {
                     _loc32_ = _loc28_.create();
                     _loc32_.vertex = _loc13_;
                     if(_loc10_ != null)
                     {
                        _loc10_.next = _loc32_;
                     }
                     else
                     {
                        _loc19_.wrapper = _loc32_;
                     }
                     _loc10_ = _loc32_;
                  }
                  else
                  {
                     _loc32_ = _loc28_.create();
                     _loc32_.vertex = _loc13_.value;
                     if(_loc29_ != null)
                     {
                        _loc29_.next = _loc32_;
                     }
                     else
                     {
                        _loc9_.wrapper = _loc32_;
                     }
                     _loc29_ = _loc32_;
                     _loc32_ = _loc28_.create();
                     _loc32_.vertex = _loc13_;
                     if(_loc10_ != null)
                     {
                        _loc10_.next = _loc32_;
                     }
                     else
                     {
                        _loc19_.wrapper = _loc32_;
                     }
                     _loc10_ = _loc32_;
                  }
                  _loc18_ = _loc13_;
                  _loc28_ = _loc28_.next;
               }
               _loc9_.material = _loc22_.material;
               _loc9_.calculateBestSequenceAndNormal();
               if(_loc12_ != null)
               {
                  _loc12_.next = _loc9_;
               }
               else
               {
                  _loc8_ = _loc9_;
               }
               _loc12_ = _loc9_;
               _loc7_.faces[_loc11_] = _loc9_;
               _loc11_++;
               _loc19_.material = _loc22_.material;
               _loc19_.calculateBestSequenceAndNormal();
               if(_loc27_ != null)
               {
                  _loc27_.next = _loc19_;
               }
               else
               {
                  _loc21_ = _loc19_;
               }
               _loc27_ = _loc19_;
               _loc15_.faces[_loc14_] = _loc19_;
               _loc14_++;
            }
            _loc17_++;
         }
         if(_loc12_ != null)
         {
            _loc12_.next = null;
            _loc7_.transformId++;
            _loc7_.c6df1b0c();
            _loc7_.root = _loc7_.d3b5165(_loc8_);
            _loc7_.calculateBounds();
            _loc30_[0] = _loc7_;
         }
         if(_loc27_ != null)
         {
            _loc27_.next = null;
            _loc15_.transformId++;
            _loc15_.c6df1b0c();
            _loc15_.root = _loc15_.d3b5165(_loc21_);
            _loc15_.calculateBounds();
            _loc30_[1] = _loc15_;
         }
         return _loc30_;
      }
      
      private function c6df1b0c() : void
      {
         var _loc1_:Face = null;
         var _loc3_:Wrapper = null;
         var _loc2_:Vertex = null;
         var _loc4_:int = 0;
         var _loc5_:int = int(this.faces.length);
         while(_loc4_ < _loc5_)
         {
            _loc1_ = this.faces[_loc4_];
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
            _loc4_++;
         }
      }
      
      private function d3b5165(param1:Face) : Node
      {
         var _loc32_:Wrapper = null;
         var _loc16_:Vertex = null;
         var _loc17_:Vertex = null;
         var _loc19_:Vertex = null;
         var _loc31_:Vertex = null;
         var _loc37_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc5_:Face = null;
         var _loc14_:Face = null;
         var _loc27_:Face = null;
         var _loc33_:Face = null;
         var _loc10_:* = 0;
         var _loc28_:Face = null;
         var _loc8_:int = 0;
         var _loc23_:Face = null;
         var _loc2_:Face = null;
         var _loc11_:Face = null;
         var _loc24_:Face = null;
         var _loc34_:Wrapper = null;
         var _loc12_:Wrapper = null;
         var _loc36_:Wrapper = null;
         var _loc30_:Number = NaN;
         var _loc15_:Node = new Node();
         var _loc26_:Face = param1;
         if(this.splitAnalysis && param1.next != null)
         {
            _loc10_ = 2147483647;
            _loc28_ = param1;
            while(_loc28_ != null)
            {
               _loc3_ = _loc28_.normalX;
               _loc4_ = _loc28_.normalY;
               _loc6_ = _loc28_.normalZ;
               _loc21_ = _loc28_.offset;
               _loc35_ = _loc21_ - this.threshold;
               _loc22_ = _loc21_ + this.threshold;
               _loc8_ = 0;
               _loc23_ = param1;
               while(_loc23_ != null)
               {
                  if(_loc23_ != _loc28_)
                  {
                     _loc32_ = _loc23_.wrapper;
                     _loc16_ = _loc32_.vertex;
                     _loc32_ = _loc32_.next;
                     _loc17_ = _loc32_.vertex;
                     _loc32_ = _loc32_.next;
                     _loc19_ = _loc32_.vertex;
                     _loc32_ = _loc32_.next;
                     _loc9_ = _loc16_.x * _loc3_ + _loc16_.y * _loc4_ + _loc16_.z * _loc6_;
                     _loc7_ = _loc17_.x * _loc3_ + _loc17_.y * _loc4_ + _loc17_.z * _loc6_;
                     _loc13_ = _loc19_.x * _loc3_ + _loc19_.y * _loc4_ + _loc19_.z * _loc6_;
                     _loc37_ = _loc9_ < _loc35_ || _loc7_ < _loc35_ || _loc13_ < _loc35_;
                     _loc29_ = _loc9_ > _loc22_ || _loc7_ > _loc22_ || _loc13_ > _loc22_;
                     while(_loc32_ != null)
                     {
                        _loc31_ = _loc32_.vertex;
                        _loc25_ = _loc31_.x * _loc3_ + _loc31_.y * _loc4_ + _loc31_.z * _loc6_;
                        if(_loc25_ < _loc35_)
                        {
                           _loc37_ = true;
                           if(_loc29_)
                           {
                              break;
                           }
                        }
                        else if(_loc25_ > _loc22_)
                        {
                           _loc29_ = true;
                           if(_loc37_)
                           {
                              break;
                           }
                        }
                        _loc32_ = _loc32_.next;
                     }
                     if(_loc29_ && _loc37_)
                     {
                        if(++_loc8_ >= _loc10_)
                        {
                           break;
                        }
                     }
                  }
                  _loc23_ = _loc23_.next;
               }
               if(_loc8_ < _loc10_)
               {
                  _loc26_ = _loc28_;
                  _loc10_ = _loc8_;
                  if(_loc10_ == 0)
                  {
                     break;
                  }
               }
               _loc28_ = _loc28_.next;
            }
         }
         var _loc20_:Face = _loc26_;
         var _loc18_:Face = _loc26_.next;
         _loc3_ = _loc26_.normalX;
         _loc4_ = _loc26_.normalY;
         _loc6_ = _loc26_.normalZ;
         _loc21_ = _loc26_.offset;
         _loc35_ = _loc21_ - this.threshold;
         _loc22_ = _loc21_ + this.threshold;
         while(param1 != null)
         {
            if(param1 != _loc26_)
            {
               _loc2_ = param1.next;
               _loc32_ = param1.wrapper;
               _loc16_ = _loc32_.vertex;
               _loc32_ = _loc32_.next;
               _loc17_ = _loc32_.vertex;
               _loc32_ = _loc32_.next;
               _loc19_ = _loc32_.vertex;
               _loc32_ = _loc32_.next;
               _loc9_ = _loc16_.x * _loc3_ + _loc16_.y * _loc4_ + _loc16_.z * _loc6_;
               _loc7_ = _loc17_.x * _loc3_ + _loc17_.y * _loc4_ + _loc17_.z * _loc6_;
               _loc13_ = _loc19_.x * _loc3_ + _loc19_.y * _loc4_ + _loc19_.z * _loc6_;
               _loc37_ = _loc9_ < _loc35_ || _loc7_ < _loc35_ || _loc13_ < _loc35_;
               _loc29_ = _loc9_ > _loc22_ || _loc7_ > _loc22_ || _loc13_ > _loc22_;
               while(_loc32_ != null)
               {
                  _loc31_ = _loc32_.vertex;
                  _loc25_ = _loc31_.x * _loc3_ + _loc31_.y * _loc4_ + _loc31_.z * _loc6_;
                  if(_loc25_ < _loc35_)
                  {
                     _loc37_ = true;
                  }
                  else if(_loc25_ > _loc22_)
                  {
                     _loc29_ = true;
                  }
                  _loc31_.offset = _loc25_;
                  _loc32_ = _loc32_.next;
               }
               if(!_loc37_)
               {
                  if(!_loc29_)
                  {
                     if(param1.normalX * _loc3_ + param1.normalY * _loc4_ + param1.normalZ * _loc6_ > 0)
                     {
                        _loc20_.next = param1;
                        _loc20_ = param1;
                     }
                     else
                     {
                        if(_loc5_ != null)
                        {
                           _loc14_.next = param1;
                        }
                        else
                        {
                           _loc5_ = param1;
                        }
                        _loc14_ = param1;
                     }
                  }
                  else
                  {
                     if(_loc27_ != null)
                     {
                        _loc33_.next = param1;
                     }
                     else
                     {
                        _loc27_ = param1;
                     }
                     _loc33_ = param1;
                  }
               }
               else if(!_loc29_)
               {
                  if(_loc5_ != null)
                  {
                     _loc14_.next = param1;
                  }
                  else
                  {
                     _loc5_ = param1;
                  }
                  _loc14_ = param1;
               }
               else
               {
                  _loc16_.offset = _loc9_;
                  _loc17_.offset = _loc7_;
                  _loc19_.offset = _loc13_;
                  _loc11_ = new Face();
                  _loc24_ = new Face();
                  _loc34_ = null;
                  _loc12_ = null;
                  _loc32_ = param1.wrapper.next.next;
                  while(_loc32_.next != null)
                  {
                     _loc32_ = _loc32_.next;
                  }
                  _loc16_ = _loc32_.vertex;
                  _loc9_ = _loc16_.offset;
                  _loc32_ = param1.wrapper;
                  while(_loc32_ != null)
                  {
                     _loc17_ = _loc32_.vertex;
                     _loc7_ = _loc17_.offset;
                     if(_loc9_ < _loc35_ && _loc7_ > _loc22_ || _loc9_ > _loc22_ && _loc7_ < _loc35_)
                     {
                        _loc30_ = (_loc21_ - _loc9_) / (_loc7_ - _loc9_);
                        _loc31_ = new Vertex();
                        _loc31_.next = this.vertexList;
                        this.vertexList = _loc31_;
                        _loc31_.x = _loc16_.x + (_loc17_.x - _loc16_.x) * _loc30_;
                        _loc31_.y = _loc16_.y + (_loc17_.y - _loc16_.y) * _loc30_;
                        _loc31_.z = _loc16_.z + (_loc17_.z - _loc16_.z) * _loc30_;
                        _loc31_.u = _loc16_.u + (_loc17_.u - _loc16_.u) * _loc30_;
                        _loc31_.v = _loc16_.v + (_loc17_.v - _loc16_.v) * _loc30_;
                        _loc31_.normalX = _loc16_.normalX + (_loc17_.normalX - _loc16_.normalX) * _loc30_;
                        _loc31_.normalY = _loc16_.normalY + (_loc17_.normalY - _loc16_.normalY) * _loc30_;
                        _loc31_.normalZ = _loc16_.normalZ + (_loc17_.normalZ - _loc16_.normalZ) * _loc30_;
                        _loc36_ = new Wrapper();
                        _loc36_.vertex = _loc31_;
                        if(_loc34_ != null)
                        {
                           _loc34_.next = _loc36_;
                        }
                        else
                        {
                           _loc11_.wrapper = _loc36_;
                        }
                        _loc34_ = _loc36_;
                        _loc36_ = new Wrapper();
                        _loc36_.vertex = _loc31_;
                        if(_loc12_ != null)
                        {
                           _loc12_.next = _loc36_;
                        }
                        else
                        {
                           _loc24_.wrapper = _loc36_;
                        }
                        _loc12_ = _loc36_;
                     }
                     if(_loc7_ <= _loc22_)
                     {
                        _loc36_ = new Wrapper();
                        _loc36_.vertex = _loc17_;
                        if(_loc34_ != null)
                        {
                           _loc34_.next = _loc36_;
                        }
                        else
                        {
                           _loc11_.wrapper = _loc36_;
                        }
                        _loc34_ = _loc36_;
                     }
                     if(_loc7_ >= _loc35_)
                     {
                        _loc36_ = new Wrapper();
                        _loc36_.vertex = _loc17_;
                        if(_loc12_ != null)
                        {
                           _loc12_.next = _loc36_;
                        }
                        else
                        {
                           _loc24_.wrapper = _loc36_;
                        }
                        _loc12_ = _loc36_;
                     }
                     _loc16_ = _loc17_;
                     _loc9_ = _loc7_;
                     _loc32_ = _loc32_.next;
                  }
                  _loc11_.material = param1.material;
                  _loc11_.smoothingGroups = param1.smoothingGroups;
                  _loc11_.calculateBestSequenceAndNormal();
                  if(_loc5_ != null)
                  {
                     _loc14_.next = _loc11_;
                  }
                  else
                  {
                     _loc5_ = _loc11_;
                  }
                  _loc14_ = _loc11_;
                  _loc24_.material = param1.material;
                  _loc24_.smoothingGroups = param1.smoothingGroups;
                  _loc24_.calculateBestSequenceAndNormal();
                  if(_loc27_ != null)
                  {
                     _loc33_.next = _loc24_;
                  }
                  else
                  {
                     _loc27_ = _loc24_;
                  }
                  _loc33_ = _loc24_;
               }
               param1 = _loc2_;
            }
            else
            {
               param1 = _loc18_;
            }
         }
         if(_loc5_ != null)
         {
            _loc14_.next = null;
            _loc15_.negative = this.d3b5165(_loc5_);
         }
         _loc20_.next = null;
         _loc15_.faceList = _loc26_;
         _loc15_.normalX = _loc3_;
         _loc15_.normalY = _loc4_;
         _loc15_.normalZ = _loc6_;
         _loc15_.offset = _loc21_;
         if(_loc27_ != null)
         {
            _loc33_.next = null;
            _loc15_.positive = this.d3b5165(_loc27_);
         }
         return _loc15_;
      }
      
      private function f1c2e5d3(param1:Node) : void
      {
         var _loc2_:Face = null;
         if(param1.negative != null)
         {
            this.f1c2e5d3(param1.negative);
            param1.negative = null;
         }
         if(param1.positive != null)
         {
            this.f1c2e5d3(param1.positive);
            param1.positive = null;
         }
         var _loc3_:Face = param1.faceList;
         while(_loc3_ != null)
         {
            _loc2_ = _loc3_.next;
            _loc3_.next = null;
            _loc3_ = _loc2_;
         }
      }
   }
}

import alternativa.engine3d.core.Face;

class Node
{
   
   public var negative:Node;
   
   public var positive:Node;
   
   public var faceList:Face;
   
   public var normalX:Number;
   
   public var normalY:Number;
   
   public var normalZ:Number;
   
   public var offset:Number;
   
   public function Node()
   {
      super();
   }
}
