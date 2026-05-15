package §do catch var§
{
   import §521423106142310627123423632234§.AlertAnswer;
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.controllers.BattleSelectVectorUtil;
   import alternativa.tanks.service.money.IMoneyService;
   import §final for if§.§5214231167231180123423632234§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §override catch default§.Long;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesServiceEvent;
   import §super var do§.LobbyLayoutServiceEvent;
   import §throw switch catch§.§5214237536237549123423632234§;
   import §throw switch catch§.§var use try§;
   
   public class §5214232866232879123423632234§ extends EventDispatcher implements §5214235988236001123423632234§
   {
      
      public static var §var var finally§:IMoneyService;
      
      public static var §5214235632235645123423632234§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private var §break const catch§:§var use try§;
      
      private var §521423134882313501123423632234§:Vector.<BattleInfoUser>;
      
      private var §set set throw§:Timer;
      
      private var §5214234435234448123423632234§:int = 0;
      
      private var §521423114762311489123423632234§:int = 0;
      
      private var §521423130372313050123423632234§:int = 0;
      
      private var §5214234260234273123423632234§:int;
      
      private var §while const override§:Boolean;
      
      private var §catch for class§:Boolean;
      
      private var §5214232750232763123423632234§:int;
      
      private var §5214234749234762123423632234§:int;
      
      private var §5214236576236589123423632234§:Boolean;
      
      private var §52142388123894123423632234§:int;
      
      private var §5214232740232753123423632234§:Long;
      
      private var §true package import§:int;
      
      private var §for catch extends§:int;
      
      private var §use set catch§:String;
      
      public function §5214232866232879123423632234§(param1:§var use try§)
      {
         super();
         this.§break const catch§ = param1;
         this.init();
      }
      
      private static function §use for use§(param1:§5214231167231180123423632234§) : void
      {
         §continue for final§.exitFromBattle();
      }
      
      private static function §default set if§(param1:§5214231167231180123423632234§) : void
      {
         §continue for final§.showBattleSelect();
      }
      
      public function §import use static§() : String
      {
         return this.§use set catch§;
      }
      
      public function §native for continue§() : void
      {
         if(this.§5214236576236589123423632234§ && this.§521423134882313501123423632234§.length < this.§52142388123894123423632234§)
         {
            this.§break const catch§.§throw use final§();
         }
         else
         {
            this.§break const catch§.§while set null§();
         }
      }
      
      private function §521423131552313168123423632234§() : void
      {
         this.§set set throw§.stop();
         this.§set set throw§.removeEventListener("timer",this.§5214236758236771123423632234§);
      }
      
      private function §with use switch§(param1:§5214231167231180123423632234§) : void
      {
         if(this.§catch for class§ && this.§5214234749234762123423632234§ == 0 && !this.§while const override§)
         {
            if(§var var finally§.checkEnough(this.§5214232750232763123423632234§))
            {
               this.§5214231826231839123423632234§();
            }
         }
         else
         {
            this.§break const catch§.§while set null§();
            dispatchEvent(param1.clone());
         }
      }
      
      public function §521423127802312793123423632234§(param1:String) : void
      {
         this.§break const catch§.§catch catch throw§(param1);
      }
      
      public function §in set return§() : void
      {
         this.§implements set default§(this.§521423114762311489123423632234§);
      }
      
      private function §5214232832232845123423632234§(param1:Vector.<BattleInfoUser>) : void
      {
         var _loc2_:BattleInfoUser = null;
         this.§521423134882313501123423632234§.length = 0;
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1[_loc4_];
            this.§521423134882313501123423632234§.push(_loc2_);
            this.§break const catch§.§52142346423477123423632234§(_loc2_.user,_loc2_.kills,_loc2_.suspicious);
            _loc4_++;
         }
      }
      
      public function §default catch super§(param1:String) : void
      {
         BattleSelectVectorUtil.deleteElementInUsersVector(this.§521423134882313501123423632234§,param1);
         this.§native for continue§();
         this.§break const catch§.§default catch super§(param1);
      }
      
      private function setEvents() : void
      {
         this.§break const catch§.addEventListener("BattleInfoViewEvent.EXIT_FROM_BATTLE",§use for use§);
         this.§break const catch§.addEventListener("BattleInfoViewEvent.RETURN_TO_BATTLE",§default set if§);
         this.§break const catch§.addEventListener("BattleInfoViewEvent.ENTER_DM",this.§with use switch§);
         this.§break const catch§.addEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.§if package get§);
         §52142329523308123423632234§.addEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.§throw set for§);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",this.§true package class§);
         §continue for final§.addEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.§true package class§);
      }
      
      public function §52142369923712123423632234§() : void
      {
         this.§5214234749234762123423632234§ = 0;
         this.§super var implements§();
         this.§native for continue§();
      }
      
      private function §if package get§(param1:§5214231167231180123423632234§) : void
      {
         if(§continue for final§.inBattle())
         {
            §continue for final§.exitFromBattle();
         }
         else
         {
            dispatchEvent(param1.clone());
         }
      }
      
      public function §521423133982313411123423632234§() : void
      {
         this.§break const catch§.§true package final§();
      }
      
      public function §5214236047236060123423632234§(param1:§5214237536237549123423632234§) : void
      {
         this.§52142388123894123423632234§ = param1.§5214231995232008123423632234§;
         this.§catch for class§ = param1.§521423134322313445123423632234§;
         this.§while const override§ = param1.§5214237774237787123423632234§;
         this.§5214232750232763123423632234§ = param1.§5214236539236552123423632234§;
         this.§5214234749234762123423632234§ = param1.§5214235997236010123423632234§;
         this.§521423114762311489123423632234§ = param1.§5214239290239303123423632234§;
         this.§true package import§ = param1.§5214234782234795123423632234§;
         this.§for catch extends§ = param1.§import use do§;
         this.§use set catch§ = param1.§5214238434238447123423632234§;
         this.setEvents();
         var _loc2_:§include catch with§ = param1.§5214233079233092123423632234§;
         var _loc3_:§include catch with§ = _loc2_;
         var _loc4_:§include catch with§;
         if(_loc3_.§5214239618239631123423632234§.§521423137152313728123423632234§ && ((_loc4_ = _loc2_).§else for include§ & 1) == 0)
         {
            var _loc5_:§include catch with§;
            this.§5214232740232753123423632234§ = (_loc5_ = _loc2_).§5214239618239631123423632234§.id;
            _loc2_.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
         }
         else
         {
            this.§5214232740232753123423632234§ = null;
         }
         this.§super var implements§();
         this.§break const catch§.§override package var§(param1);
         this.§true package class§();
         this.§521423140002314013123423632234§(param1.§if do§,param1.§false for if§);
         this.§5214232832232845123423632234§(param1.§else use while§);
         this.§extends const each§(§52142329523308123423632234§.rank);
         this.§native for continue§();
         this.§break const catch§.show();
      }
      
      public function §super catch use§(param1:BattleInfoUser) : void
      {
         this.§521423134882313501123423632234§.push(param1);
         this.§native for continue§();
         this.§break const catch§.§super catch use§(param1);
      }
      
      public function §5214231207231220123423632234§(param1:String, param2:int) : void
      {
         var _loc3_:BattleInfoUser = BattleSelectVectorUtil.getUsersById(this.§521423134882313501123423632234§,param1);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.kills = param2;
         this.§break const catch§.§52142346423477123423632234§(_loc3_.user,_loc3_.kills,_loc3_.suspicious);
      }
      
      private function §extends const do§(param1:AlertServiceEvent) : void
      {
         §5214235632235645123423632234§.removeEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§extends const do§);
         if(param1.typeButton == §5214236363236376123423632234§.getText("BATTLEINFO_PANEL_PAID_BATTLES_ALERT_ANSWER_ENTER"))
         {
            dispatchEvent(new §5214231167231180123423632234§("BattleInfoViewEvent.ENTER_DM"));
         }
      }
      
      public function §true for override§() : void
      {
         this.removeEvents();
         this.§break const catch§.§true package final§();
      }
      
      public function destroy() : void
      {
         this.§true for override§();
         this.removeEvents();
         this.§521423131552313168123423632234§();
         this.§break const catch§.destroy();
         this.§521423134882313501123423632234§ = null;
         this.§set set throw§ = null;
         this.§break const catch§ = null;
         this.§use set catch§ = null;
      }
      
      private function §throw set for§(param1:UserPropertiesServiceEvent) : void
      {
         this.§extends const each§(param1.§52142397423987123423632234§.rank);
         this.§native for continue§();
      }
      
      private function §super var implements§() : void
      {
         if(this.§catch for class§)
         {
            if(this.§while const override§)
            {
               this.§break const catch§.§default switch each§();
               this.§break const catch§.§throw for catch§(0);
            }
            else if(this.§5214234749234762123423632234§ == 0)
            {
               this.§break const catch§.§for var var§();
               this.§break const catch§.§throw for catch§(this.§5214232750232763123423632234§);
            }
            else
            {
               this.§break const catch§.§default switch each§();
               this.§break const catch§.§throw for catch§(0);
            }
         }
         else
         {
            this.§break const catch§.§default switch each§();
            this.§break const catch§.§throw for catch§(0);
         }
      }
      
      private function §5214236758236771123423632234§(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         if(this.§5214234435234448123423632234§ < 0)
         {
            this.§set set throw§.removeEventListener("timer",this.§5214236758236771123423632234§);
            this.§set set throw§.stop();
         }
         else
         {
            this.§break const catch§.§5214236458236471123423632234§(§include for package§.§5214231080231093123423632234§(this.§5214234435234448123423632234§));
            _loc2_ = getTimer();
            this.§5214234435234448123423632234§ = this.§521423130372313050123423632234§ - (_loc2_ - this.§5214234260234273123423632234§) / 1000;
         }
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         if(this.§5214232740232753123423632234§ == param1.§5214239618239631123423632234§.id && this.§break const catch§ != null)
         {
            this.§break const catch§.§521423119942312007123423632234§(param1.data);
         }
      }
      
      public function §try set each§(param1:String, param2:Boolean) : void
      {
         var _loc3_:BattleInfoUser = BattleSelectVectorUtil.getUsersById(this.§521423134882313501123423632234§,param1);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.suspicious = param2;
         this.§break const catch§.§52142346423477123423632234§(_loc3_.user,_loc3_.kills,_loc3_.suspicious);
      }
      
      private function §true package class§(param1:LobbyLayoutServiceEvent = null) : void
      {
         if(§continue for final§.isSwitchInProgress())
         {
            this.§break const catch§.§521423130282313041123423632234§();
         }
         else
         {
            this.§break const catch§.§while switch set§();
         }
         this.§break const catch§.§5214239723110123423632234§();
      }
      
      private function §package package else§() : void
      {
         this.§set set throw§.addEventListener("timer",this.§5214236758236771123423632234§);
         this.§set set throw§.start();
         this.§5214236758236771123423632234§(null);
      }
      
      private function §implements set default§(param1:int) : void
      {
         this.§521423130372313050123423632234§ = param1;
         this.§5214234435234448123423632234§ = param1;
         this.§5214234260234273123423632234§ = getTimer();
         this.§521423131552313168123423632234§();
         this.§package package else§();
      }
      
      private function §5214231826231839123423632234§() : void
      {
         var _loc1_:Vector.<String> = Vector.<String>([AlertAnswer.ENTER,AlertAnswer.§521423131522313165123423632234§]);
         §5214235632235645123423632234§.showAlert(§5214236363236376123423632234§.getText("BATTLE_PRO_BATTLE_ENTER_ALERT"),_loc1_);
         §5214235632235645123423632234§.addEventListener("AlertServiceEvent.ALERT_BUTTON_PRESSED",this.§extends const do§);
      }
      
      public function §5214233506233519123423632234§() : void
      {
         this.§521423131552313168123423632234§();
         this.§5214234435234448123423632234§ = this.§521423114762311489123423632234§;
         this.§break const catch§.§5214236458236471123423632234§(§include for package§.§5214231080231093123423632234§(this.§5214234435234448123423632234§));
      }
      
      public function §continue for do§() : void
      {
         this.§break const catch§.show();
      }
      
      private function §521423140002314013123423632234§(param1:Boolean, param2:int) : void
      {
         this.§521423131552313168123423632234§();
         if(this.§521423114762311489123423632234§ != 0)
         {
            if(param1)
            {
               this.§implements set default§(param2);
            }
            this.§5214234435234448123423632234§ = param2 > 0 ? param2 : this.§521423114762311489123423632234§;
            this.§break const catch§.§5214236458236471123423632234§(§include for package§.§5214231080231093123423632234§(this.§5214234435234448123423632234§));
         }
      }
      
      public function §implements package super§() : void
      {
         this.§521423131552313168123423632234§();
         this.§5214234435234448123423632234§ = 0;
         this.§break const catch§.§5214236458236471123423632234§(§include for package§.§5214231080231093123423632234§(this.§5214234435234448123423632234§));
      }
      
      private function removeEvents() : void
      {
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.BEGIN_LAYOUT_SWITCH",this.§true package class§);
         §continue for final§.removeEventListener("LobbyLayoutServiceEvent.END_LAYOUT_SWITCH",this.§true package class§);
         this.§break const catch§.removeEventListener("BattleInfoViewEvent.EXIT_FROM_BATTLE",§use for use§);
         this.§break const catch§.removeEventListener("BattleInfoViewEvent.RETURN_TO_BATTLE",§default set if§);
         this.§break const catch§.removeEventListener("BattleInfoViewEvent.ENTER_DM",this.§with use switch§);
         this.§break const catch§.removeEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.§if package get§);
         §52142329523308123423632234§.removeEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.§throw set for§);
      }
      
      private function init() : void
      {
         this.§set set throw§ = new Timer(500);
         this.§521423134882313501123423632234§ = new Vector.<BattleInfoUser>();
      }
      
      private function §extends const each§(param1:int) : void
      {
         if(param1 >= this.§true package import§ && param1 <= this.§for catch extends§)
         {
            this.§5214236576236589123423632234§ = true;
         }
         else
         {
            this.§5214236576236589123423632234§ = false;
         }
      }
   }
}

