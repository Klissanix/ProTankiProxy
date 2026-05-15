package alternativa.tanks.battle
{
   import flash.utils.getTimer;
   
   public class FPSCounter
   {
      
      private var §5214239634239647123423632234§:int;
      
      private var §do use super§:int;
      
      private var §521423128052312818123423632234§:int;
      
      private var fps:Number = 0;
      
      public function FPSCounter(param1:int)
      {
         super();
         this.§5214239634239647123423632234§ = param1;
         this.§do use super§ = getTimer();
      }
      
      public function getFPS() : Number
      {
         return this.fps;
      }
      
      public function update() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(++this.§521423128052312818123423632234§ >= this.§5214239634239647123423632234§)
         {
            _loc2_ = getTimer();
            _loc1_ = _loc2_ - this.§do use super§;
            this.§do use super§ = _loc2_;
            this.fps = 1000 * this.§521423128052312818123423632234§ / _loc1_;
            this.§521423128052312818123423632234§ = 0;
         }
      }
   }
}

