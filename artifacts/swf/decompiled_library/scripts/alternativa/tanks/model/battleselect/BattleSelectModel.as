package alternativa.tanks.model.battleselect
{
   import §5214233083233096123423632234§.BattleByURLNotFoundEvent;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.battle.BattleFriendNotifier;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import alternativa.tanks.service.battlelist.BattleListFormServiceEvent;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import flash.events.Event;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.client.battleselect.model.battleselect.§5214233575233588123423632234§;
   import projects.tanks.client.battleselect.model.battleselect.BattleSelectModelBase;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class BattleSelectModel extends BattleSelectModelBase implements §5214233575233588123423632234§, §5214234168234181123423632234§, §throw catch var§
   {
      
      public static var §5214233475233488123423632234§:IBattleListFormService;
      
      public static var §while set function§:IBattleInfoFormService;
      
      public static var display:IDisplay;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static const §5214233216233229123423632234§:String = "BattleSelectModel";
      
      private var §5214239019239032123423632234§:BattleFriendNotifier;
      
      private var §5214233841233854123423632234§:int;
      
      public function BattleSelectModel()
      {
         super();
      }
      
      private function a3067026(param1:Event) : void
      {
         display.stage.frameRate = §5214233841233854123423632234§;
      }
      
      private function c588068c(param1:BattleByURLNotFoundEvent) : void
      {
      }
      
      private function c69ff9b2(param1:Event) : void
      {
         display.stage.frameRate = 30;
      }
      
      public function objectUnloaded() : void
      {
         this.§5214239019239032123423632234§.destroy();
         this.§5214239019239032123423632234§ = null;
         §while set function§.destroy();
         §5214233475233488123423632234§.removeEventListener("BattleListFormServiceEvent.BATTLE_SELECTED",this.e4d4faa6);
         §5214233475233488123423632234§.removeEventListener("BattleListControllerEvent.BATTLE_BY_URL_NOT_FOUND",this.c588068c);
         §5214233475233488123423632234§.hideAndDestroy();
      }
      
      public function select(param1:String) : void
      {
         §5214233475233488123423632234§.selectBattleItemFromServer(param1);
      }
      
      private function e4d4faa6(param1:BattleListFormServiceEvent) : void
      {
         server.select(param1.selectedItem + " ");
      }
      
      public function objectLoadedPost() : void
      {
         this.§5214239019239032123423632234§ = new BattleFriendNotifier();
         §5214233475233488123423632234§.createAndShow();
         §5214233475233488123423632234§.addEventListener("BattleListFormServiceEvent.BATTLE_SELECTED",this.e4d4faa6);
         §5214233475233488123423632234§.addEventListener("BattleListControllerEvent.BATTLE_BY_URL_NOT_FOUND",this.c588068c);
      }
      
      public function battleItemsPacketJoinSuccess() : void
      {
         §5214233475233488123423632234§.battleItemsPacketJoinSuccess();
      }
   }
}

