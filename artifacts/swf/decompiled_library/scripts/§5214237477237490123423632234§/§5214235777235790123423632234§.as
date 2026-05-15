package §5214237477237490123423632234§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §5214235777235790123423632234§ extends Mesh
   {
      
      private static const §break override§:Number = 10;
      
      private static const §include for switch§:Number = 5;
      
      private var §5214238602238615123423632234§:Vertex;
      
      private var b:Vertex;
      
      private var §5214236214236227123423632234§:Vertex;
      
      private var §in var continue§:Vertex;
      
      private var §5214237732237745123423632234§:Face;
      
      private var §extends§:Vertex;
      
      private var §try set override§:Vertex;
      
      private var §5214232074232087123423632234§:Vertex;
      
      private var §in var else§:Vertex;
      
      private var §catch var include§:Face;
      
      private var §in set use§:Number;
      
      private var §521423112522311265123423632234§:Number;
      
      private var §5214239637239650123423632234§:Number;
      
      private var §dynamic catch include§:Number;
      
      private var §if set implements§:Material;
      
      public function §5214235777235790123423632234§()
      {
         super();
         this.§5214238602238615123423632234§ = addVertex(-1,1,-10);
         this.b = addVertex(-1,0,-10);
         this.§5214236214236227123423632234§ = addVertex(1,0,-10);
         this.§in var continue§ = addVertex(1,1,-10);
         this.§5214237732237745123423632234§ = addQuadFace(this.§5214238602238615123423632234§,this.b,this.§5214236214236227123423632234§,this.§in var continue§);
         this.§extends§ = addVertex(-1,1,-10);
         this.§try set override§ = addVertex(-1,0,-10);
         this.§5214232074232087123423632234§ = addVertex(1,0,-10);
         this.§in var else§ = addVertex(1,1,-10);
         this.§catch var include§ = addQuadFace(this.§extends§,this.§try set override§,this.§5214232074232087123423632234§,this.§in var else§);
         calculateFacesNormals();
         sorting = 2;
         softAttenuation = 80;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function init(param1:Number, param2:Number, param3:Material, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         this.§in set use§ = param2;
         this.§if set implements§ = param3;
         this.§dynamic catch include§ = param4;
         var _loc5_:TextureMaterial = param3 as TextureMaterial;
         if(_loc5_ != null && _loc5_.texture != null)
         {
            this.§5214239637239650123423632234§ = param1 * _loc5_.texture.height * 2 / _loc5_.texture.width;
            this.§521423112522311265123423632234§ = param2 - this.§5214239637239650123423632234§;
         }
         else
         {
            this.§5214239637239650123423632234§ = param1 / 2;
            this.§521423112522311265123423632234§ = 0;
         }
         this.§5214239637239650123423632234§ *= 1.25;
         _loc6_ = param1 * 0.5;
         this.§5214238602238615123423632234§.x = -_loc6_;
         this.§5214238602238615123423632234§.y = param2;
         this.§5214238602238615123423632234§.u = 0;
         this.b.x = -_loc6_;
         this.b.u = 0;
         this.§5214236214236227123423632234§.x = _loc6_;
         this.§5214236214236227123423632234§.u = 0.5;
         this.§in var continue§.x = _loc6_;
         this.§in var continue§.y = param2;
         this.§in var continue§.u = 0.5;
         this.§extends§.x = -_loc6_;
         this.§extends§.u = 0.5;
         this.§extends§.v = 0;
         this.§try set override§.x = -_loc6_;
         this.§try set override§.y = 0;
         this.§try set override§.u = 0.5;
         this.§5214232074232087123423632234§.x = _loc6_;
         this.§5214232074232087123423632234§.y = 0;
         this.§5214232074232087123423632234§.u = 1;
         this.§in var else§.x = _loc6_;
         this.§in var else§.u = 1;
         this.§in var else§.v = 0;
         boundMinX = -_loc6_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxX = _loc6_;
         boundMaxY = param2;
         boundMaxZ = 0;
      }
      
      public function §false set final§() : void
      {
         this.§5214237732237745123423632234§.material = null;
         this.§catch var include§.material = null;
         this.§if set implements§ = null;
      }
      
      public function §521423120402312053123423632234§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = this.§521423112522311265123423632234§ + this.§dynamic catch include§ * param1;
         if(_loc3_ < 5)
         {
            _loc2_ = _loc3_ < 0 ? 0 : _loc3_;
            this.b.y = _loc2_;
            this.§5214236214236227123423632234§.y = _loc2_;
            this.§5214238602238615123423632234§.v = 1 - (this.§in set use§ - _loc3_) / this.§5214239637239650123423632234§;
            this.§in var continue§.v = this.§5214238602238615123423632234§.v;
            this.b.v = this.§5214238602238615123423632234§.v + (this.§in set use§ - _loc2_) / this.§5214239637239650123423632234§;
            this.§5214236214236227123423632234§.v = this.b.v;
            this.§extends§.y = 5;
            this.§in var else§.y = 5;
            this.§5214237732237745123423632234§.material = this.§if set implements§;
            this.§catch var include§.material = null;
         }
         else if(_loc3_ > this.§in set use§ - 5)
         {
            _loc2_ = _loc3_ > this.§in set use§ ? this.§in set use§ : _loc3_;
            this.§extends§.y = _loc2_;
            this.§in var else§.y = _loc2_;
            this.§extends§.v = -(_loc3_ - _loc2_) / this.§5214239637239650123423632234§;
            this.§in var else§.v = this.§extends§.v;
            this.§try set override§.v = this.§extends§.v + _loc3_ / this.§5214239637239650123423632234§;
            this.§5214232074232087123423632234§.v = this.§try set override§.v;
            this.b.y = this.§in set use§ - 5;
            this.b.y = this.§in set use§ - 5;
            this.§5214237732237745123423632234§.material = null;
            this.§catch var include§.material = this.§if set implements§;
         }
         else
         {
            this.§5214238602238615123423632234§.v = 1 - (this.§in set use§ - _loc3_) / this.§5214239637239650123423632234§;
            this.§in var continue§.v = this.§5214238602238615123423632234§.v;
            this.b.y = _loc3_;
            this.§5214236214236227123423632234§.y = _loc3_;
            this.§extends§.y = _loc3_;
            this.§in var else§.y = _loc3_;
            this.b.v = 1;
            this.§5214236214236227123423632234§.v = 1;
            this.§extends§.v = 0;
            this.§try set override§.v = _loc3_ / this.§5214239637239650123423632234§;
            this.§5214232074232087123423632234§.v = _loc3_ / this.§5214239637239650123423632234§;
            this.§in var else§.v = 0;
            this.§5214237732237745123423632234§.material = this.§if set implements§;
            this.§catch var include§.material = this.§if set implements§;
         }
      }
   }
}

