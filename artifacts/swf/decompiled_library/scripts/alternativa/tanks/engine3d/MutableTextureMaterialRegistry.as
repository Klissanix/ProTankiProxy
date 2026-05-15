package alternativa.tanks.engine3d
{
   import alternativa.engine3d.materials.TextureMaterial;
   import flash.display.BitmapData;
   import flash.utils.setTimeout;
   
   public class MutableTextureMaterialRegistry extends TextureMaterialRegistryBase
   {
      
      private var §extends var dynamic§:§521423112262311239123423632234§;
      
      public function MutableTextureMaterialRegistry(param1:§set super§, param2:§521423112262311239123423632234§)
      {
         super(param1);
         this.§extends var dynamic§ = param2;
         param2.addTextureChangeHandler(this.e44f6eda);
      }
      
      private function e44f6eda() : void
      {
         setTimeout(forEachMaterial,0,this.c154737e);
      }
      
      private function c154737e(param1:TextureMaterial) : void
      {
         var _loc2_:MaterialEntry = getEntry(param1);
         param1.texture = this.§extends var dynamic§.getTexture(_loc2_.texture);
      }
      
      override protected function getTexture(param1:BitmapData, param2:Boolean) : BitmapData
      {
         return this.§extends var dynamic§.getTexture(param1,param2);
      }
   }
}

