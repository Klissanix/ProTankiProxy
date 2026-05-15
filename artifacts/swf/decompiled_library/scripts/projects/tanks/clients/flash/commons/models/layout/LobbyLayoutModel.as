package projects.tanks.clients.flash.commons.models.layout
{
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.client.commons.models.layout.LobbyLayoutModelBase;
   import projects.tanks.client.commons.models.layout.§true true§;
   
   public class LobbyLayoutModel extends LobbyLayoutModelBase implements §true true§, §null for switch§, §do set function§, §throw catch var§
   {
      
      public function LobbyLayoutModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
      }
      
      public function exitFromBattleToState(param1:LayoutState) : void
      {
         server.exitFromBattle(param1);
      }
      
      public function switchBattleSelect() : void
      {
         server.switchBattleSelect();
      }
      
      public function switchGarage() : void
      {
         server.switchGarage();
      }
      
      public function exitFromBattle() : void
      {
         server.exitFromBattle(LayoutState.BATTLE_SELECT);
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function switchPayment() : void
      {
         server.switchPayment();
      }
   }
}

