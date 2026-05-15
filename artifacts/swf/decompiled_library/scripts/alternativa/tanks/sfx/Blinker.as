package alternativa.tanks.sfx
{
   public class Blinker
   {
      
      private var §override use extends§:int;
      
      private var §static package if§:int;
      
      private var §5214231725231738123423632234§:int;
      
      private var maxValue:Number;
      
      private var minValue:Number;
      
      private var §52142379323806123423632234§:Number;
      
      private var value:Number;
      
      private var §dynamic catch with§:Number;
      
      private var §set const§:Number;
      
      private var §var const function§:int;
      
      private var §5214231672231685123423632234§:int;
      
      public function Blinker(param1:int, param2:int, param3:int, param4:Number, param5:Number, param6:Number)
      {
         super();
         this.§override use extends§ = param1;
         this.§static package if§ = param2;
         this.§5214231725231738123423632234§ = param3;
         this.minValue = param4;
         this.maxValue = param5;
         this.§52142379323806123423632234§ = param6;
         this.§set const§ = param5 - param4;
      }
      
      public function setMaxValue(param1:Number) : void
      {
         if(param1 >= this.minValue)
         {
            this.maxValue = param1;
            this.§set const§ = this.maxValue - this.minValue;
         }
      }
      
      public function setMinValue(param1:Number) : void
      {
         if(param1 <= this.maxValue)
         {
            this.minValue = param1;
            this.§set const§ = this.maxValue - this.minValue;
         }
      }
      
      public function init(param1:int) : void
      {
         this.value = this.maxValue;
         this.§5214231672231685123423632234§ = this.§override use extends§;
         this.§dynamic catch with§ = this.getSpeed(-1);
         this.§var const function§ = param1 + this.§5214231672231685123423632234§;
      }
      
      public function getMinValue() : Number
      {
         return this.minValue;
      }
      
      private function getSpeed(param1:Number) : Number
      {
         return param1 * this.§52142379323806123423632234§ * this.§set const§ / this.§5214231672231685123423632234§;
      }
      
      public function updateValue(param1:int, param2:int) : Number
      {
         this.value += this.§dynamic catch with§ * param2;
         if(this.value > this.maxValue)
         {
            this.value = this.maxValue;
         }
         if(this.value < this.minValue)
         {
            this.value = this.minValue;
         }
         if(param1 >= this.§var const function§)
         {
            if(this.§5214231672231685123423632234§ > this.§static package if§)
            {
               this.§5214231672231685123423632234§ -= this.§5214231725231738123423632234§;
               if(this.§5214231672231685123423632234§ < this.§static package if§)
               {
                  this.§5214231672231685123423632234§ = this.§static package if§;
               }
            }
            this.§var const function§ = param1 + this.§5214231672231685123423632234§;
            if(this.§dynamic catch with§ < 0)
            {
               this.§dynamic catch with§ = this.getSpeed(1);
            }
            else
            {
               this.§dynamic catch with§ = this.getSpeed(-1);
            }
         }
         return this.value;
      }
      
      public function setInitialInterval(param1:int) : void
      {
         this.§override use extends§ = param1;
      }
   }
}

