package §521423107762310789123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.loading.DispatcherModel;
   
   public class Activator implements §throw var static§
   {
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var modelRegistry:ModelRegistry;
         var osgi:OSGi = param1;
         osgi.injectService(LogService,function(param1:Object):void
         {
            DispatcherModel.§5214234621234634123423632234§ = LogService(param1);
         },function():LogService
         {
            return DispatcherModel.§5214234621234634123423632234§;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegistry.add(new DispatcherModel());
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

