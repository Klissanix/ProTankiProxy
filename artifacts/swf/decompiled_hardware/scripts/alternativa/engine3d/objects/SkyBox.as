package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.VertexBufferResource;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class SkyBox extends Mesh
   {
      
      public static const LEFT:String = "left";
      
      public static const RIGHT:String = "right";
      
      public static const BACK:String = "back";
      
      public static const FRONT:String = "front";
      
      public static const BOTTOM:String = "bottom";
      
      public static const TOP:String = "top";
      
      private var d2fad0fd:Face;
      
      private var e2892149:Face;
      
      private var afe982a:Face;
      
      private var e19723d3:Face;
      
      private var b31cca79:Face;
      
      private var b640adaa:Face;
      
      public var autoSize:Boolean = true;
      
      alternativa3d var reduceConst:Vector.<Number> = new <Number>[0,0,0,1];
      
      public function SkyBox(param1:Number, param2:Material = null, param3:Material = null, param4:Material = null, param5:Material = null, param6:Material = null, param7:Material = null, param8:Number = 0)
      {
         super();
         param1 *= 0.5;
         var _loc9_:Vertex = this.createVertex(-param1,-param1,param1,param8,param8);
         var _loc10_:Vertex = this.createVertex(-param1,-param1,-param1,param8,1 - param8);
         var _loc11_:Vertex = this.createVertex(-param1,param1,-param1,1 - param8,1 - param8);
         var _loc12_:Vertex = this.createVertex(-param1,param1,param1,1 - param8,param8);
         this.d2fad0fd = this.f6d1444(_loc9_,_loc10_,_loc11_,_loc12_,param2);
         _loc9_ = this.createVertex(param1,param1,param1,param8,param8);
         _loc10_ = this.createVertex(param1,param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,-param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,-param1,param1,1 - param8,param8);
         this.e2892149 = this.f6d1444(_loc9_,_loc10_,_loc11_,_loc12_,param3);
         _loc9_ = this.createVertex(param1,-param1,param1,param8,param8);
         _loc10_ = this.createVertex(param1,-param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(-param1,-param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(-param1,-param1,param1,1 - param8,param8);
         this.afe982a = this.f6d1444(_loc9_,_loc10_,_loc11_,_loc12_,param4);
         _loc9_ = this.createVertex(-param1,param1,param1,param8,param8);
         _loc10_ = this.createVertex(-param1,param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,param1,param1,1 - param8,param8);
         this.e19723d3 = this.f6d1444(_loc9_,_loc10_,_loc11_,_loc12_,param5);
         _loc9_ = this.createVertex(-param1,param1,-param1,param8,param8);
         _loc10_ = this.createVertex(-param1,-param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,-param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,param1,-param1,1 - param8,param8);
         this.b31cca79 = this.f6d1444(_loc9_,_loc10_,_loc11_,_loc12_,param6);
         _loc9_ = this.createVertex(-param1,-param1,param1,param8,param8);
         _loc10_ = this.createVertex(-param1,param1,param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,param1,param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,-param1,param1,1 - param8,param8);
         this.b640adaa = this.f6d1444(_loc9_,_loc10_,_loc11_,_loc12_,param7);
         calculateBounds();
         calculateFacesNormals(true);
         clipping = 2;
         sorting = 0;
         shadowMapAlphaThreshold = 100;
      }
      
      public function getSide(param1:String) : Face
      {
         switch(param1)
         {
            case "left":
               return this.d2fad0fd;
            case "right":
               return this.e2892149;
            case "back":
               return this.afe982a;
            case "front":
               return this.e19723d3;
            case "bottom":
               return this.b31cca79;
            case "top":
               return this.b640adaa;
            default:
               return null;
         }
      }
      
      public function transformUV(param1:String, param2:Matrix) : void
      {
         var _loc5_:Wrapper = null;
         var _loc4_:Vertex = null;
         var _loc6_:Point = null;
         var _loc3_:Face = this.getSide(param1);
         if(_loc3_ != null)
         {
            _loc5_ = _loc3_.wrapper;
            while(_loc5_ != null)
            {
               _loc4_ = _loc5_.vertex;
               _loc6_ = param2.transformPoint(new Point(_loc4_.u,_loc4_.v));
               _loc4_.u = _loc6_.x;
               _loc4_.v = _loc6_.y;
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:SkyBox = new SkyBox(0);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc3_:SkyBox = param1 as SkyBox;
         this.autoSize = _loc3_.autoSize;
         var _loc2_:Face = _loc3_.faceList;
         var _loc4_:Face = faceList;
         while(_loc2_ != null)
         {
            if(_loc2_ == _loc3_.d2fad0fd)
            {
               this.d2fad0fd = _loc4_;
            }
            else if(_loc2_ == _loc3_.e2892149)
            {
               this.e2892149 = _loc4_;
            }
            else if(_loc2_ == _loc3_.afe982a)
            {
               this.afe982a = _loc4_;
            }
            else if(_loc2_ == _loc3_.e19723d3)
            {
               this.e19723d3 = _loc4_;
            }
            else if(_loc2_ == _loc3_.b31cca79)
            {
               this.b31cca79 = _loc4_;
            }
            else if(_loc2_ == _loc3_.b640adaa)
            {
               this.b640adaa = _loc4_;
            }
            _loc2_ = _loc2_.next;
            _loc4_ = _loc4_.next;
         }
      }
      
      private function createVertex(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = new Vertex();
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         return _loc6_;
      }
      
      private function f6d1444(param1:Vertex, param2:Vertex, param3:Vertex, param4:Vertex, param5:Material) : Face
      {
         var _loc6_:Face = new Face();
         _loc6_.material = param5;
         _loc6_.next = faceList;
         faceList = _loc6_;
         _loc6_.wrapper = new Wrapper();
         _loc6_.wrapper.vertex = param1;
         _loc6_.wrapper.next = new Wrapper();
         _loc6_.wrapper.next.vertex = param2;
         _loc6_.wrapper.next.next = new Wrapper();
         _loc6_.wrapper.next.next.vertex = param3;
         _loc6_.wrapper.next.next.next = new Wrapper();
         _loc6_.wrapper.next.next.next.vertex = param4;
         return _loc6_;
      }
      
      override alternativa3d function draw(param1:Camera3D) : void
      {
         if(faceList == null)
         {
            return;
         }
         if(this.autoSize)
         {
            this.f114cc81(param1);
         }
         if(clipping == 0)
         {
            if(culling & 1)
            {
               return;
            }
            culling = 0;
         }
         this.prepareResources();
         this.addOpaque(param1);
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
         var _loc2_:int = int(param1.debug ? param1.checkInDebug(this) : 0);
         if(_loc2_ & 8)
         {
            Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
         }
      }
      
      override alternativa3d function prepareResources() : void
      {
         var _loc8_:Array = null;
         var _loc9_:* = undefined;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc5_:Vertex = null;
         var _loc13_:Dictionary = null;
         var _loc12_:Face = null;
         var _loc6_:* = undefined;
         var _loc1_:int = 0;
         var _loc7_:Wrapper = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(vertexBuffer == null)
         {
            _loc9_ = new Vector.<Number>(24);
            _loc10_ = 0;
            _loc11_ = 0;
            _loc5_ = vertexList;
            while(_loc5_ != null)
            {
               _loc9_[_loc10_] = _loc5_.x;
               _loc10_++;
               _loc9_[_loc10_] = _loc5_.y;
               _loc10_++;
               _loc9_[_loc10_] = _loc5_.z;
               _loc10_++;
               _loc9_[_loc10_] = _loc5_.u;
               _loc10_++;
               _loc9_[_loc10_] = _loc5_.v;
               _loc10_++;
               _loc9_[_loc10_] = _loc5_.normalX;
               _loc10_++;
               _loc9_[_loc10_] = _loc5_.normalY;
               _loc10_++;
               _loc9_[_loc10_] = _loc5_.normalZ;
               _loc10_++;
               _loc5_.index = _loc11_;
               _loc11_++;
               _loc5_ = _loc5_.next;
            }
            if(_loc11_ > 0)
            {
               vertexBuffer = new VertexBufferResource(_loc9_,8);
            }
            _loc13_ = new Dictionary();
            _loc12_ = faceList;
            while(_loc12_ != null)
            {
               if(_loc12_.material != null)
               {
                  _loc8_ = _loc13_[_loc12_.material];
                  if(_loc8_ == null)
                  {
                     _loc8_ = [];
                     _loc13_[_loc12_.material] = _loc8_;
                  }
                  _loc8_[_loc8_.length] = _loc12_;
               }
               _loc12_ = _loc12_.next;
            }
            _loc6_ = new Vector.<uint>(36);
            _loc1_ = 0;
            for(var _loc14_ in _loc13_)
            {
               _loc8_ = _loc13_[_loc14_];
               opaqueMaterials[opaqueLength] = _loc14_;
               opaqueBegins[opaqueLength] = numTriangles * 3;
               for each(_loc12_ in _loc8_)
               {
                  _loc7_ = _loc12_.wrapper;
                  _loc2_ = _loc7_.vertex.index;
                  _loc7_ = _loc7_.next;
                  _loc3_ = _loc7_.vertex.index;
                  _loc7_ = _loc7_.next;
                  while(_loc7_ != null)
                  {
                     _loc4_ = _loc7_.vertex.index;
                     _loc6_[_loc1_] = _loc2_;
                     _loc1_++;
                     _loc6_[_loc1_] = _loc3_;
                     _loc1_++;
                     _loc6_[_loc1_] = _loc4_;
                     _loc1_++;
                     _loc3_ = _loc4_;
                     numTriangles = numTriangles + 1;
                     _loc7_ = _loc7_.next;
                  }
               }
               opaqueNums[opaqueLength] = numTriangles - opaqueBegins[opaqueLength] / 3;
               opaqueLength = opaqueLength + 1;
            }
            indexBuffer = new IndexBufferResource(_loc6_);
         }
      }
      
      override alternativa3d function addOpaque(param1:Camera3D) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < opaqueLength)
         {
            param1.addSky(opaqueMaterials[_loc2_],vertexBuffer,indexBuffer,opaqueBegins[_loc2_],opaqueNums[_loc2_],this);
            _loc2_++;
         }
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         this.draw(param1);
         return null;
      }
      
      override alternativa3d function cullingInCamera(param1:Camera3D, param2:int) : int
      {
         return super.alternativa3d::cullingInCamera(param1,param2 &= -4);
      }
      
      private function f114cc81(param1:Camera3D) : void
      {
         var _loc4_:Number;
         var _loc2_:Number = _loc4_ = mi * boundMinX + mj * boundMinY + mk * boundMinZ + ml;
         _loc4_ = mi * boundMaxX + mj * boundMinY + mk * boundMinZ + ml;
         if(_loc4_ > _loc2_)
         {
            _loc2_ = _loc4_;
         }
         _loc4_ = mi * boundMaxX + mj * boundMaxY + mk * boundMinZ + ml;
         if(_loc4_ > _loc2_)
         {
            _loc2_ = _loc4_;
         }
         _loc4_ = mi * boundMinX + mj * boundMaxY + mk * boundMinZ + ml;
         if(_loc4_ > _loc2_)
         {
            _loc2_ = _loc4_;
         }
         _loc4_ = mi * boundMinX + mj * boundMinY + mk * boundMaxZ + ml;
         if(_loc4_ > _loc2_)
         {
            _loc2_ = _loc4_;
         }
         _loc4_ = mi * boundMaxX + mj * boundMinY + mk * boundMaxZ + ml;
         if(_loc4_ > _loc2_)
         {
            _loc2_ = _loc4_;
         }
         _loc4_ = mi * boundMaxX + mj * boundMaxY + mk * boundMaxZ + ml;
         if(_loc4_ > _loc2_)
         {
            _loc2_ = _loc4_;
         }
         _loc4_ = mi * boundMinX + mj * boundMaxY + mk * boundMaxZ + ml;
         if(_loc4_ > _loc2_)
         {
            _loc2_ = _loc4_;
         }
         var _loc3_:Number = 1;
         if(_loc2_ > param1.farClipping)
         {
            _loc3_ = param1.farClipping / _loc2_;
         }
         this.reduceConst[0] = _loc3_;
         this.reduceConst[1] = _loc3_;
         this.reduceConst[2] = _loc3_;
      }
   }
}

