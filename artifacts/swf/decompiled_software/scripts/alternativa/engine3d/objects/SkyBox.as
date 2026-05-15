package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
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
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas) : void
      {
         culling &= -4;
         super.alternativa3d::draw(param1,param2);
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         culling &= -4;
         return super.alternativa3d::getVG(param1);
      }
   }
}

