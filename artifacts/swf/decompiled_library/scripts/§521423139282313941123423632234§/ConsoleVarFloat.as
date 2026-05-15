package §521423139282313941123423632234§
{
   public class ConsoleVarFloat extends ConsoleVar
   {
      
      public var value:Number;
      
      private var minValue:Number;
      
      private var maxValue:Number;
      
      public function ConsoleVarFloat(param1:String, param2:Number, param3:Number, param4:Number, param5:Function = null)
      {
         super(param1,param5);
         this.value = param2;
         this.minValue = param3;
         this.maxValue = param4;
      }
      
      override public function toString() : String
      {
         return this.value.toString();
      }
      
      override public function acceptInput(param1:String) : String
      {
         var _loc2_:Number = Number(param1);
         if(isNaN(_loc2_))
         {
            return "Incorrect number";
         }
         if(_loc2_ < this.minValue || _loc2_ > this.maxValue)
         {
            return "Value is out of bounds [" + this.minValue + ", " + this.maxValue + "]";
         }
         this.value = _loc2_;
         if(§function package final§ != null)
         {
            §function package final§(this.value);
         }
         return null;
      }
   }
}

