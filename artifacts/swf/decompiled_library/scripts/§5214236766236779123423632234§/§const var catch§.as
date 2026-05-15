package §5214236766236779123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.models.foreignclan.ForeignClanService;
   import alternativa.tanks.models.foreignclan.ForeignClanServiceImpl;
   import alternativa.tanks.models.panel.ClanPanelNotificationServiceImpl;
   import alternativa.tanks.models.panel.create.service.ClanCreateService;
   import alternativa.tanks.models.panel.create.service.ClanCreateServiceImpl;
   import alternativa.tanks.models.service.ClanFriendsServiceImpl;
   import alternativa.tanks.models.service.ClanFunctionsServiceImpl;
   import alternativa.tanks.models.service.ClanMembersDataService;
   import alternativa.tanks.models.service.ClanMembersDataServiceImpl;
   import alternativa.tanks.models.service.ClanService;
   import alternativa.tanks.models.service.ClanServiceImpl;
   import alternativa.tanks.service.clan.ClanFriendsService;
   import alternativa.tanks.service.clan.ClanPanelNotificationService;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import alternativa.tanks.service.clan.user.ClanUserServiceImpl;
   import §native package final§.§throw var static§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanFunctionsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoServiceImpl;
   
   public class §const var catch§ implements §throw var static§
   {
      
      public function §const var catch§()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         param1.registerService(ClanService,new ClanServiceImpl());
         param1.registerService(ClanCreateService,new ClanCreateServiceImpl());
         param1.registerService(ClanUserService,new ClanUserServiceImpl());
         param1.registerService(ClanMembersDataService,new ClanMembersDataServiceImpl());
         param1.registerService(ClanPanelNotificationService,new ClanPanelNotificationServiceImpl());
         param1.registerService(ClanUserInfoService,new ClanUserInfoServiceImpl());
         param1.registerService(ClanFriendsService,new ClanFriendsServiceImpl());
         param1.registerService(ClanFunctionsService,new ClanFunctionsServiceImpl());
         param1.registerService(ForeignClanService,new ForeignClanServiceImpl());
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

