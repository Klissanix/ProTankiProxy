package alternativa.tanks.battle
{
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.SpeedHackEvent;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class SpeedHackChecker
   {
      
      private const §import use default§:§native switch false§ = new §5214235507235520123423632234§(15000);
      
      private const threshold:§native switch false§ = new §5214235507235520123423632234§(300);
      
      private const §521423119642311977123423632234§:§native switch false§ = new §5214235507235520123423632234§(3);
      
      private const §5214239956239969123423632234§:§native switch false§ = new §5214235507235520123423632234§(0);
      
      private var §with set include§:BattleEventDispatcher;
      
      private var timer:Timer;
      
      private var §do const function§:int;
      
      private var §52142310623119123423632234§:Number;
      
      private var §dynamic const with§:Array = [];
      
      public function SpeedHackChecker(param1:BattleEventDispatcher)
      {
         super();
         this.§with set include§ = param1;
         this.§do const function§ = getTimer();
         this.§52142310623119123423632234§ = new Date().time;
         this.timer = new Timer(this.§import use default§.§521423128592312872123423632234§());
         this.timer.addEventListener("timer",this.f30fdadd);
         this.timer.start();
      }
      
      private function f30fdadd(param1:TimerEvent) : void
      {
         var _loc2_:int = getTimer();
         var _loc4_:Number = new Date().time;
         var _loc3_:Number = _loc2_ - this.§do const function§ - _loc4_ + this.§52142310623119123423632234§;
         if((_loc3_ > 0 ? _loc3_ : -_loc3_) > this.threshold.§521423128592312872123423632234§())
         {
            this.§dynamic const with§[§dynamic const with§.length] = _loc3_;
            this.§5214239956239969123423632234§.§5214231491231504123423632234§(this.§5214239956239969123423632234§.§521423128592312872123423632234§() + 1);
            if(this.§5214239956239969123423632234§.§521423128592312872123423632234§() >= this.§521423119642311977123423632234§.§521423128592312872123423632234§())
            {
               this.stop();
               this.§with set include§.dispatchEvent(new SpeedHackEvent(this.§dynamic const with§));
            }
         }
         else
         {
            this.§5214239956239969123423632234§.§5214231491231504123423632234§(0);
            this.§dynamic const with§.length = 0;
         }
         this.§do const function§ = _loc2_;
         this.§52142310623119123423632234§ = _loc4_;
      }
      
      public function stop() : void
      {
         this.timer.stop();
      }
   }
}

