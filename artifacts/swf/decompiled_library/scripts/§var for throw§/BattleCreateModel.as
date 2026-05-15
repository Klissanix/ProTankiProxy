package §var for throw§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §5214234934234947123423632234§.§521423108232310836123423632234§;
   import §5214234934234947123423632234§.BattleCreateModelBase;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.battlecreate.IBattleCreateFormService;
   import §const use implements§.§default const while§;
   import §extends use§.§5214232535232548123423632234§;
   import §extends use§.§in package function§;
   import flash.events.Event;
   import §function catch if§.CheckBattleNameEvent;
   import §function catch if§.CreateBattleEvent;
   import §function catch if§.CreateBattleFormController;
   import §if var else§.§521423117842311797123423632234§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class BattleCreateModel extends BattleCreateModelBase implements §521423108232310836123423632234§, §5214235049235062123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var modelRegistry:ModelRegistry;
      
      public static var §override set throw§:IBattleCreateFormService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §5214235632235645123423632234§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public function BattleCreateModel()
      {
         super();
      }
      
      private function d51384d7() : CreateBattleFormController
      {
         return CreateBattleFormController(getData(CreateBattleFormController));
      }
      
      private function afe4ffd(param1:CheckBattleNameEvent) : void
      {
         server.checkBattleNameForForbiddenWords(param1.§extends switch final§);
      }
      
      public function createFailedYouAreBanned() : void
      {
         §5214235632235645123423632234§.showAlert(§5214236363236376123423632234§.getText("CREATE_FAILED_YOU_ARE_BANNED"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      private function onCreateBattle(param1:CreateBattleEvent) : void
      {
         var _loc2_:§default const while§ = param1.§override catch throw§;
         server.createBattle(_loc2_);
      }
      
      private function d4d76bcc(param1:Event) : void
      {
         this.a2cdf161();
         this.d51384d7().hideForm();
      }
      
      private function a2cdf161() : void
      {
         var _loc1_:CreateBattleFormController = this.d51384d7();
         _loc1_.removeEventListener("CreateBattleEvent.CREATE_BATTLE",getFunctionWrapper(this.onCreateBattle));
         _loc1_.removeEventListener("CheckBattleNameEvent.CHECK_NAME",getFunctionWrapper(this.afe4ffd));
      }
      
      public function createFailedBattleCreateDisabled() : void
      {
      }
      
      private function a7160958(param1:Event) : void
      {
         var _loc2_:CreateBattleFormController = this.d51384d7();
         _loc2_.showForm(§52142329523308123423632234§.rank);
         _loc2_.addEventListener("CreateBattleEvent.CREATE_BATTLE",getFunctionWrapper(this.onCreateBattle));
         _loc2_.addEventListener("CheckBattleNameEvent.CHECK_NAME",getFunctionWrapper(this.afe4ffd));
      }
      
      public function createFailedTooManyBattlesFromYou() : void
      {
         §5214235632235645123423632234§.showAlert(§5214236363236376123423632234§.getText("BATTLE_CREATE_PANEL_FLOOD_ALERT_TEXT"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
      
      public function objectUnloaded() : void
      {
         §override set throw§.hideForm();
         §override set throw§.removeEventListener("BattleCreateFormServiceEvent.SHOW_FORM",getFunctionWrapper(this.a7160958));
         §override set throw§.removeEventListener("BattleCreateFormServiceEvent.HIDE_FORM",getFunctionWrapper(this.d4d76bcc));
         this.a2cdf161();
         this.d51384d7().destroy();
         clearData(CreateBattleFormController);
      }
      
      public function objectLoaded() : void
      {
         §override set throw§.battleCreationDisabled = getInitParam().battleCreationDisabled;
         §override set throw§.hasProAbonement = getInitParam().proBattleTimeLeftInSec > 1;
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:§521423117842311797123423632234§ = §521423117842311797123423632234§(modelRegistry.getModel(Long.getLong(1357088820,1306920920)));
         var _loc2_:Vector.<§521423120252312038123423632234§> = _loc1_.getMaps();
         var _loc3_:CreateBattleFormController = new CreateBattleFormController(getInitParam().§for catch continue§,getInitParam().maxRangeLength,_loc2_,new §5214232535232548123423632234§(display.stage,display.systemLayer,new §in package function§()));
         putData(CreateBattleFormController,_loc3_);
         §override set throw§.addEventListener("BattleCreateFormServiceEvent.SHOW_FORM",getFunctionWrapper(this.a7160958));
         §override set throw§.addEventListener("BattleCreateFormServiceEvent.HIDE_FORM",getFunctionWrapper(this.d4d76bcc));
      }
      
      public function setFilteredBattleName(param1:String) : void
      {
         this.d51384d7().checkedBattleNameResult(param1);
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function createFailedServerIsHalting() : void
      {
         §5214235632235645123423632234§.showAlert(§5214236363236376123423632234§.getText("SERVER_IS_RESTARTING_CREATE_BATTLE_TEXT"),Vector.<String>([§5214236363236376123423632234§.getText(AlertAnswer.OK)]));
      }
   }
}

