package alternativa.tanks.engine3d
{
   import alternativa.engine3d.materials.TextureResourcesRegistry;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.utils.TextureMaterialRegistry;
   
   public class TextureMaterialRegistryCleaner implements §if use default§
   {
      
      private var §package use false§:TextureMaterialRegistry;
      
      public function TextureMaterialRegistryCleaner(param1:TextureMaterialRegistry)
      {
         super();
         this.§package use false§ = param1;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§package use false§.clear();
         TextureResourcesRegistry.releaseTextureResources();
      }
   }
}

