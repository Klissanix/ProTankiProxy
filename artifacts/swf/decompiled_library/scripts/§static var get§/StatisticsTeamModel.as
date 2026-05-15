package §static var get§
{
   import §5214231664231677123423632234§.ClientUserInfo;
   import §5214231664231677123423632234§.ClientUserStat;
   import §5214231664231677123423632234§.ShortUserInfo;
   import §5214231664231677123423632234§.§extends finally package§;
   import §5214235524235537123423632234§.§override var extends§;
   import §5214236524236537123423632234§.§521423133502313363123423632234§;
   import §5214236524236537123423632234§.§false catch§;
   import §5214236524236537123423632234§.§final for try§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import alternativa.tanks.models.statistics.§52142356323576123423632234§;
   import alternativa.tanks.models.statistics.§5214238848238861123423632234§;
   import alternativa.tanks.models.statistics.IClientUserInfo;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.utils.removeDisplayObject;
   import §continue switch package§.§in catch var§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.Dictionary;
   import §implements var class§.BattleFinishTeamNotification;
   import §package finally switch§.§521423138562313869123423632234§;
   import §package finally switch§.§get switch super§;
   import §package finally switch§.§import var with§;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.serverhalt.IServerHaltService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §static const throw§.ContinueBattleEvent;
   
   public class StatisticsTeamModel extends §final for try§ implements §521423133502313363123423632234§, §do set function§, §5214234168234181123423632234§, §throw catch var§, IClientUserInfo, §if use default§, §52142356323576123423632234§
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
      
      private var battleActive:Boolean;
      
      private var §true finally package§:§override var extends§;
      
      private var §5214238759238772123423632234§:Vector.<ClientUserStat>;
      
      private var §5214239119239132123423632234§:Vector.<ClientUserStat>;
      
      private var §521423100192310032123423632234§:Dictionary;
      
      private var §5214236641236654123423632234§:§5214231658231671123423632234§;
      
      private var §do for package§:§5214231658231671123423632234§;
      
      private var scoreRed:int;
      
      private var scoreBlue:int;
      
      private var §native use each§:int;
      
      public function StatisticsTeamModel()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.b3b06d40);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,this.onTankLoaded);
      }
      
      private static function b4cf4008(param1:§5214231658231671123423632234§) : void
      {
         var _loc2_:§in catch var§ = new §in catch var§(3,param1 == §5214231658231671123423632234§.§521423107532310766123423632234§ ? 0 : 1);
         _loc2_.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ - _loc2_.width >> 1;
         _loc2_.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - _loc2_.height >> 1;
         §use package do§.getGuiContainer().addChild(_loc2_);
      }
      
      private static function e25d82b9(param1:Vector.<ClientUserStat>, param2:§5214231658231671123423632234§) : void
      {
         var _loc4_:ClientUserStat = null;
         var _loc5_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            _loc4_ = param1[_loc3_];
            if(_loc4_ == null)
            {
               break;
            }
            _loc4_.teamType = param2;
            _loc3_++;
         }
      }
      
      private static function e5157490(param1:Vector.<§521423138562313869123423632234§>, param2:Vector.<§521423138562313869123423632234§>) : Dictionary
      {
         var _loc3_:Dictionary = new Dictionary();
         for each(var _loc5_ in param1)
         {
            _loc3_[_loc5_.§const const finally§] = §extends finally package§.createClientUserInfo(_loc5_,§5214231658231671123423632234§.§521423107532310766123423632234§);
         }
         for each(_loc5_ in param2)
         {
            _loc3_[_loc5_.§const const finally§] = §extends finally package§.createClientUserInfo(_loc5_,§5214231658231671123423632234§.§implements set implements§);
         }
         for each(var _loc4_ in _loc3_)
         {
            _loc4_.loaded = true;
         }
         return _loc3_;
      }
      
      public function getUsersCount() : int
      {
         return this.§native use each§;
      }
      
      public function roundStop() : void
      {
         this.battleActive = true;
         this.§true finally package§.§true package final§();
      }
      
      private function f5a03d8d() : void
      {
         if(this.battleActive)
         {
            this.§true finally package§.§521423119872312000123423632234§(false,false,§52142329523308123423632234§.userId,this.§5214238759238772123423632234§,this.§5214239119239132123423632234§,false,0,this.§5214236641236654123423632234§);
         }
      }
      
      public function objectUnloaded() : void
      {
         this.battleActive = false;
         this.§5214238269238282123423632234§.deactivateHandlers();
         display.stage.removeEventListener("keyDown",this.onKeyDown);
         display.stage.removeEventListener("keyUp",this.onKeyUp);
         display.stage.removeEventListener("deactivate",this.c23e808c);
         this.§true finally package§.§true package final§();
         this.§true finally package§.removeEventListener("BattleStateEvent.EXIT",this.c6bd5d32);
         removeDisplayObject(this.§true finally package§);
         this.§true finally package§ = null;
         this.§5214238759238772123423632234§ = null;
         this.§5214239119239132123423632234§ = null;
         this.§521423100192310032123423632234§ = null;
         this.§do for package§ = null;
         this.§native use each§ = 0;
      }
      
      private function b5e061bb() : void
      {
         if(this.battleActive)
         {
            this.§true finally package§.§true package final§();
         }
      }
      
      private function onTankLoaded(param1:TankLoadedEvent) : void
      {
         var _loc2_:ClientUserStat = this.e4b2da1b(param1.tank.§do for final§.userName);
         _loc2_.loaded = true;
         this.§true finally package§.§with set true§(_loc2_);
      }
      
      private function c6209f44() : int
      {
         var _loc1_:int = 0;
         this.§5214238759238772123423632234§.sort(this.f619c1d7);
         this.§5214239119239132123423632234§.sort(this.f619c1d7);
         _loc1_ = 0;
         if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            _loc1_ = §extends finally package§.getUserPosition(this.§5214238759238772123423632234§,§52142329523308123423632234§.userId);
         }
         else if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§implements set implements§)
         {
            _loc1_ = §extends finally package§.getUserPosition(this.§5214239119239132123423632234§,§52142329523308123423632234§.userId);
         }
         return _loc1_ + 1;
      }
      
      public function objectLoadedPost() : void
      {
         this.battleActive = true;
         var _loc1_:§false catch§ = §switch var switch§();
         this.changeTeamScore(§5214231658231671123423632234§.§521423107532310766123423632234§,_loc1_.§static const break§);
         this.changeTeamScore(§5214231658231671123423632234§.§implements set implements§,_loc1_.§default native§);
         this.d2158d0b();
         this.§5214238269238282123423632234§.activateHandlers();
         display.stage.addEventListener("keyDown",this.onKeyDown);
         display.stage.addEventListener("keyUp",this.onKeyUp);
         display.stage.addEventListener("deactivate",this.c23e808c);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 9 && !§521423131302313143123423632234§.isInputLocked())
         {
            this.f5a03d8d();
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 9)
         {
            this.b5e061bb();
         }
      }
      
      public function changeTeamScore(param1:§5214231658231671123423632234§, param2:int) : void
      {
         if(param1 == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            this.scoreRed = param2;
         }
         else if(param1 == §5214231658231671123423632234§.§implements set implements§)
         {
            this.scoreBlue = param2;
         }
         var _loc3_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         _loc3_.changeTeamScore(param1,param2);
      }
      
      public function suspiciousnessChanged(param1:String, param2:Boolean) : void
      {
         var _loc3_:ClientUserStat = this.e4b2da1b(param1);
         if(_loc3_ != null)
         {
            _loc3_.suspicious = param2;
            this.§true finally package§.§with set true§(_loc3_);
         }
      }
      
      public function isLoaded(param1:String) : Boolean
      {
         var _loc2_:ClientUserInfo = this.§521423100192310032123423632234§[param1];
         return _loc2_ != null && _loc2_.loaded;
      }
      
      public function roundStart() : void
      {
         this.battleActive = true;
         this.§true finally package§.§true package final§();
         this.changeTeamScore(§5214231658231671123423632234§.§521423107532310766123423632234§,0);
         this.changeTeamScore(§5214231658231671123423632234§.§implements set implements§,0);
      }
      
      private function e4b2da1b(param1:String) : ClientUserStat
      {
         var _loc2_:ClientUserStat = §extends finally package§.getClientUserStat(this.§5214238759238772123423632234§,param1);
         if(_loc2_ == null)
         {
            _loc2_ = §extends finally package§.getClientUserStat(this.§5214239119239132123423632234§,param1);
         }
         return _loc2_;
      }
      
      private function c23e808c(param1:Event) : void
      {
         this.b5e061bb();
      }
      
      public function userConnect(param1:String, param2:Vector.<§521423138562313869123423632234§>, param3:§5214231658231671123423632234§) : void
      {
         var _loc4_:§521423138562313869123423632234§ = §extends finally package§.getUserInfo(param1,param2);
         this.§521423100192310032123423632234§[param1] = §extends finally package§.createClientUserInfo(_loc4_,param3);
         ++this.§native use each§;
         if(param3 == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            this.§5214238759238772123423632234§ = §extends finally package§.createUsersStat(this.§521423100192310032123423632234§,param2);
            if(this.battleActive)
            {
               this.§true finally package§.§521423121592312172123423632234§(this.§5214238759238772123423632234§,param3);
            }
         }
         if(param3 == §5214231658231671123423632234§.§implements set implements§)
         {
            this.§5214239119239132123423632234§ = §extends finally package§.createUsersStat(this.§521423100192310032123423632234§,param2);
            if(this.battleActive)
            {
               this.§true finally package§.§521423121592312172123423632234§(this.§5214239119239132123423632234§,param3);
            }
         }
      }
      
      private function f619c1d7(param1:ClientUserStat, param2:ClientUserStat) : Number
      {
         if(param1.score > param2.score)
         {
            return -1;
         }
         if(param1.score < param2.score)
         {
            return 1;
         }
         return 0;
      }
      
      private function e10a4b19() : Boolean
      {
         if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            return this.scoreRed > this.scoreBlue;
         }
         if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§implements set implements§)
         {
            return this.scoreBlue > this.scoreRed;
         }
         return false;
      }
      
      public function refreshUsersStat(param1:Vector.<§import var with§>, param2:§5214231658231671123423632234§) : void
      {
         if(param2 == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            this.§5214238759238772123423632234§ = §extends finally package§.refreshUsersStat(this.§521423100192310032123423632234§,param1);
            this.§true finally package§.§521423121592312172123423632234§(this.§5214238759238772123423632234§,param2);
         }
         if(param2 == §5214231658231671123423632234§.§implements set implements§)
         {
            this.§5214239119239132123423632234§ = §extends finally package§.refreshUsersStat(this.§521423100192310032123423632234§,param1);
            this.§true finally package§.§521423121592312172123423632234§(this.§5214239119239132123423632234§,param2);
         }
      }
      
      private function c6bd5d32(param1:ContinueBattleEvent) : void
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
      
      public function swapTeam(param1:Vector.<§import var with§>, param2:Vector.<§import var with§>) : void
      {
         this.§5214238759238772123423632234§ = §extends finally package§.refreshUsersStat(this.§521423100192310032123423632234§,param1);
         this.§5214239119239132123423632234§ = §extends finally package§.refreshUsersStat(this.§521423100192310032123423632234§,param2);
         e25d82b9(this.§5214238759238772123423632234§,§5214231658231671123423632234§.§521423107532310766123423632234§);
         e25d82b9(this.§5214239119239132123423632234§,§5214231658231671123423632234§.§implements set implements§);
         this.d2158d0b();
         this.§true finally package§.§521423121592312172123423632234§(this.§5214238759238772123423632234§,§5214231658231671123423632234§.§521423107532310766123423632234§);
         this.§true finally package§.§521423121592312172123423632234§(this.§5214239119239132123423632234§,§5214231658231671123423632234§.§implements set implements§);
      }
      
      private function d2158d0b() : void
      {
         var _loc1_:ClientUserStat = this.e4b2da1b(§52142329523308123423632234§.userId);
         if(_loc1_ != null)
         {
            this.§5214236641236654123423632234§ = _loc1_.teamType;
         }
      }
      
      private function f846676() : int
      {
         if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            return this.§5214238759238772123423632234§.length;
         }
         if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§implements set implements§)
         {
            return this.§5214239119239132123423632234§.length;
         }
         return 0;
      }
      
      public function changeUserStat(param1:§import var with§, param2:§5214231658231671123423632234§) : void
      {
         var _loc3_:ClientUserStat = null;
         if(param2 == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            _loc3_ = §extends finally package§.changeUserStat(this.§5214238759238772123423632234§,param1);
         }
         if(param2 == §5214231658231671123423632234§.§implements set implements§)
         {
            _loc3_ = §extends finally package§.changeUserStat(this.§5214239119239132123423632234§,param1);
         }
         var _loc4_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         _loc4_.updateUserKills(param1.§const const finally§,param1.kills);
         this.§true finally package§.§with set true§(_loc3_);
      }
      
      public function roundFinish(param1:Boolean, param2:Boolean, param3:int, param4:Vector.<§get switch super§>, param5:int, param6:int) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.battleActive = false;
         this.§true finally package§.§true package final§();
         §extends finally package§.updateReward(this.§5214238759238772123423632234§,param4,param5);
         §extends finally package§.updateReward(this.§5214239119239132123423632234§,param4,param5);
         if(param2)
         {
            _loc7_ = param5 > 0;
            this.§true finally package§.§521423119872312000123423632234§(param1,_loc7_,§52142329523308123423632234§.userId,this.§5214238759238772123423632234§,this.§5214239119239132123423632234§,true,§5214233905233918123423632234§.isServerHalt ? -1 : param3,this.§5214236641236654123423632234§);
         }
         if(param2 && §continue for final§.isWindowOpenOverBattle() && !§return set get§.isSpectatorMode())
         {
            _loc8_ = §extends finally package§.getRewardById(§52142329523308123423632234§.userId,param4);
            _loc9_ = 0;
            if(§with var try§.hasPremium())
            {
               _loc9_ += §extends finally package§.calculateBonusReward(_loc8_,param5);
            }
            §521423111482311161123423632234§.addNotification(new BattleFinishTeamNotification(this.e10a4b19(),this.a5cb2dc8(),this.c6209f44(),this.f846676(),_loc8_,_loc9_));
         }
      }
      
      private function b3b06d40(param1:TankAddedToBattleEvent) : void
      {
         if(param1.tank.§5214233939233952123423632234§().id == §52142329523308123423632234§.userId)
         {
            if(param1.tank.§5214238124238137123423632234§ != this.§do for package§)
            {
               this.§do for package§ = param1.tank.§5214238124238137123423632234§;
               b4cf4008(this.§do for package§);
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function a5cb2dc8() : Boolean
      {
         if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            return this.scoreBlue > this.scoreRed;
         }
         if(this.§5214236641236654123423632234§ == §5214231658231671123423632234§.§implements set implements§)
         {
            return this.scoreRed > this.scoreBlue;
         }
         return false;
      }
      
      public function rankChanged(param1:String, param2:int) : void
      {
         var _loc3_:ClientUserStat = this.e4b2da1b(param1);
         _loc3_.rank = param2;
         this.§true finally package§.§with set true§(_loc3_);
      }
      
      public function objectLoaded() : void
      {
         this.§do for package§ = §5214231658231671123423632234§.§dynamic use false§;
         var _loc1_:§false catch§ = §switch var switch§();
         this.§521423100192310032123423632234§ = e5157490(_loc1_.§continue use default§,_loc1_.§in set for§);
         this.§native use each§ = _loc1_.§continue use default§.length + _loc1_.§in set for§.length;
         this.§5214238759238772123423632234§ = §extends finally package§.createUsersStat(this.§521423100192310032123423632234§,_loc1_.§continue use default§);
         this.§5214239119239132123423632234§ = §extends finally package§.createUsersStat(this.§521423100192310032123423632234§,_loc1_.§in set for§);
         var _loc2_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         this.§true finally package§ = new §override var extends§(_loc2_.getBattleName(),true);
         this.§true finally package§.addEventListener("BattleStateEvent.EXIT",this.c6bd5d32);
         §use package do§.getTabContainer().addChild(this.§true finally package§);
      }
      
      public function userDisconnect(param1:String) : void
      {
         var _loc3_:ClientUserInfo = this.§521423100192310032123423632234§[param1];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc2_:§5214238848238861123423632234§ = §5214238848238861123423632234§(§true set each§);
         _loc2_.userDisconnect(_loc3_.getShortUserInfo());
         if(this.battleActive)
         {
            this.§true finally package§.§catch switch if§(param1,_loc3_.teamType);
         }
         if(_loc3_.teamType == §5214231658231671123423632234§.§521423107532310766123423632234§)
         {
            this.§5214238759238772123423632234§ = §extends finally package§.deleteUserStat(this.§5214238759238772123423632234§,param1);
         }
         if(_loc3_.teamType == §5214231658231671123423632234§.§implements set implements§)
         {
            this.§5214239119239132123423632234§ = §extends finally package§.deleteUserStat(this.§5214239119239132123423632234§,param1);
         }
         delete this.§521423100192310032123423632234§[param1];
         --this.§native use each§;
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
   }
}

