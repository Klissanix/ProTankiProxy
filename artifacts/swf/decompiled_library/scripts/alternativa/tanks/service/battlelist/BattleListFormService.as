package alternativa.tanks.service.battlelist
{
   import §521423103152310328123423632234§.§static switch break§;
   import §5214233083233096123423632234§.BattleByURLNotFoundEvent;
   import §5214233083233096123423632234§.BattleListController;
   import §5214233083233096123423632234§.BattleSelectedEvent;
   import §5214233083233096123423632234§.CreateBattleClickEvent;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.model.item.§include set throw§;
   import alternativa.tanks.service.battlecreate.IBattleCreateFormService;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import flash.events.EventDispatcher;
   import §if var else§.§521423117842311797123423632234§;
   import §native finally catch§.§521423101562310169123423632234§;
   import §native finally catch§.§521423118512311864123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.client.battleselect.model.item.BattleItemCC;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import §use const§.§implements package override§;
   
   public class BattleListFormService extends EventDispatcher implements IBattleListFormService
   {
      
      public static var display:IDisplay;
      
      public static var §override set throw§:IBattleCreateFormService;
      
      public static var §while set function§:IBattleInfoFormService;
      
      public static var §5214239416239429123423632234§:BattleFormatUtil;
      
      public var §5214236929236942123423632234§:BattleListController;
      
      public function BattleListFormService()
      {
         super();
      }
      
      public function updateUsersCountTeam(param1:String, param2:int, param3:int, param4:int, param5:int) : void
      {
         if(this.§5214236929236942123423632234§)
         {
            this.§5214236929236942123423632234§.updateUsersCountTeam(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeBattleItem(param1:String) : void
      {
         if(this.§5214236929236942123423632234§)
         {
            this.§5214236929236942123423632234§.removeBattle(param1);
         }
      }
      
      public function madePrivate(param1:String, param2:String) : void
      {
         this.§5214236929236942123423632234§.madePrivate(param1,param2);
      }
      
      public function updateName(param1:String, param2:String) : void
      {
         this.§5214236929236942123423632234§.updateName(param1,param2);
      }
      
      public function selectBattleItemFromServer(param1:String) : void
      {
         if(this.§5214236929236942123423632234§)
         {
            this.§5214236929236942123423632234§.selectBattleItemFromServer(param1);
         }
      }
      
      private function c588068c(param1:BattleByURLNotFoundEvent) : void
      {
         dispatchEvent(new BattleByURLNotFoundEvent("BattleListControllerEvent.BATTLE_BY_URL_NOT_FOUND",param1.battleId));
      }
      
      public function swapTeams(param1:String) : void
      {
         this.§5214236929236942123423632234§.swapTeams(param1);
      }
      
      public function battleItemsPacketJoinSuccess() : void
      {
         this.§5214236929236942123423632234§.battleItemsPacketJoinSuccess();
      }
      
      public function hideAndDestroy() : void
      {
         this.§5214236929236942123423632234§.removeEventListener("CreateBattleClickEvent.CREATE_BATTLE_CLICK",this.c39c28b2);
         this.§5214236929236942123423632234§.removeEventListener("BattleListControllerEvent.BATTLE_SELECTED",this.e4d4faa6);
         this.§5214236929236942123423632234§.removeEventListener("BattleListControllerEvent.BATTLE_BY_URL_NOT_FOUND",this.c588068c);
         this.§5214236929236942123423632234§.hideForm();
         this.§5214236929236942123423632234§.destroy();
         this.§5214236929236942123423632234§ = null;
      }
      
      public function battleItemRecord(param1:§521423120252312038123423632234§) : void
      {
         var _loc6_:§implements package override§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.§5214236929236942123423632234§ == null)
         {
            return;
         }
         var _loc9_:BattleItemCC = §include set throw§(param1.adapt(§include set throw§)).getConstructor();
         if(param1.hasModel(§implements package override§) && param1.adapt(§implements package override§) != null)
         {
            _loc6_ = §implements package override§(param1.adapt(§implements package override§));
            _loc2_ = _loc6_.getUsersCountBlue();
            _loc3_ = _loc6_.getUsersCountRed();
            _loc5_ = _loc6_.getFriendsCountBlue();
            _loc4_ = _loc6_.getFriendsCountRed();
            this.§5214236929236942123423632234§.battleItemRecord(param1,_loc9_.battleMode,_loc9_.name,false,_loc3_,_loc2_,_loc4_,_loc5_,0,0,_loc9_.maxPeople,§521423117842311797123423632234§(_loc9_.map.adapt(§521423117842311797123423632234§)).getName(),_loc9_.§do catch catch§,_loc9_.§continue switch try§,_loc9_.privateBattle,_loc9_.suspicionLevel,_loc9_.proBattle,§5214239416239429123423632234§.isFormatBattle(_loc9_.equipmentConstraintsMode,_loc9_.parkourMode),§5214239416239429123423632234§.getShortFormatName(_loc9_.equipmentConstraintsMode,_loc9_.parkourMode),§521423117842311797123423632234§(_loc9_.map.adapt(§521423117842311797123423632234§)).getAdditionalCrystalsPercent());
         }
         else
         {
            if(!param1.hasModel(§static switch break§) && param1.adapt(§static switch break§) == null)
            {
               throw new ArgumentError("Invalid battle item model" + param1);
            }
            _loc7_ = int(§static switch break§(param1.adapt(§static switch break§)).getUsersCount());
            _loc8_ = int(§static switch break§(param1.adapt(§static switch break§)).getFriendsCount());
            this.§5214236929236942123423632234§.battleItemRecord(param1,_loc9_.battleMode,_loc9_.name,true,0,0,0,0,_loc7_,_loc8_,_loc9_.maxPeople,§521423117842311797123423632234§(_loc9_.map.adapt(§521423117842311797123423632234§)).getName(),_loc9_.§do catch catch§,_loc9_.§continue switch try§,_loc9_.privateBattle,_loc9_.suspicionLevel,_loc9_.proBattle,§5214239416239429123423632234§.isFormatBattle(_loc9_.equipmentConstraintsMode,_loc9_.parkourMode),§5214239416239429123423632234§.getShortFormatName(_loc9_.equipmentConstraintsMode,_loc9_.parkourMode),§521423117842311797123423632234§(_loc9_.map.adapt(§521423117842311797123423632234§)).getAdditionalCrystalsPercent());
         }
      }
      
      public function updateSuspicious(param1:String, param2:BattleSuspicionLevel) : void
      {
         this.§5214236929236942123423632234§.updateSuspicious(param1,param2);
      }
      
      private function e4d4faa6(param1:BattleSelectedEvent) : void
      {
         dispatchEvent(new BattleListFormServiceEvent("BattleListFormServiceEvent.BATTLE_SELECTED",param1.selectedItem));
         §override set throw§.hideForm();
      }
      
      public function createAndShow() : void
      {
         this.§5214236929236942123423632234§ = new BattleListController(new §521423101562310169123423632234§(display.stage,display.systemLayer,new §521423118512311864123423632234§(),§override set throw§.battleCreationDisabled));
         this.§5214236929236942123423632234§.showForm();
         this.§5214236929236942123423632234§.addEventListener("CreateBattleClickEvent.CREATE_BATTLE_CLICK",this.c39c28b2);
         this.§5214236929236942123423632234§.addEventListener("BattleListControllerEvent.BATTLE_SELECTED",this.e4d4faa6);
         this.§5214236929236942123423632234§.addEventListener("BattleListControllerEvent.BATTLE_BY_URL_NOT_FOUND",this.c588068c);
      }
      
      public function updateUsersCountDm(param1:String, param2:int, param3:int) : void
      {
         if(this.§5214236929236942123423632234§)
         {
            this.§5214236929236942123423632234§.updateUsersCountDm(param1,param2,param3);
         }
      }
      
      private function c39c28b2(param1:CreateBattleClickEvent) : void
      {
         §override set throw§.showForm();
         §while set function§.removeFormFromStage();
      }
   }
}

