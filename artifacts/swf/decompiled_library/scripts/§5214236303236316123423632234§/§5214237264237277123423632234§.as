package §5214236303236316123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §5214237264237277123423632234§ extends Mesh
   {
      
      private var §5214238602238615123423632234§:Vertex;
      
      private var b:Vertex;
      
      private var §5214236214236227123423632234§:Vertex;
      
      private var §in var continue§:Vertex;
      
      private var §return for false§:Face;
      
      public function §5214237264237277123423632234§()
      {
         super();
         this.§5214238602238615123423632234§ = this.§in catch extends§(-1,0,0,0,0.5);
         this.b = this.§in catch extends§(1,0,0,1,0.5);
         this.§5214236214236227123423632234§ = this.§in catch extends§(1,1,0,1,1);
         this.§in var continue§ = this.§in catch extends§(-1,1,0,0,1);
         this.§return for false§ = this.§case use§(this.§5214238602238615123423632234§,this.b,this.§5214236214236227123423632234§,this.§in var continue§);
         calculateFacesNormals();
         sorting = 2;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc2_:Number = param1 / 2;
         var _loc3_:Number = -_loc2_;
         this.§in var continue§.x = -_loc2_;
         boundMinX = this.§5214238602238615123423632234§.x = _loc3_;
         boundMaxX = this.b.x = this.§5214236214236227123423632234§.x = _loc2_;
      }
      
      public function set §in set use§(param1:Number) : void
      {
         if(param1 < 10)
         {
            param1 = 10;
         }
         boundMaxY = this.§5214236214236227123423632234§.y = this.§in var continue§.y = param1;
      }
      
      private function §in catch extends§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = null;
         _loc6_ = new Vertex();
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         return _loc6_;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Material) : void
      {
         alpha = 1;
         var _loc5_:Number = param1 / 2;
         var _loc6_:Number = -_loc5_;
         this.§in var continue§.x = -_loc5_;
         boundMinX = this.§5214238602238615123423632234§.x = _loc6_;
         boundMaxX = this.b.x = this.§5214236214236227123423632234§.x = _loc5_;
         boundMinY = this.§5214236214236227123423632234§.y = this.§in var continue§.y = param2;
         boundMaxY = 0;
         boundMinZ = boundMaxZ = 0;
         this.§5214238602238615123423632234§.v = this.b.v = param3;
         this.§return for false§.material = param4;
      }
      
      private function §case use§(param1:Vertex, param2:Vertex, param3:Vertex, param4:Vertex) : Face
      {
         var _loc5_:Face = null;
         _loc5_ = new Face();
         _loc5_.next = faceList;
         faceList = _loc5_;
         _loc5_.wrapper = new Wrapper();
         _loc5_.wrapper.vertex = param1;
         _loc5_.wrapper.next = new Wrapper();
         _loc5_.wrapper.next.vertex = param2;
         _loc5_.wrapper.next.next = new Wrapper();
         _loc5_.wrapper.next.next.vertex = param3;
         _loc5_.wrapper.next.next.next = new Wrapper();
         _loc5_.wrapper.next.next.next.vertex = param4;
         return _loc5_;
      }
      
      public function get §in set use§() : Number
      {
         return this.§in var continue§.y;
      }
   }
}

