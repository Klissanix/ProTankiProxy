package alternativa.engine3d.containers
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.core.ShadowAtlas;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Decal;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Occluder;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.gfx.core.Device;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class KDContainer extends ConflictContainer
   {
      
      private static const f5daea2e:Vector3D = new Vector3D();
      
      private static const b652e67b:Vector.<Number> = new Vector.<Number>();
      
      private static const f18cd8e:Vector.<Number> = new Vector.<Number>();
      
      private static const a1a7a0ff:Vector.<Number> = new Vector.<Number>();
      
      public var debugAlphaFade:Number = 0.8;
      
      public var ignoreChildrenInCollider:Boolean = false;
      
      alternativa3d var root:KDNode;
      
      private var f4351409:Number;
      
      private var e44f2b2c:Number;
      
      private var f2090269:Number;
      
      private var b76c2bc0:Number;
      
      private var f191cd3b:Number;
      
      private var d2383cf5:Number;
      
      private var d481ab0c:Number;
      
      private var c44b31db:Number;
      
      private var e5439f17:Number;
      
      private var e12e058d:Number;
      
      private var e35b5886:Number;
      
      private var a4090696:Number;
      
      private var e373a927:Number;
      
      private var e320228c:Number;
      
      private var b6304a55:Number;
      
      private var e4c823ea:Number;
      
      private var e40a5e5e:Number;
      
      private var c722c8e:Number;
      
      private var b199bcf5:Number;
      
      private var d407ba6e:Number;
      
      private var d47bfb8e:Number;
      
      private var f4cb084c:Number;
      
      private var c75986b5:Number;
      
      private var ea3928a:Number;
      
      private var occluders:Vector.<Vertex> = new Vector.<Vertex>();
      
      private var numOccluders:int;
      
      private var materials:Dictionary = new Dictionary();
      
      private var c400fb29:Object3D;
      
      private var transparent:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var b2c824f:int = 0;
      
      private var receiversVertexBuffers:Vector.<VertexBufferResource> = new Vector.<VertexBufferResource>();
      
      private var receiversIndexBuffers:Vector.<IndexBufferResource> = new Vector.<IndexBufferResource>();
      
      private var isCreated:Boolean = false;
      
      public var batched:Boolean = true;
      
      protected var needCollectReceivers:Boolean = true;
      
      public function KDContainer()
      {
         super();
      }
      
      public function createTree(param1:Vector.<Object3D>, param2:Vector.<Occluder> = null) : void
      {
         var _loc21_:int = 0;
         var _loc32_:Object3D = null;
         var _loc20_:Object3D = null;
         var _loc24_:Object3D = null;
         var _loc10_:Object3D = null;
         var _loc23_:Object3D = null;
         var _loc8_:Object3D = null;
         var _loc28_:Material = null;
         var _loc30_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc3_:Vertex = null;
         var _loc25_:Face = null;
         var _loc27_:Vertex = null;
         var _loc18_:Mesh = null;
         var _loc17_:Mesh = null;
         var _loc9_:BSP = null;
         var _loc5_:* = undefined;
         var _loc26_:* = undefined;
         this.destroyTree();
         var _loc15_:int = int(param1.length);
         var _loc33_:int = int(param2 != null ? param2.length : 0);
         var _loc16_:Dictionary = new Dictionary();
         _loc21_ = 0;
         while(_loc21_ < _loc15_)
         {
            _loc32_ = param1[_loc21_];
            _loc28_ = _loc32_ is Mesh ? (_loc32_ as Mesh).faceList.material : (_loc32_ is BSP ? (_loc32_ as BSP).faces[0].material : null);
            if(_loc28_ != null)
            {
               this.materials[_loc28_] = true;
               if(_loc28_.transparent)
               {
                  this.transparent[this.b2c824f] = _loc32_;
                  this.b2c824f++;
               }
               else
               {
                  _loc18_ = _loc16_[_loc28_];
                  if(_loc18_ == null)
                  {
                     _loc18_ = new Mesh();
                     _loc16_[_loc28_] = _loc18_;
                     _loc18_.next = this.c400fb29;
                     this.c400fb29 = _loc18_;
                     _loc18_.setParent(this);
                  }
                  _loc32_ = _loc32_.clone();
                  _loc32_.composeMatrix();
                  if(_loc32_ is Mesh)
                  {
                     _loc17_ = _loc32_ as Mesh;
                     if(_loc17_.faceList != null)
                     {
                        _loc3_ = _loc17_.vertexList;
                        while(_loc3_ != null)
                        {
                           _loc11_ = _loc3_.x;
                           _loc19_ = _loc3_.y;
                           _loc13_ = _loc3_.z;
                           _loc3_.x = _loc32_.ma * _loc11_ + _loc32_.mb * _loc19_ + _loc32_.mc * _loc13_ + _loc32_.md;
                           _loc3_.y = _loc32_.me * _loc11_ + _loc32_.mf * _loc19_ + _loc32_.mg * _loc13_ + _loc32_.mh;
                           _loc3_.z = _loc32_.mi * _loc11_ + _loc32_.mj * _loc19_ + _loc32_.mk * _loc13_ + _loc32_.ml;
                           _loc14_ = _loc3_.normalX;
                           _loc22_ = _loc3_.normalY;
                           _loc12_ = _loc3_.normalZ;
                           _loc3_.normalX = _loc32_.ma * _loc14_ + _loc32_.mb * _loc22_ + _loc32_.mc * _loc12_;
                           _loc3_.normalY = _loc32_.me * _loc14_ + _loc32_.mf * _loc22_ + _loc32_.mg * _loc12_;
                           _loc3_.normalZ = _loc32_.mi * _loc14_ + _loc32_.mj * _loc22_ + _loc32_.mk * _loc12_;
                           _loc3_.transformId = 0;
                           if(_loc3_.next == null)
                           {
                              _loc27_ = _loc3_;
                           }
                           _loc3_ = _loc3_.next;
                        }
                        _loc27_.next = _loc18_.vertexList;
                        _loc18_.vertexList = _loc17_.vertexList;
                        _loc17_.vertexList = null;
                        _loc25_ = _loc17_.faceList;
                        while(_loc25_.next != null)
                        {
                           _loc25_ = _loc25_.next;
                        }
                        _loc25_.next = _loc18_.faceList;
                        _loc18_.faceList = _loc17_.faceList;
                        _loc17_.faceList = null;
                     }
                  }
                  else if(_loc32_ is BSP)
                  {
                     _loc9_ = _loc32_ as BSP;
                     if(_loc9_.root != null)
                     {
                        _loc3_ = _loc9_.vertexList;
                        while(_loc3_ != null)
                        {
                           _loc11_ = _loc3_.x;
                           _loc19_ = _loc3_.y;
                           _loc13_ = _loc3_.z;
                           _loc3_.x = _loc32_.ma * _loc11_ + _loc32_.mb * _loc19_ + _loc32_.mc * _loc13_ + _loc32_.md;
                           _loc3_.y = _loc32_.me * _loc11_ + _loc32_.mf * _loc19_ + _loc32_.mg * _loc13_ + _loc32_.mh;
                           _loc3_.z = _loc32_.mi * _loc11_ + _loc32_.mj * _loc19_ + _loc32_.mk * _loc13_ + _loc32_.ml;
                           _loc14_ = _loc3_.normalX;
                           _loc22_ = _loc3_.normalY;
                           _loc12_ = _loc3_.normalZ;
                           _loc3_.normalX = _loc32_.ma * _loc14_ + _loc32_.mb * _loc22_ + _loc32_.mc * _loc12_;
                           _loc3_.normalY = _loc32_.me * _loc14_ + _loc32_.mf * _loc22_ + _loc32_.mg * _loc12_;
                           _loc3_.normalZ = _loc32_.mi * _loc14_ + _loc32_.mj * _loc22_ + _loc32_.mk * _loc12_;
                           _loc3_.transformId = 0;
                           if(_loc3_.next == null)
                           {
                              _loc27_ = _loc3_;
                           }
                           _loc3_ = _loc3_.next;
                        }
                        _loc27_.next = _loc18_.vertexList;
                        _loc18_.vertexList = _loc9_.vertexList;
                        _loc9_.vertexList = null;
                        for each(_loc25_ in _loc9_.faces)
                        {
                           _loc25_.next = _loc18_.faceList;
                           _loc18_.faceList = _loc25_;
                        }
                        _loc9_.faces.length = 0;
                        _loc9_.root = null;
                     }
                  }
               }
            }
            _loc21_++;
         }
         for each(_loc18_ in _loc16_)
         {
            _loc18_.calculateFacesNormals(true);
            _loc18_.calculateBounds();
         }
         _loc30_ = 1e+22;
         _loc29_ = 1e+22;
         _loc31_ = 1e+22;
         _loc7_ = -1e+22;
         _loc6_ = -1e+22;
         _loc4_ = -1e+22;
         _loc21_ = 0;
         while(_loc21_ < _loc15_)
         {
            _loc32_ = param1[_loc21_];
            _loc20_ = this.c3dcc7c(_loc32_);
            if(_loc20_.boundMinX <= _loc20_.boundMaxX)
            {
               if(_loc32_._parent != null)
               {
                  _loc32_._parent.removeChild(_loc32_);
               }
               _loc32_.setParent(this);
               _loc32_.next = _loc24_;
               _loc24_ = _loc32_;
               _loc20_.next = _loc10_;
               _loc10_ = _loc20_;
               if(_loc20_.boundMinX < _loc30_)
               {
                  _loc30_ = _loc20_.boundMinX;
               }
               if(_loc20_.boundMaxX > _loc7_)
               {
                  _loc7_ = _loc20_.boundMaxX;
               }
               if(_loc20_.boundMinY < _loc29_)
               {
                  _loc29_ = _loc20_.boundMinY;
               }
               if(_loc20_.boundMaxY > _loc6_)
               {
                  _loc6_ = _loc20_.boundMaxY;
               }
               if(_loc20_.boundMinZ < _loc31_)
               {
                  _loc31_ = _loc20_.boundMinZ;
               }
               if(_loc20_.boundMaxZ > _loc4_)
               {
                  _loc4_ = _loc20_.boundMaxZ;
               }
            }
            _loc21_++;
         }
         _loc21_ = 0;
         while(_loc21_ < _loc33_)
         {
            _loc32_ = param2[_loc21_];
            _loc20_ = this.c3dcc7c(_loc32_);
            if(_loc20_.boundMinX <= _loc20_.boundMaxX)
            {
               if(!(_loc20_.boundMinX < _loc30_ || _loc20_.boundMaxX > _loc7_ || _loc20_.boundMinY < _loc29_ || _loc20_.boundMaxY > _loc6_ || _loc20_.boundMinZ < _loc31_ || _loc20_.boundMaxZ > _loc4_))
               {
                  if(_loc32_._parent != null)
                  {
                     _loc32_._parent.removeChild(_loc32_);
                  }
                  _loc32_.setParent(this);
                  _loc32_.next = _loc23_;
                  _loc23_ = _loc32_;
                  _loc20_.next = _loc8_;
                  _loc8_ = _loc20_;
               }
            }
            _loc21_++;
         }
         if(_loc24_ != null)
         {
            this.root = this.d3b5165(_loc24_,_loc10_,_loc23_,_loc8_,_loc30_,_loc29_,_loc31_,_loc7_,_loc6_,_loc4_);
            _loc5_ = new Vector.<Vector.<Number>>();
            _loc26_ = new Vector.<Vector.<uint>>();
            _loc5_[0] = new Vector.<Number>();
            _loc26_[0] = new Vector.<uint>();
            this.root.createReceivers(_loc5_,_loc26_);
            _loc21_ = 0;
            while(_loc21_ < _loc5_.length)
            {
               this.receiversVertexBuffers[_loc21_] = new VertexBufferResource(_loc5_[_loc21_],3);
               this.receiversIndexBuffers[_loc21_] = new IndexBufferResource(_loc26_[_loc21_]);
               _loc21_++;
            }
         }
      }
      
      public function destroyTree() : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = undefined;
         var _loc6_:Object3D = null;
         var _loc5_:Mesh = null;
         var _loc2_:BSP = null;
         var _loc1_:TextureMaterial = null;
         for(_loc4_ in this.materials)
         {
            _loc1_ = _loc4_ as TextureMaterial;
            if(_loc1_.texture != null)
            {
               _loc1_.textureResource.reset();
            }
            if(_loc1_._textureATF != null)
            {
               _loc1_.textureATFResource.reset();
            }
            if(_loc1_._textureATFAlpha != null)
            {
               _loc1_.textureATFAlphaResource.reset();
            }
         }
         _loc6_ = this.c400fb29;
         while(_loc6_ != null)
         {
            if(_loc6_ is Mesh)
            {
               _loc5_ = _loc6_ as Mesh;
               if(_loc5_.vertexBuffer != null)
               {
                  _loc5_.vertexBuffer.reset();
               }
               if(_loc5_.indexBuffer != null)
               {
                  _loc5_.indexBuffer.reset();
               }
            }
            else if(_loc6_ is BSP)
            {
               _loc2_ = _loc6_ as BSP;
               if(_loc2_.vertexBuffer != null)
               {
                  _loc2_.vertexBuffer.reset();
               }
               if(_loc2_.indexBuffer != null)
               {
                  _loc2_.indexBuffer.reset();
               }
            }
            _loc6_ = _loc6_.next;
         }
         _loc3_ = 0;
         while(_loc3_ < this.b2c824f)
         {
            _loc6_ = this.transparent[_loc3_];
            if(_loc6_ is Mesh)
            {
               _loc5_ = _loc6_ as Mesh;
               if(_loc5_.vertexBuffer != null)
               {
                  _loc5_.vertexBuffer.reset();
               }
               if(_loc5_.indexBuffer != null)
               {
                  _loc5_.indexBuffer.reset();
               }
            }
            else if(_loc6_ is BSP)
            {
               _loc2_ = _loc6_ as BSP;
               if(_loc2_.vertexBuffer != null)
               {
                  _loc2_.vertexBuffer.reset();
               }
               if(_loc2_.indexBuffer != null)
               {
                  _loc2_.indexBuffer.reset();
               }
            }
            _loc3_++;
         }
         this.materials = new Dictionary();
         this.c400fb29 = null;
         this.transparent.length = 0;
         this.b2c824f = 0;
         if(this.root != null)
         {
            this.f1c2e5d3(this.root);
            this.root = null;
         }
         _loc3_ = 0;
         while(_loc3_ < this.receiversVertexBuffers.length)
         {
            VertexBufferResource(this.receiversVertexBuffers[_loc3_]).dispose();
            IndexBufferResource(this.receiversIndexBuffers[_loc3_]).dispose();
            _loc3_++;
         }
         this.receiversVertexBuffers.length = 0;
         this.receiversIndexBuffers.length = 0;
         this.isCreated = false;
      }
      
      override public function intersectRay(param1:Vector3D, param2:Vector3D, param3:Dictionary = null, param4:Camera3D = null) : RayIntersectionData
      {
         var _loc5_:RayIntersectionData = null;
         if(param3 != null && param3[this])
         {
            return null;
         }
         if(!boundIntersectRay(param1,param2,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return null;
         }
         var _loc6_:RayIntersectionData = super.intersectRay(param1,param2,param3,param4);
         if(this.root != null && boundIntersectRay(param1,param2,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ))
         {
            _loc5_ = this.b25cb5ee(this.root,param1,param2,param3,param4);
            if(_loc5_ != null && (_loc6_ == null || _loc5_.time < _loc6_.time))
            {
               _loc6_ = _loc5_;
            }
         }
         return _loc6_;
      }
      
      private function b25cb5ee(param1:KDNode, param2:Vector3D, param3:Vector3D, param4:Dictionary, param5:Camera3D) : RayIntersectionData
      {
         var _loc6_:RayIntersectionData = null;
         var _loc9_:Number = NaN;
         var _loc16_:Object3D = null;
         var _loc8_:Object3D = null;
         var _loc10_:Vector3D = null;
         var _loc11_:Vector3D = null;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:RayIntersectionData = null;
         if(param1.negative != null)
         {
            _loc12_ = param1.axis == 0;
            _loc13_ = param1.axis == 1;
            _loc7_ = (_loc12_ ? param2.x : (_loc13_ ? param2.y : param2.z)) - param1.coord;
            if(_loc7_ > 0)
            {
               if(boundIntersectRay(param2,param3,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
               {
                  _loc6_ = this.b25cb5ee(param1.positive,param2,param3,param4,param5);
                  if(_loc6_ != null)
                  {
                     return _loc6_;
                  }
               }
               _loc9_ = _loc12_ ? param3.x : (_loc13_ ? param3.y : param3.z);
               if(_loc9_ < 0)
               {
                  _loc16_ = param1.objectList;
                  _loc8_ = param1.objectBoundList;
                  while(_loc16_ != null)
                  {
                     if(boundIntersectRay(param2,param3,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ))
                     {
                        _loc16_.composeMatrix();
                        _loc16_.invertMatrix();
                        if(_loc10_ == null)
                        {
                           _loc10_ = new Vector3D();
                           _loc11_ = new Vector3D();
                        }
                        _loc10_.x = _loc16_.ma * param2.x + _loc16_.mb * param2.y + _loc16_.mc * param2.z + _loc16_.md;
                        _loc10_.y = _loc16_.me * param2.x + _loc16_.mf * param2.y + _loc16_.mg * param2.z + _loc16_.mh;
                        _loc10_.z = _loc16_.mi * param2.x + _loc16_.mj * param2.y + _loc16_.mk * param2.z + _loc16_.ml;
                        _loc11_.x = _loc16_.ma * param3.x + _loc16_.mb * param3.y + _loc16_.mc * param3.z;
                        _loc11_.y = _loc16_.me * param3.x + _loc16_.mf * param3.y + _loc16_.mg * param3.z;
                        _loc11_.z = _loc16_.mi * param3.x + _loc16_.mj * param3.y + _loc16_.mk * param3.z;
                        _loc6_ = _loc16_.intersectRay(_loc10_,_loc11_,param4,param5);
                        if(_loc6_ != null)
                        {
                           return _loc6_;
                        }
                     }
                     _loc16_ = _loc16_.next;
                     _loc8_ = _loc8_.next;
                  }
                  if(boundIntersectRay(param2,param3,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
                  {
                     return this.b25cb5ee(param1.negative,param2,param3,param4,param5);
                  }
               }
            }
            else
            {
               if(boundIntersectRay(param2,param3,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
               {
                  _loc6_ = this.b25cb5ee(param1.negative,param2,param3,param4,param5);
                  if(_loc6_ != null)
                  {
                     return _loc6_;
                  }
               }
               _loc9_ = _loc12_ ? param3.x : (_loc13_ ? param3.y : param3.z);
               if(_loc9_ > 0)
               {
                  _loc16_ = param1.objectList;
                  _loc8_ = param1.objectBoundList;
                  while(_loc16_ != null)
                  {
                     if(boundIntersectRay(param2,param3,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ))
                     {
                        _loc16_.composeMatrix();
                        _loc16_.invertMatrix();
                        if(_loc10_ == null)
                        {
                           _loc10_ = new Vector3D();
                           _loc11_ = new Vector3D();
                        }
                        _loc10_.x = _loc16_.ma * param2.x + _loc16_.mb * param2.y + _loc16_.mc * param2.z + _loc16_.md;
                        _loc10_.y = _loc16_.me * param2.x + _loc16_.mf * param2.y + _loc16_.mg * param2.z + _loc16_.mh;
                        _loc10_.z = _loc16_.mi * param2.x + _loc16_.mj * param2.y + _loc16_.mk * param2.z + _loc16_.ml;
                        _loc11_.x = _loc16_.ma * param3.x + _loc16_.mb * param3.y + _loc16_.mc * param3.z;
                        _loc11_.y = _loc16_.me * param3.x + _loc16_.mf * param3.y + _loc16_.mg * param3.z;
                        _loc11_.z = _loc16_.mi * param3.x + _loc16_.mj * param3.y + _loc16_.mk * param3.z;
                        _loc6_ = _loc16_.intersectRay(_loc10_,_loc11_,param4,param5);
                        if(_loc6_ != null)
                        {
                           return _loc6_;
                        }
                     }
                     _loc16_ = _loc16_.next;
                     _loc8_ = _loc8_.next;
                  }
                  if(boundIntersectRay(param2,param3,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
                  {
                     return this.b25cb5ee(param1.positive,param2,param3,param4,param5);
                  }
               }
            }
            return null;
         }
         _loc14_ = 1e+22;
         _loc16_ = param1.objectList;
         while(_loc16_ != null)
         {
            _loc16_.composeMatrix();
            _loc16_.invertMatrix();
            if(_loc10_ == null)
            {
               _loc10_ = new Vector3D();
               _loc11_ = new Vector3D();
            }
            _loc10_.x = _loc16_.ma * param2.x + _loc16_.mb * param2.y + _loc16_.mc * param2.z + _loc16_.md;
            _loc10_.y = _loc16_.me * param2.x + _loc16_.mf * param2.y + _loc16_.mg * param2.z + _loc16_.mh;
            _loc10_.z = _loc16_.mi * param2.x + _loc16_.mj * param2.y + _loc16_.mk * param2.z + _loc16_.ml;
            _loc11_.x = _loc16_.ma * param3.x + _loc16_.mb * param3.y + _loc16_.mc * param3.z;
            _loc11_.y = _loc16_.me * param3.x + _loc16_.mf * param3.y + _loc16_.mg * param3.z;
            _loc11_.z = _loc16_.mi * param3.x + _loc16_.mj * param3.y + _loc16_.mk * param3.z;
            _loc6_ = _loc16_.intersectRay(_loc10_,_loc11_,param4,param5);
            if(_loc6_ != null && _loc6_.time < _loc14_)
            {
               _loc14_ = _loc6_.time;
               _loc15_ = _loc6_;
            }
            _loc16_ = _loc16_.next;
         }
         return _loc15_;
      }
      
      override alternativa3d function checkIntersection(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Dictionary) : Boolean
      {
         if(super.alternativa3d::checkIntersection(param1,param2,param3,param4,param5,param6,param7,param8))
         {
            return true;
         }
         if(this.root != null && boundCheckIntersection(param1,param2,param3,param4,param5,param6,param7,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ))
         {
            return this.a3c0be1c(this.root,param1,param2,param3,param4,param5,param6,param7,param8);
         }
         return false;
      }
      
      private function a3c0be1c(param1:KDNode, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Dictionary) : Boolean
      {
         var _loc21_:Object3D = null;
         var _loc11_:Object3D = null;
         var _loc17_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc16_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc10_:Number = NaN;
         var _loc13_:Number = NaN;
         if(param1.negative != null)
         {
            _loc16_ = param1.axis == 0;
            _loc18_ = param1.axis == 1;
            _loc10_ = (_loc16_ ? param2 : (_loc18_ ? param3 : param4)) - param1.coord;
            _loc13_ = _loc16_ ? param5 : (_loc18_ ? param6 : param7);
            if(_loc10_ > 0)
            {
               if(_loc13_ < 0)
               {
                  _loc19_ = -_loc10_ / _loc13_;
                  if(_loc19_ < param8)
                  {
                     _loc21_ = param1.objectList;
                     _loc11_ = param1.objectBoundList;
                     while(_loc21_ != null)
                     {
                        if(boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,_loc11_.boundMinX,_loc11_.boundMinY,_loc11_.boundMinZ,_loc11_.boundMaxX,_loc11_.boundMaxY,_loc11_.boundMaxZ))
                        {
                           _loc21_.composeMatrix();
                           _loc21_.invertMatrix();
                           _loc17_ = _loc21_.ma * param2 + _loc21_.mb * param3 + _loc21_.mc * param4 + _loc21_.md;
                           _loc15_ = _loc21_.me * param2 + _loc21_.mf * param3 + _loc21_.mg * param4 + _loc21_.mh;
                           _loc22_ = _loc21_.mi * param2 + _loc21_.mj * param3 + _loc21_.mk * param4 + _loc21_.ml;
                           _loc12_ = _loc21_.ma * param5 + _loc21_.mb * param6 + _loc21_.mc * param7;
                           _loc20_ = _loc21_.me * param5 + _loc21_.mf * param6 + _loc21_.mg * param7;
                           _loc14_ = _loc21_.mi * param5 + _loc21_.mj * param6 + _loc21_.mk * param7;
                           if(_loc21_.checkIntersection(_loc17_,_loc15_,_loc22_,_loc12_,_loc20_,_loc14_,param8,param9))
                           {
                              return true;
                           }
                        }
                        _loc21_ = _loc21_.next;
                        _loc11_ = _loc11_.next;
                     }
                     if(boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) && this.a3c0be1c(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9))
                     {
                        return true;
                     }
                  }
               }
               return boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) && this.a3c0be1c(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9);
            }
            if(_loc13_ > 0)
            {
               _loc19_ = -_loc10_ / _loc13_;
               if(_loc19_ < param8)
               {
                  _loc21_ = param1.objectList;
                  _loc11_ = param1.objectBoundList;
                  while(_loc21_ != null)
                  {
                     if(boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,_loc11_.boundMinX,_loc11_.boundMinY,_loc11_.boundMinZ,_loc11_.boundMaxX,_loc11_.boundMaxY,_loc11_.boundMaxZ))
                     {
                        _loc21_.composeMatrix();
                        _loc21_.invertMatrix();
                        _loc17_ = _loc21_.ma * param2 + _loc21_.mb * param3 + _loc21_.mc * param4 + _loc21_.md;
                        _loc15_ = _loc21_.me * param2 + _loc21_.mf * param3 + _loc21_.mg * param4 + _loc21_.mh;
                        _loc22_ = _loc21_.mi * param2 + _loc21_.mj * param3 + _loc21_.mk * param4 + _loc21_.ml;
                        _loc12_ = _loc21_.ma * param5 + _loc21_.mb * param6 + _loc21_.mc * param7;
                        _loc20_ = _loc21_.me * param5 + _loc21_.mf * param6 + _loc21_.mg * param7;
                        _loc14_ = _loc21_.mi * param5 + _loc21_.mj * param6 + _loc21_.mk * param7;
                        if(_loc21_.checkIntersection(_loc17_,_loc15_,_loc22_,_loc12_,_loc20_,_loc14_,param8,param9))
                        {
                           return true;
                        }
                     }
                     _loc21_ = _loc21_.next;
                     _loc11_ = _loc11_.next;
                  }
                  if(boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) && this.a3c0be1c(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9))
                  {
                     return true;
                  }
               }
            }
            return boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) && this.a3c0be1c(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         _loc21_ = param1.objectList;
         while(_loc21_ != null)
         {
            _loc21_.composeMatrix();
            _loc21_.invertMatrix();
            _loc17_ = _loc21_.ma * param2 + _loc21_.mb * param3 + _loc21_.mc * param4 + _loc21_.md;
            _loc15_ = _loc21_.me * param2 + _loc21_.mf * param3 + _loc21_.mg * param4 + _loc21_.mh;
            _loc22_ = _loc21_.mi * param2 + _loc21_.mj * param3 + _loc21_.mk * param4 + _loc21_.ml;
            _loc12_ = _loc21_.ma * param5 + _loc21_.mb * param6 + _loc21_.mc * param7;
            _loc20_ = _loc21_.me * param5 + _loc21_.mf * param6 + _loc21_.mg * param7;
            _loc14_ = _loc21_.mi * param5 + _loc21_.mj * param6 + _loc21_.mk * param7;
            if(_loc21_.checkIntersection(_loc17_,_loc15_,_loc22_,_loc12_,_loc20_,_loc14_,param8,param9))
            {
               return true;
            }
            _loc21_ = _loc21_.next;
         }
         return false;
      }
      
      override alternativa3d function collectPlanes(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Vector3D, param6:Vector.<Face>, param7:Dictionary = null) : void
      {
         var _loc8_:Object3D = null;
         if(param7 != null && param7[this])
         {
            return;
         }
         var _loc9_:Vector3D = calculateSphere(param1,param2,param3,param4,param5,f5daea2e);
         if(!this.ignoreChildrenInCollider)
         {
            if(!boundIntersectSphere(_loc9_,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
            {
               return;
            }
            _loc8_ = childrenList;
            while(_loc8_ != null)
            {
               _loc8_.composeAndAppend(this);
               _loc8_.collectPlanes(param1,param2,param3,param4,param5,param6,param7);
               _loc8_ = _loc8_.next;
            }
         }
         if(this.root != null && boundIntersectSphere(_loc9_,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ))
         {
            this.cb9714d(this.root,_loc9_,param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      private function cb9714d(param1:KDNode, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Vector3D, param6:Vector3D, param7:Vector3D, param8:Vector.<Face>, param9:Dictionary = null) : void
      {
         var _loc14_:Object3D = null;
         var _loc11_:Object3D = null;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc10_:Number = NaN;
         if(param1.negative != null)
         {
            _loc12_ = param1.axis == 0;
            _loc13_ = param1.axis == 1;
            _loc10_ = (_loc12_ ? param2.x : (_loc13_ ? param2.y : param2.z)) - param1.coord;
            if(_loc10_ >= param2.w)
            {
               if(boundIntersectSphere(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
               {
                  this.cb9714d(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9);
               }
            }
            else if(_loc10_ <= -param2.w)
            {
               if(boundIntersectSphere(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
               {
                  this.cb9714d(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9);
               }
            }
            else
            {
               _loc14_ = param1.objectList;
               _loc11_ = param1.objectBoundList;
               while(_loc14_ != null)
               {
                  if(boundIntersectSphere(param2,_loc11_.boundMinX,_loc11_.boundMinY,_loc11_.boundMinZ,_loc11_.boundMaxX,_loc11_.boundMaxY,_loc11_.boundMaxZ))
                  {
                     _loc14_.composeAndAppend(this);
                     _loc14_.collectPlanes(param3,param4,param5,param6,param7,param8,param9);
                  }
                  _loc14_ = _loc14_.next;
                  _loc11_ = _loc11_.next;
               }
               if(boundIntersectSphere(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
               {
                  this.cb9714d(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9);
               }
               if(boundIntersectSphere(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
               {
                  this.cb9714d(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9);
               }
            }
         }
         else
         {
            _loc14_ = param1.objectList;
            while(_loc14_ != null)
            {
               _loc14_.composeAndAppend(this);
               _loc14_.collectPlanes(param3,param4,param5,param6,param7,param8,param9);
               _loc14_ = _loc14_.next;
            }
         }
      }
      
      public function createDecal(param1:Vector3D, param2:Vector3D, param3:Number, param4:Number, param5:Number, param6:Number, param7:Material) : Decal
      {
         var _loc13_:Decal = new Decal();
         _loc13_.attenuation = param6;
         var _loc12_:Matrix3D = new Matrix3D();
         _loc12_.appendRotation(param4 * 180 / 3.141592653589793,Vector3D.Z_AXIS);
         _loc12_.appendRotation(Math.atan2(-param2.z,Math.sqrt(param2.x * param2.x + param2.y * param2.y)) * 180 / 3.141592653589793 - 90,Vector3D.X_AXIS);
         _loc12_.appendRotation(-Math.atan2(-param2.x,-param2.y) * 180 / 3.141592653589793,Vector3D.Z_AXIS);
         _loc12_.appendTranslation(param1.x,param1.y,param1.z);
         _loc13_.matrix = _loc12_;
         _loc13_.composeMatrix();
         _loc13_.boundMinX = -param3;
         _loc13_.boundMaxX = param3;
         _loc13_.boundMinY = -param3;
         _loc13_.boundMaxY = param3;
         _loc13_.boundMinZ = -param6;
         _loc13_.boundMaxZ = param6;
         var _loc15_:Number = 1e+22;
         var _loc14_:Number = 1e+22;
         var _loc16_:Number = 1e+22;
         var _loc11_:Number = -1e+22;
         var _loc10_:Number = -1e+22;
         var _loc9_:Number = -1e+22;
         var _loc8_:Vertex = boundVertexList;
         _loc8_.x = _loc13_.boundMinX;
         _loc8_.y = _loc13_.boundMinY;
         _loc8_.z = _loc13_.boundMinZ;
         _loc8_ = _loc8_.next;
         _loc8_.x = _loc13_.boundMaxX;
         _loc8_.y = _loc13_.boundMinY;
         _loc8_.z = _loc13_.boundMinZ;
         _loc8_ = _loc8_.next;
         _loc8_.x = _loc13_.boundMinX;
         _loc8_.y = _loc13_.boundMaxY;
         _loc8_.z = _loc13_.boundMinZ;
         _loc8_ = _loc8_.next;
         _loc8_.x = _loc13_.boundMaxX;
         _loc8_.y = _loc13_.boundMaxY;
         _loc8_.z = _loc13_.boundMinZ;
         _loc8_ = _loc8_.next;
         _loc8_.x = _loc13_.boundMinX;
         _loc8_.y = _loc13_.boundMinY;
         _loc8_.z = _loc13_.boundMaxZ;
         _loc8_ = _loc8_.next;
         _loc8_.x = _loc13_.boundMaxX;
         _loc8_.y = _loc13_.boundMinY;
         _loc8_.z = _loc13_.boundMaxZ;
         _loc8_ = _loc8_.next;
         _loc8_.x = _loc13_.boundMinX;
         _loc8_.y = _loc13_.boundMaxY;
         _loc8_.z = _loc13_.boundMaxZ;
         _loc8_ = _loc8_.next;
         _loc8_.x = _loc13_.boundMaxX;
         _loc8_.y = _loc13_.boundMaxY;
         _loc8_.z = _loc13_.boundMaxZ;
         _loc8_ = boundVertexList;
         while(_loc8_ != null)
         {
            _loc8_.cameraX = _loc13_.ma * _loc8_.x + _loc13_.mb * _loc8_.y + _loc13_.mc * _loc8_.z + _loc13_.md;
            _loc8_.cameraY = _loc13_.me * _loc8_.x + _loc13_.mf * _loc8_.y + _loc13_.mg * _loc8_.z + _loc13_.mh;
            _loc8_.cameraZ = _loc13_.mi * _loc8_.x + _loc13_.mj * _loc8_.y + _loc13_.mk * _loc8_.z + _loc13_.ml;
            if(_loc8_.cameraX < _loc15_)
            {
               _loc15_ = _loc8_.cameraX;
            }
            if(_loc8_.cameraX > _loc11_)
            {
               _loc11_ = _loc8_.cameraX;
            }
            if(_loc8_.cameraY < _loc14_)
            {
               _loc14_ = _loc8_.cameraY;
            }
            if(_loc8_.cameraY > _loc10_)
            {
               _loc10_ = _loc8_.cameraY;
            }
            if(_loc8_.cameraZ < _loc16_)
            {
               _loc16_ = _loc8_.cameraZ;
            }
            if(_loc8_.cameraZ > _loc9_)
            {
               _loc9_ = _loc8_.cameraZ;
            }
            _loc8_ = _loc8_.next;
         }
         _loc13_.invertMatrix();
         if(param5 > 3.141592653589793 / 2)
         {
            param5 = 3.141592653589793 / 2;
         }
         if(this.root != null)
         {
            this.root.collectPolygons(_loc13_,Math.sqrt(param3 * param3 + param3 * param3 + param6 * param6),Math.cos(param5) - 0.001,_loc15_,_loc11_,_loc14_,_loc10_,_loc16_,_loc9_);
         }
         if(_loc13_.faceList != null)
         {
            _loc13_.calculateBounds();
         }
         else
         {
            _loc13_.boundMinX = -1;
            _loc13_.boundMinY = -1;
            _loc13_.boundMinZ = -1;
            _loc13_.boundMaxX = 1;
            _loc13_.boundMaxY = 1;
            _loc13_.boundMaxZ = 1;
         }
         _loc13_.setMaterialToAllFaces(param7);
         return _loc13_;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:KDContainer = new KDContainer();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:KDContainer = param1 as KDContainer;
         this.debugAlphaFade = _loc2_.debugAlphaFade;
         if(_loc2_.root != null)
         {
            this.root = _loc2_.e25c83db(_loc2_.root,this);
         }
      }
      
      private function e25c83db(param1:KDNode, param2:Object3DContainer) : KDNode
      {
         var _loc6_:Object3D = null;
         var _loc4_:Object3D = null;
         var _loc5_:Object3D = null;
         var _loc3_:KDNode = new KDNode();
         _loc3_.axis = param1.axis;
         _loc3_.coord = param1.coord;
         _loc3_.minCoord = param1.minCoord;
         _loc3_.maxCoord = param1.maxCoord;
         _loc3_.boundMinX = param1.boundMinX;
         _loc3_.boundMinY = param1.boundMinY;
         _loc3_.boundMinZ = param1.boundMinZ;
         _loc3_.boundMaxX = param1.boundMaxX;
         _loc3_.boundMaxY = param1.boundMaxY;
         _loc3_.boundMaxZ = param1.boundMaxZ;
         _loc6_ = param1.objectList;
         _loc4_ = null;
         while(_loc6_ != null)
         {
            _loc5_ = _loc6_.clone();
            if(_loc3_.objectList != null)
            {
               _loc4_.next = _loc5_;
            }
            else
            {
               _loc3_.objectList = _loc5_;
            }
            _loc4_ = _loc5_;
            _loc5_.setParent(param2);
            _loc6_ = _loc6_.next;
         }
         _loc6_ = param1.objectBoundList;
         _loc4_ = null;
         while(_loc6_ != null)
         {
            _loc5_ = _loc6_.clone();
            if(_loc3_.objectBoundList != null)
            {
               _loc4_.next = _loc5_;
            }
            else
            {
               _loc3_.objectBoundList = _loc5_;
            }
            _loc4_ = _loc5_;
            _loc6_ = _loc6_.next;
         }
         _loc6_ = param1.occluderList;
         _loc4_ = null;
         while(_loc6_ != null)
         {
            _loc5_ = _loc6_.clone();
            if(_loc3_.occluderList != null)
            {
               _loc4_.next = _loc5_;
            }
            else
            {
               _loc3_.occluderList = _loc5_;
            }
            _loc4_ = _loc5_;
            _loc5_.setParent(param2);
            _loc6_ = _loc6_.next;
         }
         _loc6_ = param1.occluderBoundList;
         _loc4_ = null;
         while(_loc6_ != null)
         {
            _loc5_ = _loc6_.clone();
            if(_loc3_.occluderBoundList != null)
            {
               _loc4_.next = _loc5_;
            }
            else
            {
               _loc3_.occluderBoundList = _loc5_;
            }
            _loc4_ = _loc5_;
            _loc6_ = _loc6_.next;
         }
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
      
      override alternativa3d function draw(param1:Camera3D) : void
      {
         var _loc7_:int = 0;
         var _loc13_:Object3D = null;
         var _loc9_:VG = null;
         var _loc12_:VG = null;
         var _loc3_:Boolean = false;
         var _loc8_:Object3D = null;
         var _loc2_:VG = null;
         var _loc10_:int = 0;
         var _loc11_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:* = null;
         this.ab4befa(param1.device);
         calculateInverseMatrix();
         var _loc6_:int = int(param1.debug ? param1.checkInDebug(this) : 0);
         if(_loc6_ & 8)
         {
            Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
         }
         if(this.batched)
         {
            _loc3_ = param1.debug;
            if(_loc6_ && _loc6_ & 0x80)
            {
               param1.debug = false;
            }
            _loc13_ = this.c400fb29;
            while(_loc13_ != null)
            {
               _loc13_.ma = ma;
               _loc13_.mb = mb;
               _loc13_.mc = mc;
               _loc13_.md = md;
               _loc13_.me = me;
               _loc13_.mf = mf;
               _loc13_.mg = mg;
               _loc13_.mh = mh;
               _loc13_.mi = mi;
               _loc13_.mj = mj;
               _loc13_.mk = mk;
               _loc13_.ml = ml;
               _loc13_.concat(this);
               _loc13_.draw(param1);
               if(!param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && _loc13_.concatenatedAlpha >= _loc13_.shadowMapAlphaThreshold)
               {
                  param1.casterObjects[param1.casterCount] = _loc13_;
                  param1.casterCount++;
               }
               _loc13_ = _loc13_.next;
            }
            param1.debug = _loc3_;
            _loc12_ = super.alternativa3d::getVG(param1);
            if(!param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0)
            {
               _loc13_ = childrenList;
               while(_loc13_ != null)
               {
                  if(_loc13_.visible)
                  {
                     if(_loc13_ is Mesh || _loc13_ is BSP || _loc13_ is Sprite3D)
                     {
                        if(_loc13_.concatenatedAlpha >= _loc13_.shadowMapAlphaThreshold)
                        {
                           param1.casterObjects[param1.casterCount] = _loc13_;
                           param1.casterCount++;
                        }
                     }
                     else if(_loc13_ is Object3DContainer)
                     {
                        _loc8_ = Object3DContainer(_loc13_).alternativa3d::childrenList;
                        while(_loc8_ != null)
                        {
                           if((_loc8_ is Mesh || _loc8_ is BSP || _loc8_ is Sprite3D) && _loc8_.concatenatedAlpha >= _loc8_.shadowMapAlphaThreshold)
                           {
                              param1.casterObjects[param1.casterCount] = _loc8_;
                              param1.casterCount++;
                           }
                           _loc8_ = _loc8_.next;
                        }
                     }
                  }
                  _loc13_ = _loc13_.next;
               }
            }
            _loc7_ = 0;
            while(_loc7_ < this.b2c824f)
            {
               _loc13_ = this.transparent[_loc7_];
               _loc13_.composeAndAppend(this);
               if(_loc13_.cullingInCamera(param1,culling) >= 0)
               {
                  _loc13_.concat(this);
                  _loc2_ = _loc13_.getVG(param1);
                  if(_loc2_ != null)
                  {
                     _loc2_.next = _loc12_;
                     _loc12_ = _loc2_;
                  }
               }
               if(!param1.view.constrained && param1.shadowMap != null && param1.shadowMapStrength > 0 && _loc13_.concatenatedAlpha >= _loc13_.shadowMapAlphaThreshold)
               {
                  param1.casterObjects[param1.casterCount] = _loc13_;
                  param1.casterCount++;
               }
               _loc7_++;
            }
            if(_loc12_ != null)
            {
               if(_loc12_.next != null)
               {
                  if(resolveByAABB)
                  {
                     _loc9_ = _loc12_;
                     while(_loc9_ != null)
                     {
                        _loc9_.calculateAABB(ima,imb,imc,imd,ime,imf,img,imh,imi,imj,imk,iml);
                        _loc9_ = _loc9_.next;
                     }
                     drawAABBGeometry(param1,_loc12_);
                  }
                  else if(resolveByOOBB)
                  {
                     _loc9_ = _loc12_;
                     while(_loc9_ != null)
                     {
                        _loc9_.calculateOOBB(this);
                        _loc9_ = _loc9_.next;
                     }
                     drawOOBBGeometry(param1,_loc12_);
                  }
                  else
                  {
                     drawConflictGeometry(param1,_loc12_);
                  }
               }
               else
               {
                  _loc12_.draw(param1,threshold,this);
                  _loc12_.destroy();
               }
            }
         }
         else if(this.root != null)
         {
            this.a6ae7e64(param1.nearClipping,param1.farClipping);
            _loc10_ = this.a24f9edf(culling,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ);
            if(_loc10_ >= 0)
            {
               this.numOccluders = 0;
               if(param1.numOccluders > 0)
               {
                  this.f59e9dc2(param1);
               }
               _loc9_ = _loc12_ = super.alternativa3d::getVG(param1);
               while(_loc9_ != null)
               {
                  _loc9_.calculateAABB(ima,imb,imc,imd,ime,imf,img,imh,imi,imj,imk,iml);
                  _loc9_ = _loc9_.next;
               }
               this.baaf4f7(this.root,_loc10_,param1,_loc12_);
               _loc7_ = 0;
               while(_loc7_ < this.numOccluders)
               {
                  _loc4_ = _loc11_ = this.occluders[_loc7_];
                  while(_loc4_.next != null)
                  {
                     _loc4_ = _loc4_.next;
                  }
                  _loc4_.next = Vertex.collector;
                  Vertex.collector = _loc11_;
                  this.occluders[_loc7_] = null;
                  _loc7_++;
               }
               this.numOccluders = 0;
            }
            else
            {
               super.alternativa3d::draw(param1);
            }
         }
         else
         {
            super.alternativa3d::draw(param1);
         }
         if(this.root != null && _loc6_ & 0x80)
         {
            this.a3241790(this.root,_loc10_,param1,1);
            Debug.drawBounds(param1,this,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ,14496733);
         }
         if(this.root != null && needCollectReceivers)
         {
            param1.receiversVertexBuffers = this.receiversVertexBuffers;
            param1.receiversIndexBuffers = this.receiversIndexBuffers;
            for each(_loc5_ in param1.shadowAtlases)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc5_.alternativa3d::shadowsCount)
               {
                  this.root.collectReceivers(_loc5_.alternativa3d::shadows[_loc7_]);
                  _loc7_++;
               }
            }
         }
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         var _loc2_:int = 0;
         var _loc3_:VG = super.alternativa3d::getVG(param1);
         if(this.root != null)
         {
            this.numOccluders = 0;
            calculateInverseMatrix();
            this.a6ae7e64(param1.nearClipping,param1.farClipping);
            _loc2_ = this.a24f9edf(culling,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ);
            if(_loc2_ >= 0)
            {
               _loc3_ = this.d64228f5(this.root,_loc2_,param1,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function d64228f5(param1:KDNode, param2:int, param3:Camera3D, param4:VG = null) : VG
      {
         var _loc9_:VG = null;
         var _loc6_:VG = null;
         var _loc10_:VG = null;
         var _loc7_:int = 0;
         var _loc5_:int = 0;
         var _loc11_:Object3D = param1.objectList;
         var _loc8_:Object3D = param1.objectBoundList;
         while(_loc11_ != null)
         {
            if(_loc11_.visible && ((_loc11_.culling = param2) == 0 || (_loc11_.culling = this.a24f9edf(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
            {
               _loc11_.composeAndAppend(this);
               _loc11_.concat(this);
               _loc10_ = _loc11_.getVG(param3);
               if(_loc10_ != null)
               {
                  if(_loc9_ != null)
                  {
                     _loc6_.next = _loc10_;
                  }
                  else
                  {
                     _loc9_ = _loc10_;
                     _loc6_ = _loc10_;
                  }
                  while(_loc6_.next != null)
                  {
                     _loc6_ = _loc6_.next;
                  }
               }
            }
            _loc11_ = _loc11_.next;
            _loc8_ = _loc8_.next;
         }
         if(_loc9_ != null)
         {
            _loc6_.next = param4;
            param4 = _loc9_;
         }
         if(param1.negative != null)
         {
            _loc7_ = int(param2 > 0 ? this.a24f9edf(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0);
            _loc5_ = int(param2 > 0 ? this.a24f9edf(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0);
            if(_loc7_ >= 0)
            {
               param4 = this.d64228f5(param1.negative,_loc7_,param3,param4);
            }
            if(_loc5_ >= 0)
            {
               param4 = this.d64228f5(param1.positive,_loc5_,param3,param4);
            }
         }
         return param4;
      }
      
      private function ab4befa(param1:Device) : void
      {
         var _loc5_:Mesh = null;
         var _loc3_:BSP = null;
         var _loc2_:TextureMaterial = null;
         var _loc4_:int = 0;
         if(this.isCreated)
         {
            return;
         }
         this.isCreated = true;
         for(var _loc6_ in this.materials)
         {
            _loc2_ = _loc6_ as TextureMaterial;
            if(_loc2_.texture != null)
            {
               param1.uploadResource(_loc2_.textureResource);
            }
            if(_loc2_._textureATF != null)
            {
               param1.uploadResource(_loc2_.textureATFResource);
            }
            if(_loc2_._textureATFAlpha != null)
            {
               param1.uploadResource(_loc2_.textureATFAlphaResource);
            }
         }
         var _loc7_:Object3D = this.c400fb29;
         while(_loc7_ != null)
         {
            if(_loc7_ is Mesh)
            {
               _loc5_ = _loc7_ as Mesh;
               _loc5_.prepareResources();
               param1.uploadResource(_loc5_.vertexBuffer);
               param1.uploadResource(_loc5_.indexBuffer);
            }
            else if(_loc7_ is BSP)
            {
               _loc3_ = _loc7_ as BSP;
               _loc3_.prepareResources();
               param1.uploadResource(_loc3_.vertexBuffer);
               param1.uploadResource(_loc3_.indexBuffer);
            }
            _loc7_ = _loc7_.next;
         }
         while(_loc4_ < this.b2c824f)
         {
            _loc7_ = this.transparent[_loc4_];
            if(_loc7_ is Mesh)
            {
               _loc5_ = _loc7_ as Mesh;
               _loc5_.prepareResources();
               param1.uploadResource(_loc5_.vertexBuffer);
               param1.uploadResource(_loc5_.indexBuffer);
            }
            else if(_loc7_ is BSP)
            {
               _loc3_ = _loc7_ as BSP;
               _loc3_.prepareResources();
               param1.uploadResource(_loc3_.vertexBuffer);
               param1.uploadResource(_loc3_.indexBuffer);
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.receiversVertexBuffers.length)
         {
            param1.uploadResource(this.receiversVertexBuffers[_loc4_]);
            param1.uploadResource(this.receiversIndexBuffers[_loc4_]);
            _loc4_++;
         }
      }
      
      override alternativa3d function updateBounds(param1:Object3D, param2:Object3D = null) : void
      {
         super.alternativa3d::updateBounds(param1,param2);
         if(this.root != null)
         {
            if(param2 != null)
            {
               this.e287e2ed(this.root,param1,param2);
            }
            else
            {
               if(this.root.boundMinX < param1.boundMinX)
               {
                  param1.boundMinX = this.root.boundMinX;
               }
               if(this.root.boundMaxX > param1.boundMaxX)
               {
                  param1.boundMaxX = this.root.boundMaxX;
               }
               if(this.root.boundMinY < param1.boundMinY)
               {
                  param1.boundMinY = this.root.boundMinY;
               }
               if(this.root.boundMaxY > param1.boundMaxY)
               {
                  param1.boundMaxY = this.root.boundMaxY;
               }
               if(this.root.boundMinZ < param1.boundMinZ)
               {
                  param1.boundMinZ = this.root.boundMinZ;
               }
               if(this.root.boundMaxZ > param1.boundMaxZ)
               {
                  param1.boundMaxZ = this.root.boundMaxZ;
               }
            }
         }
      }
      
      private function e287e2ed(param1:KDNode, param2:Object3D, param3:Object3D) : void
      {
         var _loc4_:Object3D = param1.objectList;
         while(_loc4_ != null)
         {
            if(param3 != null)
            {
               _loc4_.composeAndAppend(param3);
            }
            else
            {
               _loc4_.composeMatrix();
            }
            _loc4_.updateBounds(param2,_loc4_);
            _loc4_ = _loc4_.next;
         }
         if(param1.negative != null)
         {
            this.e287e2ed(param1.negative,param2,param3);
            this.e287e2ed(param1.positive,param2,param3);
         }
      }
      
      private function a3241790(param1:KDNode, param2:int, param3:Camera3D, param4:Number) : void
      {
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         if(param1 != null && param1.negative != null)
         {
            _loc6_ = int(param2 > 0 ? this.a24f9edf(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0);
            _loc5_ = int(param2 > 0 ? this.a24f9edf(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0);
            if(_loc6_ >= 0)
            {
               this.a3241790(param1.negative,_loc6_,param3,param4 * this.debugAlphaFade);
            }
            Debug.drawKDNode(param3,this,param1.axis,param1.coord,param1.boundMinX,param1.boundMinY,param1.boundMinZ,param1.boundMaxX,param1.boundMaxY,param1.boundMaxZ,param4);
            if(_loc5_ >= 0)
            {
               this.a3241790(param1.positive,_loc5_,param3,param4 * this.debugAlphaFade);
            }
         }
      }
      
      private function baaf4f7(param1:KDNode, param2:int, param3:Camera3D, param4:VG) : void
      {
         var _loc9_:int = 0;
         var _loc5_:VG = null;
         var _loc12_:VG = null;
         var _loc6_:VG = null;
         var _loc10_:VG = null;
         var _loc17_:Object3D = null;
         var _loc8_:Object3D = null;
         var _loc14_:int = 0;
         var _loc11_:int = 0;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = false;
         var _loc13_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param3.occludedAll)
         {
            while(param4 != null)
            {
               _loc5_ = param4.next;
               param4.destroy();
               param4 = _loc5_;
            }
            return;
         }
         if(param1.negative != null)
         {
            _loc14_ = int(param2 > 0 || this.numOccluders > 0 ? this.a24f9edf(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0);
            _loc11_ = int(param2 > 0 || this.numOccluders > 0 ? this.a24f9edf(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0);
            _loc15_ = param1.axis == 0;
            _loc16_ = param1.axis == 1;
            if(_loc14_ >= 0 && _loc11_ >= 0)
            {
               while(param4 != null)
               {
                  _loc5_ = param4.next;
                  if(param4.numOccluders < this.numOccluders && this.f286a6be(param3,param4))
                  {
                     param4.destroy();
                  }
                  else
                  {
                     _loc13_ = _loc15_ ? param4.boundMinX : (_loc16_ ? param4.boundMinY : param4.boundMinZ);
                     _loc7_ = _loc15_ ? param4.boundMaxX : (_loc16_ ? param4.boundMaxY : param4.boundMaxZ);
                     if(_loc7_ <= param1.maxCoord)
                     {
                        if(_loc13_ < param1.minCoord)
                        {
                           param4.next = _loc12_;
                           _loc12_ = param4;
                        }
                        else
                        {
                           param4.next = _loc6_;
                           _loc6_ = param4;
                        }
                     }
                     else if(_loc13_ >= param1.minCoord)
                     {
                        param4.next = _loc10_;
                        _loc10_ = param4;
                     }
                     else
                     {
                        param4.split(param3,param1.axis == 0 ? 1 : 0,param1.axis == 1 ? 1 : 0,param1.axis == 2 ? 1 : 0,param1.coord,threshold);
                        if(param4.next != null)
                        {
                           param4.next.next = _loc12_;
                           _loc12_ = param4.next;
                        }
                        if(param4.faceStruct != null)
                        {
                           param4.next = _loc10_;
                           _loc10_ = param4;
                        }
                        else
                        {
                           param4.destroy();
                        }
                     }
                  }
                  param4 = _loc5_;
               }
               if(_loc15_ && imd > param1.coord || _loc16_ && imh > param1.coord || !_loc15_ && !_loc16_ && iml > param1.coord)
               {
                  this.baaf4f7(param1.positive,_loc11_,param3,_loc10_);
                  while(_loc6_ != null)
                  {
                     _loc5_ = _loc6_.next;
                     if(_loc6_.numOccluders >= this.numOccluders || !this.f286a6be(param3,_loc6_))
                     {
                        _loc6_.draw(param3,threshold,this);
                     }
                     _loc6_.destroy();
                     _loc6_ = _loc5_;
                  }
                  _loc17_ = param1.objectList;
                  _loc8_ = param1.objectBoundList;
                  while(_loc17_ != null)
                  {
                     if(_loc17_.visible && ((_loc17_.culling = param2) == 0 && this.numOccluders == 0 || (_loc17_.culling = this.a24f9edf(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
                     {
                        _loc17_.copyAndAppend(_loc8_,this);
                        _loc17_.concat(this);
                        _loc17_.draw(param3);
                     }
                     _loc17_ = _loc17_.next;
                     _loc8_ = _loc8_.next;
                  }
                  _loc17_ = param1.occluderList;
                  _loc8_ = param1.occluderBoundList;
                  while(_loc17_ != null)
                  {
                     if(_loc17_.visible && ((_loc17_.culling = param2) == 0 && this.numOccluders == 0 || (_loc17_.culling = this.a24f9edf(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
                     {
                        _loc17_.copyAndAppend(_loc8_,this);
                        _loc17_.concat(this);
                        _loc17_.draw(param3);
                     }
                     _loc17_ = _loc17_.next;
                     _loc8_ = _loc8_.next;
                  }
                  if(param1.occluderList != null)
                  {
                     this.f59e9dc2(param3);
                  }
                  this.baaf4f7(param1.negative,_loc14_,param3,_loc12_);
               }
               else
               {
                  this.baaf4f7(param1.negative,_loc14_,param3,_loc12_);
                  while(_loc6_ != null)
                  {
                     _loc5_ = _loc6_.next;
                     if(_loc6_.numOccluders >= this.numOccluders || !this.f286a6be(param3,_loc6_))
                     {
                        _loc6_.draw(param3,threshold,this);
                     }
                     _loc6_.destroy();
                     _loc6_ = _loc5_;
                  }
                  _loc17_ = param1.objectList;
                  _loc8_ = param1.objectBoundList;
                  while(_loc17_ != null)
                  {
                     if(_loc17_.visible && ((_loc17_.culling = param2) == 0 && this.numOccluders == 0 || (_loc17_.culling = this.a24f9edf(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
                     {
                        _loc17_.copyAndAppend(_loc8_,this);
                        _loc17_.concat(this);
                        _loc17_.draw(param3);
                     }
                     _loc17_ = _loc17_.next;
                     _loc8_ = _loc8_.next;
                  }
                  _loc17_ = param1.occluderList;
                  _loc8_ = param1.occluderBoundList;
                  while(_loc17_ != null)
                  {
                     if(_loc17_.visible && ((_loc17_.culling = param2) == 0 && this.numOccluders == 0 || (_loc17_.culling = this.a24f9edf(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
                     {
                        _loc17_.copyAndAppend(_loc8_,this);
                        _loc17_.concat(this);
                        _loc17_.draw(param3);
                     }
                     _loc17_ = _loc17_.next;
                     _loc8_ = _loc8_.next;
                  }
                  if(param1.occluderList != null)
                  {
                     this.f59e9dc2(param3);
                  }
                  this.baaf4f7(param1.positive,_loc11_,param3,_loc10_);
               }
            }
            else if(_loc14_ >= 0)
            {
               while(param4 != null)
               {
                  _loc5_ = param4.next;
                  if(param4.numOccluders < this.numOccluders && this.f286a6be(param3,param4))
                  {
                     param4.destroy();
                  }
                  else
                  {
                     _loc13_ = _loc15_ ? param4.boundMinX : (_loc16_ ? param4.boundMinY : param4.boundMinZ);
                     _loc7_ = _loc15_ ? param4.boundMaxX : (_loc16_ ? param4.boundMaxY : param4.boundMaxZ);
                     if(_loc7_ <= param1.maxCoord)
                     {
                        param4.next = _loc12_;
                        _loc12_ = param4;
                     }
                     else if(_loc13_ >= param1.minCoord)
                     {
                        param4.destroy();
                     }
                     else
                     {
                        param4.crop(param3,param1.axis == 0 ? -1 : 0,param1.axis == 1 ? -1 : 0,param1.axis == 2 ? -1 : 0,-param1.coord,threshold);
                        if(param4.faceStruct != null)
                        {
                           param4.next = _loc12_;
                           _loc12_ = param4;
                        }
                        else
                        {
                           param4.destroy();
                        }
                     }
                  }
                  param4 = _loc5_;
               }
               this.baaf4f7(param1.negative,_loc14_,param3,_loc12_);
            }
            else if(_loc11_ >= 0)
            {
               while(param4 != null)
               {
                  _loc5_ = param4.next;
                  if(param4.numOccluders < this.numOccluders && this.f286a6be(param3,param4))
                  {
                     param4.destroy();
                  }
                  else
                  {
                     _loc13_ = _loc15_ ? param4.boundMinX : (_loc16_ ? param4.boundMinY : param4.boundMinZ);
                     _loc7_ = _loc15_ ? param4.boundMaxX : (_loc16_ ? param4.boundMaxY : param4.boundMaxZ);
                     if(_loc7_ <= param1.maxCoord)
                     {
                        param4.destroy();
                     }
                     else if(_loc13_ >= param1.minCoord)
                     {
                        param4.next = _loc10_;
                        _loc10_ = param4;
                     }
                     else
                     {
                        param4.crop(param3,param1.axis == 0 ? 1 : 0,param1.axis == 1 ? 1 : 0,param1.axis == 2 ? 1 : 0,param1.coord,threshold);
                        if(param4.faceStruct != null)
                        {
                           param4.next = _loc10_;
                           _loc10_ = param4;
                        }
                        else
                        {
                           param4.destroy();
                        }
                     }
                  }
                  param4 = _loc5_;
               }
               this.baaf4f7(param1.positive,_loc11_,param3,_loc10_);
            }
            else
            {
               while(param4 != null)
               {
                  _loc5_ = param4.next;
                  param4.destroy();
                  param4 = _loc5_;
               }
            }
         }
         else
         {
            if(param1.objectList != null)
            {
               if(param1.objectList.next != null || param4 != null)
               {
                  while(param4 != null)
                  {
                     _loc5_ = param4.next;
                     if(param4.numOccluders < this.numOccluders && this.f286a6be(param3,param4))
                     {
                        param4.destroy();
                     }
                     else
                     {
                        param4.next = _loc6_;
                        _loc6_ = param4;
                     }
                     param4 = _loc5_;
                  }
                  _loc17_ = param1.objectList;
                  _loc8_ = param1.objectBoundList;
                  while(_loc17_ != null)
                  {
                     if(_loc17_.visible && ((_loc17_.culling = param2) == 0 && this.numOccluders == 0 || (_loc17_.culling = this.a24f9edf(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
                     {
                        _loc17_.copyAndAppend(_loc8_,this);
                        _loc17_.concat(this);
                        param4 = _loc17_.getVG(param3);
                        while(param4 != null)
                        {
                           _loc5_ = param4.next;
                           param4.next = _loc6_;
                           _loc6_ = param4;
                           param4 = _loc5_;
                        }
                     }
                     _loc17_ = _loc17_.next;
                     _loc8_ = _loc8_.next;
                  }
                  if(_loc6_ != null)
                  {
                     if(_loc6_.next != null)
                     {
                        drawConflictGeometry(param3,_loc6_);
                     }
                     else
                     {
                        _loc6_.draw(param3,threshold,this);
                        _loc6_.destroy();
                     }
                  }
               }
               else
               {
                  _loc17_ = param1.objectList;
                  if(_loc17_.visible)
                  {
                     _loc17_.copyAndAppend(param1.objectBoundList,this);
                     _loc17_.culling = param2;
                     _loc17_.concat(this);
                     _loc17_.draw(param3);
                  }
               }
            }
            else if(param4 != null)
            {
               if(param4.next != null)
               {
                  if(this.numOccluders > 0)
                  {
                     while(param4 != null)
                     {
                        _loc5_ = param4.next;
                        if(param4.numOccluders < this.numOccluders && this.f286a6be(param3,param4))
                        {
                           param4.destroy();
                        }
                        else
                        {
                           param4.next = _loc6_;
                           _loc6_ = param4;
                        }
                        param4 = _loc5_;
                     }
                     if(_loc6_ != null)
                     {
                        if(_loc6_.next != null)
                        {
                           if(resolveByAABB)
                           {
                              drawAABBGeometry(param3,_loc6_);
                           }
                           else if(resolveByOOBB)
                           {
                              param4 = _loc6_;
                              while(param4 != null)
                              {
                                 param4.calculateOOBB(this);
                                 param4 = param4.next;
                              }
                              drawOOBBGeometry(param3,_loc6_);
                           }
                           else
                           {
                              drawConflictGeometry(param3,_loc6_);
                           }
                        }
                        else
                        {
                           _loc6_.draw(param3,threshold,this);
                           _loc6_.destroy();
                        }
                     }
                  }
                  else
                  {
                     _loc6_ = param4;
                     if(resolveByAABB)
                     {
                        drawAABBGeometry(param3,_loc6_);
                     }
                     else if(resolveByOOBB)
                     {
                        param4 = _loc6_;
                        while(param4 != null)
                        {
                           param4.calculateOOBB(this);
                           param4 = param4.next;
                        }
                        drawOOBBGeometry(param3,_loc6_);
                     }
                     else
                     {
                        drawConflictGeometry(param3,_loc6_);
                     }
                  }
               }
               else
               {
                  if(param4.numOccluders >= this.numOccluders || !this.f286a6be(param3,param4))
                  {
                     param4.draw(param3,threshold,this);
                  }
                  param4.destroy();
               }
            }
            _loc17_ = param1.occluderList;
            _loc8_ = param1.occluderBoundList;
            while(_loc17_ != null)
            {
               if(_loc17_.visible && ((_loc17_.culling = param2) == 0 && this.numOccluders == 0 || (_loc17_.culling = this.a24f9edf(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
               {
                  _loc17_.copyAndAppend(_loc8_,this);
                  _loc17_.concat(this);
                  _loc17_.draw(param3);
               }
               _loc17_ = _loc17_.next;
               _loc8_ = _loc8_.next;
            }
            if(param1.occluderList != null)
            {
               this.f59e9dc2(param3);
            }
         }
      }
      
      private function c3dcc7c(param1:Object3D) : Object3D
      {
         var _loc2_:Object3D = new Object3D();
         _loc2_.boundMinX = 1e+22;
         _loc2_.boundMinY = 1e+22;
         _loc2_.boundMinZ = 1e+22;
         _loc2_.boundMaxX = -1e+22;
         _loc2_.boundMaxY = -1e+22;
         _loc2_.boundMaxZ = -1e+22;
         param1.composeMatrix();
         param1.updateBounds(_loc2_,param1);
         _loc2_.ma = param1.ma;
         _loc2_.mb = param1.mb;
         _loc2_.mc = param1.mc;
         _loc2_.md = param1.md;
         _loc2_.me = param1.me;
         _loc2_.mf = param1.mf;
         _loc2_.mg = param1.mg;
         _loc2_.mh = param1.mh;
         _loc2_.mi = param1.mi;
         _loc2_.mj = param1.mj;
         _loc2_.mk = param1.mk;
         _loc2_.ml = param1.ml;
         return _loc2_;
      }
      
      private function d3b5165(param1:Object3D, param2:Object3D, param3:Object3D, param4:Object3D, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : KDNode
      {
         var _loc48_:int = 0;
         var _loc49_:int = 0;
         var _loc29_:Object3D = null;
         var _loc47_:Object3D = null;
         var _loc38_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc12_:int = 0;
         var _loc16_:int = 0;
         var _loc28_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc36_:Object3D = null;
         var _loc30_:Object3D = null;
         var _loc37_:Object3D = null;
         var _loc19_:Object3D = null;
         var _loc11_:Object3D = null;
         var _loc13_:Object3D = null;
         var _loc40_:Object3D = null;
         var _loc33_:Object3D = null;
         var _loc39_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc21_:Object3D = null;
         var _loc52_:Object3D = null;
         var _loc27_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc31_:int = 0;
         var _loc42_:int = 0;
         var _loc15_:int = 0;
         var _loc22_:KDNode = new KDNode();
         _loc22_.boundMinX = param5;
         _loc22_.boundMinY = param6;
         _loc22_.boundMinZ = param7;
         _loc22_.boundMaxX = param8;
         _loc22_.boundMaxY = param9;
         _loc22_.boundMaxZ = param10;
         if(param1 == null)
         {
            if(param3 != null)
            {
            }
            return _loc22_;
         }
         _loc47_ = param2;
         while(_loc47_ != null)
         {
            if(_loc47_.boundMinX > param5 + threshold)
            {
               _loc49_ = 0;
               while(_loc49_ < _loc31_)
               {
                  if(_loc47_.boundMinX >= b652e67b[_loc49_] - threshold && _loc47_.boundMinX <= b652e67b[_loc49_] + threshold)
                  {
                     break;
                  }
                  _loc49_++;
               }
               if(_loc49_ == _loc31_)
               {
                  b652e67b[_loc31_++] = _loc47_.boundMinX;
               }
            }
            if(_loc47_.boundMaxX < param8 - threshold)
            {
               _loc49_ = 0;
               while(_loc49_ < _loc31_)
               {
                  if(_loc47_.boundMaxX >= b652e67b[_loc49_] - threshold && _loc47_.boundMaxX <= b652e67b[_loc49_] + threshold)
                  {
                     break;
                  }
                  _loc49_++;
               }
               if(_loc49_ == _loc31_)
               {
                  b652e67b[_loc31_++] = _loc47_.boundMaxX;
               }
            }
            if(_loc47_.boundMinY > param6 + threshold)
            {
               _loc49_ = 0;
               while(_loc49_ < _loc42_)
               {
                  if(_loc47_.boundMinY >= f18cd8e[_loc49_] - threshold && _loc47_.boundMinY <= f18cd8e[_loc49_] + threshold)
                  {
                     break;
                  }
                  _loc49_++;
               }
               if(_loc49_ == _loc42_)
               {
                  f18cd8e[_loc42_++] = _loc47_.boundMinY;
               }
            }
            if(_loc47_.boundMaxY < param9 - threshold)
            {
               _loc49_ = 0;
               while(_loc49_ < _loc42_)
               {
                  if(_loc47_.boundMaxY >= f18cd8e[_loc49_] - threshold && _loc47_.boundMaxY <= f18cd8e[_loc49_] + threshold)
                  {
                     break;
                  }
                  _loc49_++;
               }
               if(_loc49_ == _loc42_)
               {
                  f18cd8e[_loc42_++] = _loc47_.boundMaxY;
               }
            }
            if(_loc47_.boundMinZ > param7 + threshold)
            {
               _loc49_ = 0;
               while(_loc49_ < _loc15_)
               {
                  if(_loc47_.boundMinZ >= a1a7a0ff[_loc49_] - threshold && _loc47_.boundMinZ <= a1a7a0ff[_loc49_] + threshold)
                  {
                     break;
                  }
                  _loc49_++;
               }
               if(_loc49_ == _loc15_)
               {
                  a1a7a0ff[_loc15_++] = _loc47_.boundMinZ;
               }
            }
            if(_loc47_.boundMaxZ < param10 - threshold)
            {
               _loc49_ = 0;
               while(_loc49_ < _loc15_)
               {
                  if(_loc47_.boundMaxZ >= a1a7a0ff[_loc49_] - threshold && _loc47_.boundMaxZ <= a1a7a0ff[_loc49_] + threshold)
                  {
                     break;
                  }
                  _loc49_++;
               }
               if(_loc49_ == _loc15_)
               {
                  a1a7a0ff[_loc15_++] = _loc47_.boundMaxZ;
               }
            }
            _loc47_ = _loc47_.next;
         }
         var _loc35_:int = -1;
         var _loc26_:Number = 1e+22;
         _loc28_ = (param9 - param6) * (param10 - param7);
         _loc48_ = 0;
         while(_loc48_ < _loc31_)
         {
            _loc38_ = b652e67b[_loc48_];
            _loc50_ = _loc28_ * (_loc38_ - param5);
            _loc18_ = _loc28_ * (param8 - _loc38_);
            _loc12_ = 0;
            _loc16_ = 0;
            _loc47_ = param2;
            while(_loc47_ != null)
            {
               if(_loc47_.boundMaxX <= _loc38_ + threshold)
               {
                  if(_loc47_.boundMinX < _loc38_ - threshold)
                  {
                     _loc12_++;
                  }
               }
               else
               {
                  if(_loc47_.boundMinX < _loc38_ - threshold)
                  {
                     break;
                  }
                  _loc16_++;
               }
               _loc47_ = _loc47_.next;
            }
            if(_loc47_ == null)
            {
               _loc43_ = _loc50_ * _loc12_ + _loc18_ * _loc16_;
               if(_loc43_ < _loc26_)
               {
                  _loc26_ = _loc43_;
                  _loc35_ = 0;
                  _loc17_ = _loc38_;
               }
            }
            _loc48_++;
         }
         _loc28_ = (param8 - param5) * (param10 - param7);
         _loc48_ = 0;
         while(_loc48_ < _loc42_)
         {
            _loc38_ = f18cd8e[_loc48_];
            _loc50_ = _loc28_ * (_loc38_ - param6);
            _loc18_ = _loc28_ * (param9 - _loc38_);
            _loc12_ = 0;
            _loc16_ = 0;
            _loc47_ = param2;
            while(_loc47_ != null)
            {
               if(_loc47_.boundMaxY <= _loc38_ + threshold)
               {
                  if(_loc47_.boundMinY < _loc38_ - threshold)
                  {
                     _loc12_++;
                  }
               }
               else
               {
                  if(_loc47_.boundMinY < _loc38_ - threshold)
                  {
                     break;
                  }
                  _loc16_++;
               }
               _loc47_ = _loc47_.next;
            }
            if(_loc47_ == null)
            {
               _loc43_ = _loc50_ * _loc12_ + _loc18_ * _loc16_;
               if(_loc43_ < _loc26_)
               {
                  _loc26_ = _loc43_;
                  _loc35_ = 1;
                  _loc17_ = _loc38_;
               }
            }
            _loc48_++;
         }
         _loc28_ = (param8 - param5) * (param9 - param6);
         _loc48_ = 0;
         while(_loc48_ < _loc15_)
         {
            _loc38_ = a1a7a0ff[_loc48_];
            _loc50_ = _loc28_ * (_loc38_ - param7);
            _loc18_ = _loc28_ * (param10 - _loc38_);
            _loc12_ = 0;
            _loc16_ = 0;
            _loc47_ = param2;
            while(_loc47_ != null)
            {
               if(_loc47_.boundMaxZ <= _loc38_ + threshold)
               {
                  if(_loc47_.boundMinZ < _loc38_ - threshold)
                  {
                     _loc12_++;
                  }
               }
               else
               {
                  if(_loc47_.boundMinZ < _loc38_ - threshold)
                  {
                     break;
                  }
                  _loc16_++;
               }
               _loc47_ = _loc47_.next;
            }
            if(_loc47_ == null)
            {
               _loc43_ = _loc50_ * _loc12_ + _loc18_ * _loc16_;
               if(_loc43_ < _loc26_)
               {
                  _loc26_ = _loc43_;
                  _loc35_ = 2;
                  _loc17_ = _loc38_;
               }
            }
            _loc48_++;
         }
         if(_loc35_ < 0)
         {
            _loc22_.objectList = param1;
            _loc22_.objectBoundList = param2;
            _loc22_.occluderList = param3;
            _loc22_.occluderBoundList = param4;
         }
         else
         {
            _loc22_.axis = _loc35_;
            _loc22_.coord = _loc17_;
            _loc22_.minCoord = _loc17_ - threshold;
            _loc22_.maxCoord = _loc17_ + threshold;
            _loc29_ = param1;
            _loc47_ = param2;
            while(_loc29_ != null)
            {
               _loc21_ = _loc29_.next;
               _loc52_ = _loc47_.next;
               _loc29_.next = null;
               _loc47_.next = null;
               _loc39_ = _loc35_ == 0 ? _loc47_.boundMinX : (_loc35_ == 1 ? _loc47_.boundMinY : _loc47_.boundMinZ);
               _loc45_ = _loc35_ == 0 ? _loc47_.boundMaxX : (_loc35_ == 1 ? _loc47_.boundMaxY : _loc47_.boundMaxZ);
               if(_loc45_ <= _loc17_ + threshold)
               {
                  if(_loc39_ < _loc17_ - threshold)
                  {
                     _loc29_.next = _loc36_;
                     _loc36_ = _loc29_;
                     _loc47_.next = _loc30_;
                     _loc30_ = _loc47_;
                  }
                  else
                  {
                     _loc29_.next = _loc22_.objectList;
                     _loc22_.objectList = _loc29_;
                     _loc47_.next = _loc22_.objectBoundList;
                     _loc22_.objectBoundList = _loc47_;
                  }
               }
               else if(_loc39_ >= _loc17_ - threshold)
               {
                  _loc29_.next = _loc11_;
                  _loc11_ = _loc29_;
                  _loc47_.next = _loc13_;
                  _loc13_ = _loc47_;
               }
               _loc29_ = _loc21_;
               _loc47_ = _loc52_;
            }
            _loc29_ = param3;
            _loc47_ = param4;
            while(_loc29_ != null)
            {
               _loc21_ = _loc29_.next;
               _loc52_ = _loc47_.next;
               _loc29_.next = null;
               _loc47_.next = null;
               _loc39_ = _loc35_ == 0 ? _loc47_.boundMinX : (_loc35_ == 1 ? _loc47_.boundMinY : _loc47_.boundMinZ);
               _loc45_ = _loc35_ == 0 ? _loc47_.boundMaxX : (_loc35_ == 1 ? _loc47_.boundMaxY : _loc47_.boundMaxZ);
               if(_loc45_ <= _loc17_ + threshold)
               {
                  if(_loc39_ < _loc17_ - threshold)
                  {
                     _loc29_.next = _loc37_;
                     _loc37_ = _loc29_;
                     _loc47_.next = _loc19_;
                     _loc19_ = _loc47_;
                  }
                  else
                  {
                     _loc29_.next = _loc22_.occluderList;
                     _loc22_.occluderList = _loc29_;
                     _loc47_.next = _loc22_.occluderBoundList;
                     _loc22_.occluderBoundList = _loc47_;
                  }
               }
               else if(_loc39_ >= _loc17_ - threshold)
               {
                  _loc29_.next = _loc40_;
                  _loc40_ = _loc29_;
                  _loc47_.next = _loc33_;
                  _loc33_ = _loc47_;
               }
               _loc29_ = _loc21_;
               _loc47_ = _loc52_;
            }
            _loc27_ = _loc22_.boundMinX;
            _loc32_ = _loc22_.boundMinY;
            _loc23_ = _loc22_.boundMinZ;
            _loc34_ = _loc22_.boundMaxX;
            _loc14_ = _loc22_.boundMaxY;
            _loc41_ = _loc22_.boundMaxZ;
            _loc20_ = _loc22_.boundMinX;
            _loc46_ = _loc22_.boundMinY;
            _loc25_ = _loc22_.boundMinZ;
            _loc44_ = _loc22_.boundMaxX;
            _loc24_ = _loc22_.boundMaxY;
            _loc51_ = _loc22_.boundMaxZ;
            if(_loc35_ == 0)
            {
               _loc34_ = _loc17_;
               _loc20_ = _loc17_;
            }
            else if(_loc35_ == 1)
            {
               _loc14_ = _loc17_;
               _loc46_ = _loc17_;
            }
            else
            {
               _loc41_ = _loc17_;
               _loc25_ = _loc17_;
            }
            _loc22_.negative = this.d3b5165(_loc36_,_loc30_,_loc37_,_loc19_,_loc27_,_loc32_,_loc23_,_loc34_,_loc14_,_loc41_);
            _loc22_.positive = this.d3b5165(_loc11_,_loc13_,_loc40_,_loc33_,_loc20_,_loc46_,_loc25_,_loc44_,_loc24_,_loc51_);
         }
         return _loc22_;
      }
      
      private function f1c2e5d3(param1:KDNode) : void
      {
         var _loc5_:Object3D = null;
         var _loc2_:Object3D = null;
         var _loc4_:Receiver = null;
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
         _loc5_ = param1.objectList;
         while(_loc5_ != null)
         {
            _loc2_ = _loc5_.next;
            _loc5_.setParent(null);
            _loc5_.next = null;
            _loc5_ = _loc2_;
         }
         _loc5_ = param1.objectBoundList;
         while(_loc5_ != null)
         {
            _loc2_ = _loc5_.next;
            _loc5_.next = null;
            _loc5_ = _loc2_;
         }
         _loc5_ = param1.occluderList;
         while(_loc5_ != null)
         {
            _loc2_ = _loc5_.next;
            _loc5_.setParent(null);
            _loc5_.next = null;
            _loc5_ = _loc2_;
         }
         _loc5_ = param1.occluderBoundList;
         while(_loc5_ != null)
         {
            _loc2_ = _loc5_.next;
            _loc5_.next = null;
            _loc5_ = _loc2_;
         }
         var _loc3_:Receiver = param1.receiverList;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.next;
            _loc3_.next = null;
            _loc3_ = _loc4_;
         }
         param1.objectList = null;
         param1.objectBoundList = null;
         param1.occluderList = null;
         param1.occluderBoundList = null;
         param1.receiverList = null;
      }
      
      private function a6ae7e64(param1:Number, param2:Number) : void
      {
         this.f4351409 = imc;
         this.e44f2b2c = img;
         this.f2090269 = imk;
         this.b76c2bc0 = (imc * param1 + imd) * this.f4351409 + (img * param1 + imh) * this.e44f2b2c + (imk * param1 + iml) * this.f2090269;
         this.f191cd3b = -imc;
         this.d2383cf5 = -img;
         this.d481ab0c = -imk;
         this.c44b31db = (imc * param2 + imd) * this.f191cd3b + (img * param2 + imh) * this.d2383cf5 + (imk * param2 + iml) * this.d481ab0c;
         var _loc8_:Number = -ima - imb + imc;
         var _loc3_:Number = -ime - imf + img;
         var _loc4_:Number = -imi - imj + imk;
         var _loc7_:Number = ima - imb + imc;
         var _loc6_:Number = ime - imf + img;
         var _loc5_:Number = imi - imj + imk;
         this.e40a5e5e = _loc5_ * _loc3_ - _loc6_ * _loc4_;
         this.c722c8e = _loc7_ * _loc4_ - _loc5_ * _loc8_;
         this.b199bcf5 = _loc6_ * _loc8_ - _loc7_ * _loc3_;
         this.d407ba6e = imd * this.e40a5e5e + imh * this.c722c8e + iml * this.b199bcf5;
         _loc8_ = _loc7_;
         _loc3_ = _loc6_;
         _loc4_ = _loc5_;
         _loc7_ = ima + imb + imc;
         _loc6_ = ime + imf + img;
         _loc5_ = imi + imj + imk;
         this.e373a927 = _loc5_ * _loc3_ - _loc6_ * _loc4_;
         this.e320228c = _loc7_ * _loc4_ - _loc5_ * _loc8_;
         this.b6304a55 = _loc6_ * _loc8_ - _loc7_ * _loc3_;
         this.e4c823ea = imd * this.e373a927 + imh * this.e320228c + iml * this.b6304a55;
         _loc8_ = _loc7_;
         _loc3_ = _loc6_;
         _loc4_ = _loc5_;
         _loc7_ = -ima + imb + imc;
         _loc6_ = -ime + imf + img;
         _loc5_ = -imi + imj + imk;
         this.d47bfb8e = _loc5_ * _loc3_ - _loc6_ * _loc4_;
         this.f4cb084c = _loc7_ * _loc4_ - _loc5_ * _loc8_;
         this.c75986b5 = _loc6_ * _loc8_ - _loc7_ * _loc3_;
         this.ea3928a = imd * this.d47bfb8e + imh * this.f4cb084c + iml * this.c75986b5;
         _loc8_ = _loc7_;
         _loc3_ = _loc6_;
         _loc4_ = _loc5_;
         _loc7_ = -ima - imb + imc;
         _loc6_ = -ime - imf + img;
         _loc5_ = -imi - imj + imk;
         this.e5439f17 = _loc5_ * _loc3_ - _loc6_ * _loc4_;
         this.e12e058d = _loc7_ * _loc4_ - _loc5_ * _loc8_;
         this.e35b5886 = _loc6_ * _loc8_ - _loc7_ * _loc3_;
         this.a4090696 = imd * this.e5439f17 + imh * this.e12e058d + iml * this.e35b5886;
      }
      
      private function f59e9dc2(param1:Camera3D) : void
      {
         var _loc3_:Vertex = null;
         var _loc9_:Vertex = null;
         var _loc6_:Vertex = null;
         var _loc11_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc8_:int = this.numOccluders;
         while(_loc8_ < param1.numOccluders)
         {
            _loc3_ = null;
            _loc9_ = param1.occluders[_loc8_];
            while(_loc9_ != null)
            {
               _loc6_ = _loc9_.create();
               _loc6_.next = _loc3_;
               _loc3_ = _loc6_;
               _loc11_ = ima * _loc9_.x + imb * _loc9_.y + imc * _loc9_.z;
               _loc2_ = ime * _loc9_.x + imf * _loc9_.y + img * _loc9_.z;
               _loc4_ = imi * _loc9_.x + imj * _loc9_.y + imk * _loc9_.z;
               _loc10_ = ima * _loc9_.u + imb * _loc9_.v + imc * _loc9_.offset;
               _loc7_ = ime * _loc9_.u + imf * _loc9_.v + img * _loc9_.offset;
               _loc5_ = imi * _loc9_.u + imj * _loc9_.v + imk * _loc9_.offset;
               _loc3_.x = _loc5_ * _loc2_ - _loc7_ * _loc4_;
               _loc3_.y = _loc10_ * _loc4_ - _loc5_ * _loc11_;
               _loc3_.z = _loc7_ * _loc11_ - _loc10_ * _loc2_;
               _loc3_.offset = imd * _loc3_.x + imh * _loc3_.y + iml * _loc3_.z;
               _loc9_ = _loc9_.next;
            }
            this.occluders[this.numOccluders] = _loc3_;
            this.numOccluders++;
            _loc8_++;
         }
      }
      
      private function a24f9edf(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : int
      {
         var _loc8_:Vertex = null;
         var _loc9_:int = 0;
         if(param1 > 0)
         {
            if(param1 & 1)
            {
               if(this.f4351409 >= 0)
               {
                  if(this.e44f2b2c >= 0)
                  {
                     if(this.f2090269 >= 0)
                     {
                        if(param5 * this.f4351409 + param6 * this.e44f2b2c + param7 * this.f2090269 <= this.b76c2bc0)
                        {
                           return -1;
                        }
                        if(param2 * this.f4351409 + param3 * this.e44f2b2c + param4 * this.f2090269 > this.b76c2bc0)
                        {
                           param1 &= 62;
                        }
                     }
                     else
                     {
                        if(param5 * this.f4351409 + param6 * this.e44f2b2c + param4 * this.f2090269 <= this.b76c2bc0)
                        {
                           return -1;
                        }
                        if(param2 * this.f4351409 + param3 * this.e44f2b2c + param7 * this.f2090269 > this.b76c2bc0)
                        {
                           param1 &= 62;
                        }
                     }
                  }
                  else if(this.f2090269 >= 0)
                  {
                     if(param5 * this.f4351409 + param3 * this.e44f2b2c + param7 * this.f2090269 <= this.b76c2bc0)
                     {
                        return -1;
                     }
                     if(param2 * this.f4351409 + param6 * this.e44f2b2c + param4 * this.f2090269 > this.b76c2bc0)
                     {
                        param1 &= 62;
                     }
                  }
                  else
                  {
                     if(param5 * this.f4351409 + param3 * this.e44f2b2c + param4 * this.f2090269 <= this.b76c2bc0)
                     {
                        return -1;
                     }
                     if(param2 * this.f4351409 + param6 * this.e44f2b2c + param7 * this.f2090269 > this.b76c2bc0)
                     {
                        param1 &= 62;
                     }
                  }
               }
               else if(this.e44f2b2c >= 0)
               {
                  if(this.f2090269 >= 0)
                  {
                     if(param2 * this.f4351409 + param6 * this.e44f2b2c + param7 * this.f2090269 <= this.b76c2bc0)
                     {
                        return -1;
                     }
                     if(param5 * this.f4351409 + param3 * this.e44f2b2c + param4 * this.f2090269 > this.b76c2bc0)
                     {
                        param1 &= 62;
                     }
                  }
                  else
                  {
                     if(param2 * this.f4351409 + param6 * this.e44f2b2c + param4 * this.f2090269 <= this.b76c2bc0)
                     {
                        return -1;
                     }
                     if(param5 * this.f4351409 + param3 * this.e44f2b2c + param7 * this.f2090269 > this.b76c2bc0)
                     {
                        param1 &= 62;
                     }
                  }
               }
               else if(this.f2090269 >= 0)
               {
                  if(param2 * this.f4351409 + param3 * this.e44f2b2c + param7 * this.f2090269 <= this.b76c2bc0)
                  {
                     return -1;
                  }
                  if(param5 * this.f4351409 + param6 * this.e44f2b2c + param4 * this.f2090269 > this.b76c2bc0)
                  {
                     param1 &= 62;
                  }
               }
               else
               {
                  if(param2 * this.f4351409 + param3 * this.e44f2b2c + param4 * this.f2090269 <= this.b76c2bc0)
                  {
                     return -1;
                  }
                  if(param5 * this.f4351409 + param6 * this.e44f2b2c + param7 * this.f2090269 > this.b76c2bc0)
                  {
                     param1 &= 62;
                  }
               }
            }
            if(param1 & 2)
            {
               if(this.f191cd3b >= 0)
               {
                  if(this.d2383cf5 >= 0)
                  {
                     if(this.d481ab0c >= 0)
                     {
                        if(param5 * this.f191cd3b + param6 * this.d2383cf5 + param7 * this.d481ab0c <= this.c44b31db)
                        {
                           return -1;
                        }
                        if(param2 * this.f191cd3b + param3 * this.d2383cf5 + param4 * this.d481ab0c > this.c44b31db)
                        {
                           param1 &= 61;
                        }
                     }
                     else
                     {
                        if(param5 * this.f191cd3b + param6 * this.d2383cf5 + param4 * this.d481ab0c <= this.c44b31db)
                        {
                           return -1;
                        }
                        if(param2 * this.f191cd3b + param3 * this.d2383cf5 + param7 * this.d481ab0c > this.c44b31db)
                        {
                           param1 &= 61;
                        }
                     }
                  }
                  else if(this.d481ab0c >= 0)
                  {
                     if(param5 * this.f191cd3b + param3 * this.d2383cf5 + param7 * this.d481ab0c <= this.c44b31db)
                     {
                        return -1;
                     }
                     if(param2 * this.f191cd3b + param6 * this.d2383cf5 + param4 * this.d481ab0c > this.c44b31db)
                     {
                        param1 &= 61;
                     }
                  }
                  else
                  {
                     if(param5 * this.f191cd3b + param3 * this.d2383cf5 + param4 * this.d481ab0c <= this.c44b31db)
                     {
                        return -1;
                     }
                     if(param2 * this.f191cd3b + param6 * this.d2383cf5 + param7 * this.d481ab0c > this.c44b31db)
                     {
                        param1 &= 61;
                     }
                  }
               }
               else if(this.d2383cf5 >= 0)
               {
                  if(this.d481ab0c >= 0)
                  {
                     if(param2 * this.f191cd3b + param6 * this.d2383cf5 + param7 * this.d481ab0c <= this.c44b31db)
                     {
                        return -1;
                     }
                     if(param5 * this.f191cd3b + param3 * this.d2383cf5 + param4 * this.d481ab0c > this.c44b31db)
                     {
                        param1 &= 61;
                     }
                  }
                  else
                  {
                     if(param2 * this.f191cd3b + param6 * this.d2383cf5 + param4 * this.d481ab0c <= this.c44b31db)
                     {
                        return -1;
                     }
                     if(param5 * this.f191cd3b + param3 * this.d2383cf5 + param7 * this.d481ab0c > this.c44b31db)
                     {
                        param1 &= 61;
                     }
                  }
               }
               else if(this.d481ab0c >= 0)
               {
                  if(param2 * this.f191cd3b + param3 * this.d2383cf5 + param7 * this.d481ab0c <= this.c44b31db)
                  {
                     return -1;
                  }
                  if(param5 * this.f191cd3b + param6 * this.d2383cf5 + param4 * this.d481ab0c > this.c44b31db)
                  {
                     param1 &= 61;
                  }
               }
               else
               {
                  if(param2 * this.f191cd3b + param3 * this.d2383cf5 + param4 * this.d481ab0c <= this.c44b31db)
                  {
                     return -1;
                  }
                  if(param5 * this.f191cd3b + param6 * this.d2383cf5 + param7 * this.d481ab0c > this.c44b31db)
                  {
                     param1 &= 61;
                  }
               }
            }
            if(param1 & 4)
            {
               if(this.e5439f17 >= 0)
               {
                  if(this.e12e058d >= 0)
                  {
                     if(this.e35b5886 >= 0)
                     {
                        if(param5 * this.e5439f17 + param6 * this.e12e058d + param7 * this.e35b5886 <= this.a4090696)
                        {
                           return -1;
                        }
                        if(param2 * this.e5439f17 + param3 * this.e12e058d + param4 * this.e35b5886 > this.a4090696)
                        {
                           param1 &= 59;
                        }
                     }
                     else
                     {
                        if(param5 * this.e5439f17 + param6 * this.e12e058d + param4 * this.e35b5886 <= this.a4090696)
                        {
                           return -1;
                        }
                        if(param2 * this.e5439f17 + param3 * this.e12e058d + param7 * this.e35b5886 > this.a4090696)
                        {
                           param1 &= 59;
                        }
                     }
                  }
                  else if(this.e35b5886 >= 0)
                  {
                     if(param5 * this.e5439f17 + param3 * this.e12e058d + param7 * this.e35b5886 <= this.a4090696)
                     {
                        return -1;
                     }
                     if(param2 * this.e5439f17 + param6 * this.e12e058d + param4 * this.e35b5886 > this.a4090696)
                     {
                        param1 &= 59;
                     }
                  }
                  else
                  {
                     if(param5 * this.e5439f17 + param3 * this.e12e058d + param4 * this.e35b5886 <= this.a4090696)
                     {
                        return -1;
                     }
                     if(param2 * this.e5439f17 + param6 * this.e12e058d + param7 * this.e35b5886 > this.a4090696)
                     {
                        param1 &= 59;
                     }
                  }
               }
               else if(this.e12e058d >= 0)
               {
                  if(this.e35b5886 >= 0)
                  {
                     if(param2 * this.e5439f17 + param6 * this.e12e058d + param7 * this.e35b5886 <= this.a4090696)
                     {
                        return -1;
                     }
                     if(param5 * this.e5439f17 + param3 * this.e12e058d + param4 * this.e35b5886 > this.a4090696)
                     {
                        param1 &= 59;
                     }
                  }
                  else
                  {
                     if(param2 * this.e5439f17 + param6 * this.e12e058d + param4 * this.e35b5886 <= this.a4090696)
                     {
                        return -1;
                     }
                     if(param5 * this.e5439f17 + param3 * this.e12e058d + param7 * this.e35b5886 > this.a4090696)
                     {
                        param1 &= 59;
                     }
                  }
               }
               else if(this.e35b5886 >= 0)
               {
                  if(param2 * this.e5439f17 + param3 * this.e12e058d + param7 * this.e35b5886 <= this.a4090696)
                  {
                     return -1;
                  }
                  if(param5 * this.e5439f17 + param6 * this.e12e058d + param4 * this.e35b5886 > this.a4090696)
                  {
                     param1 &= 59;
                  }
               }
               else
               {
                  if(param2 * this.e5439f17 + param3 * this.e12e058d + param4 * this.e35b5886 <= this.a4090696)
                  {
                     return -1;
                  }
                  if(param5 * this.e5439f17 + param6 * this.e12e058d + param7 * this.e35b5886 > this.a4090696)
                  {
                     param1 &= 59;
                  }
               }
            }
            if(param1 & 8)
            {
               if(this.e373a927 >= 0)
               {
                  if(this.e320228c >= 0)
                  {
                     if(this.b6304a55 >= 0)
                     {
                        if(param5 * this.e373a927 + param6 * this.e320228c + param7 * this.b6304a55 <= this.e4c823ea)
                        {
                           return -1;
                        }
                        if(param2 * this.e373a927 + param3 * this.e320228c + param4 * this.b6304a55 > this.e4c823ea)
                        {
                           param1 &= 55;
                        }
                     }
                     else
                     {
                        if(param5 * this.e373a927 + param6 * this.e320228c + param4 * this.b6304a55 <= this.e4c823ea)
                        {
                           return -1;
                        }
                        if(param2 * this.e373a927 + param3 * this.e320228c + param7 * this.b6304a55 > this.e4c823ea)
                        {
                           param1 &= 55;
                        }
                     }
                  }
                  else if(this.b6304a55 >= 0)
                  {
                     if(param5 * this.e373a927 + param3 * this.e320228c + param7 * this.b6304a55 <= this.e4c823ea)
                     {
                        return -1;
                     }
                     if(param2 * this.e373a927 + param6 * this.e320228c + param4 * this.b6304a55 > this.e4c823ea)
                     {
                        param1 &= 55;
                     }
                  }
                  else
                  {
                     if(param5 * this.e373a927 + param3 * this.e320228c + param4 * this.b6304a55 <= this.e4c823ea)
                     {
                        return -1;
                     }
                     if(param2 * this.e373a927 + param6 * this.e320228c + param7 * this.b6304a55 > this.e4c823ea)
                     {
                        param1 &= 55;
                     }
                  }
               }
               else if(this.e320228c >= 0)
               {
                  if(this.b6304a55 >= 0)
                  {
                     if(param2 * this.e373a927 + param6 * this.e320228c + param7 * this.b6304a55 <= this.e4c823ea)
                     {
                        return -1;
                     }
                     if(param5 * this.e373a927 + param3 * this.e320228c + param4 * this.b6304a55 > this.e4c823ea)
                     {
                        param1 &= 55;
                     }
                  }
                  else
                  {
                     if(param2 * this.e373a927 + param6 * this.e320228c + param4 * this.b6304a55 <= this.e4c823ea)
                     {
                        return -1;
                     }
                     if(param5 * this.e373a927 + param3 * this.e320228c + param7 * this.b6304a55 > this.e4c823ea)
                     {
                        param1 &= 55;
                     }
                  }
               }
               else if(this.b6304a55 >= 0)
               {
                  if(param2 * this.e373a927 + param3 * this.e320228c + param7 * this.b6304a55 <= this.e4c823ea)
                  {
                     return -1;
                  }
                  if(param5 * this.e373a927 + param6 * this.e320228c + param4 * this.b6304a55 > this.e4c823ea)
                  {
                     param1 &= 55;
                  }
               }
               else
               {
                  if(param2 * this.e373a927 + param3 * this.e320228c + param4 * this.b6304a55 <= this.e4c823ea)
                  {
                     return -1;
                  }
                  if(param5 * this.e373a927 + param6 * this.e320228c + param7 * this.b6304a55 > this.e4c823ea)
                  {
                     param1 &= 55;
                  }
               }
            }
            if(param1 & 0x10)
            {
               if(this.e40a5e5e >= 0)
               {
                  if(this.c722c8e >= 0)
                  {
                     if(this.b199bcf5 >= 0)
                     {
                        if(param5 * this.e40a5e5e + param6 * this.c722c8e + param7 * this.b199bcf5 <= this.d407ba6e)
                        {
                           return -1;
                        }
                        if(param2 * this.e40a5e5e + param3 * this.c722c8e + param4 * this.b199bcf5 > this.d407ba6e)
                        {
                           param1 &= 47;
                        }
                     }
                     else
                     {
                        if(param5 * this.e40a5e5e + param6 * this.c722c8e + param4 * this.b199bcf5 <= this.d407ba6e)
                        {
                           return -1;
                        }
                        if(param2 * this.e40a5e5e + param3 * this.c722c8e + param7 * this.b199bcf5 > this.d407ba6e)
                        {
                           param1 &= 47;
                        }
                     }
                  }
                  else if(this.b199bcf5 >= 0)
                  {
                     if(param5 * this.e40a5e5e + param3 * this.c722c8e + param7 * this.b199bcf5 <= this.d407ba6e)
                     {
                        return -1;
                     }
                     if(param2 * this.e40a5e5e + param6 * this.c722c8e + param4 * this.b199bcf5 > this.d407ba6e)
                     {
                        param1 &= 47;
                     }
                  }
                  else
                  {
                     if(param5 * this.e40a5e5e + param3 * this.c722c8e + param4 * this.b199bcf5 <= this.d407ba6e)
                     {
                        return -1;
                     }
                     if(param2 * this.e40a5e5e + param6 * this.c722c8e + param7 * this.b199bcf5 > this.d407ba6e)
                     {
                        param1 &= 47;
                     }
                  }
               }
               else if(this.c722c8e >= 0)
               {
                  if(this.b199bcf5 >= 0)
                  {
                     if(param2 * this.e40a5e5e + param6 * this.c722c8e + param7 * this.b199bcf5 <= this.d407ba6e)
                     {
                        return -1;
                     }
                     if(param5 * this.e40a5e5e + param3 * this.c722c8e + param4 * this.b199bcf5 > this.d407ba6e)
                     {
                        param1 &= 47;
                     }
                  }
                  else
                  {
                     if(param2 * this.e40a5e5e + param6 * this.c722c8e + param4 * this.b199bcf5 <= this.d407ba6e)
                     {
                        return -1;
                     }
                     if(param5 * this.e40a5e5e + param3 * this.c722c8e + param7 * this.b199bcf5 > this.d407ba6e)
                     {
                        param1 &= 47;
                     }
                  }
               }
               else if(this.b199bcf5 >= 0)
               {
                  if(param2 * this.e40a5e5e + param3 * this.c722c8e + param7 * this.b199bcf5 <= this.d407ba6e)
                  {
                     return -1;
                  }
                  if(param5 * this.e40a5e5e + param6 * this.c722c8e + param4 * this.b199bcf5 > this.d407ba6e)
                  {
                     param1 &= 47;
                  }
               }
               else
               {
                  if(param2 * this.e40a5e5e + param3 * this.c722c8e + param4 * this.b199bcf5 <= this.d407ba6e)
                  {
                     return -1;
                  }
                  if(param5 * this.e40a5e5e + param6 * this.c722c8e + param7 * this.b199bcf5 > this.d407ba6e)
                  {
                     param1 &= 47;
                  }
               }
            }
            if(param1 & 0x20)
            {
               if(this.d47bfb8e >= 0)
               {
                  if(this.f4cb084c >= 0)
                  {
                     if(this.c75986b5 >= 0)
                     {
                        if(param5 * this.d47bfb8e + param6 * this.f4cb084c + param7 * this.c75986b5 <= this.ea3928a)
                        {
                           return -1;
                        }
                        if(param2 * this.d47bfb8e + param3 * this.f4cb084c + param4 * this.c75986b5 > this.ea3928a)
                        {
                           param1 &= 31;
                        }
                     }
                     else
                     {
                        if(param5 * this.d47bfb8e + param6 * this.f4cb084c + param4 * this.c75986b5 <= this.ea3928a)
                        {
                           return -1;
                        }
                        if(param2 * this.d47bfb8e + param3 * this.f4cb084c + param7 * this.c75986b5 > this.ea3928a)
                        {
                           param1 &= 31;
                        }
                     }
                  }
                  else if(this.c75986b5 >= 0)
                  {
                     if(param5 * this.d47bfb8e + param3 * this.f4cb084c + param7 * this.c75986b5 <= this.ea3928a)
                     {
                        return -1;
                     }
                     if(param2 * this.d47bfb8e + param6 * this.f4cb084c + param4 * this.c75986b5 > this.ea3928a)
                     {
                        param1 &= 31;
                     }
                  }
                  else
                  {
                     if(param5 * this.d47bfb8e + param3 * this.f4cb084c + param4 * this.c75986b5 <= this.ea3928a)
                     {
                        return -1;
                     }
                     if(param2 * this.d47bfb8e + param6 * this.f4cb084c + param7 * this.c75986b5 > this.ea3928a)
                     {
                        param1 &= 31;
                     }
                  }
               }
               else if(this.f4cb084c >= 0)
               {
                  if(this.c75986b5 >= 0)
                  {
                     if(param2 * this.d47bfb8e + param6 * this.f4cb084c + param7 * this.c75986b5 <= this.ea3928a)
                     {
                        return -1;
                     }
                     if(param5 * this.d47bfb8e + param3 * this.f4cb084c + param4 * this.c75986b5 > this.ea3928a)
                     {
                        param1 &= 31;
                     }
                  }
                  else
                  {
                     if(param2 * this.d47bfb8e + param6 * this.f4cb084c + param4 * this.c75986b5 <= this.ea3928a)
                     {
                        return -1;
                     }
                     if(param5 * this.d47bfb8e + param3 * this.f4cb084c + param7 * this.c75986b5 > this.ea3928a)
                     {
                        param1 &= 31;
                     }
                  }
               }
               else if(this.c75986b5 >= 0)
               {
                  if(param2 * this.d47bfb8e + param3 * this.f4cb084c + param7 * this.c75986b5 <= this.ea3928a)
                  {
                     return -1;
                  }
                  if(param5 * this.d47bfb8e + param6 * this.f4cb084c + param4 * this.c75986b5 > this.ea3928a)
                  {
                     param1 &= 31;
                  }
               }
               else
               {
                  if(param2 * this.d47bfb8e + param3 * this.f4cb084c + param4 * this.c75986b5 <= this.ea3928a)
                  {
                     return -1;
                  }
                  if(param5 * this.d47bfb8e + param6 * this.f4cb084c + param7 * this.c75986b5 > this.ea3928a)
                  {
                     param1 &= 31;
                  }
               }
            }
         }
         while(_loc9_ < this.numOccluders)
         {
            _loc8_ = this.occluders[_loc9_];
            while(_loc8_ != null)
            {
               if(_loc8_.x >= 0)
               {
                  if(_loc8_.y >= 0)
                  {
                     if(_loc8_.z >= 0)
                     {
                        if(param5 * _loc8_.x + param6 * _loc8_.y + param7 * _loc8_.z > _loc8_.offset)
                        {
                           break;
                        }
                     }
                     else if(param5 * _loc8_.x + param6 * _loc8_.y + param4 * _loc8_.z > _loc8_.offset)
                     {
                        break;
                     }
                  }
                  else if(_loc8_.z >= 0)
                  {
                     if(param5 * _loc8_.x + param3 * _loc8_.y + param7 * _loc8_.z > _loc8_.offset)
                     {
                        break;
                     }
                  }
                  else if(param5 * _loc8_.x + param3 * _loc8_.y + param4 * _loc8_.z > _loc8_.offset)
                  {
                     break;
                  }
               }
               else if(_loc8_.y >= 0)
               {
                  if(_loc8_.z >= 0)
                  {
                     if(param2 * _loc8_.x + param6 * _loc8_.y + param7 * _loc8_.z > _loc8_.offset)
                     {
                        break;
                     }
                  }
                  else if(param2 * _loc8_.x + param6 * _loc8_.y + param4 * _loc8_.z > _loc8_.offset)
                  {
                     break;
                  }
               }
               else if(_loc8_.z >= 0)
               {
                  if(param2 * _loc8_.x + param3 * _loc8_.y + param7 * _loc8_.z > _loc8_.offset)
                  {
                     break;
                  }
               }
               else if(param2 * _loc8_.x + param3 * _loc8_.y + param4 * _loc8_.z > _loc8_.offset)
               {
                  break;
               }
               _loc8_ = _loc8_.next;
            }
            if(_loc8_ == null)
            {
               return -1;
            }
            _loc9_++;
         }
         return param1;
      }
      
      private function f286a6be(param1:Camera3D, param2:VG) : Boolean
      {
         var _loc3_:Vertex = null;
         var _loc4_:int = param2.numOccluders;
         while(_loc4_ < this.numOccluders)
         {
            _loc3_ = this.occluders[_loc4_];
            while(_loc3_ != null)
            {
               if(_loc3_.x >= 0)
               {
                  if(_loc3_.y >= 0)
                  {
                     if(_loc3_.z >= 0)
                     {
                        if(param2.boundMaxX * _loc3_.x + param2.boundMaxY * _loc3_.y + param2.boundMaxZ * _loc3_.z > _loc3_.offset)
                        {
                           break;
                        }
                     }
                     else if(param2.boundMaxX * _loc3_.x + param2.boundMaxY * _loc3_.y + param2.boundMinZ * _loc3_.z > _loc3_.offset)
                     {
                        break;
                     }
                  }
                  else if(_loc3_.z >= 0)
                  {
                     if(param2.boundMaxX * _loc3_.x + param2.boundMinY * _loc3_.y + param2.boundMaxZ * _loc3_.z > _loc3_.offset)
                     {
                        break;
                     }
                  }
                  else if(param2.boundMaxX * _loc3_.x + param2.boundMinY * _loc3_.y + param2.boundMinZ * _loc3_.z > _loc3_.offset)
                  {
                     break;
                  }
               }
               else if(_loc3_.y >= 0)
               {
                  if(_loc3_.z >= 0)
                  {
                     if(param2.boundMinX * _loc3_.x + param2.boundMaxY * _loc3_.y + param2.boundMaxZ * _loc3_.z > _loc3_.offset)
                     {
                        break;
                     }
                  }
                  else if(param2.boundMinX * _loc3_.x + param2.boundMaxY * _loc3_.y + param2.boundMinZ * _loc3_.z > _loc3_.offset)
                  {
                     break;
                  }
               }
               else if(_loc3_.z >= 0)
               {
                  if(param2.boundMinX * _loc3_.x + param2.boundMinY * _loc3_.y + param2.boundMaxZ * _loc3_.z > _loc3_.offset)
                  {
                     break;
                  }
               }
               else if(param2.boundMinX * _loc3_.x + param2.boundMinY * _loc3_.y + param2.boundMinZ * _loc3_.z > _loc3_.offset)
               {
                  break;
               }
               _loc3_ = _loc3_.next;
            }
            if(_loc3_ == null)
            {
               return true;
            }
            _loc4_++;
         }
         param2.numOccluders = this.numOccluders;
         return false;
      }
   }
}

import alternativa.engine3d.alternativa3d;
import alternativa.engine3d.core.Face;
import alternativa.engine3d.core.Object3D;
import alternativa.engine3d.core.Shadow;
import alternativa.engine3d.core.Vertex;
import alternativa.engine3d.core.Wrapper;
import alternativa.engine3d.materials.TextureMaterial;
import alternativa.engine3d.objects.BSP;
import alternativa.engine3d.objects.Decal;
import alternativa.engine3d.objects.Mesh;

use namespace alternativa3d;

class KDNode
{
   
   public var negative:KDNode;
   
   public var positive:KDNode;
   
   public var axis:int;
   
   public var coord:Number;
   
   public var minCoord:Number;
   
   public var maxCoord:Number;
   
   public var boundMinX:Number;
   
   public var boundMinY:Number;
   
   public var boundMinZ:Number;
   
   public var boundMaxX:Number;
   
   public var boundMaxY:Number;
   
   public var boundMaxZ:Number;
   
   public var objectList:Object3D;
   
   public var objectBoundList:Object3D;
   
   public var occluderList:Object3D;
   
   public var occluderBoundList:Object3D;
   
   public var receiverList:Receiver;
   
   public function KDNode()
   {
      super();
   }
   
   public function createReceivers(param1:Vector.<Vector.<Number>>, param2:Vector.<Vector.<uint>>) : void
   {
      var _loc18_:Receiver = null;
      var _loc19_:Receiver = null;
      var _loc8_:Vertex = null;
      var _loc9_:Vertex = null;
      var _loc22_:* = undefined;
      var _loc20_:int = 0;
      var _loc17_:TextureMaterial = null;
      var _loc3_:int = 0;
      var _loc21_:int = 0;
      var _loc13_:* = undefined;
      var _loc11_:* = undefined;
      var _loc14_:int = 0;
      var _loc15_:int = 0;
      var _loc4_:int = 0;
      var _loc10_:int = 0;
      var _loc16_:Face = null;
      var _loc12_:Wrapper = null;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      this.receiverList = null;
      var _loc23_:Object3D = this.objectList;
      while(_loc23_ != null)
      {
         _loc23_.composeMatrix();
         _loc19_ = new Receiver();
         if(_loc18_ != null)
         {
            _loc18_.next = _loc19_;
         }
         else
         {
            this.receiverList = _loc19_;
         }
         _loc18_ = _loc19_;
         if(_loc23_ is Mesh)
         {
            _loc9_ = (_loc23_ as Mesh).vertexList;
            _loc22_ = (_loc23_ as Mesh).faces;
         }
         else if(_loc23_ is BSP)
         {
            _loc9_ = (_loc23_ as BSP).vertexList;
            _loc22_ = (_loc23_ as BSP).faces;
         }
         _loc20_ = int(_loc22_.length);
         _loc17_ = _loc22_[0].material as TextureMaterial;
         if(_loc20_ > 0 && _loc17_ != null)
         {
            _loc3_ = 0;
            _loc8_ = _loc9_;
            while(_loc8_ != null)
            {
               _loc3_++;
               _loc8_ = _loc8_.next;
            }
            _loc21_ = param1.length - 1;
            _loc13_ = param1[_loc21_];
            if(_loc13_.length / 3 + _loc3_ > 65535)
            {
               _loc21_++;
               param1[_loc21_] = new Vector.<Number>();
               param2[_loc21_] = new Vector.<uint>();
               _loc13_ = param1[_loc21_];
            }
            _loc11_ = param2[_loc21_];
            _loc14_ = int(_loc13_.length);
            _loc15_ = _loc14_ / 3;
            _loc4_ = int(_loc11_.length);
            _loc19_.buffer = _loc21_;
            _loc19_.firstIndex = _loc4_;
            _loc19_.transparent = _loc17_.transparent;
            _loc8_ = _loc9_;
            while(_loc8_ != null)
            {
               _loc13_[_loc14_] = _loc8_.x * _loc23_.ma + _loc8_.y * _loc23_.mb + _loc8_.z * _loc23_.mc + _loc23_.md;
               _loc14_++;
               _loc13_[_loc14_] = _loc8_.x * _loc23_.me + _loc8_.y * _loc23_.mf + _loc8_.z * _loc23_.mg + _loc23_.mh;
               _loc14_++;
               _loc13_[_loc14_] = _loc8_.x * _loc23_.mi + _loc8_.y * _loc23_.mj + _loc8_.z * _loc23_.mk + _loc23_.ml;
               _loc14_++;
               _loc8_.index = _loc15_;
               _loc15_++;
               _loc8_ = _loc8_.next;
            }
            _loc10_ = 0;
            while(_loc10_ < _loc20_)
            {
               _loc16_ = _loc22_[_loc10_];
               if(_loc16_.normalX * _loc23_.mi + _loc16_.normalY * _loc23_.mj + _loc16_.normalZ * _loc23_.mk >= -0.5)
               {
                  _loc12_ = _loc16_.wrapper;
                  _loc5_ = uint(_loc12_.vertex.index);
                  _loc12_ = _loc12_.next;
                  _loc6_ = uint(_loc12_.vertex.index);
                  _loc12_ = _loc12_.next;
                  while(_loc12_ != null)
                  {
                     _loc7_ = uint(_loc12_.vertex.index);
                     _loc11_[_loc4_] = _loc5_;
                     _loc4_++;
                     _loc11_[_loc4_] = _loc6_;
                     _loc4_++;
                     _loc11_[_loc4_] = _loc7_;
                     _loc4_++;
                     _loc19_.numTriangles++;
                     _loc6_ = _loc7_;
                     _loc12_ = _loc12_.next;
                  }
               }
               _loc10_++;
            }
         }
         _loc23_ = _loc23_.next;
      }
      if(this.negative != null)
      {
         this.negative.createReceivers(param1,param2);
      }
      if(this.positive != null)
      {
         this.positive.createReceivers(param1,param2);
      }
   }
   
   public function collectReceivers(param1:Shadow) : void
   {
      var _loc8_:Object3D = null;
      var _loc5_:Object3D = null;
      var _loc7_:Receiver = null;
      var _loc4_:Boolean = false;
      var _loc6_:Boolean = false;
      var _loc2_:Number = NaN;
      var _loc3_:Number = NaN;
      if(this.negative != null)
      {
         _loc4_ = this.axis == 0;
         _loc6_ = this.axis == 1;
         _loc2_ = _loc4_ ? param1.boundMinX : (_loc6_ ? param1.boundMinY : param1.boundMinZ);
         _loc3_ = _loc4_ ? param1.boundMaxX : (_loc6_ ? param1.boundMaxY : param1.boundMaxZ);
         if(_loc3_ <= this.maxCoord)
         {
            this.negative.collectReceivers(param1);
         }
         else if(_loc2_ >= this.minCoord)
         {
            this.positive.collectReceivers(param1);
         }
         else
         {
            if(_loc4_)
            {
               _loc5_ = this.objectBoundList;
               _loc8_ = this.objectList;
               _loc7_ = this.receiverList;
               while(_loc5_ != null)
               {
                  if(_loc7_.numTriangles > 0 && param1.boundMinY < _loc5_.boundMaxY && param1.boundMaxY > _loc5_.boundMinY && param1.boundMinZ < _loc5_.boundMaxZ && param1.boundMaxZ > _loc5_.boundMinZ)
                  {
                     if(!_loc7_.transparent)
                     {
                        param1.receiversBuffers[param1.receiversCount] = _loc7_.buffer;
                        param1.receiversFirstIndexes[param1.receiversCount] = _loc7_.firstIndex;
                        param1.receiversNumsTriangles[param1.receiversCount] = _loc7_.numTriangles;
                        param1.receiversCount++;
                     }
                  }
                  _loc5_ = _loc5_.next;
                  _loc8_ = _loc8_.next;
                  _loc7_ = _loc7_.next;
               }
            }
            else if(_loc6_)
            {
               _loc5_ = this.objectBoundList;
               _loc8_ = this.objectList;
               _loc7_ = this.receiverList;
               while(_loc5_ != null)
               {
                  if(_loc7_.numTriangles > 0 && param1.boundMinX < _loc5_.boundMaxX && param1.boundMaxX > _loc5_.boundMinX && param1.boundMinZ < _loc5_.boundMaxZ && param1.boundMaxZ > _loc5_.boundMinZ)
                  {
                     if(!_loc7_.transparent)
                     {
                        param1.receiversBuffers[param1.receiversCount] = _loc7_.buffer;
                        param1.receiversFirstIndexes[param1.receiversCount] = _loc7_.firstIndex;
                        param1.receiversNumsTriangles[param1.receiversCount] = _loc7_.numTriangles;
                        param1.receiversCount++;
                     }
                  }
                  _loc5_ = _loc5_.next;
                  _loc8_ = _loc8_.next;
                  _loc7_ = _loc7_.next;
               }
            }
            else
            {
               _loc5_ = this.objectBoundList;
               _loc8_ = this.objectList;
               _loc7_ = this.receiverList;
               while(_loc5_ != null)
               {
                  if(_loc7_.numTriangles > 0 && param1.boundMinX < _loc5_.boundMaxX && param1.boundMaxX > _loc5_.boundMinX && param1.boundMinY < _loc5_.boundMaxY && param1.boundMaxY > _loc5_.boundMinY)
                  {
                     if(!_loc7_.transparent)
                     {
                        param1.receiversBuffers[param1.receiversCount] = _loc7_.buffer;
                        param1.receiversFirstIndexes[param1.receiversCount] = _loc7_.firstIndex;
                        param1.receiversNumsTriangles[param1.receiversCount] = _loc7_.numTriangles;
                        param1.receiversCount++;
                     }
                  }
                  _loc5_ = _loc5_.next;
                  _loc8_ = _loc8_.next;
                  _loc7_ = _loc7_.next;
               }
            }
            this.negative.collectReceivers(param1);
            this.positive.collectReceivers(param1);
         }
      }
      else
      {
         _loc8_ = this.objectList;
         _loc7_ = this.receiverList;
         while(_loc7_ != null)
         {
            if(_loc7_.numTriangles > 0)
            {
               if(!_loc7_.transparent)
               {
                  param1.receiversBuffers[param1.receiversCount] = _loc7_.buffer;
                  param1.receiversFirstIndexes[param1.receiversCount] = _loc7_.firstIndex;
                  param1.receiversNumsTriangles[param1.receiversCount] = _loc7_.numTriangles;
                  param1.receiversCount++;
               }
            }
            _loc8_ = _loc8_.next;
            _loc7_ = _loc7_.next;
         }
      }
   }
   
   public function collectPolygons(param1:Decal, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
   {
      var _loc15_:Object3D = null;
      var _loc11_:Object3D = null;
      var _loc13_:Boolean = false;
      var _loc14_:Boolean = false;
      var _loc12_:Number = NaN;
      var _loc10_:Number = NaN;
      if(this.negative != null)
      {
         _loc13_ = this.axis == 0;
         _loc14_ = this.axis == 1;
         _loc12_ = _loc13_ ? param4 : (_loc14_ ? param6 : param8);
         _loc10_ = _loc13_ ? param5 : (_loc14_ ? param7 : param9);
         if(_loc10_ <= this.maxCoord)
         {
            this.negative.collectPolygons(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else if(_loc12_ >= this.minCoord)
         {
            this.positive.collectPolygons(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            _loc11_ = this.objectBoundList;
            _loc15_ = this.objectList;
            while(_loc11_ != null)
            {
               if(_loc13_)
               {
                  if(param6 < _loc11_.boundMaxY && param7 > _loc11_.boundMinY && param8 < _loc11_.boundMaxZ && param9 > _loc11_.boundMinZ)
                  {
                     this.clip(param1,param2,param3,_loc15_);
                  }
               }
               else if(_loc14_)
               {
                  if(param4 < _loc11_.boundMaxX && param5 > _loc11_.boundMinX && param8 < _loc11_.boundMaxZ && param9 > _loc11_.boundMinZ)
                  {
                     this.clip(param1,param2,param3,_loc15_);
                  }
               }
               else if(param4 < _loc11_.boundMaxX && param5 > _loc11_.boundMinX && param6 < _loc11_.boundMaxY && param7 > _loc11_.boundMinY)
               {
                  this.clip(param1,param2,param3,_loc15_);
               }
               _loc11_ = _loc11_.next;
               _loc15_ = _loc15_.next;
            }
            this.negative.collectPolygons(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            this.positive.collectPolygons(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      else
      {
         _loc15_ = this.objectList;
         while(_loc15_ != null)
         {
            this.clip(param1,param2,param3,_loc15_);
            _loc15_ = _loc15_.next;
         }
      }
   }
   
   private function clip(param1:Decal, param2:Number, param3:Number, param4:Object3D) : void
   {
      var _loc15_:Face = null;
      var _loc7_:Vertex = null;
      var _loc13_:Wrapper = null;
      var _loc10_:Vertex = null;
      var _loc20_:* = undefined;
      var _loc18_:int = 0;
      var _loc11_:int = 0;
      var _loc8_:Number = NaN;
      var _loc16_:Number = NaN;
      var _loc5_:Vertex = null;
      var _loc6_:Vertex = null;
      var _loc17_:Vertex = null;
      var _loc12_:Vertex = null;
      var _loc14_:Vertex = null;
      var _loc9_:Vertex = null;
      var _loc19_:Wrapper = null;
      if(param4 is Mesh)
      {
         _loc10_ = Mesh(param4).alternativa3d::vertexList;
         _loc15_ = Mesh(param4).alternativa3d::faceList;
         if(_loc15_.material == null || _loc15_.material.transparent)
         {
            return;
         }
         _loc20_ = Mesh(param4).faces;
      }
      else if(param4 is BSP)
      {
         _loc10_ = BSP(param4).alternativa3d::vertexList;
         _loc20_ = BSP(param4).alternativa3d::faces;
         _loc15_ = _loc20_[0];
         if(_loc15_.material == null || _loc15_.material.transparent)
         {
            return;
         }
      }
      param4.composeAndAppend(param1);
      param4.calculateInverseMatrix();
      param4.transformId++;
      _loc18_ = int(_loc20_.length);
      _loc11_ = 0;
      while(_loc11_ < _loc18_)
      {
         _loc15_ = _loc20_[_loc11_];
         if(-_loc15_.normalX * param4.imc - _loc15_.normalY * param4.img - _loc15_.normalZ * param4.imk >= param3)
         {
            _loc8_ = _loc15_.normalX * param4.imd + _loc15_.normalY * param4.imh + _loc15_.normalZ * param4.iml;
            if(!(_loc8_ <= _loc15_.offset - param2 || _loc8_ >= _loc15_.offset + param2))
            {
               _loc13_ = _loc15_.wrapper;
               while(_loc13_ != null)
               {
                  _loc7_ = _loc13_.vertex;
                  if(_loc7_.transformId != param4.transformId)
                  {
                     _loc7_.cameraX = param4.ma * _loc7_.x + param4.mb * _loc7_.y + param4.mc * _loc7_.z + param4.md;
                     _loc7_.cameraY = param4.me * _loc7_.x + param4.mf * _loc7_.y + param4.mg * _loc7_.z + param4.mh;
                     _loc7_.cameraZ = param4.mi * _loc7_.x + param4.mj * _loc7_.y + param4.mk * _loc7_.z + param4.ml;
                     _loc7_.transformId = param4.transformId;
                  }
                  _loc13_ = _loc13_.next;
               }
               _loc13_ = _loc15_.wrapper;
               while(_loc13_ != null)
               {
                  if(_loc13_.vertex.cameraX > param1.boundMinX)
                  {
                     break;
                  }
                  _loc13_ = _loc13_.next;
               }
               if(_loc13_ != null)
               {
                  _loc13_ = _loc15_.wrapper;
                  while(_loc13_ != null)
                  {
                     if(_loc13_.vertex.cameraX < param1.boundMaxX)
                     {
                        break;
                     }
                     _loc13_ = _loc13_.next;
                  }
                  if(_loc13_ != null)
                  {
                     _loc13_ = _loc15_.wrapper;
                     while(_loc13_ != null)
                     {
                        if(_loc13_.vertex.cameraY > param1.boundMinY)
                        {
                           break;
                        }
                        _loc13_ = _loc13_.next;
                     }
                     if(_loc13_ != null)
                     {
                        _loc13_ = _loc15_.wrapper;
                        while(_loc13_ != null)
                        {
                           if(_loc13_.vertex.cameraY < param1.boundMaxY)
                           {
                              break;
                           }
                           _loc13_ = _loc13_.next;
                        }
                        if(_loc13_ != null)
                        {
                           _loc13_ = _loc15_.wrapper;
                           while(_loc13_ != null)
                           {
                              if(_loc13_.vertex.cameraZ > param1.boundMinZ)
                              {
                                 break;
                              }
                              _loc13_ = _loc13_.next;
                           }
                           if(_loc13_ != null)
                           {
                              _loc13_ = _loc15_.wrapper;
                              while(_loc13_ != null)
                              {
                                 if(_loc13_.vertex.cameraZ < param1.boundMaxZ)
                                 {
                                    break;
                                 }
                                 _loc13_ = _loc13_.next;
                              }
                              if(_loc13_ != null)
                              {
                                 _loc14_ = null;
                                 _loc9_ = null;
                                 _loc13_ = _loc15_.wrapper;
                                 while(_loc13_ != null)
                                 {
                                    _loc7_ = _loc13_.vertex;
                                    _loc17_ = new Vertex();
                                    _loc17_.x = _loc7_.cameraX;
                                    _loc17_.y = _loc7_.cameraY;
                                    _loc17_.z = _loc7_.cameraZ;
                                    _loc17_.normalX = param4.ma * _loc7_.normalX + param4.mb * _loc7_.normalY + param4.mc * _loc7_.normalZ;
                                    _loc17_.normalY = param4.me * _loc7_.normalX + param4.mf * _loc7_.normalY + param4.mg * _loc7_.normalZ;
                                    _loc17_.normalZ = param4.mi * _loc7_.normalX + param4.mj * _loc7_.normalY + param4.mk * _loc7_.normalZ;
                                    if(_loc9_ != null)
                                    {
                                       _loc9_.next = _loc17_;
                                    }
                                    else
                                    {
                                       _loc14_ = _loc17_;
                                    }
                                    _loc9_ = _loc17_;
                                    _loc13_ = _loc13_.next;
                                 }
                                 _loc5_ = _loc9_;
                                 _loc6_ = _loc14_;
                                 _loc14_ = null;
                                 _loc9_ = null;
                                 while(_loc6_ != null)
                                 {
                                    _loc12_ = _loc6_.next;
                                    _loc6_.next = null;
                                    if(_loc6_.z > param1.boundMinZ && _loc5_.z <= param1.boundMinZ || _loc6_.z <= param1.boundMinZ && _loc5_.z > param1.boundMinZ)
                                    {
                                       _loc16_ = (param1.boundMinZ - _loc5_.z) / (_loc6_.z - _loc5_.z);
                                       _loc17_ = new Vertex();
                                       _loc17_.x = _loc5_.x + (_loc6_.x - _loc5_.x) * _loc16_;
                                       _loc17_.y = _loc5_.y + (_loc6_.y - _loc5_.y) * _loc16_;
                                       _loc17_.z = _loc5_.z + (_loc6_.z - _loc5_.z) * _loc16_;
                                       _loc17_.normalX = _loc5_.normalX + (_loc6_.normalX - _loc5_.normalX) * _loc16_;
                                       _loc17_.normalY = _loc5_.normalY + (_loc6_.normalY - _loc5_.normalY) * _loc16_;
                                       _loc17_.normalZ = _loc5_.normalZ + (_loc6_.normalZ - _loc5_.normalZ) * _loc16_;
                                       if(_loc9_ != null)
                                       {
                                          _loc9_.next = _loc17_;
                                       }
                                       else
                                       {
                                          _loc14_ = _loc17_;
                                       }
                                       _loc9_ = _loc17_;
                                    }
                                    if(_loc6_.z > param1.boundMinZ)
                                    {
                                       if(_loc9_ != null)
                                       {
                                          _loc9_.next = _loc6_;
                                       }
                                       else
                                       {
                                          _loc14_ = _loc6_;
                                       }
                                       _loc9_ = _loc6_;
                                    }
                                    _loc5_ = _loc6_;
                                    _loc6_ = _loc12_;
                                 }
                                 if(_loc14_ != null)
                                 {
                                    _loc5_ = _loc9_;
                                    _loc6_ = _loc14_;
                                    _loc14_ = null;
                                    _loc9_ = null;
                                    while(_loc6_ != null)
                                    {
                                       _loc12_ = _loc6_.next;
                                       _loc6_.next = null;
                                       if(_loc6_.z < param1.boundMaxZ && _loc5_.z >= param1.boundMaxZ || _loc6_.z >= param1.boundMaxZ && _loc5_.z < param1.boundMaxZ)
                                       {
                                          _loc16_ = (param1.boundMaxZ - _loc5_.z) / (_loc6_.z - _loc5_.z);
                                          _loc17_ = new Vertex();
                                          _loc17_.x = _loc5_.x + (_loc6_.x - _loc5_.x) * _loc16_;
                                          _loc17_.y = _loc5_.y + (_loc6_.y - _loc5_.y) * _loc16_;
                                          _loc17_.z = _loc5_.z + (_loc6_.z - _loc5_.z) * _loc16_;
                                          _loc17_.normalX = _loc5_.normalX + (_loc6_.normalX - _loc5_.normalX) * _loc16_;
                                          _loc17_.normalY = _loc5_.normalY + (_loc6_.normalY - _loc5_.normalY) * _loc16_;
                                          _loc17_.normalZ = _loc5_.normalZ + (_loc6_.normalZ - _loc5_.normalZ) * _loc16_;
                                          if(_loc9_ != null)
                                          {
                                             _loc9_.next = _loc17_;
                                          }
                                          else
                                          {
                                             _loc14_ = _loc17_;
                                          }
                                          _loc9_ = _loc17_;
                                       }
                                       if(_loc6_.z < param1.boundMaxZ)
                                       {
                                          if(_loc9_ != null)
                                          {
                                             _loc9_.next = _loc6_;
                                          }
                                          else
                                          {
                                             _loc14_ = _loc6_;
                                          }
                                          _loc9_ = _loc6_;
                                       }
                                       _loc5_ = _loc6_;
                                       _loc6_ = _loc12_;
                                    }
                                    if(_loc14_ != null)
                                    {
                                       _loc5_ = _loc9_;
                                       _loc6_ = _loc14_;
                                       _loc14_ = null;
                                       _loc9_ = null;
                                       while(_loc6_ != null)
                                       {
                                          _loc12_ = _loc6_.next;
                                          _loc6_.next = null;
                                          if(_loc6_.x > param1.boundMinX && _loc5_.x <= param1.boundMinX || _loc6_.x <= param1.boundMinX && _loc5_.x > param1.boundMinX)
                                          {
                                             _loc16_ = (param1.boundMinX - _loc5_.x) / (_loc6_.x - _loc5_.x);
                                             _loc17_ = new Vertex();
                                             _loc17_.x = _loc5_.x + (_loc6_.x - _loc5_.x) * _loc16_;
                                             _loc17_.y = _loc5_.y + (_loc6_.y - _loc5_.y) * _loc16_;
                                             _loc17_.z = _loc5_.z + (_loc6_.z - _loc5_.z) * _loc16_;
                                             _loc17_.normalX = _loc5_.normalX + (_loc6_.normalX - _loc5_.normalX) * _loc16_;
                                             _loc17_.normalY = _loc5_.normalY + (_loc6_.normalY - _loc5_.normalY) * _loc16_;
                                             _loc17_.normalZ = _loc5_.normalZ + (_loc6_.normalZ - _loc5_.normalZ) * _loc16_;
                                             if(_loc9_ != null)
                                             {
                                                _loc9_.next = _loc17_;
                                             }
                                             else
                                             {
                                                _loc14_ = _loc17_;
                                             }
                                             _loc9_ = _loc17_;
                                          }
                                          if(_loc6_.x > param1.boundMinX)
                                          {
                                             if(_loc9_ != null)
                                             {
                                                _loc9_.next = _loc6_;
                                             }
                                             else
                                             {
                                                _loc14_ = _loc6_;
                                             }
                                             _loc9_ = _loc6_;
                                          }
                                          _loc5_ = _loc6_;
                                          _loc6_ = _loc12_;
                                       }
                                       if(_loc14_ != null)
                                       {
                                          _loc5_ = _loc9_;
                                          _loc6_ = _loc14_;
                                          _loc14_ = null;
                                          _loc9_ = null;
                                          while(_loc6_ != null)
                                          {
                                             _loc12_ = _loc6_.next;
                                             _loc6_.next = null;
                                             if(_loc6_.x < param1.boundMaxX && _loc5_.x >= param1.boundMaxX || _loc6_.x >= param1.boundMaxX && _loc5_.x < param1.boundMaxX)
                                             {
                                                _loc16_ = (param1.boundMaxX - _loc5_.x) / (_loc6_.x - _loc5_.x);
                                                _loc17_ = new Vertex();
                                                _loc17_.x = _loc5_.x + (_loc6_.x - _loc5_.x) * _loc16_;
                                                _loc17_.y = _loc5_.y + (_loc6_.y - _loc5_.y) * _loc16_;
                                                _loc17_.z = _loc5_.z + (_loc6_.z - _loc5_.z) * _loc16_;
                                                _loc17_.normalX = _loc5_.normalX + (_loc6_.normalX - _loc5_.normalX) * _loc16_;
                                                _loc17_.normalY = _loc5_.normalY + (_loc6_.normalY - _loc5_.normalY) * _loc16_;
                                                _loc17_.normalZ = _loc5_.normalZ + (_loc6_.normalZ - _loc5_.normalZ) * _loc16_;
                                                if(_loc9_ != null)
                                                {
                                                   _loc9_.next = _loc17_;
                                                }
                                                else
                                                {
                                                   _loc14_ = _loc17_;
                                                }
                                                _loc9_ = _loc17_;
                                             }
                                             if(_loc6_.x < param1.boundMaxX)
                                             {
                                                if(_loc9_ != null)
                                                {
                                                   _loc9_.next = _loc6_;
                                                }
                                                else
                                                {
                                                   _loc14_ = _loc6_;
                                                }
                                                _loc9_ = _loc6_;
                                             }
                                             _loc5_ = _loc6_;
                                             _loc6_ = _loc12_;
                                          }
                                          if(_loc14_ != null)
                                          {
                                             _loc5_ = _loc9_;
                                             _loc6_ = _loc14_;
                                             _loc14_ = null;
                                             _loc9_ = null;
                                             while(_loc6_ != null)
                                             {
                                                _loc12_ = _loc6_.next;
                                                _loc6_.next = null;
                                                if(_loc6_.y > param1.boundMinY && _loc5_.y <= param1.boundMinY || _loc6_.y <= param1.boundMinY && _loc5_.y > param1.boundMinY)
                                                {
                                                   _loc16_ = (param1.boundMinY - _loc5_.y) / (_loc6_.y - _loc5_.y);
                                                   _loc17_ = new Vertex();
                                                   _loc17_.x = _loc5_.x + (_loc6_.x - _loc5_.x) * _loc16_;
                                                   _loc17_.y = _loc5_.y + (_loc6_.y - _loc5_.y) * _loc16_;
                                                   _loc17_.z = _loc5_.z + (_loc6_.z - _loc5_.z) * _loc16_;
                                                   _loc17_.normalX = _loc5_.normalX + (_loc6_.normalX - _loc5_.normalX) * _loc16_;
                                                   _loc17_.normalY = _loc5_.normalY + (_loc6_.normalY - _loc5_.normalY) * _loc16_;
                                                   _loc17_.normalZ = _loc5_.normalZ + (_loc6_.normalZ - _loc5_.normalZ) * _loc16_;
                                                   if(_loc9_ != null)
                                                   {
                                                      _loc9_.next = _loc17_;
                                                   }
                                                   else
                                                   {
                                                      _loc14_ = _loc17_;
                                                   }
                                                   _loc9_ = _loc17_;
                                                }
                                                if(_loc6_.y > param1.boundMinY)
                                                {
                                                   if(_loc9_ != null)
                                                   {
                                                      _loc9_.next = _loc6_;
                                                   }
                                                   else
                                                   {
                                                      _loc14_ = _loc6_;
                                                   }
                                                   _loc9_ = _loc6_;
                                                }
                                                _loc5_ = _loc6_;
                                                _loc6_ = _loc12_;
                                             }
                                             if(_loc14_ != null)
                                             {
                                                _loc5_ = _loc9_;
                                                _loc6_ = _loc14_;
                                                _loc14_ = null;
                                                _loc9_ = null;
                                                while(_loc6_ != null)
                                                {
                                                   _loc12_ = _loc6_.next;
                                                   _loc6_.next = null;
                                                   if(_loc6_.y < param1.boundMaxY && _loc5_.y >= param1.boundMaxY || _loc6_.y >= param1.boundMaxY && _loc5_.y < param1.boundMaxY)
                                                   {
                                                      _loc16_ = (param1.boundMaxY - _loc5_.y) / (_loc6_.y - _loc5_.y);
                                                      _loc17_ = new Vertex();
                                                      _loc17_.x = _loc5_.x + (_loc6_.x - _loc5_.x) * _loc16_;
                                                      _loc17_.y = _loc5_.y + (_loc6_.y - _loc5_.y) * _loc16_;
                                                      _loc17_.z = _loc5_.z + (_loc6_.z - _loc5_.z) * _loc16_;
                                                      _loc17_.normalX = _loc5_.normalX + (_loc6_.normalX - _loc5_.normalX) * _loc16_;
                                                      _loc17_.normalY = _loc5_.normalY + (_loc6_.normalY - _loc5_.normalY) * _loc16_;
                                                      _loc17_.normalZ = _loc5_.normalZ + (_loc6_.normalZ - _loc5_.normalZ) * _loc16_;
                                                      if(_loc9_ != null)
                                                      {
                                                         _loc9_.next = _loc17_;
                                                      }
                                                      else
                                                      {
                                                         _loc14_ = _loc17_;
                                                      }
                                                      _loc9_ = _loc17_;
                                                   }
                                                   if(_loc6_.y < param1.boundMaxY)
                                                   {
                                                      if(_loc9_ != null)
                                                      {
                                                         _loc9_.next = _loc6_;
                                                      }
                                                      else
                                                      {
                                                         _loc14_ = _loc6_;
                                                      }
                                                      _loc9_ = _loc6_;
                                                   }
                                                   _loc5_ = _loc6_;
                                                   _loc6_ = _loc12_;
                                                }
                                                if(_loc14_ != null)
                                                {
                                                   _loc15_ = new Face();
                                                   _loc19_ = null;
                                                   _loc7_ = _loc14_;
                                                   while(_loc7_ != null)
                                                   {
                                                      _loc12_ = _loc7_.next;
                                                      _loc7_.next = param1.vertexList;
                                                      param1.vertexList = _loc7_;
                                                      _loc7_.u = (_loc7_.x - param1.boundMinX) / (param1.boundMaxX - param1.boundMinX);
                                                      _loc7_.v = (_loc7_.y - param1.boundMinY) / (param1.boundMaxY - param1.boundMinY);
                                                      if(_loc19_ != null)
                                                      {
                                                         _loc19_.next = new Wrapper();
                                                         _loc19_ = _loc19_.next;
                                                      }
                                                      else
                                                      {
                                                         _loc15_.wrapper = new Wrapper();
                                                         _loc19_ = _loc15_.wrapper;
                                                      }
                                                      _loc19_.vertex = _loc7_;
                                                      _loc7_ = _loc12_;
                                                   }
                                                   _loc15_.calculateBestSequenceAndNormal();
                                                   _loc15_.next = param1.faceList;
                                                   param1.faceList = _loc15_;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         _loc11_++;
      }
   }
}

class Receiver
{
   
   public var next:Receiver;
   
   public var transparent:Boolean = false;
   
   public var buffer:int = -1;
   
   public var firstIndex:int = -1;
   
   public var numTriangles:int = 0;
   
   public function Receiver()
   {
      super();
   }
}
