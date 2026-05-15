package §override null§
{
   import §5214233949233962123423632234§.FullscreenServiceImpl;
   import §5214233949233962123423632234§.FullscreenStateServiceImpl;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import §native package final§.§throw var static§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.notification.NotificationService;
   import projects.tanks.clients.flash.commons.services.notification.sound.INotificationSoundService;
   import projects.tanks.clients.flash.commons.services.notification.sound.NotificationSoundService;
   import projects.tanks.clients.flash.commons.services.serverhalt.IServerHaltService;
   import projects.tanks.clients.flash.commons.services.serverhalt.ServerHaltService;
   import projects.tanks.clients.flash.commons.services.timeunit.ITimeUnitService;
   import projects.tanks.clients.flash.commons.services.timeunit.TimeUnitService;
   import projects.tanks.clients.flash.commons.services.validate.IValidateService;
   import projects.tanks.clients.flash.commons.services.validate.ValidateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.§5214234785234798123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §super var do§.LobbyLayoutService;
   
   public class Activator implements §throw var static§
   {
      
      public function Activator()
      {
         super();
      }
      
      public function stop(param1:OSGi) : void
      {
      }
      
      public function start(param1:OSGi) : void
      {
         var _loc2_:ILobbyLayoutService = new LobbyLayoutService();
         param1.registerService(ILobbyLayoutService,_loc2_);
         param1.registerService(§5214234785234798123423632234§,_loc2_);
         param1.registerService(INotificationService,new NotificationService(_loc2_));
         param1.registerService(IServerHaltService,new ServerHaltService());
         param1.registerService(IValidateService,new ValidateService());
         param1.registerService(INotificationSoundService,new NotificationSoundService());
         param1.registerService(ITimeUnitService,new TimeUnitService());
         var _loc4_:IDisplay = IDisplay(OSGi.getInstance().getService(IDisplay));
         var _loc3_:FullscreenServiceImpl = new FullscreenServiceImpl(_loc4_);
         param1.registerService(FullscreenService,_loc3_);
         param1.registerService(FullscreenStateService,new FullscreenStateServiceImpl(_loc4_,_loc3_.isAvailable()));
      }
   }
}

