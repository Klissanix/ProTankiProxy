package §5214237380237393123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214232389232402123423632234§.§5214233861233874123423632234§;
   import §5214232446232459123423632234§.§if const final§;
   import §5214232446232459123423632234§.§if for switch§;
   import §5214232446232459123423632234§.§var catch true§;
   import §5214232446232459123423632234§.§while for class§;
   import §52142328123294123423632234§.§521423108642310877123423632234§;
   import §52142328123294123423632234§.§5214239381239394123423632234§;
   import §52142328123294123423632234§.§var with§;
   import §5214233132233145123423632234§.§521423114172311430123423632234§;
   import §5214233132233145123423632234§.§extends catch switch§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import §521423602373123423632234§.§package const function§;
   import §5214237976237989123423632234§.§true const each§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238868238881123423632234§.§5214231727231740123423632234§;
   import §5214238868238881123423632234§.§5214237250237263123423632234§;
   import §5214238868238881123423632234§.§const package override§;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankRemovedFromBattleEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import §each var null§.§const throw§;
   import §false package super§.TankSpecification;
   import flash.utils.Dictionary;
   import §for const do§.§521423107282310741123423632234§;
   import §for const do§.§521423117342311747123423632234§;
   import §override catch default§.Long;
   import §set package each§.§5214237646237659123423632234§;
   import §set package each§.§finally set final§;
   import §set package in§.ClientObject;
   import §super catch default§.§5214238293238306123423632234§;
   
   public class §5214231465231478123423632234§ extends §521423108642310877123423632234§ implements §5214239381239394123423632234§, §5214237250237263123423632234§, §get continue§, §if use default§, §while for class§
   {
      
      private static const §default switch default§:Number = 10000000000;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §do switch var§:TankUsersRegistry;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §52142365923672123423632234§:Dictionary = new Dictionary();
      
      private var §5214237083237096123423632234§:Dictionary = new Dictionary();
      
      private var §5214233072233085123423632234§:ClientObject;
      
      private var §native use const§:Dictionary = new Dictionary();
      
      public function §5214231465231478123423632234§()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.§5214237454237467123423632234§);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.addEventHandler(TankRemovedFromBattleEvent,this.§5214235377235390123423632234§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private static function §return use const§(param1:ClientObject) : §5214237646237659123423632234§
      {
         var _loc2_:§finally set final§ = §finally set final§(modelRegistry.getModel(Long.getLong(-542156338,842183289)));
         return _loc2_.§5214231718231731123423632234§(param1);
      }
      
      private static function §5214232792232805123423632234§(param1:Vector3, param2:Vector.<§const throw§>, param3:Vector.<Vector3>) : §try use super§
      {
         var _loc13_:Vector.<§52142320823221123423632234§> = null;
         var _loc11_:Vector.<String> = null;
         var _loc12_:Vector.<int> = null;
         var _loc9_:Vector.<§52142320823221123423632234§> = null;
         var _loc10_:Vector.<§52142320823221123423632234§> = null;
         var _loc8_:* = 0;
         var _loc5_:int = 0;
         var _loc4_:§const throw§ = null;
         var _loc7_:§5214239411239424123423632234§ = null;
         var _loc6_:Vector3 = null;
         if(param2 != null && param2.length > 0)
         {
            _loc8_ = param2.length;
            _loc13_ = new Vector.<§52142320823221123423632234§>(_loc8_);
            _loc11_ = new Vector.<String>(_loc8_);
            _loc12_ = new Vector.<int>(_loc8_);
            _loc9_ = new Vector.<§52142320823221123423632234§>(_loc8_);
            _loc10_ = new Vector.<§52142320823221123423632234§>(_loc8_);
            _loc5_ = 0;
            while(_loc5_ < _loc8_)
            {
               _loc4_ = param2[_loc5_];
               _loc7_ = §5214239411239424123423632234§(_loc4_.§521423122212312234123423632234§);
               _loc12_[_loc5_] = _loc7_.§native catch class§;
               _loc11_[_loc5_] = _loc7_.§5214233939233952123423632234§().id;
               _loc6_ = param3[_loc5_];
               _loc10_[_loc5_] = BattleUtils.getVector3d(_loc6_);
               BattleUtils.globalToLocal(_loc4_,_loc6_);
               _loc13_[_loc5_] = BattleUtils.getVector3d(_loc6_);
               _loc9_[_loc5_] = BattleUtils.getVector3d(_loc4_.§implements catch catch§.§dynamic final§);
               _loc5_++;
            }
         }
         return new §try use super§(BattleUtils.getVector3dOrNull(param1),_loc13_,_loc11_,_loc12_,_loc9_,_loc10_);
      }
      
      private static function §with const native§(param1:ClientObject) : §in while§
      {
         var _loc2_:§class§ = §5214233861233874123423632234§.§default set implements§(param1);
         return _loc2_.§with const native§(param1);
      }
      
      public function §5214231385231398123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§5214232589232602123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§if catch for§();
         }
      }
      
      public function createLocalTurretController(param1:§if for switch§, param2:§5214236557236570123423632234§) : §var catch true§
      {
         var _loc4_:§var with§ = param2.§catch use continue§.getParams(§var with§) as §var with§;
         var _loc5_:uint = uint(§package const function§(modelRegistry.getModel(Long.getLong(1687562384,-2064768891))).getLaserPointerRedColor(param2.§catch use continue§));
         var _loc3_:§if switch throw§ = new §if switch throw§(_loc4_.§5214233751233764123423632234§,_loc5_);
         return new §if const final§(param1,_loc3_,_loc4_.§var package const§);
      }
      
      private function §5214237454237467123423632234§(param1:TankAddedToBattleEvent) : void
      {
         this.§break catch in§(param1.tank);
         this.§native use const§[param1.tank.§5214233939233952123423632234§()] = param1.tank;
      }
      
      public function §521423104912310504123423632234§() : void
      {
      }
      
      private function §break catch in§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:§5214238293238306123423632234§ = param1.§include switch break§();
         this.§52142365923672123423632234§[_loc2_.§with switch catch§()] = param1;
         this.§52142365923672123423632234§[_loc2_.§static set catch§()] = param1;
      }
      
      public function §52142347223485123423632234§(param1:int) : void
      {
         §521423120492312062123423632234§.§while set static§(param1);
      }
      
      public function §5214238937238950123423632234§(param1:ClientObject) : §import catch null§
      {
         this.§5214233072233085123423632234§ = param1;
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc9_:§var with§ = _loc2_.§catch use continue§.getParams(§var with§) as §var with§;
         var _loc10_:§521423107282310741123423632234§ = §521423107282310741123423632234§(OSGi.getInstance().getService(§521423107282310741123423632234§));
         var _loc7_:§521423117342311747123423632234§ = _loc10_.§break var catch§(_loc2_.§catch use continue§);
         var _loc8_:§true const each§ = new §true const each§();
         var _loc5_:§5214238631238644123423632234§ = new §5214238631238644123423632234§(param1);
         var _loc6_:§extends catch switch§ = new §521423114172311430123423632234§(param1,_loc2_.§catch use continue§.id,_loc9_.§5214236669236682123423632234§);
         var _loc4_:§const package override§ = new §const package override§(_loc9_.§5214231735231748123423632234§ * §5214231727231740123423632234§.§5214233647233660123423632234§.§function const super§(),_loc7_.§import finally const§());
         var _loc3_:§import catch null§ = new §5214233912233925123423632234§(_loc5_,§52142380523818123423632234§,§with set include§,this,_loc9_,_loc4_,_loc8_,this.§52142365923672123423632234§,§if const final§(_loc10_.§52142378723800123423632234§(_loc2_)),_loc6_,§return use const§(_loc2_.§catch use continue§));
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function §finally use static§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc8_:§var with§ = _loc2_.§catch use continue§.getParams(§var with§) as §var with§;
         var _loc9_:§521423107282310741123423632234§ = §521423107282310741123423632234§(OSGi.getInstance().getService(§521423107282310741123423632234§));
         var _loc6_:§521423117342311747123423632234§ = _loc9_.§break var catch§(_loc2_.§catch use continue§);
         var _loc7_:§in while§ = §with const native§(param1);
         var _loc4_:§if for switch§ = param1.getParams(§if for switch§) as §if for switch§;
         var _loc5_:TankSpecification = _loc2_.§package switch package§;
         var _loc3_:§import catch null§ = new §5214232589232602123423632234§(_loc6_.§5214231830231843123423632234§(),_loc8_,_loc7_,_loc4_,_loc5_);
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      private function §52142353723550123423632234§(param1:§5214238293238306123423632234§) : void
      {
         delete this.§52142365923672123423632234§[param1.§with switch catch§()];
         delete this.§52142365923672123423632234§[param1.§static set catch§()];
      }
      
      public function §native function§(param1:ClientObject) : void
      {
         var _loc2_:§5214232589232602123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§native function§();
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function §5214232348232361123423632234§() : void
      {
         §521423120492312062123423632234§.§5214237249237262123423632234§();
      }
      
      public function §5214232584232597123423632234§(param1:int) : void
      {
         §521423120492312062123423632234§.§5214237920237933123423632234§(param1);
      }
      
      private function §5214235377235390123423632234§(param1:TankRemovedFromBattleEvent) : void
      {
         delete this.§native use const§[param1.tank.§5214233939233952123423632234§()];
         this.§52142353723550123423632234§(param1.tank.§include switch break§());
      }
      
      public function §if for extends§(param1:int, param2:Vector3, param3:Vector.<§const throw§>, param4:Vector.<Vector3>) : void
      {
         var _loc5_:§try use super§ = §5214232792232805123423632234§(param2,param3,param4);
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
         §521423120492312062123423632234§.§use const extends§(param1,_loc5_.§null for catch§,_loc5_.§521423140042314017123423632234§,_loc5_.§return const static§,_loc5_.§catch catch if§,_loc5_.§set for while§,_loc5_.§5214239170239183123423632234§);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§var with§ = §switch var switch§();
         _loc2_.§const catch if§ = BattleUtils.toClientScale(_loc2_.§const catch if§);
         _loc2_.§5214235456235469123423632234§ = BattleUtils.toClientScale(_loc2_.§5214235456235469123423632234§);
         param1.putParams(§var with§,_loc2_);
      }
      
      public function §521423131632313176123423632234§(param1:ClientObject, param2:§52142320823221123423632234§, param3:Vector.<String>, param4:Vector.<§52142320823221123423632234§>, param5:Number) : void
      {
         var _loc12_:Vector.<Vector3> = null;
         var _loc10_:Vector.<§const throw§> = null;
         var _loc11_:int = 0;
         var _loc9_:int = 0;
         var _loc7_:ClientObject = null;
         var _loc6_:§5214239411239424123423632234§ = null;
         var _loc8_:§5214232589232602123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc8_ != null)
         {
            _loc8_.§native function§();
            if(param3 != null)
            {
               _loc11_ = int(param4.length);
               _loc12_ = new Vector.<Vector3>(_loc11_);
               _loc10_ = new Vector.<§const throw§>(_loc11_);
               _loc9_ = 0;
               while(_loc9_ < _loc11_)
               {
                  _loc7_ = §do switch var§.getUser(param3[_loc9_]);
                  _loc6_ = this.§native use const§[_loc7_];
                  if(_loc6_ == null)
                  {
                     _loc10_[_loc9_] = null;
                  }
                  else
                  {
                     _loc10_[_loc9_] = _loc6_.§break switch catch§();
                     _loc12_[_loc9_] = BattleUtils.getVector3(param4[_loc9_]);
                     BattleUtils.localToGlobal(_loc6_.§break switch catch§(),_loc12_[_loc9_]);
                  }
                  _loc9_++;
               }
            }
            _loc8_.§5214236091236104123423632234§(BattleUtils.getVector3OrNull(param2),_loc10_,_loc12_,param5);
         }
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         var _loc2_:ClientObject = param1.tank.§5214233939233952123423632234§();
         if(_loc2_ == this.§5214233072233085123423632234§)
         {
            this.§5214233072233085123423632234§ = null;
         }
         delete this.§5214237083237096123423632234§[_loc2_];
      }
      
      public function §5214239369239382123423632234§(param1:int, param2:Vector3, param3:Vector.<§const throw§>, param4:Vector.<Vector3>) : void
      {
         var _loc5_:§try use super§ = §5214232792232805123423632234§(param2,param3,param4);
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
         §521423120492312062123423632234§.§with catch do§(param1,_loc5_.§null for catch§,_loc5_.§521423140042314017123423632234§,_loc5_.§return const static§,_loc5_.§catch catch if§,_loc5_.§set for while§,_loc5_.§5214239170239183123423632234§);
      }
   }
}

