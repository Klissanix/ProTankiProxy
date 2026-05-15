package §super set for§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   public class §521423138412313854123423632234§ extends Mesh
   {
      
      private static const §continue package super§:Number = 15000;
      
      private var §5214238602238615123423632234§:Vertex;
      
      private var b:Vertex;
      
      private var §5214236214236227123423632234§:Vertex;
      
      private var §in var continue§:Vertex;
      
      private var §5214239637239650123423632234§:Number;
      
      private var §521423123512312364123423632234§:Number = 0;
      
      public function §521423138412313854123423632234§()
      {
         super();
         this.§5214238602238615123423632234§ = addVertex(-1,1,-5);
         this.b = addVertex(-1,0,-5);
         this.§5214236214236227123423632234§ = addVertex(1,0,-5);
         this.§in var continue§ = addVertex(1,1,-5);
         addQuadFace(this.§5214238602238615123423632234§,this.b,this.§5214236214236227123423632234§,this.§in var continue§);
         calculateFacesNormals();
         blendMode = "add";
         useLight = false;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
      }
      
      public function init(param1:TextureMaterial) : void
      {
         param1.repeat = true;
         var _loc2_:Number = 15;
         this.§5214238602238615123423632234§.x = -_loc2_;
         this.§5214238602238615123423632234§.u = 0;
         this.b.x = -_loc2_;
         this.b.u = 0;
         this.§5214236214236227123423632234§.x = _loc2_;
         this.§5214236214236227123423632234§.u = 1;
         this.§in var continue§.x = _loc2_;
         this.§in var continue§.u = 1;
         this.§5214239637239650123423632234§ = 120 * param1.texture.height / param1.texture.width;
         setMaterialToAllFaces(param1);
         this.§521423123512312364123423632234§ = 0;
      }
      
      public function §521423120402312053123423632234§(param1:int, param2:Number = 512) : void
      {
         this.§521423123512312364123423632234§ += 15000 * param1 / 1000;
         this.§5214238602238615123423632234§.y = param2;
         this.§in var continue§.y = param2;
         this.b.v = 1 + this.§521423123512312364123423632234§ / this.§5214239637239650123423632234§;
         this.§5214236214236227123423632234§.v = this.b.v;
         this.§5214238602238615123423632234§.v = this.b.v - param2 / this.§5214239637239650123423632234§;
         this.§in var continue§.v = this.§5214238602238615123423632234§.v;
      }
   }
}

