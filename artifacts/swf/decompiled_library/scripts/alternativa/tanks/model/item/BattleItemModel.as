package alternativa.tanks.model.item
{
   import alternativa.tanks.service.battle.IBattleUserInfoService;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import projects.tanks.client.battleselect.model.item.BattleItemCC;
   import projects.tanks.client.battleselect.model.item.BattleItemModelBase;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   import projects.tanks.client.battleselect.model.item.§override finally dynamic§;
   
   public class BattleItemModel extends BattleItemModelBase implements §override finally dynamic§, §5214235049235062123423632234§, §include set throw§
   {
      
      public static var §5214233475233488123423632234§:IBattleListFormService;
      
      public static var battleUserInfoService:IBattleUserInfoService;
      
      public function BattleItemModel()
      {
         super();
      }
      
      public function objectLoadedPost() : void
      {
         §5214233475233488123423632234§.battleItemRecord(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
      }
      
      public function objectUnloadedPost() : void
      {
         battleUserInfoService.deleteBattleItem(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         §5214233475233488123423632234§.removeBattleItem(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name);
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectLoaded() : void
      {
      }
      
      public function updateSuspicious(param1:BattleSuspicionLevel) : void
      {
         §5214233475233488123423632234§.updateSuspicious(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,param1);
      }
      
      public function madePrivate() : void
      {
         §5214233475233488123423632234§.madePrivate(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,getInitParam().name);
      }
      
      public function updateName(param1:String) : void
      {
         §5214233475233488123423632234§.updateName(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,param1);
      }
      
      public function getConstructor() : BattleItemCC
      {
         return getInitParam();
      }
   }
}

