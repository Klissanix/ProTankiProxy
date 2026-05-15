package §5214238019238032123423632234§
{
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §do catch dynamic§ extends Mesh
   {
      
      private var §get catch super§:Vector.<Vertex>;
      
      private var §521423112602311273123423632234§:int = 0;
      
      private var §5214239673239686123423632234§:int = 1;
      
      private var width:Number;
      
      private var §5214239637239650123423632234§:Number = 1;
      
      private var §521423123512312364123423632234§:Number = 0;
      
      private var §false set include§:Number = 0;
      
      private var §5214239902239915123423632234§:Number = 0;
      
      public function §do catch dynamic§()
      {
         var _loc5_:int = 0;
         var _loc2_:Vertex = null;
         var _loc3_:Vertex = null;
         §get catch super§ = new Vector.<Vertex>(42);
         super();
         var _loc1_:Vertex = addVertex(-1,0,0);
         var _loc4_:Vertex = addVertex(1,0,0);
         this.§get catch super§[this.§521423112602311273123423632234§] = _loc1_;
         ++this.§521423112602311273123423632234§;
         this.§get catch super§[this.§521423112602311273123423632234§] = _loc4_;
         ++this.§521423112602311273123423632234§;
         while(_loc5_ < 20)
         {
            _loc2_ = addVertex(-1,-_loc5_ - 1,0);
            _loc3_ = addVertex(1,-_loc5_ - 1,0);
            this.§get catch super§[this.§521423112602311273123423632234§] = _loc2_;
            ++this.§521423112602311273123423632234§;
            this.§get catch super§[this.§521423112602311273123423632234§] = _loc3_;
            ++this.§521423112602311273123423632234§;
            addQuadFace(_loc1_,_loc2_,_loc3_,_loc4_);
            _loc1_ = _loc2_;
            _loc4_ = _loc3_;
            _loc5_++;
         }
         calculateFacesNormals();
         sorting = 2;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function §try for throw§(param1:Material, param2:int) : void
      {
         this.§5214239673239686123423632234§ = param2;
         setMaterialToAllFaces(param1);
         var _loc3_:TextureMaterial = param1 as TextureMaterial;
         if(_loc3_ != null && _loc3_.texture != null)
         {
            this.§5214239637239650123423632234§ = this.width * _loc3_.texture.height / _loc3_.texture.width;
         }
         else
         {
            this.§5214239637239650123423632234§ = this.width;
         }
         this.§521423123512312364123423632234§ = 0;
         this.§false set include§ = 0;
         this.§5214239902239915123423632234§ = 0;
      }
      
      public function §521423120402312053123423632234§(param1:int, param2:Number) : void
      {
         var _loc8_:int = 0;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc14_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = 20 / this.width;
         var _loc15_:Number = this.§5214239673239686123423632234§ * 450;
         var _loc5_:Number = this.§5214239673239686123423632234§ * 400;
         var _loc11_:Number = this.§5214239673239686123423632234§ * 800 / this.§5214239637239650123423632234§;
         this.§false set include§ += _loc15_ * param1 / 1000;
         this.§5214239902239915123423632234§ += _loc5_ * param1 / 1000;
         this.§521423123512312364123423632234§ += _loc11_ * param1 / 1000;
         var _loc13_:Number = param2 / 20;
         var _loc7_:Number = param2 / 2;
         var _loc6_:Number = 1;
         while(_loc8_ < this.§521423112602311273123423632234§)
         {
            _loc3_ = this.§get catch super§[_loc8_];
            _loc8_++;
            _loc4_ = this.§get catch super§[_loc8_];
            _loc3_.y = param2 - (_loc8_ >> 1) * _loc13_;
            _loc4_.y = _loc3_.y;
            _loc14_ = _loc7_ - _loc3_.y;
            _loc3_.v = _loc14_ / this.§5214239637239650123423632234§ + this.§521423123512312364123423632234§;
            _loc4_.v = _loc3_.v;
            if(_loc3_.y < _loc7_)
            {
               _loc6_ = _loc3_.y / 200;
            }
            else
            {
               _loc6_ = (param2 - _loc3_.y) / 200;
            }
            if(_loc6_ > 1)
            {
               _loc6_ = 1;
            }
            _loc9_ = Math.sin(3.141592653589793 * 2 * (_loc14_ + this.§false set include§) / 750);
            _loc10_ = Math.sin(3.141592653589793 * 2 * (_loc14_ + this.§5214239902239915123423632234§) / 450);
            _loc3_.u = (_loc9_ + _loc10_) * 0.5 * _loc12_ * _loc6_;
            _loc4_.u = 1 + _loc3_.u;
            _loc8_++;
         }
         boundMaxY = param2;
      }
      
      public function §false set final§() : void
      {
         setMaterialToAllFaces(null);
      }
      
      public function init(param1:Number, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         this.width = param1;
         var _loc5_:Number = param1 * 0.5;
         while(_loc6_ < this.§521423112602311273123423632234§)
         {
            _loc3_ = this.§get catch super§[_loc6_];
            _loc6_++;
            _loc4_ = this.§get catch super§[_loc6_];
            _loc3_.x = -_loc5_;
            _loc3_.u = 0;
            _loc4_.x = _loc5_;
            _loc4_.u = 1;
            _loc6_++;
         }
         boundMinX = -_loc5_;
         boundMaxX = _loc5_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxZ = 0;
      }
   }
}

