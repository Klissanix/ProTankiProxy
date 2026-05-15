package alternativa.engine3d.materials
{
   import alternativa.gfx.core.BitmapTextureResource;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   
   public class TextureResourcesRegistry
   {
      
      public static var texture2Resource:Dictionary = new Dictionary();
      
      public function TextureResourcesRegistry()
      {
         super();
      }
      
      public static function getTextureResource(param1:BitmapData, param2:Boolean, param3:Boolean, param4:Boolean) : BitmapTextureResource
      {
         var _loc6_:BitmapTextureResource = null;
         if(param1 in texture2Resource)
         {
            _loc6_ = texture2Resource[param1];
            _loc6_.increaseReferencesCount();
            return _loc6_;
         }
         var _loc5_:BitmapTextureResource = new BitmapTextureResource(param1,param2,param3,param4);
         texture2Resource[param1] = _loc5_;
         return _loc5_;
      }
      
      public static function releaseTextureResources() : void
      {
         var _loc1_:BitmapTextureResource = null;
         for(var _loc2_ in texture2Resource)
         {
            _loc1_ = texture2Resource[_loc2_];
            _loc1_.forceDispose();
         }
      }
      
      public static function release(param1:BitmapData) : void
      {
         if(param1 in texture2Resource)
         {
            delete texture2Resource[param1];
         }
      }
   }
}

