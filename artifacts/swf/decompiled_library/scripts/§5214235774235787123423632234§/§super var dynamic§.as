package §5214235774235787123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214231303231316123423632234§.ClientTank;
   import §521423138772313890123423632234§.§native set override§;
   import §521423138772313890123423632234§.§null var false§;
   import §5214231758231771123423632234§.§5214232324232337123423632234§;
   import §5214232389232402123423632234§.§5214233861233874123423632234§;
   import §5214232446232459123423632234§.§5214234677234690123423632234§;
   import §5214232446232459123423632234§.§break switch default§;
   import §5214232446232459123423632234§.§extends throw§;
   import §5214232446232459123423632234§.§if for switch§;
   import §5214232446232459123423632234§.§switch var if§;
   import §5214232446232459123423632234§.§var catch true§;
   import §52142328123294123423632234§.§5214239381239394123423632234§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214235903235916123423632234§.§5214233899233912123423632234§;
   import §5214236339236352123423632234§.§5214237280237293123423632234§;
   import §5214236339236352123423632234§.§var throw§;
   import §5214237432237445123423632234§.§null package try§;
   import §5214237881237894123423632234§.§521423111932311206123423632234§;
   import §5214237881237894123423632234§.§5214234101234114123423632234§;
   import §5214238325238338123423632234§.§5214234586234599123423632234§;
   import §5214238361238374123423632234§.§521423123492312362123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import §5214238361238374123423632234§.§if while§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238730238743123423632234§.§5214235863235876123423632234§;
   import §5214238868238881123423632234§.§5214231727231740123423632234§;
   import §5214238868238881123423632234§.§5214237250237263123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Quaternion;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.BattleRestartEvent;
   import alternativa.tanks.battle.events.LocalTankActivationEvent;
   import alternativa.tanks.battle.events.LocalTankKilledEvent;
   import alternativa.tanks.battle.events.LocalTankSpawnEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.TankRemovedFromBattleEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.battle.battlefield.BattleSkyBox;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import alternativa.tanks.models.statistics.IClientUserInfo;
   import alternativa.tanks.models.statistics.StatisticsModel;
   import alternativa.tanks.models.tank.pause.ITankPause;
   import alternativa.tanks.models.tank.pause.TankPauseModel;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import alternativa.tanks.services.initialeffects.ClientBattleEffect;
   import alternativa.tanks.services.initialeffects.IInitialEffectsService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import alternativa.tanks.services.validator.§5214232026232039123423632234§;
   import alternativa.tanks.sfx.TankSoundEffects;
   import alternativa.tanks.sfx.§default var for§;
   import §const false§.TankDeadEvent;
   import §const false§.TankKilledEvent;
   import §each set class§.§5214232825232838123423632234§;
   import §each var null§.§const throw§;
   import §else switch default§.§5214235140235153123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import §false package super§.TankParts;
   import §false package super§.TankSpecification;
   import §false package super§.TankState;
   import §finally if§.§521423131952313208123423632234§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import §for const do§.§521423107282310741123423632234§;
   import §for const do§.§521423125392312552123423632234§;
   import §include var with§.§static for switch§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §set package in§.ClientObject;
   import §static var set§.§5214231263231276123423632234§;
   import §static var set§.§dynamic for get§;
   import §static var set§.§package for native§;
   import §static var set§.§switch catch do§;
   import §super catch default§.§5214238293238306123423632234§;
   import §switch use finally§.§5214232354232367123423632234§;
   import §switch use finally§.§5214235348235361123423632234§;
   import §switch use finally§.§throw each§;
   import §try native§.§5214231325231338123423632234§;
   
   public class §super var dynamic§ extends §native set override§ implements §null var false§, §switch var if§, §extends throw§, §if use default§, LocalTankInfoService
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214236582236595123423632234§:BattleUserInfoService;
      
      public static var §native switch include§:ModelRegistry;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §do switch var§:TankUsersRegistry;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §for catch import§:IInitialEffectsService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214239034239047123423632234§:ITankPause;
      
      public static var §for continue§:ResourceRegistry;
      
      public static var §5214234439234452123423632234§:BattleReadinessService;
      
      private static const §throw package catch§:Number = 0;
      
      private static const §switch var while§:Number = 135;
      
      private static const §5214239150239163123423632234§:§52142320823221123423632234§ = new §52142320823221123423632234§(0,0,0);
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §throw const in§:§521423140422314055123423632234§;
      
      private var §5214232365232378123423632234§:§5214238104238117123423632234§;
      
      private const §var switch in§:§521423111932311206123423632234§ = new §521423111932311206123423632234§(new §52142320823221123423632234§(0,0,0),0,new §52142320823221123423632234§(0,0,0),new §52142320823221123423632234§(0,0,0),new §52142320823221123423632234§(0,0,0));
      
      private const §in for if§:§5214234101234114123423632234§ = new §5214234101234114123423632234§(0,0);
      
      private const §521423104452310458123423632234§:Dictionary = new Dictionary();
      
      public var §throw var switch§:§5214236557236570123423632234§;
      
      private var §set var if§:Boolean = true;
      
      private const §function package try§:Quaternion = new Quaternion();
      
      private const §521423102322310245123423632234§:Quaternion = new Quaternion();
      
      private var §implements use with§:§5214237859237872123423632234§;
      
      private const §5214236057236070123423632234§:Vector3 = new Vector3();
      
      private var §5214231653231666123423632234§:§try var in§;
      
      private var §each switch import§:§5214237280237293123423632234§;
      
      private var §521423100732310086123423632234§:§while use do§;
      
      private var §return const case§:§5214235863235876123423632234§;
      
      private var §null const dynamic§:int;
      
      private var §5214239203239216123423632234§:int;
      
      private var §if for with§:§521423111932311206123423632234§ = new §521423111932311206123423632234§(new §52142320823221123423632234§(0,0,0),0,new §52142320823221123423632234§(0,0,0),new §52142320823221123423632234§(0,0,0),new §52142320823221123423632234§(0,0,0));
      
      private var §5214236184236197123423632234§:int;
      
      private var §5214235550235563123423632234§:int;
      
      private var §5214238433238446123423632234§:int;
      
      public function §super var dynamic§()
      {
         super();
         this.§return const case§ = new §5214235863235876123423632234§();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(BattleFinishEvent,this.§null set§);
         this.§5214238269238282123423632234§.addEventHandler(BattleRestartEvent,this.§5214237717237730123423632234§);
         this.§5214238269238282123423632234§.activateHandlers();
         this.§implements use with§ = new §5214237859237872123423632234§();
         OSGi.getInstance().registerService(LocalTankInfoService,this);
      }
      
      private static function §5214231615231628123423632234§(param1:TankParts) : TankSoundEffects
      {
         var _loc4_:§5214232825232838123423632234§ = §5214232825232838123423632234§(param1.§5214232442232455123423632234§.adapt(§5214232825232838123423632234§));
         var _loc2_:§null package try§ = _loc4_.§5214234374234387123423632234§();
         var _loc6_:Sound = _loc2_.§5214235000235013123423632234§.§set const switch§;
         var _loc7_:Sound = _loc2_.§5214239316239329123423632234§.§set const switch§;
         var _loc3_:Sound = _loc2_.§each const finally§.§set const switch§;
         var _loc5_:Sound = _loc2_.§super throw§.§set const switch§;
         return new TankSoundEffects(_loc6_,_loc7_,_loc3_,_loc5_);
      }
      
      private static function §super catch finally§(param1:§5214236557236570123423632234§) : void
      {
         var _loc2_:int = 0;
         var _loc7_:LocalTankInfoService = null;
         var _loc8_:§521423131952313208123423632234§ = null;
         var _loc5_:ClientBattleEffect = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Vector.<ClientBattleEffect> = §for catch import§.takeInitialEffects(param1.§const const finally§.id);
         if(_loc4_ != null)
         {
            _loc2_ = getTimer();
            _loc8_ = param1.§521423122212312234123423632234§.§5214237342237355123423632234§;
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc2_ - _loc5_.§52142343523448123423632234§;
               _loc3_ = _loc5_.duration - _loc6_;
               if(_loc3_ > 0)
               {
                  _loc8_.§try const§(_loc5_.effectId,_loc3_,false,_loc5_.effectLevel);
               }
            }
         }
      }
      
      private static function §521423102752310288123423632234§(param1:§5214234677234690123423632234§) : void
      {
         param1.§break set override§(§521423998231011123423632234§.inverseBackDriving);
      }
      
      private static function §5214234131234144123423632234§(param1:§521423131952313208123423632234§, param2:int, param3:String, param4:int, param5:§5214231658231671123423632234§, param6:int) : void
      {
         param1.§521423127482312761123423632234§(param2);
         param1.§set switch while§(param3);
         param1.§true finally catch§(param4);
         param1.§do null§(param5);
         param1.§5214236821236834123423632234§(param6);
      }
      
      public function §521423134402313453123423632234§(param1:ClientObject, param2:§5214234101234114123423632234§) : void
      {
         this.§5214236843236856123423632234§(param1,param2.§521423108322310845123423632234§,param2.§521423105032310516123423632234§);
      }
      
      public function §521423126672312680123423632234§(param1:Boolean) : void
      {
         var _loc2_:§if for switch§ = §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§.§521423117172311730123423632234§();
         this.§switch package continue§(_loc2_.§521423111392311152123423632234§());
         this.§5214232365232378123423632234§.reset();
      }
      
      private function §default package continue§(param1:ClientObject) : void
      {
         §do switch var§.addUser(param1);
         if(§do switch var§.getUserCount() == 1)
         {
            §5214236582236595123423632234§.addBattleUserInfoListener(this.§implements use with§);
         }
      }
      
      public function §521423115512311564123423632234§() : Dictionary
      {
         return this.§521423104452310458123423632234§;
      }
      
      private function §5214236600236613123423632234§(param1:int, param2:Boolean) : void
      {
         var _loc4_:§5214239411239424123423632234§ = null;
         var _loc3_:int = 0;
         if(this.§521423104452310458123423632234§[§5214236557236570123423632234§.§521423104062310419123423632234§.userName] != null)
         {
            _loc4_ = §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§;
            this.§521423130382313051123423632234§(param1);
            _loc4_.§do throw§(this.§var switch in§.§dynamic final§,this.§var switch in§.§try switch true§,this.§var switch in§.§521423129982313011123423632234§,this.§var switch in§.§get var dynamic§);
            this.§var switch in§.§521423105032310516123423632234§ = param1;
            _loc3_ = §52142380523818123423632234§.getBattleRunner().getPhysicsTime() - 33;
            this.§try package function§(_loc3_,param2);
         }
      }
      
      public function §include var if§(param1:ClientObject, param2:Number, param3:TankParts, param4:Number, param5:Number, param6:Number, param7:Number, param8:String = null) : void
      {
         this.§default package continue§(param1);
         param1.putParams(§521423138562313869123423632234§,new §521423138562313869123423632234§(§5214236582236595123423632234§.getUserName(param8),§5214236582236595123423632234§.getUserRank(param8),true,§5214236582236595123423632234§.getChatModeratorLevel(param8)));
         this.§521423136752313688123423632234§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §5214236077236090123423632234§(param1:ClientObject, param2:§521423111932311206123423632234§) : void
      {
         this.§521423102922310305123423632234§(param1,param2);
         this.§5214232651232664123423632234§(param1,param2);
      }
      
      public function §5214232772232785123423632234§(param1:ClientObject) : §break switch default§
      {
         return §break switch default§(param1.getParams(§break switch default§));
      }
      
      public function §false var set§(param1:ClientObject) : §521423131952313208123423632234§
      {
         return §521423131952313208123423632234§(param1.getParams(§521423131952313208123423632234§));
      }
      
      private function §return use do§(param1:int, param2:Boolean) : void
      {
         var _loc3_:§if for switch§ = null;
         var _loc4_:§5214239411239424123423632234§ = null;
         if(this.§521423104452310458123423632234§[§5214236557236570123423632234§.§521423104062310419123423632234§.userName] != null)
         {
            _loc4_ = §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§;
            this.§521423130382313051123423632234§(param1);
            _loc4_.§5214235451235464123423632234§(this.§var switch in§.§dynamic final§,this.§var switch in§.§try switch true§,this.§var switch in§.§521423129982313011123423632234§,this.§var switch in§.§get var dynamic§);
            _loc3_ = this.§521423117172311730123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§);
            this.§var switch in§.§521423105032310516123423632234§ = param1 | _loc3_.§521423111392311152123423632234§();
            this.§try package function§(§52142380523818123423632234§.getBattleRunner().getPhysicsTime(),param2);
         }
      }
      
      private function §for null§(param1:§5214236557236570123423632234§) : §if for switch§
      {
         var _loc2_:§if for switch§ = null;
         var _loc3_:§var catch true§ = null;
         if(param1.local)
         {
            _loc3_ = this.§case switch if§().§52142378723800123423632234§(param1);
            _loc2_ = _loc3_.§521423117172311730123423632234§();
            _loc2_.§5214233321233334123423632234§(this);
            param1.§const const finally§.putParams(§var catch true§,_loc3_);
         }
         else
         {
            _loc2_ = new §if for switch§(true,param1);
         }
         param1.§const const finally§.putParams(§if for switch§,_loc2_);
         return _loc2_;
      }
      
      public function §false var use§(param1:ClientObject, param2:int) : void
      {
         var _loc4_:§5214236557236570123423632234§ = this.getTankData(param1);
         if(_loc4_ == null || _loc4_.§521423122212312234123423632234§ == null)
         {
            return;
         }
         if(_loc4_.local)
         {
            this.§super catch in§(true);
            §52142380523818123423632234§.lockFollowCamera();
            §52142380523818123423632234§.recalculateFollowCamera();
            §with set include§.dispatchEvent(LocalTankKilledEvent.§5214236125236138123423632234§);
         }
         §for catch import§.takeInitialEffects(_loc4_.userName);
         _loc4_.§5214231837231850123423632234§ = 0;
         this.§5214237440237453123423632234§(_loc4_.§const const finally§).§get catch import§(1,false);
         this.§5214237440237453123423632234§(_loc4_.§const const finally§).§521423113912311404123423632234§();
         _loc4_.§521423122212312234123423632234§.§import switch final§();
         _loc4_.§521423122212312234123423632234§.disable();
         _loc4_.§include catch§ = §get catch§.§case use include§;
         _loc4_.§521423122212312234123423632234§.§5214234031234044123423632234§(_loc4_.§521423122212312234123423632234§.§5214232852232865123423632234§() & ~0x40);
         this.§return use function§(param1,1);
         this.§5214238601238614123423632234§(_loc4_);
         §52142380523818123423632234§.getBattleRunner().addLogicUnit(new §var throw§(getTimer() + param2,_loc4_.§521423122212312234123423632234§));
         var _loc3_:TankDeadEvent = TankDeadEvent.§5214236125236138123423632234§;
         _loc3_.§52142366723680123423632234§ = _loc4_.§521423122212312234123423632234§;
         §with set include§.dispatchEvent(_loc3_);
      }
      
      private function §5214232651232664123423632234§(param1:ClientObject, param2:§521423111932311206123423632234§) : void
      {
         this.§5214239453239466123423632234§(param1,param2.§dynamic final§,param2.§try switch true§,param2.§521423129982313011123423632234§,param2.§get var dynamic§,param2.§521423105032310516123423632234§);
      }
      
      private function §521423130382313051123423632234§(param1:int) : void
      {
         if(this.§null const dynamic§ != param1)
         {
            this.§null const dynamic§ = param1;
            this.§finally switch var§();
         }
      }
      
      private function §switch package continue§(param1:int) : void
      {
         var _loc2_:§if for switch§ = this.§521423117172311730123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§);
         var _loc3_:§5214239411239424123423632234§ = §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§;
         this.§5214234949234962123423632234§(param1);
         this.§in for if§.§521423108322310845123423632234§ = _loc2_.§final use throw§();
         this.§in for if§.§521423105032310516123423632234§ = param1;
         §521423120492312062123423632234§.§5214234845234858123423632234§(§52142380523818123423632234§.getBattleRunner().getPhysicsTime(),this.§in for if§,_loc3_.§native catch class§);
      }
      
      private function §switch switch import§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:Dictionary = §52142380523818123423632234§.getExcludedObjects3D();
         delete _loc2_[param1.§include switch break§().§static set catch§()];
         delete _loc2_[param1.§include switch break§().§with switch catch§()];
      }
      
      private function §5214233117233130123423632234§(param1:Number, param2:Quaternion, param3:§52142320823221123423632234§, param4:§52142320823221123423632234§) : void
      {
         this.§function package try§.setFromEulerAnglesXYZ(param3.x,param3.y,param3.§continue package false§);
         this.§521423102322310245123423632234§.slerp(param2,this.§function package try§,param1);
         this.§521423102322310245123423632234§.getEulerAngles(this.§5214236057236070123423632234§);
         param4.x = this.§5214236057236070123423632234§.x;
         param4.y = this.§5214236057236070123423632234§.y;
         param4.§continue package false§ = this.§5214236057236070123423632234§.z;
      }
      
      private function §get set package§(param1:§5214236557236570123423632234§, param2:ClientTank) : void
      {
         var _loc3_:TankState = param2.§while const each§;
         param1.§521423122212312234123423632234§.§5214233143233156123423632234§(param2.teamType,param2.§5214234533234546123423632234§);
         this.§break catch super§(param1,param2.health);
         if(param2.health <= 0)
         {
            param1.§521423122212312234123423632234§.§include switch break§().§function catch break§();
            param1.§521423122212312234123423632234§.§5214237342237355123423632234§.§true package final§();
            this.§return use function§(param1.§const const finally§,1);
         }
         else
         {
            this.§super set static§(param1.§const const finally§,16777215);
            param1.§521423122212312234123423632234§.§5214237342237355123423632234§.show();
            this.§5214232376232389123423632234§(param1);
            this.§5214237440237453123423632234§(param1.§const const finally§).§5214237088237101123423632234§();
            this.§5214237440237453123423632234§(param1.§const const finally§).§52142390823921123423632234§(16777215);
         }
         this.§5214239453239466123423632234§(param1.§const const finally§,_loc3_.position,_loc3_.orientation,§5214239150239163123423632234§,§5214239150239163123423632234§,_loc3_.§521423105032310516123423632234§);
         this.§5214236843236856123423632234§(param1.§const const finally§,_loc3_.turretAngle,_loc3_.turretControl);
         switch(param2.§include catch§)
         {
            case §get catch§.§5214239873239886123423632234§:
               param1.§521423122212312234123423632234§.§5214234628234641123423632234§();
               break;
            case §get catch§.§52142350323516123423632234§:
               param1.§521423122212312234123423632234§.§switch const const§();
         }
         this.§import default§(param1.§521423122212312234123423632234§);
      }
      
      private function §each var override§(param1:§5214236557236570123423632234§) : §import catch null§
      {
         var _loc2_:BattleSkyBox = null;
         var _loc3_:§5214237250237263123423632234§ = §const package function§.getWeaponModel(param1.§catch use continue§);
         if(param1.local)
         {
            _loc2_ = §52142380523818123423632234§.getBattleScene3D().§override const final§() as BattleSkyBox;
            _loc3_ is §5214239381239394123423632234§ ? _loc2_.loadTop() : _loc2_.unloadTop();
            return _loc3_.§5214238937238950123423632234§(param1.§const const finally§);
         }
         return _loc3_.§finally use static§(param1.§const const finally§);
      }
      
      private function §521423136752313688123423632234§(param1:ClientObject, param2:Number, param3:TankParts, param4:Number, param5:Number, param6:Number, param7:Number, param8:String = null) : void
      {
         var _loc9_:§5214236557236570123423632234§ = null;
         _loc9_ = new §5214236557236570123423632234§();
         _loc9_.§const const finally§ = param1;
         _loc9_.userName = param8;
         _loc9_.§52142324523258123423632234§ = param2;
         _loc9_.§catch use continue§ = §5214233861233874123423632234§.§do const super§(param3.§static switch throw§.name);
         §5214233861233874123423632234§.§dynamic use native§(param1,_loc9_.§catch use continue§,param4,param5,param6,param7);
         _loc9_.§static switch throw§ = param3.§static switch throw§;
         param1.putParams(§super var dynamic§,_loc9_);
      }
      
      public function §static for else§(param1:§5214239411239424123423632234§) : void
      {
         if(param1.§do for final§.local)
         {
            §5214232354232367123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§.getParams(§throw each§)).handleReadyToSpawn();
         }
         else
         {
            §5214235348235361123423632234§(param1.§do for final§.§const const finally§.getParams(§throw each§)).handleReadyToSpawn();
         }
      }
      
      public function §super set static§(param1:ClientObject, param2:int) : void
      {
         this.§5214232772232785123423632234§(param1).§while switch set§(param2);
         this.§521423117172311730123423632234§(param1).§while switch set§(param2);
      }
      
      public function getLocalTank() : §5214239411239424123423632234§
      {
         if(§5214236557236570123423632234§.§521423104062310419123423632234§)
         {
            return §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§;
         }
         return null;
      }
      
      private function §521423104492310462123423632234§(param1:ClientObject) : void
      {
         §do switch var§.removeUser(param1);
         if(§do switch var§.getUserCount() == 0)
         {
            §5214236582236595123423632234§.removeBattleUserInfoListener(this.§implements use with§);
         }
      }
      
      public function §5214237440237453123423632234§(param1:ClientObject) : §throw catch return§
      {
         return §throw catch return§(param1.getParams(§throw catch return§));
      }
      
      public function §import finally package§(param1:ClientObject) : void
      {
         var _loc2_:§5214236557236570123423632234§ = this.getTankData(param1);
         if(_loc2_ == null || _loc2_.§521423122212312234123423632234§ == null)
         {
            return;
         }
         _loc2_.§521423122212312234123423632234§.§switch const const§();
         this.§5214237440237453123423632234§(param1).§5214237088237101123423632234§();
         this.§5214237440237453123423632234§(param1).§52142390823921123423632234§(1 | 0x10);
         if(_loc2_.local)
         {
            _loc2_.§521423122212312234123423632234§.§5214234031234044123423632234§(_loc2_.§521423122212312234123423632234§.§5214232852232865123423632234§() | 0x40);
            this.§5214238269238282123423632234§.dispatchEvent(new LocalTankActivationEvent(_loc2_.§521423122212312234123423632234§));
         }
         if(_loc2_.local && _loc2_.§catch use continue§.id.indexOf("shaft") != -1)
         {
            delete §52142380523818123423632234§.getExcludedObjects3D()[_loc2_.§521423122212312234123423632234§.§include switch break§().§with switch catch§()];
         }
         else
         {
            this.§switch switch import§(_loc2_.§521423122212312234123423632234§);
         }
      }
      
      public function §521423131722313185123423632234§() : void
      {
         var _loc1_:§5214239411239424123423632234§ = null;
         if(this.§throw var switch§ != null)
         {
            _loc1_ = this.§throw var switch§.§521423122212312234123423632234§;
            if(_loc1_.§5214233402233415123423632234§ == 0)
            {
               §521423120492312062123423632234§.§null const for§();
               this.§false use return§();
            }
         }
      }
      
      private function §521423113732311386123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§5214239411239424123423632234§ = this.§521423110872311100123423632234§(param1);
         this.§set set function§(_loc2_);
         this.§switch switch import§(_loc2_);
         this.§5214235932235945123423632234§(_loc2_.§do for final§);
         this.§5214231450231463123423632234§(_loc2_);
         _loc2_.destroy();
      }
      
      private function §5214237717237730123423632234§(param1:BattleRestartEvent) : void
      {
         var _loc2_:ClientObject = null;
         var _loc3_:§5214239411239424123423632234§ = null;
         for each(_loc2_ in §do switch var§.getUsers())
         {
            _loc3_ = this.getTankData(_loc2_).§521423122212312234123423632234§;
            this.§set set function§(_loc3_);
         }
      }
      
      public function §import switch final§(param1:ClientObject, param2:String, param3:int) : void
      {
         this.§false var use§(param1,param3);
         var _loc4_:TankKilledEvent = TankKilledEvent.§5214236125236138123423632234§;
         _loc4_.§false switch break§ = param1.id;
         _loc4_.§521423133932313406123423632234§ = param2;
         §with set include§.dispatchEvent(_loc4_);
      }
      
      private function §static switch for§(param1:ClientTank) : Boolean
      {
         return param1.§while const each§ != null && param1.health > 0;
      }
      
      public function §finally set static§(param1:ClientObject, param2:Number, param3:Number, param4:Number, param5:Number, param6:int) : void
      {
         var _loc7_:§5214236557236570123423632234§ = this.getTankData(param1);
         if(_loc7_ != null)
         {
            this.§get catch while§(_loc7_,param2,param3,param4,param5,false);
            if(_loc7_.local)
            {
               §final switch throw§.§5214233460233473123423632234§(param6);
            }
         }
      }
      
      public function §dynamic package else§(param1:ClientObject, param2:ClientTank, param3:TankParts, param4:§include catch with§) : void
      {
         var _loc11_:§5214236557236570123423632234§ = null;
         var _loc12_:TankPauseModel = null;
         var _loc5_:§static for switch§ = null;
         _loc11_ = this.getTankData(param1);
         _loc11_.local = param2.self;
         _loc11_.§package switch package§ = param2.§package switch package§;
         var _loc9_:§if for switch§ = this.§for null§(_loc11_);
         var _loc10_:§var catch true§ = this.§52142378723800123423632234§(param1);
         var _loc7_:§521423131952313208123423632234§ = this.§function use else§(_loc11_);
         param1.putParams(§521423131952313208123423632234§,_loc7_);
         var _loc8_:§import catch null§ = this.§each var override§(_loc11_);
         this.§5214233602233615123423632234§(_loc8_,_loc11_);
         var _loc6_:§5214239411239424123423632234§ = this.§521423131972313210123423632234§(_loc9_,_loc10_,_loc8_,_loc11_,param3,_loc7_,param4);
         this.§5214232235232248123423632234§(_loc6_);
         this.§52142335323366123423632234§(_loc6_);
         this.§521423118352311848123423632234§(_loc6_);
         _loc11_.§521423122212312234123423632234§ = _loc6_;
         _loc11_.§const const finally§ = param1;
         if(_loc11_.local)
         {
            this.§throw var switch§ = _loc11_;
            this.§5214236174236187123423632234§();
            this.§get finally dynamic§(_loc11_);
            param1.putParams(§throw each§,new §5214232354232367123423632234§(_loc6_,§521423120492312062123423632234§));
            _loc6_.§finally var native§(new §521423123492312362123423632234§(_loc6_));
         }
         else
         {
            param1.putParams(§throw each§,new §5214235348235361123423632234§(_loc6_));
            _loc6_.§finally var native§(new §if while§(_loc6_));
         }
         this.§return const case§.objectLoadedPost(param1);
         this.§521423115282311541123423632234§(_loc11_,param2.§package switch package§,true);
         this.§continue const native§(_loc11_);
         this.§5214238269238282123423632234§.dispatchEvent(new TankLoadedEvent(_loc11_.§521423122212312234123423632234§,_loc11_.local));
         if(this.§static switch for§(param2))
         {
            this.§get set package§(_loc11_,param2);
         }
         if(_loc11_.local)
         {
            _loc12_ = TankPauseModel(§5214239034239047123423632234§);
            _loc12_.localTankLoaded();
            _loc5_ = §static for switch§(§native switch include§.getModel(Long.getLong(-1919137833,-752101164)));
            _loc5_.§true catch dynamic§(param1);
            this.§finally switch var§();
         }
      }
      
      public function §521423135292313542123423632234§(param1:ClientObject, param2:§52142320823221123423632234§, param3:§52142320823221123423632234§) : void
      {
         var _loc6_:Vector3 = BattleUtils.getVector3(param3);
         var _loc4_:Number = _loc6_.length() * §5214231727231740123423632234§.§5214233647233660123423632234§.§function const super§();
         var _loc5_:§5214239411239424123423632234§ = this.getTankData(param1).§521423122212312234123423632234§;
         _loc5_.§5214239340239353123423632234§(BattleUtils.getVector3(param2),_loc6_.normalize(),_loc4_);
      }
      
      public function onChassisControlChanged(param1:int) : void
      {
         this.§throw const in§.§5214234516234529123423632234§();
      }
      
      private function §false catch break§(param1:ClientObject) : void
      {
         var _loc2_:§each for set§ = this.§5214233749233762123423632234§(param1);
         if(_loc2_)
         {
            §52142380523818123423632234§.getBattleRunner().removeLogicUnit(_loc2_);
            param1.removeParams(§each for set§);
         }
      }
      
      private function §function use else§(param1:§5214236557236570123423632234§) : §521423131952313208123423632234§
      {
         var _loc2_:§521423131952313208123423632234§ = null;
         var _loc3_:§521423138562313869123423632234§ = null;
         var _loc4_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         if(param1.local)
         {
            _loc2_ = new §521423131952313208123423632234§(0,_loc4_.§do get§(),10000,true,_loc4_.§while set for§());
            _loc3_ = this.§get for else§(param1.§const const finally§);
            _loc2_.§true finally catch§(_loc3_.§5214237240237253123423632234§);
            _loc2_.§set switch while§(_loc3_.§extends set case§);
            _loc2_.§5214236821236834123423632234§(2 | 4 | 8);
         }
         else
         {
            _loc2_ = new §521423131952313208123423632234§(135,_loc4_.§5214231310231323123423632234§(),10000,false,_loc4_.§while set for§());
            _loc2_.§function use implements§(§5214236582236595123423632234§.isUserSuspected(param1.userName));
         }
         return _loc2_;
      }
      
      public function §static set catch§() : Object3D
      {
         return this.getLocalTank().§static set catch§();
      }
      
      public function §package var each§() : void
      {
         this.§5214231005231018123423632234§();
         §521423120492312062123423632234§.§package var each§();
      }
      
      public function §return use function§(param1:ClientObject, param2:int) : void
      {
         this.§5214232772232785123423632234§(param1).§521423130282313041123423632234§(param2);
         this.§521423117172311730123423632234§(param1).§521423130282313041123423632234§(param2);
      }
      
      private function §try for const§(param1:§5214231658231671123423632234§, param2:§5214231658231671123423632234§) : Boolean
      {
         return param1 != §5214231658231671123423632234§.§dynamic use false§ && param1 == param2;
      }
      
      private function §5214231450231463123423632234§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:§521423117662311779123423632234§ = null;
         §5214233861233874123423632234§.§implements switch catch§(param1.§5214233939233952123423632234§());
         for(var _loc3_ in param1.§5214233939233952123423632234§().§521423138992313912123423632234§)
         {
            _loc2_ = param1.§5214233939233952123423632234§().§521423138992313912123423632234§[_loc3_] as §521423117662311779123423632234§;
            if(_loc2_ != null)
            {
               _loc2_.close();
               delete param1.§5214233939233952123423632234§().§521423138992313912123423632234§[_loc3_];
            }
         }
         if(param1.§do for final§.local)
         {
            §final switch throw§.§5214238124238137123423632234§ = §5214231658231671123423632234§.§dynamic use false§;
            TankPauseModel(§5214239034239047123423632234§).getPauseSupport().close();
            this.§false use return§();
            this.§throw const in§ = null;
            this.§5214232365232378123423632234§ = null;
            this.§throw var switch§.§521423122212312234123423632234§ = null;
            §5214236557236570123423632234§.§521423104062310419123423632234§ = null;
         }
      }
      
      public function §set set function§(param1:§5214239411239424123423632234§) : void
      {
         if(this.§521423104452310458123423632234§[param1.§5214233939233952123423632234§().id])
         {
            delete this.§521423104452310458123423632234§[param1.§5214233939233952123423632234§().id];
            param1.§package use class§();
            §with set include§.dispatchEvent(new TankRemovedFromBattleEvent(param1));
         }
      }
      
      public function §521423117172311730123423632234§(param1:ClientObject) : §if for switch§
      {
         return §if for switch§(param1.getParams(§if for switch§));
      }
      
      private function §521423107822310795123423632234§(param1:int, param2:§521423111932311206123423632234§) : void
      {
         if(param1 <= this.§5214235550235563123423632234§)
         {
            return;
         }
         §521423120492312062123423632234§.§5214238762238775123423632234§(param1,§final switch throw§.§for var case§(),param2);
         §5214233248233261123423632234§.§521423116352311648123423632234§(param2,this.§if for with§);
         this.§5214235550235563123423632234§ = param1;
      }
      
      private function §import default§(param1:§5214239411239424123423632234§) : void
      {
         this.§521423104452310458123423632234§[param1.§do for final§.userName] = param1;
         param1.§const finally function§(§52142380523818123423632234§);
         this.§5214238269238282123423632234§.dispatchEvent(new TankAddedToBattleEvent(param1,param1.§do for final§.local));
      }
      
      public function §5214238971238984123423632234§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:Dictionary = §52142380523818123423632234§.getExcludedObjects3D();
         _loc2_[param1.§include switch break§().§static set catch§()] = true;
         _loc2_[param1.§include switch break§().§with switch catch§()] = true;
      }
      
      private function §5214236174236187123423632234§() : void
      {
         this.§5214238269238282123423632234§.deactivateHandlers();
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private function §with package override§(param1:int, param2:int) : int
      {
         return param2;
      }
      
      private function §521423131972313210123423632234§(param1:§if for switch§, param2:§var catch true§, param3:§import catch null§, param4:§5214236557236570123423632234§, param5:TankParts, param6:§521423131952313208123423632234§, param7:§include catch with§) : §5214239411239424123423632234§
      {
         var _loc10_:TankSoundEffects = §5214231615231628123423632234§(param5);
         var _loc11_:§5214238293238306123423632234§ = new §5214238293238306123423632234§(param5.§5214232442232455123423632234§,param5.§static switch throw§,param5.§5214234393234406123423632234§,param7);
         var _loc9_:int = 10000;
         var _loc8_:§5214239411239424123423632234§ = new §5214239411239424123423632234§(_loc11_,param1,_loc10_,param2,param3,param6,param4.§52142324523258123423632234§,param4.local,§with set include§,_loc9_,param4.§package switch package§.dampingCoeff);
         _loc8_.§do for final§ = param4;
         return _loc8_;
      }
      
      private function §case switch if§() : §521423107282310741123423632234§
      {
         var _loc1_:§521423107282310741123423632234§ = OSGi.getInstance().getService(§521423107282310741123423632234§) as §521423107282310741123423632234§;
         if(_loc1_ == null)
         {
            _loc1_ = new §521423125392312552123423632234§();
            OSGi.getInstance().registerService(§521423107282310741123423632234§,_loc1_);
         }
         return OSGi.getInstance().getService(§521423107282310741123423632234§) as §521423107282310741123423632234§;
      }
      
      public function §521423110872311100123423632234§(param1:ClientObject) : §5214239411239424123423632234§
      {
         return §5214239411239424123423632234§(param1.getParams(§5214239411239424123423632234§));
      }
      
      public function §5214239453239466123423632234§(param1:ClientObject, param2:§52142320823221123423632234§, param3:§52142320823221123423632234§, param4:§52142320823221123423632234§, param5:§52142320823221123423632234§, param6:int) : void
      {
         var _loc7_:§5214239411239424123423632234§ = this.§521423110872311100123423632234§(param1);
         if(_loc7_ != null)
         {
            if(BattleUtils.isFiniteVector3d(param2) && BattleUtils.isFiniteVector3d(param3) && BattleUtils.isFiniteVector3d(param4) && BattleUtils.isFiniteVector3d(param5))
            {
               _loc7_.§521423117002311713123423632234§(param2,param3,param4,param5);
            }
            this.§5214232772232785123423632234§(param1).§521423127992312812123423632234§(param6);
         }
      }
      
      private function §get catch while§(param1:§5214236557236570123423632234§, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         if(param1.§521423122212312234123423632234§ == null)
         {
            return;
         }
         param1.§521423122212312234123423632234§.§5214238197238210123423632234§(BattleUtils.toClientScale(param2),param6);
         param1.§521423122212312234123423632234§.§continue set super§(param3,param6);
         param1.§521423122212312234123423632234§.§52142393123944123423632234§(BattleUtils.toClientScale(param5));
         param1.§521423122212312234123423632234§.§521423117172311730123423632234§().§continue set super§(param4,param6);
         param1.§package switch package§.acceleration = param5;
         param1.§package switch package§.speed = param2;
         param1.§package switch package§.§extends finally catch§ = param3;
         param1.§package switch package§.§521423113132311326123423632234§ = param4;
      }
      
      private function §continue const native§(param1:§5214236557236570123423632234§) : void
      {
         var _loc2_:IClientUserInfo = IClientUserInfo(OSGi.getInstance().getService(IClientUserInfo));
         if(!_loc2_.isLoaded(param1.userName))
         {
            StatisticsModel(OSGi.getInstance().getService(BattlefieldGUI)).userConnect(_loc2_.getShortUserInfo(param1.userName));
         }
      }
      
      private function §5214238601238614123423632234§(param1:§5214236557236570123423632234§) : void
      {
         var _loc3_:§5214239411239424123423632234§ = null;
         var _loc2_:§5214233899233912123423632234§ = null;
         try
         {
            _loc3_ = param1.§521423122212312234123423632234§;
            _loc3_.§break switch catch§().§native include§();
            _loc3_.§include switch break§().§function catch break§();
            _loc3_.§break switch catch§().§implements catch catch§.§native use function§.z = _loc3_.§break switch catch§().§implements catch catch§.§native use function§.z + 500;
            _loc3_.§break switch catch§().§implements catch catch§.§get var dynamic§.reset(2,2,2);
            _loc2_ = §5214233899233912123423632234§(§native switch include§.getModel(Long.getLong(-2099054349,-1530709000)));
            _loc2_.§try use get§(null,_loc3_,§default var for§.§5214239476239489123423632234§);
         }
         catch(err:Error)
         {
         }
      }
      
      public function §52142378723800123423632234§(param1:ClientObject) : §var catch true§
      {
         return §var catch true§(param1.getParams(§var catch true§));
      }
      
      private function §in for import§(param1:Number, param2:Vector3, param3:§52142320823221123423632234§, param4:§52142320823221123423632234§) : void
      {
         param4.x = param2.x + (param3.x - param2.x) * param1;
         param4.y = param2.y + (param3.y - param2.y) * param1;
         param4.§continue package false§ = param2.z + (param3.§continue package false§ - param2.z) * param1;
      }
      
      private function §5214232376232389123423632234§(param1:§5214236557236570123423632234§) : void
      {
         var _loc2_:int = 0;
         var _loc4_:§521423138562313869123423632234§ = null;
         var _loc5_:§5214239411239424123423632234§ = null;
         var _loc3_:§5214239411239424123423632234§ = null;
         if(§5214236557236570123423632234§.§521423104062310419123423632234§ != null)
         {
            _loc3_ = §5214236557236570123423632234§.§521423104062310419123423632234§.§521423122212312234123423632234§;
            if(_loc3_.§5214238124238137123423632234§ != null)
            {
               _loc2_ = 1 | 8;
               _loc4_ = this.§get for else§(param1.§const const finally§);
               _loc5_ = param1.§521423122212312234123423632234§;
               if(§5214236557236570123423632234§.§521423104062310419123423632234§ != null && _loc5_.§try for const§(_loc3_.§5214238124238137123423632234§))
               {
                  _loc2_ |= 2;
               }
               §5214234131234144123423632234§(param1.§521423122212312234123423632234§.§5214237342237355123423632234§,_loc5_.§do for final§.§5214231837231850123423632234§,_loc4_.§extends set case§,_loc4_.§5214237240237253123423632234§,_loc5_.§5214238124238137123423632234§,_loc2_);
            }
         }
         if(§return set get§.isSpectatorMode())
         {
            _loc2_ = 1 | 8 | 2;
            _loc4_ = this.§get for else§(param1.§const const finally§);
            _loc5_ = param1.§521423122212312234123423632234§;
            §5214234131234144123423632234§(param1.§521423122212312234123423632234§.§5214237342237355123423632234§,_loc5_.§do for final§.§5214231837231850123423632234§,_loc4_.§extends set case§,_loc4_.§5214237240237253123423632234§,_loc5_.§5214238124238137123423632234§,_loc2_);
         }
      }
      
      private function §false use return§() : void
      {
         if(this.§521423100732310086123423632234§ != null)
         {
            §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this.§521423100732310086123423632234§);
            this.§521423100732310086123423632234§ = null;
         }
      }
      
      private function §5214232235232248123423632234§(param1:§5214239411239424123423632234§) : void
      {
         if(param1.§do for final§.local)
         {
            §5214236557236570123423632234§.§521423104062310419123423632234§ = param1.§do for final§;
         }
         param1.§5214233939233952123423632234§().putParams(§5214239411239424123423632234§,param1);
      }
      
      private function §get finally dynamic§(param1:§5214236557236570123423632234§) : void
      {
         var _loc3_:§5214231325231338123423632234§ = §5214231325231338123423632234§(§native switch include§.getModel(Long.getLong(-547516956,140751784)));
         _loc3_.§true catch dynamic§(param1.§521423122212312234123423632234§);
         §521423102752310288123423632234§(§5214234677234690123423632234§(this.§5214232772232785123423632234§(param1.§const const finally§)));
         this.§5214231653231666123423632234§ = new §try var in§(§52142380523818123423632234§.isLocalTankFirstLoad());
         if(§52142380523818123423632234§.isLocalTankFirstLoad())
         {
            param1.§const const finally§.putParams(§5214232324232337123423632234§,new §5214232324232337123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§,§521423120492312062123423632234§));
         }
         this.§throw const in§ = new §521423140422314055123423632234§(param1.§521423122212312234123423632234§,this.§521423104452310458123423632234§);
         this.§5214232365232378123423632234§ = new §5214238104238117123423632234§(param1.§521423122212312234123423632234§);
         var _loc2_:§while use true§ = new §while use true§(param1.§521423122212312234123423632234§,this.§521423104452310458123423632234§);
         param1.§const const finally§.putParams(§while use true§,_loc2_);
         §52142380523818123423632234§.getBattleScene3D().§const set static§(_loc2_);
         §52142380523818123423632234§.setCameraTarget(param1.§521423122212312234123423632234§);
         param1.§const const finally§.putParams(§dynamic for get§,new §dynamic for get§(param1.§521423122212312234123423632234§));
         param1.§const const finally§.putParams(§package for native§,new §package for native§(param1.§521423122212312234123423632234§));
         param1.§const const finally§.putParams(§switch catch do§,new §switch catch do§(param1.§const const finally§));
         param1.§const const finally§.putParams(§native finally set§,new §native finally set§(param1.§const const finally§));
         §52142380523818123423632234§.setLocalTankLoaded();
      }
      
      public function §5214237972237985123423632234§() : void
      {
         §52142380523818123423632234§.getBattleRunner().addPostPhysicsController(this.§throw const in§);
         this.§throw const in§.reset();
         §52142380523818123423632234§.getBattleRunner().addPostPhysicsController(this.§5214232365232378123423632234§);
         this.§5214232365232378123423632234§.reset();
      }
      
      private function §521423102922310305123423632234§(param1:ClientObject, param2:§521423111932311206123423632234§) : void
      {
         var _loc5_:Number = NaN;
         var _loc4_:§const throw§ = null;
         var _loc3_:§5214239411239424123423632234§ = this.getTankData(param1).§521423122212312234123423632234§;
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.§break switch catch§();
            _loc5_ = 0.5;
            this.§in for import§(_loc5_,_loc4_.§implements catch catch§.§dynamic final§,param2.§dynamic final§,param2.§dynamic final§);
            this.§in for import§(_loc5_,_loc4_.§implements catch catch§.§native use function§,param2.§521423129982313011123423632234§,param2.§521423129982313011123423632234§);
            this.§in for import§(_loc5_,_loc4_.§implements catch catch§.§get var dynamic§,param2.§get var dynamic§,param2.§get var dynamic§);
            this.§5214233117233130123423632234§(_loc5_,_loc4_.§implements catch catch§.§try switch true§,param2.§try switch true§,param2.§try switch true§);
         }
      }
      
      private function §5214234949234962123423632234§(param1:int) : void
      {
         if(this.§5214239203239216123423632234§ != param1)
         {
            this.§5214239203239216123423632234§ = param1;
            this.§finally switch var§();
         }
      }
      
      private function §521423115282311541123423632234§(param1:§5214236557236570123423632234§, param2:TankSpecification, param3:Boolean) : void
      {
         param1.§521423122212312234123423632234§.§each var else§(BattleUtils.toClientScale(param2.reverseAcceleration));
         param1.§521423122212312234123423632234§.§else var default§(BattleUtils.toClientScale(param2.sideAcceleration));
         param1.§521423122212312234123423632234§.§continue finally switch§(param2.turnAcceleration);
         param1.§521423122212312234123423632234§.§5214234646234659123423632234§(param2.reverseTurnAcceleration);
         this.§get catch while§(param1,param2.speed,param2.§extends finally catch§,param2.§521423113132311326123423632234§,param2.acceleration,true);
      }
      
      private function §521423118352311848123423632234§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:§5214232026232039123423632234§ = param1.§521423131272313140123423632234§();
         param1.§5214233939233952123423632234§().putParams(§5214233739233752123423632234§,new §5214233739233752123423632234§(_loc2_));
      }
      
      private function §5214235932235945123423632234§(param1:§5214236557236570123423632234§) : void
      {
         try
         {
            this.§5214238269238282123423632234§.dispatchEvent(new TankUnloadedEvent(param1.§521423122212312234123423632234§,param1.local));
            return;
         }
         catch(err:Error)
         {
         }
      }
      
      public function §5214237898237911123423632234§(param1:ClientObject, param2:§521423111932311206123423632234§, param3:Number) : void
      {
         this.§5214236077236090123423632234§(param1,param2);
         this.§5214236843236856123423632234§(param1,param3,param2.§521423105032310516123423632234§);
      }
      
      private function §5214234652234665123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§each for set§ = new §each for set§(this.§521423110872311100123423632234§(param1),this.§5214233742233755123423632234§,4000,2000);
         param1.putParams(§each for set§,_loc2_);
         §52142380523818123423632234§.getBattleRunner().addLogicUnit(_loc2_);
      }
      
      public function §5214233827233840123423632234§() : void
      {
         §52142380523818123423632234§.getBattleRunner().removePostPhysicsController(this.§throw const in§);
         §52142380523818123423632234§.getBattleRunner().removePostPhysicsController(this.§5214232365232378123423632234§);
      }
      
      private function §class set use§(param1:int, param2:int) : void
      {
         if(param1 <= this.§5214235550235563123423632234§ || param1 <= this.§5214238433238446123423632234§)
         {
            return;
         }
         §521423120492312062123423632234§.§try use switch§(param1,§final switch throw§.§for var case§(),param2);
         this.§if for with§.§521423105032310516123423632234§ = param2;
         this.§5214238433238446123423632234§ = param1;
      }
      
      private function §52142335323366123423632234§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:§break switch default§ = null;
         var _loc3_:§5214234677234690123423632234§ = null;
         if(param1.§do for final§.local)
         {
            _loc3_ = new §5214234677234690123423632234§(param1,this);
            _loc3_.§521423130282313041123423632234§(1);
            §521423102752310288123423632234§(_loc3_);
            _loc2_ = _loc3_;
            param1.§do for final§.§const const finally§.putParams(§5214231263231276123423632234§,new §5214231263231276123423632234§(_loc3_));
         }
         else
         {
            _loc2_ = new §break switch default§(param1);
            _loc2_.§521423130282313041123423632234§(1);
         }
         param1.§5214233939233952123423632234§().putParams(§break switch default§,_loc2_);
      }
      
      public function §throw include§(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§break switch default§ = this.§5214232772232785123423632234§(param1);
         if(_loc3_ != null)
         {
            _loc3_.§521423127992312812123423632234§(param2);
         }
      }
      
      private function §5214233742233755123423632234§(param1:ClientObject, param2:§52142320823221123423632234§, param3:§52142320823221123423632234§) : void
      {
         this.§5214239453239466123423632234§(param1,param2,param3,§5214239150239163123423632234§,§5214239150239163123423632234§,0);
         this.§521423110872311100123423632234§(param1).§break switch catch§().§override const implements§();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function §super catch in§(param1:Boolean) : void
      {
         var _loc2_:§break switch default§ = this.§5214232772232785123423632234§(this.§throw var switch§.§const const finally§);
         this.§return use do§(_loc2_.§get const for§(),param1);
         this.§throw const in§.reset();
      }
      
      public function onTurretControlStateChanged(param1:int) : void
      {
         this.§switch package continue§(param1);
         this.§5214232365232378123423632234§.reset();
      }
      
      private function §5214231005231018123423632234§() : void
      {
         if(this.§each switch import§)
         {
            §52142380523818123423632234§.getBattleRunner().removeLogicUnit(this.§each switch import§);
            this.§each switch import§ = null;
         }
      }
      
      private function §5214236843236856123423632234§(param1:ClientObject, param2:Number, param3:int) : void
      {
         var _loc5_:§if for switch§ = null;
         var _loc4_:§5214239411239424123423632234§ = this.§521423110872311100123423632234§(param1);
         if(_loc4_ != null)
         {
            _loc5_ = _loc4_.§521423117172311730123423632234§();
            _loc5_.§521423132932313306123423632234§(param2);
            _loc5_.§521423127992312812123423632234§(param3);
         }
      }
      
      public function §5214233749233762123423632234§(param1:ClientObject) : §each for set§
      {
         return §each for set§(param1.getParams(§each for set§));
      }
      
      public function §5214233143233156123423632234§(param1:ClientObject, param2:§5214231658231671123423632234§, param3:§52142320823221123423632234§, param4:§52142320823221123423632234§, param5:int, param6:int) : void
      {
         var _loc9_:int = 0;
         var _loc10_:§each for set§ = null;
         var _loc8_:§5214236557236570123423632234§ = this.getTankData(param1);
         if(_loc8_.local)
         {
            §final switch throw§.§5214238124238137123423632234§ = param2;
         }
         var _loc7_:§5214239411239424123423632234§ = _loc8_.§521423122212312234123423632234§;
         this.§set set function§(_loc7_);
         _loc7_.§5214233143233156123423632234§(param2,param6);
         _loc7_.§5214234628234641123423632234§();
         this.§break catch super§(_loc8_,param5);
         this.§super set static§(param1,1 | 0x10);
         _loc9_ = this.§get for else§(_loc8_.§const const finally§).§include catch switch§ ? this.§5214232772232785123423632234§(param1).§get const for§() : 0;
         this.§5214239453239466123423632234§(_loc8_.§const const finally§,param3,param4,§5214239150239163123423632234§,§5214239150239163123423632234§,_loc9_);
         _loc10_ = this.§5214233749233762123423632234§(param1);
         if(_loc10_)
         {
            _loc10_.§each const return§(param3,param4);
         }
         if(_loc8_.local)
         {
            this.§5214238971238984123423632234§(_loc7_);
            this.§5214237972237985123423632234§();
            this.§false use return§();
            this.§521423100732310086123423632234§ = new §while use do§(getTimer() + §52142380523818123423632234§.getTankActivationDelay(),param1);
            §52142380523818123423632234§.getBattleRunner().addLogicUnit(this.§521423100732310086123423632234§);
            §52142380523818123423632234§.unlockFollowCamera();
            §52142380523818123423632234§.activateFollowCamera();
            §52142380523818123423632234§.getBattleRunner().setLocalBody(_loc7_.§break switch catch§());
            this.§false var set§(param1).show();
            this.§do if§();
            §with set include§.dispatchEvent(LocalTankSpawnEvent.§5214236125236138123423632234§);
         }
         else
         {
            this.§5214238971238984123423632234§(_loc7_);
            this.§5214232376232389123423632234§(_loc7_.§do for final§);
            this.§521423117172311730123423632234§(_loc7_.§5214233939233952123423632234§()).§521423127992312812123423632234§(0);
         }
         this.§import default§(_loc8_.§521423122212312234123423632234§);
      }
      
      public function §do package use§(param1:Boolean) : void
      {
         var _loc2_:§break switch default§ = this.§5214232772232785123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§);
         this.§5214236600236613123423632234§(_loc2_.§get const for§(),true);
      }
      
      public function §5214231798231811123423632234§(param1:§52142320823221123423632234§, param2:§52142320823221123423632234§) : void
      {
         if(!§5214234439234452123423632234§.isMapReady())
         {
            setTimeout(§5214231798231811123423632234§,130,param1,param2);
            return;
         }
         this.§5214231653231666123423632234§.§function for implements§(param1,param2);
         this.§5214231005231018123423632234§();
         this.§each switch import§ = new §5214237280237293123423632234§(§52142380523818123423632234§.getRespawnDurationMs(),platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         §52142380523818123423632234§.getBattleRunner().addLogicUnit(this.§each switch import§);
      }
      
      public function §super const extends§(param1:ClientObject, param2:Number) : void
      {
         var _loc3_:§5214236557236570123423632234§ = this.getTankData(param1);
         if(_loc3_.§521423122212312234123423632234§ != null)
         {
            _loc3_.§521423122212312234123423632234§.§super const extends§(param2);
         }
      }
      
      public function §for const super§(param1:ClientObject, param2:int, param3:int, param4:Boolean, param5:int) : void
      {
         var _loc9_:§521423131952313208123423632234§ = null;
         var _loc7_:int = 0;
         var _loc8_:ClientObject = §do switch var§.getUser(param1.id);
         var _loc6_:Boolean = true;
         if(_loc8_ != null)
         {
            _loc9_ = this.§false var set§(param1);
            if(_loc9_ != null)
            {
               if(_loc9_.§521423110662311079123423632234§(8))
               {
                  _loc6_ = false;
                  _loc7_ = this.§with package override§(param2,param3);
                  _loc9_.§try const§(param2,_loc7_,param4,param5);
               }
            }
         }
         if(_loc6_)
         {
            §for catch import§.addInitialEffect(param1.id,param2,param3,param5);
         }
      }
      
      public function getTankData(param1:ClientObject) : §5214236557236570123423632234§
      {
         return §5214236557236570123423632234§(param1.getParams(§super var dynamic§));
      }
      
      private function §finally switch var§() : void
      {
         §5214239034239047123423632234§.resetIdleKickTime();
      }
      
      private function §const const get§() : void
      {
         var _loc1_:ClientObject = null;
         var _loc2_:§5214239411239424123423632234§ = null;
         for each(_loc1_ in §do switch var§.getUsers())
         {
            _loc2_ = this.getTankData(_loc1_).§521423122212312234123423632234§;
            if(_loc2_ != null)
            {
               _loc2_.disable();
               this.§return use function§(_loc2_.§5214233939233952123423632234§(),16);
               this.§5214237440237453123423632234§(_loc2_.§5214233939233952123423632234§()).§get catch import§(16,false);
            }
         }
      }
      
      private function §null set§(param1:BattleFinishEvent) : void
      {
         this.§const const get§();
      }
      
      private function §5214233602233615123423632234§(param1:§import catch null§, param2:§5214236557236570123423632234§) : void
      {
         if(param2.local)
         {
            param2.§const const finally§.putParams(§throw catch return§,new §with var else§(param1));
         }
         else
         {
            param2.§const const finally§.putParams(§throw catch return§,new §521423103862310399123423632234§(param1));
         }
      }
      
      public function §get for else§(param1:ClientObject) : §521423138562313869123423632234§
      {
         return §521423138562313869123423632234§(param1.getParams(§521423138562313869123423632234§));
      }
      
      private function §try package function§(param1:int, param2:Boolean) : void
      {
         if(param1 <= this.§5214236184236197123423632234§)
         {
            return;
         }
         if(param2)
         {
            §521423120492312062123423632234§.§52142332223335123423632234§(param1,§final switch throw§.§for var case§(),this.§var switch in§,this.§521423117172311730123423632234§(§5214236557236570123423632234§.§521423104062310419123423632234§.§const const finally§).§final use throw§());
            §5214233248233261123423632234§.§521423116352311648123423632234§(this.§var switch in§,this.§if for with§);
            this.§5214236184236197123423632234§ = param1;
         }
         else if(§5214233248233261123423632234§.§try for var§(this.§var switch in§,this.§if for with§))
         {
            if(this.§var switch in§.§521423105032310516123423632234§ != this.§if for with§.§521423105032310516123423632234§)
            {
               this.§class set use§(param1,this.§var switch in§.§521423105032310516123423632234§);
            }
         }
         else
         {
            this.§521423107822310795123423632234§(param1,this.§var switch in§);
         }
      }
      
      public function §do if§() : void
      {
         var _loc4_:§5214236557236570123423632234§ = null;
         var _loc1_:ClientObject = null;
         var _loc2_:LocalTankInfoService = null;
         var _loc3_:§5214239411239424123423632234§ = null;
         for each(_loc1_ in §do switch var§.getUsers())
         {
            _loc4_ = this.getTankData(_loc1_);
            if(_loc4_ != §5214236557236570123423632234§.§521423104062310419123423632234§)
            {
               _loc3_ = _loc4_.§521423122212312234123423632234§;
               if(_loc3_ != null)
               {
                  this.§5214232376232389123423632234§(_loc4_);
                  §super catch finally§(_loc4_);
               }
            }
         }
      }
      
      public function §521423127482312761123423632234§(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§5214236557236570123423632234§ = this.getTankData(param1);
         if(_loc3_ != null)
         {
            this.§break catch super§(_loc3_,param2);
         }
      }
      
      public function §get switch continue§(param1:ClientObject, param2:int, param3:Boolean) : void
      {
         var _loc5_:§521423131952313208123423632234§ = null;
         §for catch import§.removeInitialEffect(param1.id,param2);
         var _loc4_:ClientObject = §do switch var§.getUser(param1.id);
         if(_loc4_ != null)
         {
            _loc5_ = this.§false var set§(param1);
            if(_loc5_ != null)
            {
               _loc5_.§5214233149233162123423632234§(param2,param3);
            }
         }
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         this.§return const case§.objectUnloaded(param1);
         this.§521423104492310462123423632234§(param1);
         this.§521423113732311386123423632234§(param1);
      }
      
      private function §break catch super§(param1:§5214236557236570123423632234§, param2:int) : void
      {
         var _loc5_:§5214234586234599123423632234§ = null;
         param1.§5214231837231850123423632234§ = param2;
         var _loc3_:§521423131952313208123423632234§ = this.§false var set§(param1.§const const finally§);
         if(_loc3_ != null)
         {
            _loc3_.§521423127482312761123423632234§(param2);
         }
         var _loc4_:int = 10000;
         if(param1.local)
         {
            _loc5_ = §5214234586234599123423632234§(§native switch include§.getModel(Long.getLong(-1967712540,-458647807)));
            _loc5_.lockItem(1,2,param2 >= _loc4_);
         }
      }
   }
}

