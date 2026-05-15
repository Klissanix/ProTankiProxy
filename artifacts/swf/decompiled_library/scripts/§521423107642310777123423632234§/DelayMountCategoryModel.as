package §521423107642310777123423632234§
{
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.BattleInfoServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §throw for final§.DelayMountCategoryModelBase;
   import §throw for final§.§import with§;
   
   public class DelayMountCategoryModel extends DelayMountCategoryModelBase implements §import with§, §5214234168234181123423632234§, §throw catch var§
   {
      
      public static var §extends package use§:IDelayMountCategoryService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §return set get§:IBattleInfoService;
      
      public function DelayMountCategoryModel()
      {
         super();
      }
      
      private static function b50281ca(param1:BattleInfoServiceEvent) : void
      {
         §extends package use§.resetTimers();
      }
      
      private static function a3550f23(param1:BattleInfoServiceEvent) : void
      {
         §extends package use§.resetTimers();
      }
      
      public function objectLoadedPost() : void
      {
         if(§continue for final§.inBattle())
         {
            §extends package use§.createTimers(getInitParam());
            §return set get§.addEventListener("BattleInfoServiceEvent.BATTLE_RESTART",b50281ca);
            §return set get§.addEventListener("BattleInfoServiceEvent.BATTLE_UNLOAD",a3550f23);
         }
      }
      
      public function objectUnloaded() : void
      {
         §return set get§.removeEventListener("BattleInfoServiceEvent.BATTLE_RESTART",b50281ca);
         §return set get§.removeEventListener("BattleInfoServiceEvent.BATTLE_UNLOAD",a3550f23);
         if(§continue for final§.inBattle())
         {
            §extends package use§.destroyTimers();
         }
      }
   }
}

