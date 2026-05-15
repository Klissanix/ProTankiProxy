package §5214236766236779123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.service.achievement.AchievementService;
   import alternativa.tanks.service.achievement.IAchievementService;
   import alternativa.tanks.service.country.CountryService;
   import alternativa.tanks.service.country.CountryServiceImpl;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierService;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierServiceImpl;
   import alternativa.tanks.service.fps.FPSService;
   import alternativa.tanks.service.fps.FPSServiceImpl;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.money.MoneyService;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import alternativa.tanks.service.notificationcategories.NotificationGarageCategoriesService;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.panel.PanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingsService;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.service.settings.keybinding.KeysBindingServiceImpl;
   import alternativa.tanks.service.socialnetwork.ISocialNetworkPanelService;
   import alternativa.tanks.service.socialnetwork.SocialNetworkPanelService;
   import §native package final§.§throw var static§;
   
   public class §null const catch§ implements §throw var static§
   {
      
      public function §null const catch§()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         param1.registerService(IPanelView,new PanelView());
         param1.registerService(ISettingsService,new SettingsService());
         param1.registerService(IAchievementService,new AchievementService());
         param1.registerService(IMoneyService,new MoneyService());
         param1.registerService(ISocialNetworkPanelService,new SocialNetworkPanelService());
         param1.registerService(FPSService,new FPSServiceImpl());
         param1.registerService(INotificationGarageCategoriesService,new NotificationGarageCategoriesService());
         param1.registerService(KeysBindingService,new KeysBindingServiceImpl());
         param1.registerService(CountryService,new CountryServiceImpl());
         param1.registerService(DailyQuestNotifierService,new DailyQuestNotifierServiceImpl());
      }
      
      public function stop(param1:OSGi) : void
      {
         param1.unregisterService(IPanelView);
         param1.unregisterService(ISettingsService);
         param1.unregisterService(IMoneyService);
         param1.unregisterService(IAchievementService);
         param1.unregisterService(ISocialNetworkPanelService);
         param1.unregisterService(FPSService);
         param1.unregisterService(DailyQuestNotifierService);
         param1.unregisterService(KeysBindingService);
      }
   }
}

