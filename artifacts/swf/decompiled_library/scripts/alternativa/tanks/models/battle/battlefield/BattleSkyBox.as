package alternativa.tanks.models.battle.battlefield
{
   import §5214231816231829123423632234§.§true set catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.SkyBox;
   import alternativa.tanks.service.settings.ISettingsService;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class BattleSkyBox extends SkyBox
   {
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      private static const §5214235724235737123423632234§:int = 200000;
      
      private var §const for super§:§include catch with§;
      
      private var §52142327223285123423632234§:Boolean;
      
      public function BattleSkyBox(param1:§true set catch§, param2:Number)
      {
         var _loc4_:TextureMaterial = new TextureMaterial(param1.§5214231947231960123423632234§.data);
         var _loc7_:TextureMaterial = new TextureMaterial(param1.§5214238901238914123423632234§.data);
         var _loc8_:TextureMaterial = new TextureMaterial(param1.§5214239029239042123423632234§.data);
         var _loc6_:TextureMaterial = new TextureMaterial(param1.§function finally var§.data);
         var _loc3_:TextureMaterial = new TextureMaterial(param1.§false catch implements§.data);
         var _loc5_:TextureMaterial = new TextureMaterial(param1.§5214239715239728123423632234§.data);
         super(200000,_loc4_,_loc7_,_loc6_,_loc8_,_loc5_,_loc3_,0);
         §const for super§ = param1.§false catch implements§;
         §52142327223285123423632234§ = param2 == 0;
      }
      
      public function loadTop() : void
      {
         if(!§52142327223285123423632234§ || !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            return;
         }
         var _loc1_:TextureMaterial = getSide("top").material as TextureMaterial;
         if(_loc1_.textureResource == null)
         {
            _loc1_.texture = §const for super§.data;
         }
      }
      
      public function unloadTop() : void
      {
         if(!§52142327223285123423632234§ || !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            return;
         }
         var _loc1_:Face = getSide("top");
         if(TextureMaterial(_loc1_.material).textureResource != null)
         {
            _loc1_.material.dispose();
         }
         if(§521423998231011123423632234§.snowParticles && §521423998231011123423632234§.forceDisabledTankShadows)
         {
            _loc1_ = getSide("bottom");
            if(TextureMaterial(_loc1_.material).textureResource != null)
            {
               _loc1_.material.dispose();
            }
         }
      }
   }
}

