package §5214236150236163123423632234§
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214231817231830123423632234§.§default with§;
   import §5214231817231830123423632234§.§static switch var§;
   import §5214238876238889123423632234§.§52142310523118123423632234§;
   import §5214238876238889123423632234§.§5214233651233664123423632234§;
   import §5214238876238889123423632234§.§52142384423857123423632234§;
   import §5214238876238889123423632234§.§try use continue§;
   import alternativa.osgi.OSGi;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class §else package import§ implements §throw var static§
   {
      
      public function §else package import§()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var modelRegistry:ModelRegistry;
         var osgi:OSGi = param1;
         osgi.injectService(ResourceRegistry,function(param1:Object):void
         {
            §52142384423857123423632234§.§for continue§ = ResourceRegistry(param1);
         },function():ResourceRegistry
         {
            return §52142384423857123423632234§.§for continue§;
         });
         osgi.injectService(IResourceLocalStorage,function(param1:Object):void
         {
            §5214233863233876123423632234§.§5214239595239608123423632234§ = IResourceLocalStorage(param1);
         },function():IResourceLocalStorage
         {
            return §5214233863233876123423632234§.§5214239595239608123423632234§;
         });
         osgi.injectService(IResourceLocalStorage,function(param1:Object):void
         {
            §default with§.§5214239595239608123423632234§ = IResourceLocalStorage(param1);
         },function():IResourceLocalStorage
         {
            return §default with§.§5214239595239608123423632234§;
         });
         osgi.injectService(ResourceRegistry,function(param1:Object):void
         {
            §static switch var§.§for continue§ = ResourceRegistry(param1);
         },function():ResourceRegistry
         {
            return §static switch var§.§for continue§;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegistry.registerAdapt(§try use continue§,§52142310523118123423632234§);
         modelRegistry.registerEvents(§try use continue§,§5214233651233664123423632234§);
         modelRegistry.add(new §52142384423857123423632234§());
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

