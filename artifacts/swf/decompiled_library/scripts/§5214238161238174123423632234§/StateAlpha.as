package §5214238161238174123423632234§
{
   internal class StateAlpha implements §throw set class§
   {
      
      private var message:Message;
      
      private var §5214235686235699123423632234§:int;
      
      private var §implements var case§:int;
      
      private var §5214239127239140123423632234§:Number;
      
      private var §while const finally§:Number;
      
      private var §native catch switch§:Number;
      
      public function StateAlpha(param1:Message, param2:int, param3:Number, param4:Number)
      {
         super();
         this.message = param1;
         this.§5214235686235699123423632234§ = param2;
         this.§5214239127239140123423632234§ = param3;
         this.§while const finally§ = param4;
         this.§native catch switch§ = param4 - param3;
      }
      
      public function init() : void
      {
         this.message.setAlpha(this.§5214239127239140123423632234§);
         this.§implements var case§ = this.§5214235686235699123423632234§;
      }
      
      public function setDurationInMs(param1:int) : void
      {
         this.§5214235686235699123423632234§ = param1;
      }
      
      public function update(param1:int) : Boolean
      {
         if(this.§implements var case§ <= 0)
         {
            return false;
         }
         this.§implements var case§ -= param1;
         if(this.§implements var case§ < 0)
         {
            this.§implements var case§ = 0;
         }
         this.message.setAlpha(this.§while const finally§ - this.§native catch switch§ * this.§implements var case§ / this.§5214235686235699123423632234§);
         return true;
      }
   }
}

