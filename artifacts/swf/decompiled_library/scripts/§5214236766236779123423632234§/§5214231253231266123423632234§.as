package §5214236766236779123423632234§
{
   import §521423138092313822123423632234§.ExternalEntranceService;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.IEntranceServerFacade;
   import alternativa.tanks.service.IExternalEntranceService;
   import §native package final§.§throw var static§;
   
   public class §5214231253231266123423632234§ implements §throw var static§
   {
      
      public static var §521423123322312345123423632234§:OSGi;
      
      private var §5214239506239519123423632234§:§super catch while§;
      
      public function §5214231253231266123423632234§()
      {
         super();
      }
      
      public static function §5214238270238283123423632234§() : void
      {
         §521423123322312345123423632234§.unregisterService(IEntranceClientFacade);
      }
      
      public static function §return catch break§(param1:IEntranceServerFacade) : void
      {
         if(§521423123322312345123423632234§.getService(IEntranceServerFacade) != null)
         {
            §521423123322312345123423632234§.unregisterService(IEntranceServerFacade);
         }
         §521423123322312345123423632234§.registerService(IEntranceServerFacade,param1);
      }
      
      public static function §5214231154231167123423632234§() : void
      {
         §521423123322312345123423632234§.unregisterService(IEntranceServerFacade);
      }
      
      public static function §false package const§(param1:IEntranceClientFacade) : void
      {
         if(§521423123322312345123423632234§.getService(IEntranceClientFacade) != null)
         {
            §521423123322312345123423632234§.unregisterService(IEntranceClientFacade);
         }
         §521423123322312345123423632234§.registerService(IEntranceClientFacade,param1);
      }
      
      public function start(param1:OSGi) : void
      {
         §5214231253231266123423632234§.§521423123322312345123423632234§ = param1;
         param1.registerService(IExternalEntranceService,new ExternalEntranceService());
         this.§5214239506239519123423632234§ = new §super catch while§((param1.getService(IDisplay) as IDisplay).contentUILayer);
      }
      
      public function stop(param1:OSGi) : void
      {
         §5214231253231266123423632234§.§521423123322312345123423632234§ = null;
      }
   }
}

