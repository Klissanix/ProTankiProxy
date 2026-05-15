package §for false§
{
   import alternativa.tanks.services.mipmapping.MipMappingService;
   import alternativa.utils.TextureMaterialRegistry;
   
   public class DefaultMipMappingService implements MipMappingService
   {
      
      private var §521423101582310171123423632234§:Boolean;
      
      private var §catch var final§:Vector.<TextureMaterialRegistry> = new Vector.<TextureMaterialRegistry>();
      
      public function DefaultMipMappingService()
      {
         super();
      }
      
      public function toggleMipMapping() : void
      {
         this.setMipMapping(!this.§521423101582310171123423632234§);
      }
      
      public function addMaterialRegistry(param1:TextureMaterialRegistry) : void
      {
         this.§catch var final§[§catch var final§.length] = param1;
         param1.setMipMapping(this.§521423101582310171123423632234§);
      }
      
      public function setMipMapping(param1:Boolean) : void
      {
         if(this.§521423101582310171123423632234§ != param1)
         {
            this.§521423101582310171123423632234§ = param1;
            for each(var _loc2_ in this.§catch var final§)
            {
               _loc2_.setMipMapping(param1);
            }
         }
      }
      
      public function isMipMappingEnabled() : Boolean
      {
         return this.§521423101582310171123423632234§;
      }
   }
}

