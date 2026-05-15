package alternativa.utils
{
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.materials.AnimatedPaintMaterial;
   import alternativa.tanks.materials.PaintMaterial;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   import §super catch default§.§import for default§;
   
   public interface TextureMaterialRegistry
   {
      
      function getMaterialFromAtf(param1:ByteArray, param2:Boolean = true) : TextureMaterial;
      
      function setMipMapping(param1:Boolean) : void;
      
      function clear() : void;
      
      function getPaint(param1:§include catch with§, param2:§import for default§) : PaintMaterial;
      
      function getMaterial(param1:BitmapData, param2:Boolean = true, param3:Boolean = true) : TextureMaterial;
      
      function addMaterial(param1:TextureMaterial) : void;
      
      function releaseMaterial(param1:TextureMaterial) : void;
      
      function getAnimatedPaint(param1:§if finally catch§, param2:§import for default§) : AnimatedPaintMaterial;
   }
}

