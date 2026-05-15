package §5214234955234968123423632234§
{
   import §521423100272310040123423632234§.§5214236663236676123423632234§;
   import §5214239374239387123423632234§.§null override§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.info.§5214234313234326123423632234§;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import §extends var import§.§5214231658231671123423632234§;
   import §final for if§.§5214231167231180123423632234§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.client.battleselect.model.info.BattleInfoCC;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import §throw switch catch§.§5214237536237549123423632234§;
   import §try catch class§.§5214235323235336123423632234§;
   import §try catch class§.BattleDMInfoModelBase;
   
   public class BattleDmInfoModel extends BattleDMInfoModelBase implements §5214235323235336123423632234§, §5214235049235062123423632234§, §throw catch var§
   {
      
      public static var §while set function§:IBattleInfoFormService;
      
      public static var §5214239416239429123423632234§:BattleFormatUtil;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §else use package§:ServerFightCommandAlreadySentFlag;
      
      private var §use use while§:Boolean = false;
      
      public function BattleDmInfoModel()
      {
         super();
         this.§else use package§ = new ServerFightCommandAlreadySentFlag();
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
         §while set function§.removeEventListener("BattleInfoViewEvent.ENTER_DM",getFunctionWrapper(this.bb9a1c3));
      }
      
      private function d68f38c1() : void
      {
         putData(ServerFightCommandAlreadySentFlag,this.§else use package§);
      }
      
      private function cf77156() : void
      {
         §break use do§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",getFunctionWrapper(this.f70fc3f0));
         §break use do§.showAlert(§5214236363236376123423632234§.getText("BATTLE_ENTER_WARNING_PARKOUR"),Vector.<String>([§5214236363236376123423632234§.getText("BATTLE_ENTER_WARNING_PARKOUR_BUTTON_ENTER"),§5214236363236376123423632234§.getText("ALERT_ANSWER_CANCEL")]));
         this.§use use while§ = true;
      }
      
      private function b3b0f3b0() : void
      {
         if(this.f37ebf0e())
         {
            this.d68f38c1();
            server.fight(§5214231658231671123423632234§.§dynamic use false§);
         }
      }
      
      public function addUser(param1:BattleInfoUser) : void
      {
         §while set function§.method_1542(param1);
      }
      
      public function objectLoaded() : void
      {
      }
      
      private function b2bb937c() : void
      {
         clearData(ServerFightCommandAlreadySentFlag);
      }
      
      public function equipmentNotMatchConstraints() : void
      {
         this.b2bb937c();
         §break use do§.showAlert(§5214236363236376123423632234§.getText("BATTLE_ENTER_ERROR_EQUIPMENT_NOT_MATCH_CONSTRAINTS"),Vector.<String>([§5214236363236376123423632234§.getText("CLOSE_LABEL")]));
      }
      
      public function method_310() : void
      {
         this.b2bb937c();
      }
      
      private function bb9a1c3(param1:§5214231167231180123423632234§) : void
      {
         server.fight(§5214231658231671123423632234§.§dynamic use false§);
      }
      
      private function f70fc3f0(param1:AlertServiceEvent) : void
      {
         this.§use use while§ = false;
         §break use do§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",getFunctionWrapper(this.f70fc3f0));
         if(param1.typeButton == §5214236363236376123423632234§.getText("BATTLE_ENTER_WARNING_PARKOUR_BUTTON_ENTER"))
         {
            this.b3b0f3b0();
         }
      }
      
      private function f37ebf0e() : Boolean
      {
         return getData(ServerFightCommandAlreadySentFlag) == null;
      }
      
      public function updateUserKills(param1:String, param2:int) : void
      {
         §while set function§.updateUserScore(param1,param2);
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:BattleInfoCC = §5214234313234326123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214234313234326123423632234§)).getConstructor();
         var _loc2_:§5214237536237549123423632234§ = new §5214237536237549123423632234§();
         _loc2_.§else use while§ = getInitParam().users;
         _loc2_.§throw var include§ = _loc1_.battleMode;
         _loc2_.§extends switch final§ = _loc1_.name;
         _loc2_.§5214233079233092123423632234§ = §5214234313234326123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214234313234326123423632234§)).getPreviewResource();
         _loc2_.§5214238434238447123423632234§ = _loc1_.itemId;
         var _loc3_:String = "battle/" + _loc1_.itemId;
         var _loc4_:String = "";
         _loc2_.§native const break§ = (_loc4_ + "#/" + _loc3_).replace(/((.+)(\?.*)(#.*))/gi,"$2$4");
         _loc2_.§521423126652312678123423632234§ = §null override§(_loc1_.map.adapt(§null override§)).getClanLink();
         _loc2_.§use package static§ = §null override§(_loc1_.map.adapt(§null override§)).getClanName();
         _loc2_.§do set switch§ = _loc1_.§5214236316236329123423632234§.§do set switch§;
         _loc2_.§5214239290239303123423632234§ = _loc1_.§5214236316236329123423632234§.§5214239290239303123423632234§;
         _loc2_.§false for if§ = _loc1_.timeLeftInSec;
         _loc2_.§import use do§ = _loc1_.§do catch catch§.§5214232042232055123423632234§;
         _loc2_.§5214231995232008123423632234§ = _loc1_.maxPeopleCount;
         _loc2_.§5214234782234795123423632234§ = _loc1_.§do catch catch§.§5214239002239015123423632234§;
         _loc2_.§521423134322313445123423632234§ = _loc1_.proBattle;
         _loc2_.§5214239008239021123423632234§ = _loc1_.withoutSupplies;
         _loc2_.§5214237098237111123423632234§ = _loc1_.spectator;
         _loc2_.§set use dynamic§ = _loc1_.withoutBonuses;
         _loc2_.§set var each§ = _loc1_.withoutCrystals;
         _loc2_.§5214236539236552123423632234§ = §5214236663236676123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214236663236676123423632234§)).getEnterPrice();
         _loc2_.§5214235997236010123423632234§ = §5214236663236676123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§5214236663236676123423632234§)).getTimeLeftInSec();
         _loc2_.§if do§ = _loc1_.roundStarted;
         _loc2_.§5214237774237787123423632234§ = _loc1_.userPaidNoSuppliesBattle;
         _loc2_.§5214235180235193123423632234§ = _loc1_.§5214235973235986123423632234§;
         _loc2_.§case const implements§ = _loc1_.§case const implements§;
         _loc2_.§class use extends§ = §5214239416239429123423632234§.isFormatBattle(_loc1_.equipmentConstraintsMode,_loc1_.parkourMode);
         _loc2_.§521423118712311884123423632234§ = §5214239416239429123423632234§.getShortFormatName(_loc1_.equipmentConstraintsMode,_loc1_.parkourMode);
         _loc2_.§5214231642231655123423632234§ = !_loc1_.withoutGoldBoxes;
         _loc2_.§finally for switch§ = !_loc1_.withoutGoldZone;
         _loc2_.§521423114052311418123423632234§ = !_loc1_.withoutGoldSiren;
         _loc2_.§5214232276232289123423632234§ = _loc1_.randomGold;
         _loc2_.§include use static§ = _loc1_.esportDropTiming;
         _loc2_.§try catch switch§ = _loc1_.dependentCooldownEnabled;
         _loc2_.§with const use§ = !_loc1_.withoutMedkit;
         _loc2_.§function var dynamic§ = !_loc1_.withoutMines;
         _loc2_.§use catch implements§ = _loc1_.§use catch implements§;
         §while set function§.showDmForm(_loc2_);
         §while set function§.addEventListener("BattleInfoViewEvent.ENTER_DM",getFunctionWrapper(this.bb9a1c3));
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
