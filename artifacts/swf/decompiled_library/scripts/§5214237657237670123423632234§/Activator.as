package §5214237657237670123423632234§
{
   import alternativa.osgi.OSGi;
   import §function const break§.§521423125602312573123423632234§;
   import §function const break§.DescriptionModel;
   import §function const break§.IDescriptionAdapt;
   import §function const break§.IDescriptionEvents;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import §while finally finally§.§521423108722310885123423632234§;
   import §while finally finally§.TimePeriodAdapt;
   import §while finally finally§.TimePeriodEvents;
   import §while finally finally§.TimePeriodModel;
   
   public class Activator implements §throw var static§
   {
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var _loc2_:ModelRegistry = param1.getService(ModelRegistry) as ModelRegistry;
         _loc2_.registerAdapt(§521423108722310885123423632234§,TimePeriodAdapt);
         _loc2_.registerEvents(§521423108722310885123423632234§,TimePeriodEvents);
         _loc2_.registerAdapt(§521423125602312573123423632234§,IDescriptionAdapt);
         _loc2_.registerEvents(§521423125602312573123423632234§,IDescriptionEvents);
         _loc2_.add(new TimePeriodModel());
         _loc2_.add(new DescriptionModel());
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

