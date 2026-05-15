package §5214236766236779123423632234§
{
   import §521423119372311950123423632234§.HardwareColorTransformService;
   import §521423119372311950123423632234§.SoftwareColorTransformService;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventDispatcherImpl;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.battle.objects.tank.skintexturesregistry.DefaultTankSkinTextureRegistry;
   import alternativa.tanks.battle.objects.tank.skintexturesregistry.TankSkinTextureRegistry;
   import alternativa.tanks.engine3d.DefaultColorCorrectedTextureRegistry;
   import alternativa.tanks.engine3d.DefaultEffectsMaterialRegistry;
   import alternativa.tanks.engine3d.DefaultTextureMaterialFactory;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.MutableTextureMaterialRegistry;
   import alternativa.tanks.engine3d.MutableTextureRegistryCleaner;
   import alternativa.tanks.engine3d.TextureMaterialRegistryCleaner;
   import alternativa.tanks.engine3d.§implements for finally§;
   import alternativa.tanks.models.battle.battlefield.BattleUnloadEvent;
   import alternativa.tanks.models.tank.pause.ITankPause;
   import alternativa.tanks.models.tank.pause.TankPauseModel;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battlegui.BattleGUIServiceImpl;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.battleinput.BattleInputServiceImpl;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import alternativa.tanks.services.battlereadiness.BattleReadinessServiceImpl;
   import alternativa.tanks.services.bonusregion.BonusRegionService;
   import alternativa.tanks.services.bonusregion.IBonusRegionService;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import alternativa.tanks.services.initialeffects.IInitialEffectsService;
   import alternativa.tanks.services.initialeffects.InitialEffectsService;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.tanks.services.lightingeffects.LightingEffectsService;
   import alternativa.tanks.services.mipmapping.MipMappingService;
   import alternativa.tanks.services.ping.PingService;
   import alternativa.tanks.services.ping.PingServiceImpl;
   import alternativa.tanks.services.spectatorservice.SpectatorService;
   import alternativa.tanks.services.spectatorservice.SpectatorServiceImpl;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import alternativa.tanks.services.tankregistry.TankUsersRegistryImpl;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingInputManagerImpl;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.services.targeting.TargetingModeServiceImpl;
   import alternativa.tanks.services.validator.DataValidator;
   import alternativa.tanks.services.validator.DataValidatorImpl;
   import alternativa.utils.TextureMaterialRegistry;
   import §for false§.DefaultMipMappingService;
   import §native package final§.§throw var static§;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import §super catch default§.§switch switch if§;
   
   public class §super set use§ implements §throw var static§
   {
      
      private var §521423123322312345123423632234§:OSGi;
      
      public function §super set use§()
      {
         super();
      }
      
      private static function §false const with§(param1:Number) : int
      {
         return param1 / 1048576;
      }
      
      private function §52142312623139123423632234§(param1:Class, param2:§if use default§) : void
      {
         var _loc3_:BattleEventDispatcher = BattleEventDispatcher(this.§521423123322312345123423632234§.getService(BattleEventDispatcher));
         _loc3_.addBattleEventListener(param1,param2);
      }
      
      private function §5214235032235045123423632234§() : void
      {
         var _loc1_:DefaultEffectsMaterialRegistry = new DefaultEffectsMaterialRegistry();
         this.§521423123322312345123423632234§.registerService(EffectsMaterialRegistry,_loc1_);
         this.§use for include§(_loc1_);
         this.§52142312623139123423632234§(BattleUnloadEvent,new TextureMaterialRegistryCleaner(_loc1_));
      }
      
      private function §5214234074234087123423632234§() : void
      {
         this.§521423123322312345123423632234§.registerService(MipMappingService,new DefaultMipMappingService());
      }
      
      private function §override package continue§() : void
      {
         var _loc1_:§implements for finally§ = §implements for finally§(this.§521423123322312345123423632234§.getService(§implements for finally§));
         var _loc2_:MutableTextureMaterialRegistry = new MutableTextureMaterialRegistry(new DefaultTextureMaterialFactory(),_loc1_);
         this.§521423123322312345123423632234§.registerService(TextureMaterialRegistry,_loc2_);
         this.§use for include§(_loc2_);
         this.§52142312623139123423632234§(BattleUnloadEvent,new TextureMaterialRegistryCleaner(_loc2_));
      }
      
      public function start(param1:OSGi) : void
      {
         this.§521423123322312345123423632234§ = param1;
         param1.registerService(IInitialEffectsService,new InitialEffectsService());
         var _loc2_:BattleEventDispatcher = new BattleEventDispatcherImpl();
         param1.registerService(BattleEventDispatcher,_loc2_);
         param1.registerService(BattleGUIService,new BattleGUIServiceImpl());
         param1.registerService(PingService,new PingServiceImpl());
         param1.registerService(ILightingEffectsService,new LightingEffectsService());
         param1.registerService(ITankPause,new TankPauseModel());
         param1.registerService(TankUsersRegistry,new TankUsersRegistryImpl());
         param1.registerService(BattleReadinessService,new BattleReadinessServiceImpl());
         param1.registerService(BattleInputService,new BattleInputServiceImpl(IDisplay(param1.getService(IDisplay)).stage));
         param1.registerService(SpectatorService,new SpectatorServiceImpl());
         param1.registerService(TargetingInputManager,new TargetingInputManagerImpl());
         param1.registerService(TargetingModeService,new TargetingModeServiceImpl());
         param1.registerService(IBonusRegionService,new BonusRegionService(_loc2_));
         this.§5214234074234087123423632234§();
         this.§static var default§();
         this.§set final§();
         this.§5214235032235045123423632234§();
         this.§override package continue§();
         this.§class case§();
         param1.registerService(DataValidator,new DataValidatorImpl(param1));
      }
      
      private function §use for include§(param1:TextureMaterialRegistry) : void
      {
         var _loc2_:MipMappingService = MipMappingService(this.§521423123322312345123423632234§.getService(MipMappingService));
         _loc2_.addMaterialRegistry(param1);
      }
      
      private function §static var default§() : void
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         if(!projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ || Boolean(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§))
         {
            this.§521423123322312345123423632234§.registerService(ColorTransformService,new SoftwareColorTransformService());
         }
         else
         {
            this.§521423123322312345123423632234§.registerService(ColorTransformService,new HardwareColorTransformService());
         }
      }
      
      private function §set final§() : void
      {
         var _loc1_:§implements for finally§ = new DefaultColorCorrectedTextureRegistry();
         this.§521423123322312345123423632234§.registerService(§implements for finally§,_loc1_);
         this.§52142312623139123423632234§(BattleUnloadEvent,new MutableTextureRegistryCleaner(_loc1_));
         var _loc2_:ColorTransformService = ColorTransformService(this.§521423123322312345123423632234§.getService(ColorTransformService));
         _loc2_.addColorTransformer(_loc1_);
      }
      
      private function §class case§() : void
      {
         var _loc1_:TankSkinTextureRegistry = new DefaultTankSkinTextureRegistry();
         this.§521423123322312345123423632234§.registerService(TankSkinTextureRegistry,_loc1_);
         this.§52142312623139123423632234§(BattleUnloadEvent,new §switch switch if§(_loc1_));
      }
      
      private function §5214231589231602123423632234§() : void
      {
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

