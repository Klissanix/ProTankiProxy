package §5214236766236779123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.service.battle.BattleUserInfoServiceBSM;
   import alternativa.tanks.service.battle.IBattleUserInfoService;
   import alternativa.tanks.service.battlecreate.BattleCreateFormService;
   import alternativa.tanks.service.battlecreate.IBattleCreateFormService;
   import alternativa.tanks.service.battleinfo.BattleInfoFormService;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import alternativa.tanks.service.battlelist.BattleListFormService;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import §native package final§.§throw var static§;
   
   public class §import catch dynamic§ implements §throw var static§
   {
      
      public function §import catch dynamic§()
      {
         super();
      }
      
      public function stop(param1:OSGi) : void
      {
         param1.unregisterService(IBattleCreateFormService);
         param1.unregisterService(IBattleListFormService);
         param1.unregisterService(IBattleInfoFormService);
         param1.unregisterService(IBattleUserInfoService);
      }
      
      public function start(param1:OSGi) : void
      {
         param1.registerService(IBattleCreateFormService,new BattleCreateFormService());
         param1.registerService(IBattleListFormService,new BattleListFormService());
         param1.registerService(IBattleInfoFormService,new BattleInfoFormService());
         param1.registerService(IBattleUserInfoService,new BattleUserInfoServiceBSM());
      }
   }
}

