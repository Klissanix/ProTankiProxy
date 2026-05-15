package §5214237477237490123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §in switch for§ extends Mesh
   {
      
      private var §5214238602238615123423632234§:Vertex;
      
      private var b:Vertex;
      
      private var §5214236214236227123423632234§:Vertex;
      
      private var §in var continue§:Vertex;
      
      private var §return for false§:Face;
      
      private var §set for§:Number;
      
      private var §class for include§:Number;
      
      public function §in switch for§()
      {
         super();
         this.§5214238602238615123423632234§ = addVertex(-1,1,0);
         this.b = addVertex(-1,0,0);
         this.§5214236214236227123423632234§ = addVertex(1,0,0);
         this.§in var continue§ = addVertex(1,1,0);
         this.§return for false§ = addQuadFace(this.§5214238602238615123423632234§,this.b,this.§5214236214236227123423632234§,this.§in var continue§);
         calculateFacesNormals();
         sorting = 2;
         softAttenuation = 80;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function §false set final§() : void
      {
         this.§return for false§.material = null;
      }
      
      public function §521423120402312053123423632234§(param1:Number) : void
      {
         var _loc2_:Number = this.§class for include§ * param1;
         this.§5214238602238615123423632234§.v = _loc2_;
         this.b.v = this.§set for§ + _loc2_;
         this.§5214236214236227123423632234§.v = this.§set for§ + _loc2_;
         this.§in var continue§.v = _loc2_;
      }
      
      public function init(param1:Number, param2:Number, param3:Material, param4:Number) : void
      {
         var _loc5_:Number = param1 * 0.5;
         this.§5214238602238615123423632234§.x = -_loc5_;
         this.§5214238602238615123423632234§.y = param2;
         this.§5214238602238615123423632234§.u = 0;
         this.b.x = -_loc5_;
         this.b.y = 0;
         this.b.u = 0;
         this.§5214236214236227123423632234§.x = _loc5_;
         this.§5214236214236227123423632234§.y = 0;
         this.§5214236214236227123423632234§.u = 1;
         this.§in var continue§.x = _loc5_;
         this.§in var continue§.y = param2;
         this.§in var continue§.u = 1;
         boundMinX = -_loc5_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxX = _loc5_;
         boundMaxY = param2;
         boundMaxZ = 0;
         this.§return for false§.material = param3;
         var _loc6_:TextureMaterial = param3 as TextureMaterial;
         if(_loc6_ != null && _loc6_.texture != null)
         {
            this.§set for§ = param2 / (param1 * _loc6_.texture.height / _loc6_.texture.width);
            this.§class for include§ = param4 / param1;
         }
         else
         {
            this.§set for§ = 1;
            this.§class for include§ = 0;
         }
      }
   }
}

