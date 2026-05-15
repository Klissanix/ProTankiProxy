package alternativa.tanks.models.battle.battlefield
{
   import flash.utils.getTimer;
   
   internal class TimeStatistics
   {
      
      private static const §set do§:int = 10;
      
      private var §521423131392313152123423632234§:Number;
      
      private var §include const set§:Number;
      
      private var §521423128572312870123423632234§:Number;
      
      private var §package for super§:Number;
      
      private var §function in§:int;
      
      private var §521423130022313015123423632234§:int;
      
      private var §each catch super§:int;
      
      private var §5214232940232953123423632234§:int;
      
      public function TimeStatistics()
      {
         super();
         this.reset();
      }
      
      public function update(param1:int) : void
      {
         ++this.§function in§;
         ++this.§521423130022313015123423632234§;
         if(this.§521423130022313015123423632234§ >= 10 && param1 > this.§5214232940232953123423632234§)
         {
            this.§521423131392313152123423632234§ = (param1 - this.§5214232940232953123423632234§) / this.§521423130022313015123423632234§;
            this.§include const set§ = 1000 / this.§521423131392313152123423632234§;
            this.§521423130022313015123423632234§ = 0;
            if(this.§include const set§ < this.§521423128572312870123423632234§)
            {
               this.§521423128572312870123423632234§ = this.§include const set§;
            }
            else if(this.§include const set§ > this.§package for super§)
            {
               this.§package for super§ = this.§include const set§;
            }
            this.§5214232940232953123423632234§ = param1;
         }
      }
      
      public function get totalTime() : int
      {
         return this.§5214232940232953123423632234§ - this.§each catch super§;
      }
      
      public function getAverageFPS() : Number
      {
         return 1000 / (this.§5214232940232953123423632234§ - this.§each catch super§) * this.§function in§;
      }
      
      public function reset() : void
      {
         this.§521423130022313015123423632234§ = 0;
         this.§521423131392313152123423632234§ = 0;
         this.§include const set§ = 100;
         this.§521423128572312870123423632234§ = 100;
         this.§package for super§ = 0;
         this.§function in§ = 0;
         this.§each catch super§ = getTimer();
         this.§5214232940232953123423632234§ = this.§each catch super§;
      }
      
      public function get fps() : Number
      {
         return this.§include const set§;
      }
      
      public function get totalFrames() : int
      {
         return this.§function in§;
      }
      
      public function get maxFPS() : Number
      {
         return this.§package for super§;
      }
      
      public function get minFPS() : Number
      {
         return this.§521423128572312870123423632234§;
      }
      
      public function get averageTimeInMs() : Number
      {
         return this.§521423131392313152123423632234§;
      }
   }
}

