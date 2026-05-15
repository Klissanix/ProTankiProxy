package §for package package§
{
   import §521423129512312964123423632234§.§5214231824231837123423632234§;
   import §521423129512312964123423632234§.§case set with§;
   import §521423129512312964123423632234§.§try for class§;
   import §521423129512312964123423632234§.§while const throw§;
   import §521423129512312964123423632234§.§with const var§;
   import §5214233087233100123423632234§.§5214231876231889123423632234§;
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import §5214233087233100123423632234§.§function catch package§;
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233087233100123423632234§.§super var switch§;
   import §5214235655235668123423632234§.§5214233634233647123423632234§;
   import §5214237837237850123423632234§.§set set implements§;
   import alternativa.osgi.OSGi;
   import §dynamic var default§.MessageBoxService;
   import flash.utils.setTimeout;
   import §in switch throw§.GameTypeRegistryImpl;
   import §in switch throw§.ModelsRegistryImpl;
   import §in switch throw§.ResourceRegistryImpl;
   import §in switch throw§.SpaceRegistryImpl;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.registry.§override for break§;
   import platform.client.fp10.core.service.IResourceTimer;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class ClientActivator implements §throw var static§
   {
      
      private var osgi:OSGi;
      
      public function ClientActivator()
      {
         super();
      }
      
      private function a762b07f() : void
      {
         this.osgi.registerService(§override for break§,new GameTypeRegistryImpl());
         this.osgi.registerService(SpaceRegistry,new SpaceRegistryImpl());
         this.osgi.registerService(ModelRegistry,new ModelsRegistryImpl(this.osgi));
         this.osgi.registerServiceMulti([IResourceLocalStorage,§case set with§],new §with const var§(this.osgi));
         this.osgi.registerService(§try for class§,new §while const throw§(this.osgi));
         this.osgi.registerServiceMulti([ResourceRegistry,§set set implements§],new ResourceRegistryImpl(this.osgi));
         this.osgi.registerService(IErrorMessageService,new MessageBoxService(this.osgi));
         var _loc1_:§5214233634233647123423632234§ = §5214233634233647123423632234§(this.osgi.getService(§5214233634233647123423632234§));
         this.osgi.registerService(IResourceTimer,new §5214231824231837123423632234§(this.osgi));
      }
      
      private function b192b280() : void
      {
      }
      
      private function b75c8b78() : void
      {
         this.b192b280();
      }
      
      public function stop(param1:OSGi) : void
      {
      }
      
      private function b25fce32() : void
      {
         var _loc1_:ResourceRegistry = ResourceRegistry(this.osgi.getService(ResourceRegistry));
         _loc1_.registerTypeClasses(1,§5214231876231889123423632234§);
         _loc1_.registerTypeClasses(10,§include catch with§);
         _loc1_.registerTypeClasses(13,§super var switch§);
         _loc1_.registerTypeClasses(11,§if finally catch§);
         _loc1_.registerTypeClasses(4,§5214237988238001123423632234§);
         _loc1_.registerTypeClasses(23,§function catch package§);
      }
      
      public function start(param1:OSGi) : void
      {
         this.osgi = param1;
         this.a762b07f();
         this.b25fce32();
         setTimeout(this.b75c8b78,0);
      }
   }
}

