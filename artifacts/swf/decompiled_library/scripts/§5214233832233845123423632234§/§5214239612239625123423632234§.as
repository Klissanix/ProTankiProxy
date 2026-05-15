package §5214233832233845123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   
   public class §5214239612239625123423632234§ extends Mesh
   {
      
      private var §5214238602238615123423632234§:Vertex;
      
      private var b:Vertex;
      
      private var §5214236214236227123423632234§:Vertex;
      
      private var §in var continue§:Vertex;
      
      public var §extends catch function§:Number = 0;
      
      public var §5214239673239686123423632234§:Vector3 = new Vector3();
      
      public var §dynamic final§:Vector3 = new Vector3();
      
      public var §5214235649235662123423632234§:Boolean = false;
      
      public function §5214239612239625123423632234§()
      {
         super();
         this.§5214238602238615123423632234§ = addVertex(-1,1,0,0,0);
         this.b = addVertex(-1,0,0,0,1);
         this.§5214236214236227123423632234§ = addVertex(1,0,0,1,1);
         this.§in var continue§ = addVertex(1,1,0,1,0);
         addQuadFace(this.§5214238602238615123423632234§,this.b,this.§5214236214236227123423632234§,this.§in var continue§);
         calculateFacesNormals();
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:TextureMaterial) : void
      {
         var _loc7_:Number = param1 / 2;
         this.§521423113762311389123423632234§(this.§5214238602238615123423632234§,-_loc7_,param4);
         this.§521423113762311389123423632234§(this.b,-_loc7_,param3);
         this.§521423113762311389123423632234§(this.§5214236214236227123423632234§,_loc7_,param3);
         this.§521423113762311389123423632234§(this.§in var continue§,_loc7_,param4);
         this.alpha = param2;
         this.§extends catch function§ = param5;
         setMaterialToAllFaces(param6);
      }
      
      public function §false set final§() : void
      {
         setMaterialToAllFaces(null);
         this.§5214235649235662123423632234§ = false;
      }
      
      private function §521423113762311389123423632234§(param1:Vertex, param2:Number, param3:Number) : void
      {
         param1.x = param2;
         param1.y = param3;
      }
   }
}

