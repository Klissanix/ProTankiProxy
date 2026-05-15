package alternativa.tanks.service.battlelist
{
   import flash.events.IEventDispatcher;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   
   public interface IBattleListFormService extends IEventDispatcher
   {
      
      function updateUsersCountTeam(param1:String, param2:int, param3:int, param4:int, param5:int) : void;
      
      function updateUsersCountDm(param1:String, param2:int, param3:int) : void;
      
      function battleItemRecord(param1:§521423120252312038123423632234§) : void;
      
      function removeBattleItem(param1:String) : void;
      
      function hideAndDestroy() : void;
      
      function createAndShow() : void;
      
      function selectBattleItemFromServer(param1:String) : void;
      
      function updateSuspicious(param1:String, param2:BattleSuspicionLevel) : void;
      
      function swapTeams(param1:String) : void;
      
      function updateName(param1:String, param2:String) : void;
      
      function madePrivate(param1:String, param2:String) : void;
      
      function battleItemsPacketJoinSuccess() : void;
   }
}

