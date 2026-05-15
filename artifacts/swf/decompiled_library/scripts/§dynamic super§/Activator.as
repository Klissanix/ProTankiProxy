package §dynamic super§
{
   import §521423121922312205123423632234§.OnlineNotifierModel;
   import §5214231949231962123423632234§.UserNotifierModel;
   import §5214238291238304123423632234§.FriendsAcceptedNotificatorModel;
   import §5214239250239263123423632234§.FriendsAcceptedModel;
   import §5214239974239987123423632234§.FriendsIncomingModel;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.newbieservice.NewbieUserServiceImpl;
   import §if catch null§.NotificationEnabledModel;
   import §implements set include§.FriendsIncomingNotificatorModel;
   import §native package final§.§throw var static§;
   import §override set with§.RankNotifierModel;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.FriendsModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck.UidCheckModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.BlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.BlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoServiceImpl;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.DialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.BubbleHelper;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.IBattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import §static catch var§.PremiumNotifierModel;
   import §super package true§.UidNotifierModel;
   import §switch const§.FriendsOutgoingModel;
   import §throw package function§.BattleLinkData;
   import §throw package function§.BattleNotifierModel;
   import §var var with§.DialogWindow;
   
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
         osgi.injectService(IFriendActionService,function(param1:Object):void
         {
            FriendsModel.§5214232180232193123423632234§ = IFriendActionService(param1);
         },function():IFriendActionService
         {
            return FriendsModel.§5214232180232193123423632234§;
         });
         osgi.injectService(LogService,function(param1:Object):void
         {
            FriendsIncomingNotificatorModel.§5214234621234634123423632234§ = LogService(param1);
         },function():LogService
         {
            return FriendsIncomingNotificatorModel.§5214234621234634123423632234§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            FriendsIncomingNotificatorModel.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return FriendsIncomingNotificatorModel.§5214237545237558123423632234§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            FriendsOutgoingModel.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return FriendsOutgoingModel.§5214237545237558123423632234§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            FriendsAcceptedNotificatorModel.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return FriendsAcceptedNotificatorModel.§5214237545237558123423632234§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            FriendsIncomingModel.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return FriendsIncomingModel.§5214237545237558123423632234§;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            FriendsAcceptedModel.§5214237545237558123423632234§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return FriendsAcceptedModel.§5214237545237558123423632234§;
         });
         osgi.injectService(IBattleInviteService,function(param1:Object):void
         {
            NotificationEnabledModel.§5214233439233452123423632234§ = IBattleInviteService(param1);
         },function():IBattleInviteService
         {
            return NotificationEnabledModel.§5214233439233452123423632234§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            PremiumNotifierModel.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return PremiumNotifierModel.§52142329523308123423632234§;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            PremiumNotifierModel.§with var try§ = PremiumService(param1);
         },function():PremiumService
         {
            return PremiumNotifierModel.§with var try§;
         });
         osgi.injectService(IOnlineNotifierService,function(param1:Object):void
         {
            OnlineNotifierModel.§5214238546238559123423632234§ = IOnlineNotifierService(param1);
         },function():IOnlineNotifierService
         {
            return OnlineNotifierModel.§5214238546238559123423632234§;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            BattleLinkData.§while for package§ = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return BattleLinkData.§while for package§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            BattleLinkData.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return BattleLinkData.§52142329523308123423632234§;
         });
         osgi.injectService(IBattleNotifierService,function(param1:Object):void
         {
            BattleNotifierModel.§use use with§ = IBattleNotifierService(param1);
         },function():IBattleNotifierService
         {
            return BattleNotifierModel.§use use with§;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            UserNotifierModel.§while for package§ = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return UserNotifierModel.§while for package§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            UserNotifierModel.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return UserNotifierModel.§52142329523308123423632234§;
         });
         osgi.injectService(FullscreenStateService,function(param1:Object):void
         {
            AlertUtils.§521423422355123423632234§ = FullscreenStateService(param1);
         },function():FullscreenStateService
         {
            return AlertUtils.§521423422355123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BattleFormatUtil.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BattleFormatUtil.§5214236363236376123423632234§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            BubbleHelper.§5214236363236376123423632234§ = ILocaleService(param1);
         },function():ILocaleService
         {
            return BubbleHelper.§5214236363236376123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            BubbleHelper.display = IDisplay(param1);
         },function():IDisplay
         {
            return BubbleHelper.display;
         });
         osgi.injectService(IFriendInfoService,function(param1:Object):void
         {
            BattleInviteService.§use in§ = IFriendInfoService(param1);
         },function():IFriendInfoService
         {
            return BattleInviteService.§use in§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            BattleInviteService.§return set get§ = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return BattleInviteService.§return set get§;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            BlurService.§5214233469233482123423632234§ = IHelpService(param1);
         },function():IHelpService
         {
            return BlurService.§5214233469233482123423632234§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            BlockUserService.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return BlockUserService.§if catch include§;
         });
         osgi.injectService(ModelRegistry,function(param1:Object):void
         {
            UserInfoService.modelRegistry = ModelRegistry(param1);
         },function():ModelRegistry
         {
            return UserInfoService.modelRegistry;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            ClanUserInfoServiceImpl.§52142329523308123423632234§ = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return ClanUserInfoServiceImpl.§52142329523308123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            DialogWindow.display = IDisplay(param1);
         },function():IDisplay
         {
            return DialogWindow.display;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            DialogWindow.§5214239382239395123423632234§ = IDialogsService(param1);
         },function():IDialogsService
         {
            return DialogWindow.§5214239382239395123423632234§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            DialogsService.display = IDisplay(param1);
         },function():IDisplay
         {
            return DialogsService.display;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            DialogsService.§with catch override§ = IBlurService(param1);
         },function():IBlurService
         {
            return DialogsService.§with catch override§;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            DialogsService.§5214238240238253123423632234§ = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return DialogsService.§5214238240238253123423632234§;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            DialogsService.§521423101112310124123423632234§ = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return DialogsService.§521423101112310124123423632234§;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            NewbieUserServiceImpl.§if catch include§ = IStorageService(param1);
         },function():IStorageService
         {
            return NewbieUserServiceImpl.§if catch include§;
         });
         modelRegistry = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegistry.add(new FriendsModel());
         modelRegistry.add(new FriendsIncomingNotificatorModel());
         modelRegistry.add(new FriendsOutgoingModel());
         modelRegistry.add(new FriendsAcceptedNotificatorModel());
         modelRegistry.add(new FriendsIncomingModel());
         modelRegistry.add(new FriendsAcceptedModel());
         modelRegistry.add(new NotificationEnabledModel());
         modelRegistry.add(new UidNotifierModel());
         modelRegistry.add(new PremiumNotifierModel());
         modelRegistry.add(new OnlineNotifierModel());
         modelRegistry.add(new BattleNotifierModel());
         modelRegistry.add(new RankNotifierModel());
         modelRegistry.add(new UidCheckModel());
         modelRegistry.add(new UserNotifierModel());
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

