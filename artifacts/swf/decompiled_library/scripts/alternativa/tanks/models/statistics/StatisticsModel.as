package alternativa.tanks.models.statistics
{
   import §521423106982310711123423632234§.NotificationEndsPauseSupport;
   import §5214231664231677123423632234§.DefaultLayout;
   import §5214231664231677123423632234§.ShortUserInfo;
   import §5214232683232696123423632234§.§use static§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214238161238174123423632234§.BattlefieldMessages;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§dynamic switch break§;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkManager;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.utils.removeDisplayObject;
   import §dynamic switch in§.§class use native§;
   import §each var do§.§521423127822312795123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import §finally switch catch§.§else for while§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import §override catch default§.Long;
   import §package finally switch§.§5214239551239564123423632234§;
   import §package finally switch§.§break with§;
   import §package finally switch§.§get switch super§;
   import platform.client.fp10.core.model.impl.Model;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import §super package else§.§52142354123554123423632234§;
   import §throw catch in§.§5214235964235977123423632234§;
   import §try use throw§.§while catch catch§;
   
   public class StatisticsModel extends §break with§ implements §5214239551239564123423632234§, §5214238848238861123423632234§, BattlefieldGUI, §dynamic switch break§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §use package do§:BattleGUIService;
      
      public static var §5214239416239429123423632234§:BattleFormatUtil;
      
      public static var display:IDisplay;
      
      public static var §with switch implements§:IClientUserInfo;
      
      private var §521423119222311935123423632234§:§else for while§;
      
      private var §package set finally§:§5214235964235977123423632234§;
      
      private var §5214233344233357123423632234§:BattlefieldMessages;
      
      private var §5214238501238514123423632234§:§52142354123554123423632234§;
      
      private var §extends switch final§:String;
      
      private var §521423822395123423632234§:String;
      
      private var §each switch class§:String;
      
      private var §521423101912310204123423632234§:SpectatorScreenLayouts;
      
      private var §5214236454236467123423632234§:ControlsMiniHelpSupport;
      
      private var §in catch import§:ControlsHelpSupport;
      
      private var §super switch§:FpsIndicatorToggleSupport;
      
      private var §return var else§:NotificationEndsPauseSupport;
      
      private var §5214236210236223123423632234§:DefaultLayout;
      
      private var §5214236817236830123423632234§:PauseIndicatorSupport;
      
      private var §dynamic package finally§:TankKillLogger;
      
      private var §521423103722310385123423632234§:BattleUserInfoServiceImpl;
      
      private var parkourMode:Boolean;
      
      private var equipmentConstraintsMode:§521423127822312795123423632234§;
      
      public function StatisticsModel()
      {
         super();
         this.§5214238501238514123423632234§ = new §52142354123554123423632234§();
         WinkManager.init(500);
         OSGi.getInstance().registerService(BattlefieldGUI,this);
      }
      
      public function objectLoaded() : void
      {
         this.§extends switch final§ = §switch var switch§().§return package for§;
         this.equipmentConstraintsMode = §switch var switch§().§52142311123124123423632234§;
         this.parkourMode = §switch var switch§().§521423127912312804123423632234§;
         this.§521423822395123423632234§ = §5214236363236376123423632234§.getText("BATTLE_PLAYER_JOINED");
         this.§each switch class§ = §5214236363236376123423632234§.getText("BATTLE_PLAYER_LEFT");
         var _loc1_:BattleUserInfoServiceImpl = new BattleUserInfoServiceImpl(null);
         this.§521423103722310385123423632234§ = _loc1_;
         this.§5214236817236830123423632234§ = new PauseIndicatorSupport();
         this.§dynamic package finally§ = new TankKillLogger();
         this.§return var else§ = new NotificationEndsPauseSupport();
         this.§super switch§ = new FpsIndicatorToggleSupport(this.§5214238501238514123423632234§);
         var _loc2_:DisplayObjectContainer = §use package do§.getGuiContainer();
         this.§521423119222311935123423632234§ = new §else for while§(§52142329523308123423632234§.userId,§switch var switch§().§do set import§,§switch var switch§().§5214236316236329123423632234§,§switch var switch§().§default package override§,§class use native§.§each switch if§(§switch var switch§().§throw var include§),true);
         _loc2_.addChild(this.§521423119222311935123423632234§);
         this.§5214236210236223123423632234§ = new DefaultLayout();
         this.§5214236210236223123423632234§.addWidget2(this.§521423119222311935123423632234§);
         this.§5214236210236223123423632234§.init();
         this.§5214233344233357123423632234§ = new BattlefieldMessages();
         _loc2_.addChild(this.§5214233344233357123423632234§);
         this.§package set finally§ = new §5214235964235977123423632234§();
         _loc2_.addChild(this.§package set finally§);
         this.§5214238501238514123423632234§.§import try§(§521423998231011123423632234§.refreshRate);
         if(§521423998231011123423632234§.showFPS)
         {
            _loc2_.addChild(this.§5214238501238514123423632234§);
         }
         if(§switch var switch§().§5214236570236583123423632234§)
         {
            this.c938c44();
         }
         else
         {
            this.§5214236454236467123423632234§ = new ControlsMiniHelpSupport();
            this.§in catch import§ = new ControlsHelpSupport();
         }
         display.stage.addEventListener("resize",this.onResize);
         this.onResize(null);
      }
      
      public function asShowFlagCarried() : void
      {
         this.§521423119222311935123423632234§.§if catch super§();
      }
      
      private function c1ad90bc() : Boolean
      {
         return §switch var switch§().§5214236316236329123423632234§.§5214239290239303123423632234§ != 0;
      }
      
      public function onComplaintConfirmed() : void
      {
         this.§5214233344233357123423632234§.addMessage(16776960,§5214236363236376123423632234§.getText("TEXT_TEAM_KICK_COMPLAINT_SENT"));
      }
      
      public function userDisconnect(param1:ShortUserInfo) : void
      {
         this.§package set finally§.§5214238882238895123423632234§(param1,this.§each switch class§);
      }
      
      public function asShowFlagAtBase() : void
      {
         this.§521423119222311935123423632234§.§true set null§();
      }
      
      public function turnOnTimerToRestoreBalance(param1:int) : void
      {
         this.§521423119222311935123423632234§.§5214238658238671123423632234§(param1);
      }
      
      public function getBattleName() : String
      {
         var _loc1_:String = this.§extends switch final§;
         var _loc2_:§521423127822312795123423632234§ = this.equipmentConstraintsMode;
         var _loc3_:Boolean = this.parkourMode;
         if(§5214239416239429123423632234§.isFormatBattle(_loc2_,_loc3_))
         {
            _loc1_ = _loc1_ + " " + §5214239416239429123423632234§.getShortFormatName(_loc2_,_loc3_);
         }
         return _loc1_;
      }
      
      public function objectUnloaded() : void
      {
         display.stage.removeEventListener("resize",this.onResize);
         removeDisplayObject(this.§521423119222311935123423632234§);
         removeDisplayObject(this.§package set finally§);
         removeDisplayObject(this.§5214238501238514123423632234§);
         this.§521423119222311935123423632234§ = null;
         §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this);
         if(this.§5214236454236467123423632234§ != null)
         {
            this.§5214236454236467123423632234§.close();
         }
         if(this.§in catch import§ != null)
         {
            this.§in catch import§.close();
         }
         this.§dynamic package finally§.close();
         this.§5214236817236830123423632234§.close();
         this.§super switch§.close();
         this.§return var else§.close();
         if(this.§521423101912310204123423632234§ != null)
         {
            this.§521423101912310204123423632234§.close();
         }
         this.§521423101912310204123423632234§ = null;
         this.§package set finally§ = null;
         this.§5214233344233357123423632234§.removeFromParent();
         this.§5214233344233357123423632234§ = null;
         this.§5214236210236223123423632234§.destroy();
         this.§5214236210236223123423632234§ = null;
         this.§521423103722310385123423632234§.close();
      }
      
      public function fundChange(param1:int) : void
      {
         this.§521423119222311935123423632234§.§true package override§(param1);
      }
      
      public function logTankReloaded(param1:String, param2:String) : void
      {
         var _loc3_:IClientUserInfo = IClientUserInfo(§with switch implements§);
         var _loc4_:ShortUserInfo = _loc3_.getShortUserInfo(param1);
         this.§package set finally§.§5214238882238895123423632234§(_loc4_,param2);
      }
      
      public function onRankChanged(param1:String, param2:int) : void
      {
         var _loc3_:IClientUserInfo = IClientUserInfo(§with switch implements§);
         _loc3_.rankChanged(param1,param2);
         if(§5214236557236570123423632234§.§521423104062310419123423632234§ != null && param1 == §5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§.id)
         {
            ControlsMiniHelpSupport(this.§5214236454236467123423632234§).close();
         }
         var _loc4_:BattleUserInfoServiceImpl = this.battleUserInfoService();
         _loc4_.dispatchRankChange(param1,param2);
      }
      
      private function c7506091(param1:Vector.<String>) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            this.bbb918f(_loc2_,true);
         }
      }
      
      public function userConnect(param1:ShortUserInfo) : void
      {
         this.§package set finally§.§5214238882238895123423632234§(param1,this.§521423822395123423632234§);
      }
      
      private function c938c44() : void
      {
         var _loc1_:§use static§ = §use static§(modelRegistry.getModel(Long.getLong(1078635001,-1050926165)));
         this.§521423101912310204123423632234§ = new SpectatorScreenLayouts(_loc1_.§implements set native§(),this.§package set finally§,this.§5214233344233357123423632234§,this.§521423119222311935123423632234§,this.§5214238501238514123423632234§);
      }
      
      public function ctfShowFlagCarried(param1:§5214231658231671123423632234§) : void
      {
         this.§521423119222311935123423632234§.§5214233304233317123423632234§(param1);
      }
      
      private function onResize(param1:Event) : void
      {
         var _loc2_:int = display.stage.stageWidth / Display.§521423132512313264123423632234§;
         var _loc3_:int = display.stage.stageHeight / Display.§521423132512313264123423632234§;
         if(this.§5214233344233357123423632234§ != null)
         {
            this.§5214233344233357123423632234§.x = 0.5 * _loc2_;
            this.§5214233344233357123423632234§.y = 40;
         }
      }
      
      private function battleUserInfoService() : BattleUserInfoServiceImpl
      {
         return BattleUserInfoServiceImpl(this.§521423103722310385123423632234§);
      }
      
      public function getTimeLeftInSec() : int
      {
         return 10000;
      }
      
      public function showBattleLogMessage(param1:String) : void
      {
         this.§package set finally§.§5214238882238895123423632234§(null,param1,null);
      }
      
      public function ctfShowFlagDropped(param1:§5214231658231671123423632234§) : void
      {
         this.§521423119222311935123423632234§.§5214236726236739123423632234§(param1);
      }
      
      public function updateUserKills(param1:String, param2:int) : void
      {
         this.§521423119222311935123423632234§.§if const in§(param1,param2);
      }
      
      public function addWidget(param1:§while catch catch§) : void
      {
         this.§5214236210236223123423632234§.addWidget(param1);
      }
      
      private function bbb918f(param1:String, param2:Boolean) : void
      {
         var _loc3_:IClientUserInfo = IClientUserInfo(§with switch implements§);
         _loc3_.suspiciousnessChanged(param1,param2);
         var _loc4_:BattleUserInfoServiceImpl = this.battleUserInfoService();
         _loc4_.dispatchSuspiciousnessChange(param1,param2);
      }
      
      public function changeTeamScore(param1:§5214231658231671123423632234§, param2:int) : void
      {
         this.§521423119222311935123423632234§.§52142318323196123423632234§(param1,param2);
      }
      
      public function showBattleMessage(param1:uint, param2:String) : void
      {
         this.§5214233344233357123423632234§.addMessage(param1,param2);
      }
      
      public function asShowFlagDropped() : void
      {
         this.§521423119222311935123423632234§.§package catch super§();
      }
      
      public function statusProbablyCheaterChanged(param1:String, param2:Boolean) : void
      {
         this.bbb918f(param1,param2);
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:Boolean = false;
         this.c7506091(§switch var switch§().§5214236251236264123423632234§);
         §52142380523818123423632234§.getBattleRunner().addLogicUnit(this);
         if(this.c1ad90bc())
         {
            _loc1_ = §switch var switch§().§5214236570236583123423632234§;
            if(!_loc1_ || _loc1_ && this.battleUserInfoService().getUsersCount() > 0)
            {
               this.§521423119222311935123423632234§.§5214237758237771123423632234§(§switch var switch§().§default package override§);
            }
         }
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         this.§5214233344233357123423632234§.update(param2);
      }
      
      public function roundFinish(param1:Boolean, param2:Vector.<§get switch super§>, param3:int) : void
      {
         var _loc4_:§52142356323576123423632234§ = §52142356323576123423632234§(§with switch implements§);
         _loc4_.roundFinish(false,param1,param3,param2,100,0);
         this.§521423119222311935123423632234§.§5214239950239963123423632234§();
      }
      
      public function roundStart(param1:int, param2:Boolean) : void
      {
         this.§521423119222311935123423632234§.§implements import§(param2);
         if(param1 > 0)
         {
            this.§521423119222311935123423632234§.§5214237758237771123423632234§(param1);
         }
         var _loc3_:§52142356323576123423632234§ = §52142356323576123423632234§(§with switch implements§);
         _loc3_.roundStart();
      }
      
      public function ctfShowFlagAtBase(param1:§5214231658231671123423632234§) : void
      {
         this.§521423119222311935123423632234§.§5214238878238891123423632234§(param1);
      }
      
      public function showUserBattleLogMessage(param1:String, param2:String, param3:String = null) : void
      {
         var _loc6_:IClientUserInfo = IClientUserInfo(§with switch implements§);
         var _loc4_:ShortUserInfo = _loc6_.getShortUserInfo(param1);
         var _loc5_:ShortUserInfo = param3 == null ? null : _loc6_.getShortUserInfo(param3);
         this.§package set finally§.§5214238882238895123423632234§(_loc4_,param2,_loc5_);
      }
      
      public function roundStop() : void
      {
         if(this.c1ad90bc())
         {
            this.§521423119222311935123423632234§.§5214239263239276123423632234§();
         }
         this.§521423119222311935123423632234§.§5214237179237192123423632234§();
         var _loc1_:§52142356323576123423632234§ = §52142356323576123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§52142356323576123423632234§));
         _loc1_.roundStop();
      }
      
      public function turnOffTimerToRestoreBalance() : void
      {
         this.§521423119222311935123423632234§.§521423104852310498123423632234§();
      }
   }
}

