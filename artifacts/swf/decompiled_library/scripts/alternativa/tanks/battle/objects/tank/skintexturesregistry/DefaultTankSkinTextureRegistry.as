package alternativa.tanks.battle.objects.tank.skintexturesregistry
{
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import §super catch default§.§import for default§;
   
   public class DefaultTankSkinTextureRegistry implements TankSkinTextureRegistry
   {
      
      private var textures:Dictionary = new Dictionary();
      
      public function DefaultTankSkinTextureRegistry()
      {
         super();
      }
      
      public function getTexture(param1:§import for default§, param2:BitmapData) : BitmapData
      {
         var _loc4_:Dictionary = this.e43b424c(param1);
         var _loc3_:TextureEntry = this.e4a88c75(param1,param2,_loc4_);
         ++_loc3_.§if switch false§;
         return _loc3_.texture;
      }
      
      private function e43b424c(param1:§import for default§) : Dictionary
      {
         var _loc2_:Dictionary = this.textures[param1.§catch set dynamic§];
         if(_loc2_ == null)
         {
            _loc2_ = new Dictionary();
            this.textures[param1.§catch set dynamic§] = _loc2_;
         }
         return _loc2_;
      }
      
      public function clear() : void
      {
         var _loc3_:int = 0;
         for each(var _loc2_ in this.textures)
         {
            for each(var _loc1_ in _loc2_)
            {
               _loc1_.texture.dispose();
               _loc3_++;
            }
         }
         this.textures = new Dictionary();
      }
      
      public function releaseTexture(param1:§import for default§, param2:BitmapData) : void
      {
         var _loc4_:Dictionary = this.textures[param1.§catch set dynamic§];
         if(_loc4_ == null)
         {
            return;
         }
         var _loc3_:TextureEntry = _loc4_[param2];
         if(_loc3_ == null)
         {
            return;
         }
         --_loc3_.§if switch false§;
         if(_loc3_.§if switch false§ == 0)
         {
            _loc3_.texture.dispose();
            delete _loc4_[param2];
         }
      }
      
      private function e4a88c75(param1:§import for default§, param2:BitmapData, param3:Dictionary) : TextureEntry
      {
         var _loc4_:TextureEntry = param3["colormap"];
         if(_loc4_ == null)
         {
            _loc4_ = new TextureEntry(param1.§521423131122313125123423632234§(param2));
            param3["colormap"] = _loc4_;
         }
         return _loc4_;
      }
   }
}

