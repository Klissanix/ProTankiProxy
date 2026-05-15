package §5214233075233088123423632234§
{
   import §521423106142310627123423632234§.AlertService;
   import §521423110272311040123423632234§.§5214232586232599123423632234§;
   import §521423110272311040123423632234§.§5214232991233004123423632234§;
   import §521423110272311040123423632234§.§case var break§;
   import §521423110272311040123423632234§.§const set final§;
   import §521423110272311040123423632234§.§function switch use§;
   import §5214232472232485123423632234§.§521423123222312335123423632234§;
   import §5214233785233798123423632234§.§5214235531235544123423632234§;
   import §5214235535235548123423632234§.§function throw§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import §case catch override§.§5214236909236922123423632234§;
   import §catch get§.§5214235648235661123423632234§;
   import §continue switch package§.§5214234555234568123423632234§;
   import §continue switch package§.§for var extends§;
   import §continue switch package§.§in catch var§;
   import §continue switch package§.§include package class§;
   import §continue switch package§.§var use true§;
   import §native package final§.§throw var static§;
   import §package for final§.§5214235239235252123423632234§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import services.contextmenu.ContextMenuService;
   import services.contextmenu.IContextMenuService;
   import §try const default§.§5214234011234024123423632234§;
   import utils.TimeFormatter;
   
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
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ContextMenuService.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return ContextMenuService.§5214236363236376123423632234§;
         });
         osgi.injectService(IAlertService,function(param1:Object):void
         {
            ContextMenuService.§break use do§ = IAlertService(param1);
         },function():IAlertService
         {
            return ContextMenuService.§break use do§;
         });
         osgi.injectService(IFriendActionService,function(param1:Object):void
         {
            ContextMenuService.§5214232180232193123423632234§ = IFriendActionService(param1);
         },function():IFriendActionService
         {
            return ContextMenuService.§5214232180232193123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            AlertService.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return AlertService.§5214236363236376123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            AlertService.display = IDisplay(param1);
         },function():IDisplay
         {
            return AlertService.display;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            AlertService.§with catch override§ = IBlurService(param1);
         },function():IBlurService
         {
            return AlertService.§with catch override§;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            AlertService.§5214238240238253123423632234§ = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return AlertService.§5214238240238253123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §5214236909236922123423632234§.§5214235917235930123423632234§ = IDisplay(param1);
         },function():IDisplay
         {
            return §5214236909236922123423632234§.§5214235917235930123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214235531235544123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214235531235544123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214235648235661123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214235648235661123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            §5214235648235661123423632234§.§with var try§ = PremiumService(param1);
         },function():PremiumService
         {
            return §5214235648235661123423632234§.§with var try§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §521423123222312335123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §521423123222312335123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            TimeFormatter.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return TimeFormatter.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214234555234568123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214234555234568123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §function switch use§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §function switch use§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214232586232599123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214232586232599123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §case var break§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §case var break§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §const set final§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §const set final§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214232991233004123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214232991233004123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §5214235239235252123423632234§.§5214235917235930123423632234§ = IDisplay(param1);
         },function():IDisplay
         {
            return §5214235239235252123423632234§.§5214235917235930123423632234§;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§5214233439233452123423632234§ = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return §5214235239235252123423632234§.§5214233439233452123423632234§;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§52142335623369123423632234§ = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return §5214235239235252123423632234§.§52142335623369123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §5214235239235252123423632234§.§5214236363236376123423632234§;
         });
         osgi.injectService(IOnlineNotifierService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§5214238546238559123423632234§ = IOnlineNotifierService(param1);
         },function():IOnlineNotifierService
         {
            return §5214235239235252123423632234§.§5214238546238559123423632234§;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§while for package§ = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return §5214235239235252123423632234§.§while for package§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §5214235239235252123423632234§.§return set get§;
         });
         osgi.injectService(IBlockUserService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§5214232378232391123423632234§ = IBlockUserService(param1);
         },function():IBlockUserService
         {
            return §5214235239235252123423632234§.§5214232378232391123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §5214235239235252123423632234§.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §5214235239235252123423632234§.§52142329523308123423632234§;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            §5214234011234024123423632234§.§while for package§ = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return §5214234011234024123423632234§.§while for package§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            §5214234011234024123423632234§.§use in§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return §5214234011234024123423632234§.§use in§;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            §5214234011234024123423632234§.§52142335623369123423632234§ = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return §5214234011234024123423632234§.§52142335623369123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §5214234011234024123423632234§.§5214235917235930123423632234§ = IDisplay(param1);
         },function():IDisplay
         {
            return §5214234011234024123423632234§.§5214235917235930123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §5214234011234024123423632234§.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §5214234011234024123423632234§.§52142329523308123423632234§;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            §5214234011234024123423632234§.§with var try§ = PremiumService(param1);
         },function():PremiumService
         {
            return §5214234011234024123423632234§.§with var try§;
         });
         osgi.injectService(ClanUserInfoService,function(param1:Object):void
         {
            §5214234011234024123423632234§.§5214234066234079123423632234§ = ClanUserInfoService(param1);
         },function():ClanUserInfoService
         {
            return §5214234011234024123423632234§.§5214234066234079123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §in catch var§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §in catch var§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §for var extends§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §for var extends§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §function throw§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §function throw§.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §include package class§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §include package class§.§5214236363236376123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §include package class§.§5214235917235930123423632234§ = IDisplay(param1);
         },function():IDisplay
         {
            return §include package class§.§5214235917235930123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §var use true§.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return §var use true§.§5214236363236376123423632234§;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

