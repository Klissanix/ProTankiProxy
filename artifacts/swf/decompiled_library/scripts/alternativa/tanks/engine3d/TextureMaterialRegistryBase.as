package alternativa.tanks.engine3d
{
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.materials.AnimatedPaintMaterial;
   import alternativa.tanks.materials.PaintMaterial;
   import alternativa.utils.TextureMaterialRegistry;
   import alternativa.utils.clearDictionary;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import §super catch default§.§import for default§;
   
   public class TextureMaterialRegistryBase implements TextureMaterialRegistry
   {
      
      private static const §override catch false§:String = "-nomips";
      
      private var §true finally for§:CachedEntityStat = new CachedEntityStat();
      
      private var §var var const§:§set super§;
      
      private var §521423101582310171123423632234§:Boolean;
      
      private const materials:Vector.<TextureMaterial> = new Vector.<TextureMaterial>();
      
      private const §521423130172313030123423632234§:Dictionary = new Dictionary();
      
      private var §5214239534239547123423632234§:Dictionary = new Dictionary();
      
      private const §5214235722235735123423632234§:Dictionary = new Dictionary();
      
      public function TextureMaterialRegistryBase(param1:§set super§)
      {
         super();
         this.§var var const§ = param1;
      }
      
      public function releaseMaterial(param1:TextureMaterial) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:MaterialEntry = this.§5214235722235735123423632234§[param1];
         if(_loc2_ != null)
         {
            ++this.§true finally for§.§with set function§;
            --_loc2_.§if switch false§;
            if(_loc2_.§if switch false§ == 0)
            {
               this.b2fca866(_loc2_);
            }
         }
      }
      
      private function ca82b72() : void
      {
         if(!this.§521423101582310171123423632234§)
         {
            this.§521423101582310171123423632234§ = true;
            this.forEachMaterial(this.disposeResource);
            this.forEachMaterial(this.c1f7c6e6);
         }
      }
      
      public function getPaint(param1:§include catch with§, param2:§import for default§) : PaintMaterial
      {
         var _loc3_:MaterialEntry = null;
         ++this.§true finally for§.§class set continue§;
         var _loc8_:§include catch with§ = param1;
         var _loc5_:String = _loc8_.§5214239618239631123423632234§.id + " " + param2.§catch set dynamic§;
         if(_loc5_ in this.§521423130172313030123423632234§)
         {
            _loc3_ = this.§521423130172313030123423632234§[_loc5_];
            ++_loc3_.§if switch false§;
            return _loc3_.material as PaintMaterial;
         }
         var _loc6_:BitmapData = param2.§521423119412311954123423632234§;
         var _loc7_:BitmapData = param2.§521423134562313469123423632234§;
         var _loc9_:GPUCapabilities = GPUCapabilities;
         if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ || Boolean(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§))
         {
            _loc6_ = getTexture(_loc6_,true);
            _loc7_ = getTexture(_loc7_,true);
         }
         var _loc4_:PaintMaterial = new PaintMaterial(param1.data,_loc6_,_loc7_,this.§521423101582310171123423632234§ ? 2 : 0);
         _loc4_.resolution = 4;
         _loc3_ = this.a3c5e47(_loc5_,_loc4_);
         ++_loc3_.§if switch false§;
         this.materials[materials.length] = _loc4_;
         ++this.§true finally for§.§5214237979237992123423632234§;
         return _loc4_;
      }
      
      private function f73a668e(param1:BitmapData, param2:Boolean, param3:Boolean = true) : MaterialEntry
      {
         var _loc5_:TextureMaterial = null;
         var _loc4_:MaterialEntry = this.§521423130172313030123423632234§[param1];
         if(_loc4_ == null)
         {
            _loc5_ = this.d1669162(param1,param2,param3);
            if(!param3)
            {
               _loc5_.name = "-nomips";
            }
            _loc4_ = this.d370faf8(param1,_loc5_);
         }
         return _loc4_;
      }
      
      private function c1f7c6e6(param1:TextureMaterial) : void
      {
         if(param1.name != "-nomips")
         {
            param1.mipMapping = 2;
         }
         else
         {
            param1.mipMapping = 0;
         }
      }
      
      private function e6e53800(param1:TextureMaterial) : void
      {
         param1.mipMapping = 0;
      }
      
      public function clear() : void
      {
         this.forEachMaterial(this.c44aa25e);
         this.materials.length = 0;
         clearDictionary(this.§521423130172313030123423632234§);
         clearDictionary(this.§5214235722235735123423632234§);
         clearDictionary(this.§5214239534239547123423632234§);
         this.§true finally for§.clear();
      }
      
      public function setMipMapping(param1:Boolean) : void
      {
         if(this.§521423101582310171123423632234§ != param1)
         {
            if(param1)
            {
               this.ca82b72();
            }
            else
            {
               this.a6e5d6ae();
            }
         }
      }
      
      public function getMaterialStat() : CachedEntityStat
      {
         return this.§true finally for§;
      }
      
      private function d370faf8(param1:BitmapData, param2:TextureMaterial) : MaterialEntry
      {
         var _loc3_:MaterialEntry = new MaterialEntry(param1,param2);
         this.§521423130172313030123423632234§[param1] = _loc3_;
         this.§5214235722235735123423632234§[param2] = _loc3_;
         return _loc3_;
      }
      
      public function getMaterialFromAtf(param1:ByteArray, param2:Boolean = true) : TextureMaterial
      {
         var _loc3_:TextureMaterial = null;
         if(param1 in this.§5214239534239547123423632234§)
         {
            _loc3_ = this.§5214239534239547123423632234§[param1];
         }
         else
         {
            _loc3_ = new TextureMaterial();
            _loc3_.mipMapping = this.§521423101582310171123423632234§ ? 2 : 0;
            _loc3_.textureATF = param1;
            if(!param2)
            {
               _loc3_.name = "-nomips";
            }
            this.materials[materials.length] = _loc3_;
         }
         return _loc3_;
      }
      
      public function getMaterial(param1:BitmapData, param2:Boolean = true, param3:Boolean = true) : TextureMaterial
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture is null");
         }
         ++this.§true finally for§.§class set continue§;
         var _loc4_:MaterialEntry = this.f73a668e(param1,param2,param3);
         ++_loc4_.§if switch false§;
         return _loc4_.material;
      }
      
      protected function getEntry(param1:TextureMaterial) : MaterialEntry
      {
         return this.§5214235722235735123423632234§[param1];
      }
      
      private function a6e5d6ae() : void
      {
         if(this.§521423101582310171123423632234§)
         {
            this.§521423101582310171123423632234§ = false;
            this.forEachMaterial(this.disposeResource);
            this.forEachMaterial(this.e6e53800);
         }
      }
      
      private function disposeResource(param1:TextureMaterial) : void
      {
         param1.disposeResource();
      }
      
      private function d1669162(param1:BitmapData, param2:Boolean, param3:Boolean) : TextureMaterial
      {
         var _loc4_:BitmapData = this.getTexture(param1,param2);
         var _loc5_:TextureMaterial = this.§var var const§.createTextureMaterial(_loc4_,this.§521423101582310171123423632234§ && param3);
         this.materials[materials.length] = _loc5_;
         ++this.§true finally for§.§5214237979237992123423632234§;
         return _loc5_;
      }
      
      protected function forEachMaterial(param1:Function) : void
      {
         for each(var _loc2_ in this.materials)
         {
            param1(_loc2_);
         }
      }
      
      private function b2fca866(param1:MaterialEntry) : void
      {
         ++this.§true finally for§.§native package override§;
         var _loc2_:TextureMaterial = param1.material;
         if(param1.§native catch throw§ in this.§521423130172313030123423632234§)
         {
            delete this.§521423130172313030123423632234§[param1.§native catch throw§];
         }
         delete this.§5214235722235735123423632234§[_loc2_];
         param1.material = null;
         var _loc3_:int = this.materials.indexOf(_loc2_);
         this.materials.removeAt(_loc3_);
         _loc2_.dispose();
      }
      
      protected function getTexture(param1:BitmapData, param2:Boolean) : BitmapData
      {
         throw new Error("Not implemented");
      }
      
      private function c44aa25e(param1:TextureMaterial) : void
      {
         param1.texture = null;
         param1.textureATF = null;
         param1.textureATFAlpha = null;
      }
      
      private function a3c5e47(param1:String, param2:TextureMaterial) : MaterialEntry
      {
         var _loc3_:MaterialEntry = new MaterialEntry(param1,param2);
         this.§521423130172313030123423632234§[param1] = _loc3_;
         this.§5214235722235735123423632234§[param2] = _loc3_;
         return _loc3_;
      }
      
      public function addMaterial(param1:TextureMaterial) : void
      {
         var _loc2_:MaterialEntry = this.d370faf8(null,param1);
         ++_loc2_.§if switch false§;
         this.§5214235722235735123423632234§[param1] = _loc2_;
         this.materials[materials.length] = param1;
      }
      
      public function getAnimatedPaint(param1:§if finally catch§, param2:§import for default§) : AnimatedPaintMaterial
      {
         var _loc4_:MaterialEntry = null;
         ++this.§true finally for§.§class set continue§;
         var _loc10_:§if finally catch§ = param1;
         var _loc7_:String = _loc10_.§5214239618239631123423632234§.id + " " + param2.§catch set dynamic§;
         if(_loc7_ in this.§521423130172313030123423632234§)
         {
            _loc4_ = this.§521423130172313030123423632234§[_loc7_];
            ++_loc4_.§if switch false§;
            return _loc4_.material as AnimatedPaintMaterial;
         }
         var _loc3_:int = param1.data.width / param1.§5214233118233131123423632234§;
         var _loc5_:int = param1.data.height / param1.§5214231432231445123423632234§;
         var _loc8_:BitmapData = param2.§521423119412311954123423632234§;
         var _loc9_:BitmapData = param2.§521423134562313469123423632234§;
         var _loc11_:GPUCapabilities = GPUCapabilities;
         if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ || Boolean(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§))
         {
            _loc8_ = getTexture(_loc8_,true);
            _loc9_ = getTexture(_loc9_,true);
         }
         var _loc6_:AnimatedPaintMaterial = new AnimatedPaintMaterial(param1.data,_loc8_,_loc9_,_loc3_,_loc5_,param1.§in for in§,param1.§get set var§,this.§521423101582310171123423632234§ ? 2 : 0);
         _loc4_ = this.a3c5e47(_loc7_,_loc6_);
         ++_loc4_.§if switch false§;
         this.materials[materials.length] = _loc6_;
         ++this.§true finally for§.§5214237979237992123423632234§;
         return _loc6_;
      }
   }
}

