package §5214235774235787123423632234§
{
   import §5214237976237989123423632234§.§function use use§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§5214232465232478123423632234§;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.LocalTankKilledEvent;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §each var null§.§catch for in§;
   import §each var null§.§const throw§;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §package package false§.§continue switch return§;
   
   public class §521423140422314055123423632234§ extends BattleRunnerProvider implements §5214232465232478123423632234§
   {
      
      private static const §5214239622239635123423632234§:Number = 2;
      
      private static const §default switch default§:Number = 500;
      
      private static const §5214231566231579123423632234§:Number = 200;
      
      private static const §switch catch false§:Number = 250000;
      
      private static const §5214234398234411123423632234§:Number = 300000;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private var §521423122212312234123423632234§:§5214239411239424123423632234§;
      
      private var §5214232928232941123423632234§:int;
      
      private var §throw var get§:Vector3 = new Vector3();
      
      private var §5214236301236314123423632234§:Number;
      
      private var §521423105882310601123423632234§:Dictionary;
      
      private var §override package break§:int;
      
      private var §5214238742238755123423632234§:Boolean;
      
      private var §521423132542313267123423632234§:Boolean;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §do const override§:Boolean = false;
      
      public function §521423140422314055123423632234§(param1:§5214239411239424123423632234§, param2:Dictionary)
      {
         super();
         this.§521423122212312234123423632234§ = param1;
         this.§521423105882310601123423632234§ = param2;
         this.§521423132542313267123423632234§ = true;
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§);
         this.§5214238269238282123423632234§.addEventHandler(LocalTankKilledEvent,this.§521423134532313466123423632234§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private function §5214236522236535123423632234§() : Boolean
      {
         var _loc1_:Boolean = this.§521423122212312234123423632234§.§switch var catch§() || this.§521423122212312234123423632234§.§52142390123914123423632234§();
         return _loc1_ != this.§5214238742238755123423632234§;
      }
      
      private function §5214234163234176123423632234§() : Boolean
      {
         return Math.abs(this.§throw var get§.z - this.§521423100572310070123423632234§().z) > 200;
      }
      
      private function §52142348223495123423632234§() : Boolean
      {
         return this.§throw var get§.distanceToXYSquared(this.§521423100572310070123423632234§()) > 250000;
      }
      
      private function §else switch import§() : Boolean
      {
         var _loc1_:Number = this.§5214238545238558123423632234§() - this.§5214236301236314123423632234§;
         return _loc1_ > 300000;
      }
      
      private function §5214235831235844123423632234§() : Boolean
      {
         return this.§finally var set§() && getTimer() - this.§5214232928232941123423632234§ > 1000;
      }
      
      public function reset() : void
      {
         this.§5214232928232941123423632234§ = getBattleRunner().getPhysicsTime();
         this.§throw var get§.copy(this.§521423100572310070123423632234§());
         this.§override package break§ = this.§521423122212312234123423632234§.§5214235578235591123423632234§().§package switch with§ + this.§521423122212312234123423632234§.§5214233014233027123423632234§().§package switch with§;
         this.§5214238742238755123423632234§ = this.§521423122212312234123423632234§.§switch var catch§() || this.§521423122212312234123423632234§.§52142390123914123423632234§();
         this.§5214236301236314123423632234§ = this.§5214238545238558123423632234§();
      }
      
      private function §continue include§() : Boolean
      {
         var _loc1_:int = this.§521423122212312234123423632234§.§5214235578235591123423632234§().§package switch with§ + this.§521423122212312234123423632234§.§5214233014233027123423632234§().§package switch with§;
         return this.§override package break§ == 0 && _loc1_ != 0 || this.§override package break§ != 0 && _loc1_ == 0;
      }
      
      public function §5214234516234529123423632234§() : void
      {
         this.§do const override§ = true;
      }
      
      private function §521423132382313251123423632234§() : Boolean
      {
         return this.§52142348223495123423632234§() || this.§5214234163234176123423632234§() || this.§5214235831235844123423632234§() || this.§continue include§() || this.§5214236522236535123423632234§() || this.§else switch import§() || this.§521423122212312234123423632234§.§use const each§() || this.§521423122212312234123423632234§.§5214231493231506123423632234§();
      }
      
      private function §5214238545238558123423632234§() : Number
      {
         var _loc3_:§catch for in§ = this.§521423122212312234123423632234§.§break switch catch§().§implements catch catch§;
         var _loc2_:Number = _loc3_.§dynamic final§.z * -getBattleRunner().getGravity();
         var _loc4_:Number = _loc3_.§native use function§.length();
         var _loc1_:Number = _loc4_ * _loc4_ * 0.5;
         return _loc1_ + _loc2_;
      }
      
      private function §5214239544239557123423632234§(param1:Boolean) : void
      {
         this.reset();
         var _loc2_:§super var dynamic§ = §5214237923237936123423632234§ as §super var dynamic§;
         _loc2_.§super catch in§(param1);
      }
      
      private function §5214231004231017123423632234§() : Boolean
      {
         return this.§while for break§() || this.§do const override§;
      }
      
      private function §while for break§() : Boolean
      {
         return getBattleRunner().getPhysicsTime() - this.§5214232928232941123423632234§ >= 2000;
      }
      
      private function §5214232874232887123423632234§() : Vector3
      {
         return this.§521423122212312234123423632234§.§break switch catch§().§521423132002313213123423632234§.§dynamic final§;
      }
      
      private function §521423134532313466123423632234§(param1:Object) : void
      {
         this.§521423132542313267123423632234§ = true;
      }
      
      private function §in get§() : void
      {
         this.§5214232928232941123423632234§ = getBattleRunner().getPhysicsTime() - 33;
         this.§throw var get§.copy(this.§5214232874232887123423632234§());
         var _loc1_:§super var dynamic§ = §5214237923237936123423632234§ as §super var dynamic§;
         _loc1_.§do package use§(true);
      }
      
      private function §finally var set§() : Boolean
      {
         var _loc6_:§const throw§ = null;
         var _loc3_:§catch for in§ = null;
         var _loc4_:§const throw§ = this.§521423122212312234123423632234§.§break switch catch§();
         var _loc2_:§catch for in§ = _loc4_.§implements catch catch§;
         var _loc7_:Number = this.§521423122212312234123423632234§.§521423123912312404123423632234§();
         var _loc1_:Number = 2;
         for each(var _loc5_ in this.§521423105882310601123423632234§)
         {
            if(this.§521423122212312234123423632234§ != _loc5_)
            {
               _loc6_ = _loc5_.§break switch catch§();
               _loc3_ = _loc6_.§implements catch catch§;
               if(§continue switch return§.§try catch try§(_loc2_.§dynamic final§,_loc2_.§native use function§,_loc7_,_loc3_.§dynamic final§,_loc3_.§native use function§,_loc5_.§521423123912312404123423632234§(),_loc1_))
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §521423100572310070123423632234§() : Vector3
      {
         return this.§521423122212312234123423632234§.§break switch catch§().§implements catch catch§.§dynamic final§;
      }
      
      public function runAfterPhysicsUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = this.§521423132382313251123423632234§() || this.§521423132542313267123423632234§;
         this.§521423132542313267123423632234§ = false;
         if(this.§5214239730239743123423632234§() || this.§521423122212312234123423632234§.§return package else§())
         {
            this.§in get§();
         }
         if(_loc2_ || this.§5214231004231017123423632234§())
         {
            this.§5214239544239557123423632234§(_loc2_);
            this.§do const override§ = false;
         }
      }
      
      private function §5214239730239743123423632234§() : Boolean
      {
         return §function use use§.§do set in§(this.§throw var get§,this.§521423122212312234123423632234§.§break switch catch§().§implements catch catch§.§dynamic final§);
      }
   }
}

