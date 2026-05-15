package alternativa.tanks.services.mipmapping
{
   import alternativa.utils.TextureMaterialRegistry;
   
   public interface MipMappingService
   {
      
      function setMipMapping(param1:Boolean) : void;
      
      function isMipMappingEnabled() : Boolean;
      
      function addMaterialRegistry(param1:TextureMaterialRegistry) : void;
      
      function toggleMipMapping() : void;
   }
}

