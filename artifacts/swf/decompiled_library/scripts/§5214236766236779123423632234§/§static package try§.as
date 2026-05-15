package §5214236766236779123423632234§
{
   import §521423138092313822123423632234§.PasswordParamsService;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.bg.BackgroundService;
   import alternativa.tanks.bg.IBackgroundService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.loader.LoaderWindow;
   import alternativa.tanks.newbieservice.NewbieUserService;
   import alternativa.tanks.newbieservice.NewbieUserServiceImpl;
   import alternativa.tanks.service.IPasswordParamsService;
   import §native package final§.§throw var static§;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.BattleLinkActivatorService;
   import projects.tanks.clients.flash.commons.services.battlelinkactivator.IBattleLinkActivatorService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.BlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.BlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.DialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendActionService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.BattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.HelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.BattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.battle.IBattleNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.OnlineNotifierService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumServiceImpl;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.StorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   
   public class §static package try§ implements §throw var static§
   {
      
      public static var §521423123322312345123423632234§:OSGi;
      
      public function §static package try§()
      {
         super();
      }
      
      public function stop(param1:OSGi) : void
      {
         param1.unregisterService(IBackgroundService);
         param1.unregisterService(IHelpService);
         param1.unregisterService(ILoaderWindowService);
         param1.unregisterService(IBlockUserService);
         param1.unregisterService(IFriendActionService);
         param1.unregisterService(IFriendInfoService);
         param1.unregisterService(IDialogsService);
         param1.unregisterService(IBlurService);
         param1.unregisterService(IBattleInfoService);
         param1.unregisterService(IBattleInviteService);
         param1.unregisterService(IDialogWindowsDispatcherService);
         param1.unregisterService(IUserPropertiesService);
         param1.unregisterService(IUserInfoService);
         §static package try§.§521423123322312345123423632234§ = null;
      }
      
      public function start(param1:OSGi) : void
      {
         §static package try§.§521423123322312345123423632234§ = param1;
         var _loc2_:IBackgroundService = new BackgroundService();
         param1.registerService(IStorageService,new StorageService(param1.createSharedObject("name")));
         param1.registerService(IBackgroundService,_loc2_);
         param1.registerService(IHelpService,new HelpService());
         param1.registerService(IBlurService,new BlurService());
         param1.registerService(IBlockUserService,new BlockUserService());
         param1.registerService(IFriendInfoService,new FriendInfoService());
         param1.registerService(IFriendActionService,new FriendActionService());
         param1.registerService(IDialogsService,new DialogsService());
         param1.registerService(IBattleInfoService,new BattleInfoService());
         param1.registerService(IBattleInviteService,new BattleInviteService());
         param1.registerService(IDialogWindowsDispatcherService,new DialogWindowsDispatcherService());
         param1.registerService(ILoaderWindowService,new LoaderWindow());
         param1.registerService(IUserPropertiesService,new UserPropertiesService());
         param1.registerService(IUserInfoService,new UserInfoService());
         param1.registerService(IOnlineNotifierService,new OnlineNotifierService());
         param1.registerService(IBattleNotifierService,new BattleNotifierService());
         param1.registerService(IBattleLinkActivatorService,new BattleLinkActivatorService());
         param1.registerService(IPasswordParamsService,new PasswordParamsService());
         param1.registerService(PremiumService,new PremiumServiceImpl());
         param1.registerService(BattleFormatUtil,new BattleFormatUtil());
         param1.registerService(NewbieUserService,new NewbieUserServiceImpl());
         _loc2_.showBg();
      }
   }
}

