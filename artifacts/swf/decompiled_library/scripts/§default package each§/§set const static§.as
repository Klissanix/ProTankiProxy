package §default package each§
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§if finally catch§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.materials.AnimatedPaintMaterial;
   import alternativa.tanks.materials.PaintMaterial;
   import flash.display.BitmapData;
   
   public class §set const static§ extends Object3DContainer
   {
      
      public static const §521423118882311901123423632234§:String = "tankPart";
      
      private static const §else include§:int = 0;
      
      private static const §false try§:int = 1;
      
      private static var §final switch for§:BitmapData;
      
      public static const §5214237140237153123423632234§:RegExp = /(box.*|fmnt.*|muzzle.*|laser|rocket)/i;
      
      private var §5214237449237462123423632234§:§5214233863233876123423632234§;
      
      private var §final var include§:§5214233863233876123423632234§;
      
      private var §var for true§:Mesh;
      
      private var §catch use continue§:§return var implements§;
      
      private var §5214234665234678123423632234§:BitmapData;
      
      private var §set catch catch§:Vector.<TextureMaterial> = new Vector.<TextureMaterial>(2);
      
      private var §5214235093235106123423632234§:§if finally catch§;
      
      public function §set const static§()
      {
         super();
      }
      
      private static function §521423100362310049123423632234§() : BitmapData
      {
         if(§final switch for§ == null)
         {
            §final switch for§ = new BitmapData(1,1,false,6710886);
         }
         return §final switch for§;
      }
      
      public static function §set package do§(param1:Mesh) : Mesh
      {
         var _loc2_:Mesh = Mesh(param1.clone());
         _loc2_.name = "tankPart";
         _loc2_.colorTransform = null;
         _loc2_.shadowMapAlphaThreshold = 0.1;
         _loc2_.calculateVerticesNormalsBySmoothingGroups(0.01);
         return _loc2_;
      }
      
      private function §5214237028237041123423632234§(param1:§5214233863233876123423632234§) : Vector.<Mesh>
      {
         var _loc2_:Vector.<Mesh> = new Vector.<Mesh>();
         for each(var _loc3_ in param1.§5214237990238003123423632234§)
         {
            if(_loc3_ is Mesh && !§5214237140237153123423632234§.test(_loc3_.name))
            {
               _loc2_[_loc2_.length] = this.§521423128902312903123423632234§(§set package do§(_loc3_ as Mesh));
            }
         }
         return _loc2_;
      }
      
      private function §521423114072311420123423632234§(param1:§5214233863233876123423632234§, param2:§return var implements§) : void
      {
         if(param2 == null)
         {
            return;
         }
         var _loc4_:Vector.<Mesh> = param2.§5214237028237041123423632234§();
         var _loc5_:TextureMaterial = this.§5214234801234814123423632234§(param1,_loc4_[0],1);
         var _loc3_:int = 1;
         while(_loc3_ < _loc4_.length)
         {
            _loc4_[_loc3_].setMaterialToAllFaces(_loc5_);
            _loc3_++;
         }
      }
      
      public function §finally use false§() : Number
      {
         return this.§catch use continue§ == null ? 0 : Number(this.§catch use continue§.x);
      }
      
      public function §52142330723320123423632234§(param1:§5214233863233876123423632234§) : void
      {
         if(this.§var for true§ != null)
         {
            this.§var for true§.setMaterialToAllFaces(null);
            removeChild(this.§var for true§);
         }
         if(param1 == null)
         {
            return;
         }
         this.§5214237449237462123423632234§ = param1;
         this.§var for true§ = this.§521423128902312903123423632234§(§set package do§(param1.§5214237990238003123423632234§[0] as Mesh));
         addChild(this.§var for true§);
         if(this.§catch use continue§ != null)
         {
            addChild(this.§catch use continue§);
         }
         this.§var for true§.x = 0;
         this.§var for true§.y = 0;
         this.§var for true§.z = 0;
         this.§5214234801234814123423632234§(param1,this.§var for true§,0);
         this.§extends catch const§();
      }
      
      public function §5214231344231357123423632234§(param1:BitmapData) : void
      {
         this.§5214235093235106123423632234§ = null;
         this.§5214238786238799123423632234§();
         this.§5214234665234678123423632234§ = param1 != null ? param1 : §521423100362310049123423632234§();
         this.§521423114072311420123423632234§(this.§final var include§,this.§catch use continue§);
         this.§5214234801234814123423632234§(this.§5214237449237462123423632234§,this.§var for true§,0);
      }
      
      protected function §521423128902312903123423632234§(param1:Mesh) : Mesh
      {
         if(param1.sorting != 2)
         {
            param1.sorting = 2;
            param1.calculateFacesNormals(true);
            param1.optimizeForDynamicBSP();
            param1.threshold = 0.01;
         }
         return param1;
      }
      
      private function §extends catch const§() : void
      {
         if(this.§var for true§ == null || this.§catch use continue§ == null)
         {
            return;
         }
         var _loc1_:Object3D = this.§5214237449237462123423632234§.§function const with§(/mount/i)[0];
         this.§catch use continue§.x = _loc1_.x;
         this.§catch use continue§.y = _loc1_.y;
         this.§catch use continue§.z = _loc1_.z;
      }
      
      public function §var var null§(param1:§if finally catch§) : void
      {
         this.§5214234665234678123423632234§ = null;
         this.§5214238786238799123423632234§();
         this.§5214235093235106123423632234§ = param1;
         this.§521423114072311420123423632234§(this.§final var include§,this.§catch use continue§);
         this.§5214234801234814123423632234§(this.§5214237449237462123423632234§,this.§var for true§,0);
      }
      
      public function §5214235199235212123423632234§() : Number
      {
         return this.§catch use continue§ == null ? 0 : Number(this.§catch use continue§.z);
      }
      
      public function §5214233168233181123423632234§(param1:§5214233863233876123423632234§) : void
      {
         if(this.§catch use continue§ != null)
         {
            for each(var _loc2_ in this.§catch use continue§.§5214237028237041123423632234§())
            {
               _loc2_.setMaterialToAllFaces(null);
            }
            removeChild(this.§catch use continue§);
         }
         if(param1 == null)
         {
            return;
         }
         this.§final var include§ = param1;
         this.§catch use continue§ = new §return var implements§();
         this.§catch use continue§.§case for extends§(this.§5214237028237041123423632234§(param1));
         addChild(this.§catch use continue§);
         this.§521423114072311420123423632234§(param1,this.§catch use continue§);
         this.§extends catch const§();
      }
      
      private function §5214234801234814123423632234§(param1:§5214233863233876123423632234§, param2:Mesh, param3:int) : TextureMaterial
      {
         var _loc4_:TextureMaterial = null;
         if(param1 == null || param2 == null || this.§5214234665234678123423632234§ == null && this.§5214235093235106123423632234§ == null)
         {
            this.alpha = 0;
            return null;
         }
         this.alpha = 1;
         if(this.§5214235093235106123423632234§ != null)
         {
            _loc4_ = this.§set const return§(param1,param3);
         }
         else
         {
            _loc4_ = this.§521423131122313125123423632234§(param1,param3);
         }
         param2.setMaterialToAllFaces(_loc4_);
         return _loc4_;
      }
      
      private function §521423131122313125123423632234§(param1:§5214233863233876123423632234§, param2:int) : TextureMaterial
      {
         var _loc4_:BitmapData = param1.§5214238136238149123423632234§["lightmap.jpg"];
         var _loc5_:BitmapData = param1.§5214238136238149123423632234§["details.png"];
         var _loc3_:TextureMaterial = new PaintMaterial(this.§5214234665234678123423632234§,_loc4_,_loc5_);
         if(this.§set catch catch§[param2] != null)
         {
            this.§set catch catch§[param2].dispose();
         }
         this.§set catch catch§[param2] = _loc3_;
         return _loc3_;
      }
      
      public function destroy() : void
      {
         this.§5214238786238799123423632234§();
         this.§set catch catch§ = null;
         this.§5214235093235106123423632234§ = null;
         this.§var for true§ = null;
         this.§catch use continue§ = null;
         this.§5214234665234678123423632234§ = null;
         this.§5214237449237462123423632234§ = null;
         this.§final var include§ = null;
      }
      
      public function §try package finally§() : Number
      {
         return this.§catch use continue§ == null ? 0 : Number(this.§catch use continue§.y);
      }
      
      private function §set const return§(param1:§5214233863233876123423632234§, param2:int) : TextureMaterial
      {
         var _loc6_:BitmapData = param1.§5214238136238149123423632234§["lightmap.jpg"];
         var _loc7_:BitmapData = param1.§5214238136238149123423632234§["details.png"];
         var _loc4_:int = this.§5214235093235106123423632234§.data.width / this.§5214235093235106123423632234§.§5214233118233131123423632234§;
         var _loc5_:int = this.§5214235093235106123423632234§.data.height / this.§5214235093235106123423632234§.§5214231432231445123423632234§;
         var _loc3_:AnimatedPaintMaterial = new AnimatedPaintMaterial(this.§5214235093235106123423632234§.data,_loc6_,_loc7_,_loc4_,_loc5_,this.§5214235093235106123423632234§.§in for in§,this.§5214235093235106123423632234§.§get set var§);
         if(this.§set catch catch§[param2] != null)
         {
            this.§set catch catch§[param2].dispose();
         }
         this.§set catch catch§[param2] = _loc3_;
         return _loc3_;
      }
      
      private function §5214238786238799123423632234§() : void
      {
         if(this.§set catch catch§[0] != null)
         {
            this.§set catch catch§[0].dispose();
            this.§set catch catch§[0] = null;
         }
         if(this.§set catch catch§[1] != null)
         {
            this.§set catch catch§[1].dispose();
            this.§set catch catch§[1] = null;
         }
      }
   }
}

