package §final package final§
{
   import §521423133592313372123423632234§.DateFormatter;
   import §5214234069234082123423632234§.TipItemModel;
   import §5214234069234082123423632234§.TipsModel;
   import §5214237056237069123423632234§.SocialNetworkNameUtils;
   import §5214238968238981123423632234§.LobbyLayoutNotifyModel;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import §else switch package§.ServerHaltModel;
   import §native package final§.§throw var static§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.flash.commons.models.layout.LobbyLayoutModel;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.notification.Notification;
   import projects.tanks.clients.flash.commons.services.notification.sound.INotificationSoundService;
   import projects.tanks.clients.flash.commons.services.serverhalt.IServerHaltService;
   import projects.tanks.clients.flash.commons.services.timeunit.TimeUnitService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §super var do§.LobbyLayoutService;
   import §throw package switch§.BattleLinkActivatorModel;
   import §var for each§.§521423111222311135123423632234§;
   import §var for each§.ColoringModel;
   import §var for each§.IColoringAdapt;
   import §var for each§.IColoringEvents;
   import §with switch true§.AlertModel;
   
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
         var modelRegistry:ModelRegistry;
         var osgi:OSGi = param1;
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            Notification.display = IDisplay(param1);
         },function():IDisplay
         {
            return Notification.display;
         });
         osgi.injectService(INotificationSoundService,function(param1:Object):void
         {
            Notification.§null class§ = INotificationSoundService(param1);
         },function():INotificationSoundService
         {
            return Notification.§null class§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleLinkActivatorService.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleLinkActivatorService.§continue for final§;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            BattleLinkActivatorService.§with catch override§ = IBlurService(param1);
         },function():IBlurService
         {
            return BattleLinkActivatorService.§with catch override§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleLinkActivatorService.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleLinkActivatorService.§5214236363236376123423632234§;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            BattleLinkActivatorService.§5214238240238253123423632234§ = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return BattleLinkActivatorService.§5214238240238253123423632234§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleLinkActivatorService.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return BattleLinkActivatorService.§break use do§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BattleLinkActivatorService.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return BattleLinkActivatorService.§if catch include§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            BattleLinkActivatorService.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return BattleLinkActivatorService.§return set get§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleLinkActivatorService.§true switch package§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleLinkActivatorService.§true switch package§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            LobbyLayoutService.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return LobbyLayoutService.§break use do§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            LobbyLayoutService.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return LobbyLayoutService.§if catch include§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            LobbyLayoutService.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return LobbyLayoutService.§5214236363236376123423632234§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            LobbyLayoutService.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return LobbyLayoutService.§return set get§;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            LobbyLayoutService.§5214238240238253123423632234§ = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return LobbyLayoutService.§5214238240238253123423632234§;
         });
         osgi.injectService(ModelRegistry,function(param1:Object):void
         {
            LobbyLayoutService.modelRegistry = ModelRegistry(param1);
         },function():ModelRegistry
         {
            return LobbyLayoutService.modelRegistry;
         });
         osgi.injectService(ClanUserInfoService,function(param1:Object):void
         {
            LobbyLayoutService.§5214234066234079123423632234§ = ClanUserInfoService(param1);
         },function():ClanUserInfoService
         {
            return LobbyLayoutService.§5214234066234079123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            SocialNetworkNameUtils.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return SocialNetworkNameUtils.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            DateFormatter.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return DateFormatter.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            TimeUnitService.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return TimeUnitService.§5214236363236376123423632234§;
         });
         osgi.injectService(IServerHaltService,function(param1:Object):void
         {
            ServerHaltModel.§5214233905233918123423632234§ = IServerHaltService(param1);
         },function():IServerHaltService
         {
            return ServerHaltModel.§5214233905233918123423632234§;
         });
         osgi.injectService(IBattleLinkActivatorService,function(param1:Object):void
         {
            BattleLinkActivatorModel.§5214231686231699123423632234§ = IBattleLinkActivatorService(param1);
         },function():IBattleLinkActivatorService
         {
            return BattleLinkActivatorModel.§5214231686231699123423632234§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            BattleLinkActivatorModel.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return BattleLinkActivatorModel.§continue for final§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            BattleLinkActivatorModel.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return BattleLinkActivatorModel.§break use do§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleLinkActivatorModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleLinkActivatorModel.§5214236363236376123423632234§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BattleLinkActivatorModel.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return BattleLinkActivatorModel.§if catch include§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleLinkActivatorModel.§true switch package§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleLinkActivatorModel.§true switch package§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            AlertModel.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return AlertModel.§break use do§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            AlertModel.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return AlertModel.§5214236363236376123423632234§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            LobbyLayoutNotifyModel.§continue for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return LobbyLayoutNotifyModel.§continue for final§;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            LobbyLayoutNotifyModel.§521423101112310124123423632234§ = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return LobbyLayoutNotifyModel.§521423101112310124123423632234§;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            TipsModel.loader = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return TipsModel.loader;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            TipItemModel.loader = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return TipItemModel.loader;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegistry.registerAdapt(§521423111222311135123423632234§,IColoringAdapt);
         modelRegistry.registerEvents(§521423111222311135123423632234§,IColoringEvents);
         modelRegistry.add(new ServerHaltModel());
         modelRegistry.add(new BattleLinkActivatorModel());
         modelRegistry.add(new AlertModel());
         modelRegistry.add(new ColoringModel());
         modelRegistry.add(new LobbyLayoutModel());
         modelRegistry.add(new LobbyLayoutNotifyModel());
         modelRegistry.add(new TipsModel());
         modelRegistry.add(new TipItemModel());
      }
   }
}

