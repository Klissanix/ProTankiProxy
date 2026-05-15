package alternativa.tanks.battle
{
   import flash.utils.getTimer;
   
   public class PerformanceMonitor
   {
      
      private var §5214239634239647123423632234§:int;
      
      private var §use var throw§:int;
      
      private var §5214236042236055123423632234§:int;
      
      private var §dynamic const override§:Number = 0;
      
      private var §false package each§:int;
      
      private var §521423128052312818123423632234§:int;
      
      private var §do const const§:int;
      
      public function PerformanceMonitor(param1:int)
      {
         super();
         this.§5214239634239647123423632234§ = param1;
         this.reset();
      }
      
      public function beginFrame() : void
      {
         this.§false package each§ = getTimer();
      }
      
      public function getAverageFps() : int
      {
         return 1000 / this.§dynamic const override§;
      }
      
      public function reset() : void
      {
         this.§use var throw§ = 0;
         this.§5214236042236055123423632234§ = 0;
         this.§dynamic const override§ = 0;
         this.§521423128052312818123423632234§ = 0;
         this.§do const const§ = 0;
      }
      
      public function getAverageFrameTimeInMs() : Number
      {
         return this.§dynamic const override§;
      }
      
      private function f585d90f(param1:int) : void
      {
         if(param1 > this.§5214236042236055123423632234§)
         {
            this.§5214236042236055123423632234§ = param1;
         }
         else if(param1 < this.§use var throw§)
         {
            this.§use var throw§ = param1;
         }
      }
      
      public function endFrame() : void
      {
         var _loc1_:int = getTimer() - this.§false package each§;
         this.§do const const§ += _loc1_;
         this.f585d90f(_loc1_);
         if(++this.§521423128052312818123423632234§ >= this.§5214239634239647123423632234§)
         {
            this.§dynamic const override§ = this.§do const const§ / this.§521423128052312818123423632234§;
            this.§do const const§ = 0;
            this.§521423128052312818123423632234§ = 0;
         }
      }
   }
}

