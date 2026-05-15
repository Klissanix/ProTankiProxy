package §final var if§
{
   import §521423100272310040123423632234§.§5214236663236676123423632234§;
   import §5214232638232651123423632234§.§5214232902232915123423632234§;
   import §5214232638232651123423632234§.TeamBattleInfoCC;
   import §5214232638232651123423632234§.TeamBattleInfoModelBase;
   import §5214239374239387123423632234§.§null override§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.info.§5214234313234326123423632234§;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import §extends var import§.§5214231658231671123423632234§;
   import §final for if§.§5214231167231180123423632234§;
   import §import use import§.§function for with§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.client.battleselect.model.info.BattleInfoCC;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   
   public class BattleTeamInfoModel extends TeamBattleInfoModelBase implements §5214232902232915123423632234§, §5214235049235062123423632234§, §throw catch var§
   {
      
      public static var §while set function§:IBattleInfoFormService;
      
      public static var §5214239416239429123423632234§:BattleFormatUtil;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §else use package§:ServerFightCommandAlreadySentFlag;
      
      public function BattleTeamInfoModel()
      {
         super();
      }
      
      public function updateUserScore(param1:String, param2:int) : void
      {
         §while set function§.updateUserScore(param1,param2);
      }
      
      private function b2bd64ce(param1:§5214231167231180123423632234§) : void
      {
         server.fight(param1.§while package override§);
      }
      
      public function equipmentNotMatchConstraints() : void
      {
         this.b2bb937c();
         §break use do§.showAlert(§5214236363236376123423632234§.getText("BATTLE_ENTER_ERROR_EQUIPMENT_NOT_MATCH_CONSTRAINTS"),Vector.<String>([§5214236363236376123423632234§.getText("CLOSE_LABEL")]));
      }
      
      public function objectLoaded() : void
      {
      }
      
      public function addUser(param1:BattleInfoUser, param2:§5214231658231671123423632234§) : void
      {
         §while set function§.addUserTeam(param1,param2);
      }
      
      private function cf77156() : void
      {
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",getFunctionWrapper(this.f70fc3f0));
         §break use do§.showAlert(§5214236363236376123423632234§.getText("BATTLE_ENTER_WARNING_PARKOUR"),Vector.<String>([§5214236363236376123423632234§.getText("BATTLE_ENTER_WARNING_PARKOUR_BUTTON_ENTER"),§5214236363236376123423632234§.getText("ALERT_ANSWER_CANCEL")]));
      }
      
      public function swapTeams() : void
      {
         §while set function§.swapTeams();
      }
      
      public function objectUnloaded() : void
      {
         §while set function§.removeEventListener("BattleInfoViewEvent.ENTER_TEAM",getFunctionWrapper(this.b2bd64ce));
      }
      
      public function method_310() : void
      {
         this.b2bb937c();
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      private function f70fc3f0(param1:AlertServiceEvent) : void
      {
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",getFunctionWrapper(this.f70fc3f0));
         if(param1.typeButton == §5214236363236376123423632234§.getText("BATTLE_ENTER_WARNING_PARKOUR_BUTTON_ENTER"))
         {
            this.b3b0f3b0(§5214231658231671123423632234§(getData(§5214231658231671123423632234§)));
         }
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:BattleInfoCC = §5214234313234326123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214234313234326123423632234§)).getConstructor();
         var _loc3_:§function for with§ = new §function for with§();
         var _loc2_:TeamBattleInfoCC = getInitParam();
         _loc3_.§521423702383123423632234§ = _loc2_.autoBalance;
         _loc3_.§break for get§ = _loc2_.friendlyFire;
         _loc3_.§static var var§ = _loc2_.scoreBlue;
         _loc3_.§521423102942310307123423632234§ = _loc2_.scoreRed;
         _loc3_.§521423136692313682123423632234§ = _loc2_.usersBlue;
         _loc3_.§5214239959239972123423632234§ = _loc2_.usersRed;
         _loc3_.§throw var include§ = _loc1_.battleMode;
         _loc3_.§extends switch final§ = _loc1_.name;
         _loc3_.§5214238434238447123423632234§ = _loc1_.itemId;
         _loc3_.§5214233079233092123423632234§ = §5214234313234326123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214234313234326123423632234§)).getPreviewResource();
         var _loc4_:String = "battle/" + _loc1_.itemId;
         var _loc5_:String = "";
         _loc3_.§native const break§ = (_loc5_ + "#/" + _loc4_).replace(/((.+)(\?.*)(#.*))/gi,"$2$4");
         _loc3_.§521423126652312678123423632234§ = §null override§(_loc1_.map.adapt(§null override§)).getClanLink();
         _loc3_.§use package static§ = §null override§(_loc1_.map.adapt(§null override§)).getClanName();
         _loc3_.§do set switch§ = _loc1_.§5214236316236329123423632234§.§do set switch§;
         _loc3_.§5214239290239303123423632234§ = _loc1_.§5214236316236329123423632234§.§5214239290239303123423632234§;
         _loc3_.§false for if§ = _loc1_.timeLeftInSec;
         _loc3_.§import use do§ = _loc1_.§do catch catch§.§5214232042232055123423632234§;
         _loc3_.§5214231995232008123423632234§ = _loc1_.maxPeopleCount;
         _loc3_.§5214234782234795123423632234§ = _loc1_.§do catch catch§.§5214239002239015123423632234§;
         _loc3_.§521423134322313445123423632234§ = _loc1_.proBattle;
         _loc3_.§5214239008239021123423632234§ = _loc1_.withoutSupplies;
         _loc3_.§5214237098237111123423632234§ = _loc1_.spectator;
         _loc3_.§set use dynamic§ = _loc1_.withoutBonuses;
         _loc3_.§set var each§ = _loc1_.withoutCrystals;
         _loc3_.§5214236539236552123423632234§ = §5214236663236676123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214236663236676123423632234§)).getEnterPrice();
         _loc3_.§5214235997236010123423632234§ = §5214236663236676123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214236663236676123423632234§)).getTimeLeftInSec();
         _loc3_.§if do§ = _loc1_.roundStarted;
         _loc3_.§5214237774237787123423632234§ = _loc1_.userPaidNoSuppliesBattle;
         _loc3_.§5214235180235193123423632234§ = _loc1_.§5214235973235986123423632234§;
         _loc3_.§case const implements§ = _loc1_.§case const implements§;
         _loc3_.§class use extends§ = §5214239416239429123423632234§.isFormatBattle(_loc1_.equipmentConstraintsMode,_loc1_.parkourMode);
         _loc3_.§521423118712311884123423632234§ = §5214239416239429123423632234§.getShortFormatName(_loc1_.equipmentConstraintsMode,_loc1_.parkourMode);
         _loc3_.§5214231642231655123423632234§ = !_loc1_.withoutGoldBoxes;
         _loc3_.§finally for switch§ = !_loc1_.withoutGoldZone;
         _loc3_.§521423114052311418123423632234§ = !_loc1_.withoutGoldSiren;
         _loc3_.§5214232276232289123423632234§ = _loc1_.randomGold;
         _loc3_.§include use static§ = _loc1_.esportDropTiming;
         _loc3_.§try catch switch§ = _loc1_.dependentCooldownEnabled;
         _loc3_.§with const use§ = !_loc1_.withoutMedkit;
         _loc3_.§function var dynamic§ = !_loc1_.withoutMines;
         _loc3_.§use catch implements§ = _loc1_.§use catch implements§;
         §while set function§.showTeamForm(_loc3_);
         §while set function§.addEventListener("BattleInfoViewEvent.ENTER_TEAM",getFunctionWrapper(this.b2bd64ce));
      }
      
      private function d68f38c1() : void
      {
         putData(ServerFightCommandAlreadySentFlag,this.§else use package§);
      }
      
      private function b2bb937c() : void
      {
         clearData(ServerFightCommandAlreadySentFlag);
      }
      
      private function f37ebf0e() : Boolean
      {
         return getData(ServerFightCommandAlreadySentFlag) == null;
      }
      
      public function updateTeamScore(param1:§5214231658231671123423632234§, param2:int) : void
      {
         §while set function§.updateTeamScore(param1,param2);
      }
      
      private function b3b0f3b0(param1:§5214231658231671123423632234§) : void
      {
         if(this.f37ebf0e())
         {
            this.d68f38c1();
            server.fight(param1);
         }
      }
   }
}

class ServerFightCommandAlreadySentFlag
{
   
   public function ServerFightCommandAlreadySentFlag()
   {
      super();
   }
}
