package §5214237477237490123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214232389232402123423632234§.§5214233861233874123423632234§;
   import §5214233132233145123423632234§.§521423114172311430123423632234§;
   import §5214233132233145123423632234§.§extends catch switch§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214237976237989123423632234§.§true const each§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238868238881123423632234§.§5214237250237263123423632234§;
   import §5214238868238881123423632234§.§const package override§;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
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
   import §extends var in§.§5214232441232454123423632234§;
   import §extends var in§.§52142399932310006123423632234§;
   import §extends var in§.§use package use§;
   import §final for with§.§5214238652238665123423632234§;
   import flash.utils.Dictionary;
   import §for const do§.§521423107282310741123423632234§;
   import §for const do§.§521423117342311747123423632234§;
   import §set package in§.ClientObject;
   
   public class §for for else§ extends §5214232441232454123423632234§ implements §52142399932310006123423632234§, §5214237250237263123423632234§, §if use default§, §use finally var§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §do switch var§:TankUsersRegistry;
      
      private var §5214237083237096123423632234§:Dictionary = new Dictionary();
      
      private var §native use const§:Dictionary = new Dictionary();
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      public function §for for else§()
      {
         super();
         this.§5214233213233226123423632234§();
      }
      
      private static function §with const native§(param1:ClientObject) : §521423123582312371123423632234§
      {
         var _loc2_:§5214235413235426123423632234§ = §5214233861233874123423632234§.§continue set class§(param1);
         return _loc2_.§with const native§(param1);
      }
      
      private static function §5214234145234158123423632234§(param1:Vector.<String>, param2:Dictionary) : Vector.<§const throw§>
      {
         var _loc4_:Vector.<§const throw§> = null;
         var _loc5_:int = 0;
         var _loc3_:§5214239411239424123423632234§ = null;
         if(param1 != null)
         {
            _loc4_ = new Vector.<§const throw§>(param1.length);
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               _loc3_ = param2[§do switch var§.getUser(param1[_loc5_])];
               if(_loc3_ == null)
               {
                  _loc4_[_loc5_] = null;
               }
               else
               {
                  _loc4_[_loc5_] = _loc3_.§break switch catch§();
               }
               _loc5_++;
            }
            return _loc4_;
         }
         return null;
      }
      
      private static function §5214238299238312123423632234§(param1:Vector.<§52142320823221123423632234§>) : Vector.<Vector3>
      {
         var _loc2_:Vector.<Vector3> = null;
         var _loc3_:int = 0;
         var _loc4_:§52142320823221123423632234§ = null;
         if(param1 != null)
         {
            _loc2_ = new Vector.<Vector3>(param1.length);
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               _loc4_ = param1[_loc3_];
               if(!BattleUtils.isFiniteVector3d(_loc4_))
               {
                  return null;
               }
               _loc2_[_loc3_] = BattleUtils.getVector3(_loc4_);
               _loc3_++;
            }
            return _loc2_;
         }
         return null;
      }
      
      private static function §5214238086238099123423632234§(param1:ClientObject) : §521423117342311747123423632234§
      {
         var _loc2_:§521423107282310741123423632234§ = §521423107282310741123423632234§(OSGi.getInstance().getService(§521423107282310741123423632234§));
         return _loc2_.§break var catch§(param1);
      }
      
      private function §5214235377235390123423632234§(param1:TankRemovedFromBattleEvent) : void
      {
         delete this.§native use const§[param1.tank.§5214233939233952123423632234§()];
      }
      
      public function §5214236238236251123423632234§(param1:int) : void
      {
         §521423120492312062123423632234§.§5214231819231832123423632234§(param1);
      }
      
      private function §each for var§(param1:TankAddedToBattleEvent) : void
      {
         this.§native use const§[param1.tank.§5214233939233952123423632234§()] = param1.tank;
      }
      
      public function §521423131632313176123423632234§(param1:ClientObject, param2:§52142320823221123423632234§, param3:Vector.<String>, param4:Vector.<§52142320823221123423632234§>) : void
      {
         var _loc8_:Vector.<Vector3> = null;
         var _loc9_:Vector.<§const throw§> = null;
         var _loc6_:int = 0;
         var _loc7_:§const throw§ = null;
         var _loc5_:§5214234759234772123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc5_ != null)
         {
            _loc8_ = §5214238299238312123423632234§(param4);
            if(_loc8_ != null)
            {
               _loc9_ = §5214234145234158123423632234§(param3,this.§native use const§);
               if(param3 != null)
               {
                  if(param3.length == _loc8_.length)
                  {
                     _loc6_ = 0;
                     while(_loc6_ < param3.length)
                     {
                        _loc7_ = _loc9_[_loc6_];
                        if(_loc7_ != null && _loc7_.§521423122212312234123423632234§ != null)
                        {
                           BattleUtils.localToGlobal(_loc7_,_loc8_[_loc6_]);
                        }
                        _loc6_++;
                     }
                  }
                  else
                  {
                     param3 = null;
                     _loc8_ = null;
                  }
               }
            }
            _loc5_.§521423131632313176123423632234§(BattleUtils.getVector3OrNull(param2),_loc9_,_loc8_);
         }
      }
      
      public function §finally use static§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc6_:§521423117342311747123423632234§ = §5214238086238099123423632234§(_loc2_.§catch use continue§);
         var _loc7_:§default for super§ = §default for super§(_loc2_.§catch use continue§.getParams(§default for super§));
         var _loc4_:§521423123582312371123423632234§ = §with const native§(param1);
         var _loc5_:§const package override§ = new §const package override§(_loc6_.§5214231830231843123423632234§(),_loc6_.§import finally const§());
         var _loc3_:§import catch null§ = new §5214234759234772123423632234§(_loc5_,_loc7_,_loc4_);
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function §5214234982234995123423632234§(param1:int) : void
      {
         §521423120492312062123423632234§.§return return§(param1);
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         delete this.§native use const§[param1.tank.§5214233939233952123423632234§()];
      }
      
      public function §521423103342310347123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§5214234759234772123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§521423103342310347123423632234§();
         }
      }
      
      public function §5214234994235007123423632234§(param1:int, param2:Vector3, param3:Vector.<§const throw§>, param4:Vector.<Vector3>) : void
      {
         var _loc15_:Vector.<String> = null;
         var _loc16_:Vector.<§52142320823221123423632234§> = null;
         var _loc12_:Vector.<int> = null;
         var _loc13_:Vector.<§52142320823221123423632234§> = null;
         var _loc11_:Vector.<§52142320823221123423632234§> = null;
         var _loc6_:int = 0;
         var _loc5_:§const throw§ = null;
         var _loc10_:Vector3 = null;
         var _loc9_:Vector3 = null;
         var _loc8_:§5214239411239424123423632234§ = null;
         var _loc7_:int = int(param3.length);
         if(_loc7_ > 0)
         {
            _loc15_ = new Vector.<String>(_loc7_);
            _loc16_ = new Vector.<§52142320823221123423632234§>(_loc7_);
            _loc12_ = new Vector.<int>(_loc7_);
            _loc13_ = new Vector.<§52142320823221123423632234§>(_loc7_);
            _loc11_ = new Vector.<§52142320823221123423632234§>(_loc7_);
            _loc6_ = 0;
            while(_loc6_ < _loc7_)
            {
               _loc5_ = param3[_loc6_];
               _loc10_ = param4[_loc6_];
               _loc9_ = new Vector3();
               _loc9_.copy(_loc10_);
               BattleUtils.globalToLocal(_loc5_,_loc10_);
               _loc8_ = _loc5_.§521423122212312234123423632234§;
               _loc12_[_loc6_] = _loc8_.§native catch class§;
               _loc15_[_loc6_] = _loc8_.§5214233939233952123423632234§().id;
               _loc16_[_loc6_] = BattleUtils.getVector3d(_loc10_);
               _loc13_[_loc6_] = BattleUtils.getVector3d(_loc5_.§implements catch catch§.§dynamic final§);
               _loc11_[_loc6_] = BattleUtils.getVector3d(_loc9_);
               _loc6_++;
            }
         }
         var _loc14_:§52142320823221123423632234§ = BattleUtils.getVector3dOrNull(param2);
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
         §521423120492312062123423632234§.§5214232176232189123423632234§(param1,_loc14_,_loc15_,_loc16_,_loc12_,_loc13_,_loc11_);
      }
      
      public function §52142325723270123423632234§(param1:ClientObject) : void
      {
         var _loc2_:§5214234759234772123423632234§ = this.§5214237083237096123423632234§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§52142325723270123423632234§();
         }
      }
      
      private function §5214233213233226123423632234§() : void
      {
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.§each for var§);
         this.§5214238269238282123423632234§.addEventHandler(TankRemovedFromBattleEvent,this.§5214235377235390123423632234§);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      public function §5214238937238950123423632234§(param1:ClientObject) : §import catch null§
      {
         var _loc2_:§5214236557236570123423632234§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService)).getTankData(param1);
         var _loc8_:§5214238652238665123423632234§ = §5214233861233874123423632234§.§521423135432313556123423632234§[_loc2_.§catch use continue§.id];
         var _loc9_:§521423117342311747123423632234§ = §5214238086238099123423632234§(_loc2_.§catch use continue§);
         var _loc6_:§default for super§ = §default for super§(_loc2_.§catch use continue§.getParams(§default for super§));
         var _loc7_:§521423123582312371123423632234§ = §with const native§(param1);
         var _loc4_:§extends catch switch§ = new §521423114172311430123423632234§(param1,_loc2_.§catch use continue§.id,_loc6_.§super switch false§());
         var _loc5_:§const package override§ = new §const package override§(_loc9_.§5214231830231843123423632234§(),_loc9_.§import finally const§());
         var _loc3_:§import catch null§ = new §import const§(_loc4_,new §true const each§(),_loc8_.§var var set§.§521423128592312872123423632234§(),_loc5_,_loc6_.§super switch false§(),_loc6_.§import for throw§(),_loc7_,this);
         this.§5214237083237096123423632234§[param1] = _loc3_;
         return _loc3_;
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§use package use§ = §switch var switch§();
         param1.putParams(§default for super§,new §default for super§(_loc2_.§521423126172312630123423632234§,_loc2_.§5214236669236682123423632234§));
      }
   }
}

