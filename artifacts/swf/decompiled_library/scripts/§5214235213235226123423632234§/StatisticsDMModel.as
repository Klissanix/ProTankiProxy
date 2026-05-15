package §5214235213235226123423632234§
{
   import §5214231664231677123423632234§.ClientUserInfo;
   import §5214231664231677123423632234§.ClientUserStat;
   import §5214231664231677123423632234§.ShortUserInfo;
   import §5214231664231677123423632234§.§extends finally package§;
   import §5214235524235537123423632234§.§override var extends§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import alternativa.tanks.models.statistics.§52142356323576123423632234§;
   import alternativa.tanks.models.statistics.§5214238848238861123423632234§;
   import alternativa.tanks.models.statistics.IClientUserInfo;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.utils.removeDisplayObject;
   import §default catch function§.§5214238884238897123423632234§;
   import §default catch function§.§throw finally switch§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.Dictionary;
   import §implements var class§.BattleFinishDmNotification;
   import §package finally switch§.§521423138562313869123423632234§;
   import §package finally switch§.§get switch super§;
   import §package finally switch§.§import var with§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.serverhalt.IServerHaltService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §static const throw§.ContinueBattleEvent;
   
   public class StatisticsDMModel extends §5214238884238897123423632234§ implements §throw finally switch§, §5214235049235062123423632234§, §throw catch var§, IClientUserInfo, §if use default§, §52142356323576123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §5214233905233918123423632234§:IServerHaltService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §use package do§:BattleGUIService;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §521423111482311161123423632234§:INotificationService;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §with var try§:PremiumService;
      
      public static var §true set each§:BattlefieldGUI;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §true finally package§:§override var extends§;
      
      private var §true use throw§:Boolean;
      
      private var §521423100192310032123423632234§:Dictionary;
      
      private var §throw package var§:Vector.<ClientUserStat>;
      
      private var §native use each§:int;
      
      public function StatisticsDMModel()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,this.onTankLoaded);
      }
      
      private static function e5157490(param1:Vector.<§521423138562313869123423632234§>) : Dictionary
      {
         var _loc4_:§521423138562313869123423632234§ = null;
         var _loc5_:ClientUserInfo = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc6_:int = int(param1.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc4_ = param1[_loc7_];
            _loc5_ = §extends finally package§.createClientUserInfo(_loc4_,§5214231658231671123423632234§.§dynamic use false§);
            _loc2_[_loc4_.§const const finally§] = _loc5_;
            _loc7_++;
         }
         for each(var _loc3_ in _loc2_)
         {
            _loc3_.loaded = true;
         }
         return _loc2_;
      }
      
      private function b5e061bb() : void
      {
         if(this.battleActive)
         {
            this.§true finally package§.§true package final§();
         }
      }
      
      private function e4b2da1b(param1:String) : ClientUserStat
      {
         return §extends finally package§.getClientUserStat(this.§throw package var§,param1);
      }
      
      public function roundStop() : void
      {
         this.battleActive = false;
         this.§true finally package§.§true package final§();
      }
      
      public function getShortUserInfo(param1:String) : ShortUserInfo
      {
         var _loc2_:ClientUserInfo = this.§521423100192310032123423632234§[param1];
         if(_loc2_ != null)
         {
            return _loc2_.getShortUserInfo();
         }
         return null;
      }
      
      public function userDisconnect(param1:String) : void
      {
         if(this.battleActive)
         {
            this.§true finally package§.§catch switch if§(param1,§5214231658231671123423632234§.§dynamic use false§);
         }
         var _loc2_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         var _loc3_:ClientUserInfo = this.§521423100192310032123423632234§[param1];
         _loc2_.userDisconnect(_loc3_.getShortUserInfo());
         delete this.§521423100192310032123423632234§[param1];
         --this.§native use each§;
         this.§throw package var§ = §extends finally package§.deleteUserStat(this.§throw package var§,param1);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 9 && !§521423131302313143123423632234§.isInputLocked())
         {
            this.f5a03d8d();
         }
      }
      
      private function onTankLoaded(param1:TankLoadedEvent) : void
      {
         var _loc2_:ClientUserStat = this.e4b2da1b(param1.tank.§do for final§.userName);
         _loc2_.loaded = true;
         this.§true finally package§.§521423138312313844123423632234§(_loc2_);
      }
      
      public function userConnect(param1:String, param2:Vector.<§521423138562313869123423632234§>) : void
      {
         var _loc3_:§521423138562313869123423632234§ = §extends finally package§.getUserInfo(param1,param2);
         this.§521423100192310032123423632234§[param1] = §extends finally package§.createClientUserInfo(_loc3_,§5214231658231671123423632234§.§dynamic use false§);
         ++this.§native use each§;
         this.§throw package var§ = §extends finally package§.createUsersStat(this.§521423100192310032123423632234§,param2);
         if(this.battleActive)
         {
            this.§true finally package§.§5214235748235761123423632234§(this.§throw package var§);
         }
      }
      
      public function changeUserStat(param1:§import var with§) : void
      {
         var _loc2_:ClientUserStat = §extends finally package§.changeUserStat(this.§throw package var§,param1);
         this.§true finally package§.§521423138312313844123423632234§(_loc2_);
         var _loc3_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         _loc3_.updateUserKills(_loc2_.userId,_loc2_.kills);
      }
      
      private function a6bc4b4e() : int
      {
         this.§throw package var§.sort(this.f11642d8);
         return §extends finally package§.getUserPosition(this.§throw package var§,§52142329523308123423632234§.userId) + 1;
      }
      
      private function c23e808c(param1:Event) : void
      {
         this.b5e061bb();
      }
      
      public function roundFinish(param1:Boolean, param2:Boolean, param3:int, param4:Vector.<§get switch super§>, param5:int, param6:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc9_:int = 0;
         var _loc8_:int = 0;
         this.battleActive = false;
         this.§true finally package§.§true package final§();
         §extends finally package§.updateReward(this.§throw package var§,param4,param5);
         if(param2)
         {
            _loc7_ = param5 > 0;
            param3 = §5214233905233918123423632234§.isServerHalt ? -1 : param3;
            this.§true finally package§.§521423122542312267123423632234§(param1,_loc7_,§52142329523308123423632234§.userId,this.§throw package var§,true,param3);
            if(§continue for final§.isWindowOpenOverBattle() && !§return set get§.isSpectatorMode())
            {
               _loc9_ = §extends finally package§.getRewardById(§52142329523308123423632234§.userId,param4);
               _loc8_ = 0;
               if(§with var try§.hasPremium())
               {
                  _loc8_ += §extends finally package§.calculateBonusReward(_loc9_,param5);
               }
               §521423111482311161123423632234§.addNotification(new BattleFinishDmNotification(this.a6bc4b4e(),this.§throw package var§.length,_loc9_,_loc8_));
            }
         }
      }
      
      public function suspiciousnessChanged(param1:String, param2:Boolean) : void
      {
         var _loc3_:ClientUserStat = this.e4b2da1b(param1);
         if(_loc3_ != null)
         {
            _loc3_.suspicious = param2;
            this.§true finally package§.§521423138312313844123423632234§(_loc3_);
         }
      }
      
      public function getUsersCount() : int
      {
         return this.§native use each§;
      }
      
      public function rankChanged(param1:String, param2:int) : void
      {
         var _loc3_:ClientUserStat = this.e4b2da1b(param1);
         _loc3_.rank = param2;
         this.§true finally package§.§521423138312313844123423632234§(_loc3_);
      }
      
      private function f5a03d8d() : void
      {
         if(this.battleActive)
         {
            this.§true finally package§.§521423122542312267123423632234§(false,false,§52142329523308123423632234§.userId,this.§throw package var§,false,0);
         }
      }
      
      public function roundStart() : void
      {
         this.battleActive = true;
         this.§true finally package§.§true package final§();
      }
      
      private function c5de2e8c(param1:ContinueBattleEvent) : void
      {
         if(!§continue for final§.isSwitchInProgress())
         {
            if(!this.battleActive)
            {
               §continue for final§.exitFromBattleWithoutNotify();
            }
            else
            {
               §continue for final§.exitFromBattle();
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function objectLoaded() : void
      {
         this.§521423100192310032123423632234§ = e5157490(§switch var switch§().§set var get§);
         this.§throw package var§ = §extends finally package§.createUsersStat(this.§521423100192310032123423632234§,§switch var switch§().§set var get§);
         this.§native use each§ = §switch var switch§().§set var get§.length;
         var _loc1_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         this.§true finally package§ = new §override var extends§(_loc1_.getBattleName(),false);
         this.§true finally package§.addEventListener("BattleStateEvent.EXIT",this.c5de2e8c);
         §use package do§.getTabContainer().addChild(this.§true finally package§);
      }
      
      public function objectUnloaded() : void
      {
         this.battleActive = false;
         this.§5214238269238282123423632234§.deactivateHandlers();
         display.stage.removeEventListener("keyDown",this.onKeyDown);
         display.stage.removeEventListener("keyUp",this.onKeyUp);
         display.stage.removeEventListener("deactivate",this.c23e808c);
         this.§true finally package§.§true package final§();
         this.§true finally package§.removeEventListener("BattleStateEvent.EXIT",this.c5de2e8c);
         removeDisplayObject(this.§true finally package§);
         this.§true finally package§ = null;
         this.§521423100192310032123423632234§.length = 0;
         this.§throw package var§.length = 0;
         this.§throw package var§ = null;
         this.§521423100192310032123423632234§ = null;
         this.§native use each§ = 0;
      }
      
      public function isLoaded(param1:String) : Boolean
      {
         var _loc2_:ClientUserInfo = this.§521423100192310032123423632234§[param1];
         return _loc2_ != null && _loc2_.loaded;
      }
      
      public function refreshUsersStat(param1:Vector.<§import var with§>) : void
      {
         this.§throw package var§ = §extends finally package§.refreshUsersStat(this.§521423100192310032123423632234§,param1);
         var _loc2_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_.updateUserKills(param1[_loc4_].§const const finally§,param1[_loc4_].kills);
            _loc4_++;
         }
         this.§true finally package§.§5214235748235761123423632234§(this.§throw package var§);
      }
      
      private function get battleActive() : Boolean
      {
         return this.§true use throw§;
      }
      
      private function f11642d8(param1:ClientUserStat, param2:ClientUserStat) : Number
      {
         if(param1.kills > param2.kills)
         {
            return -1;
         }
         if(param1.kills < param2.kills)
         {
            return 1;
         }
         if(param1.deaths > param2.deaths)
         {
            return 1;
         }
         if(param1.deaths < param2.deaths)
         {
            return -1;
         }
         return 0;
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 9)
         {
            this.b5e061bb();
         }
      }
      
      public function objectLoadedPost() : void
      {
         this.battleActive = true;
         this.§5214238269238282123423632234§.activateHandlers();
         display.stage.addEventListener("keyDown",this.onKeyDown);
         display.stage.addEventListener("keyUp",this.onKeyUp);
         display.stage.addEventListener("deactivate",this.c23e808c);
      }
      
      private function set battleActive(param1:Boolean) : void
      {
         this.§true use throw§ = param1;
         §return set get§.battleActive = param1;
      }
      
      public function objectUnloadedPost() : void
      {
      }
   }
}

