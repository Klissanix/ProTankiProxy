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
   import alternativa.gfx.core.IndexBufferResource;
   import alternativa.gfx.core.VertexBufferResource;
   
   use namespace alternativa3d;
   
   public class Decal extends Mesh
   {
      
      public var attenuation:Number = 1000000;
      
      public function Decal()
      {
         super();
         shadowMapAlphaThreshold = 100;
      }
      
      public function createGeometry(param1:Mesh, param2:Boolean = false) : void
      {
         if(!param2)
         {
            param1 = param1.clone() as Mesh;
         }
         faceList = param1.faceList;
         vertexList = param1.vertexList;
         param1.faceList = null;
         param1.vertexList = null;
         var _loc4_:Vertex = vertexList;
         while(_loc4_ != null)
         {
            _loc4_.transformId = 0;
            _loc4_ = _loc4_.next;
         }
         var _loc3_:Face = faceList;
         while(_loc3_ != null)
         {
            _loc3_ = _loc3_.next;
         }
         calculateBounds();
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Decal = new Decal();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:Decal = param1 as Decal;
         this.attenuation = _loc2_.attenuation;
      }
      
      override alternativa3d function draw(param1:Camera3D) : void
      {
         var _loc3_:Vertex = null;
         var _loc4_:Face = null;
         if(faceList == null)
         {
            return;
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
         useDepth = true;
         if(faceList.material != null)
         {
            param1.addDecal(this);
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
         var _loc2_:int = int(param1.debug ? param1.checkInDebug(this) : 0);
         if(_loc2_ & 8)
         {
            Debug.drawBounds(param1,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
         }
         if(_loc2_ & 0x10)
         {
            if(transformId > 500000000)
            {
               transformId = 0;
               _loc3_ = vertexList;
               while(_loc3_ != null)
               {
                  _loc3_.transformId = 0;
                  _loc3_ = _loc3_.next;
               }
            }
            transformId = transformId + 1;
            calculateInverseMatrix();
            _loc4_ = prepareFaces(param1,faceList);
            if(_loc4_ == null)
            {
               return;
            }
            Debug.drawEdges(param1,_loc4_,16777215);
         }
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         this.draw(param1);
         return null;
      }
      
      override alternativa3d function prepareResources() : void
      {
         var _loc10_:* = undefined;
         var _loc11_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:Vertex = null;
         var _loc8_:* = undefined;
         var _loc1_:int = 0;
         var _loc4_:Face = null;
         var _loc9_:Wrapper = null;
         var _loc2_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(vertexBuffer == null)
         {
            _loc10_ = new Vector.<Number>(32);
            _loc11_ = 0;
            _loc3_ = 0;
            _loc7_ = vertexList;
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
            vertexBuffer = new VertexBufferResource(_loc10_,8);
            _loc8_ = new Vector.<uint>(6);
            _loc1_ = 0;
            numTriangles = 0;
            _loc4_ = faceList;
            while(_loc4_ != null)
            {
               _loc9_ = _loc4_.wrapper;
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
                  numTriangles = numTriangles + 1;
                  _loc9_ = _loc9_.next;
               }
               _loc4_ = _loc4_.next;
            }
            indexBuffer = new IndexBufferResource(_loc8_);
         }
      }
   }
}

