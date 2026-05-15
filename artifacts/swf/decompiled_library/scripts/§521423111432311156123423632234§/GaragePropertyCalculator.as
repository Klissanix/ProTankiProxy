package §521423111432311156123423632234§
{
   public class GaragePropertyCalculator implements §5214237017237030123423632234§
   {
      
      private const §final use finally§:Number;
      
      private var §const else§:Number;
      
      private var §521423128542312867123423632234§:Number;
      
      private var §5214238259238272123423632234§:int;
      
      private var §case set final§:int;
      
      private var §521423136462313659123423632234§:Number;
      
      private var §break catch static§:Number;
      
      public function GaragePropertyCalculator(param1:Number, param2:Number, param3:int)
      {
         var _loc8_:Number = NaN;
         §final use finally§ = Math.log(2);
         super();
         var _loc6_:Boolean = false;
         var _loc7_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Number = 0;
         this.§const else§ = param1;
         this.§521423128542312867123423632234§ = param2;
         this.§5214238259238272123423632234§ = param3;
         this.§case set final§ = 0;
         this.§521423136462313659123423632234§ = 1;
         if(param3 > 0)
         {
            this.§break catch static§ = this.d25b3a65(param3);
            _loc8_ = Math.abs(this.calculate(param3) - this.calculate(param3 - 1));
            this.§case set final§ = Math.ceil(-Math.log(_loc8_) / Math.log(10));
            if(this.§case set final§ < 0)
            {
               this.§case set final§ = 0;
            }
            this.§521423136462313659123423632234§ = Math.pow(10,-this.§case set final§);
            if(this.§case set final§ > 0)
            {
               --this.§case set final§;
               this.§521423136462313659123423632234§ *= 10;
               _loc6_ = true;
               _loc7_ = "+" + param1.toFixed(this.§case set final§);
               _loc4_ = 0;
               while(_loc4_ < param3)
               {
                  if(this.getDelta(_loc4_) == _loc7_)
                  {
                     _loc6_ = false;
                     break;
                  }
                  _loc4_++;
               }
               if(!_loc6_)
               {
                  ++this.§case set final§;
                  this.§521423136462313659123423632234§ *= 0.1;
               }
            }
         }
      }
      
      private function round(param1:Number) : Number
      {
         return Math.round(param1 / this.§521423136462313659123423632234§) * this.§521423136462313659123423632234§;
      }
      
      private function calculate(param1:int) : Number
      {
         if(param1 == 0)
         {
            return this.§const else§;
         }
         return this.§const else§ + this.d25b3a65(param1) * (this.§521423128542312867123423632234§ - this.§const else§) / this.§break catch static§;
      }
      
      public function getValue(param1:int) : String
      {
         var _loc2_:Number = this.a1a52a02(param1);
         return this.valueToString(_loc2_);
      }
      
      public function getNumberValue(param1:int) : Number
      {
         return this.calculate(param1);
      }
      
      public function setPrecision(param1:int) : void
      {
         this.§case set final§ = param1;
         this.§521423136462313659123423632234§ = Math.pow(10,-this.§case set final§);
      }
      
      public function getPrecision() : int
      {
         return this.§case set final§;
      }
      
      private function valueToString(param1:Number) : String
      {
         return String(param1);
      }
      
      private function d25b3a65(param1:int) : Number
      {
         return Math.log(param1 + 1) / this.§final use finally§ + param1 * 5 / this.§5214238259238272123423632234§;
      }
      
      public function getDelta(param1:int) : String
      {
         var _loc2_:String = null;
         var _loc3_:Number = this.round(this.a1a52a02(param1 + 1) - this.a1a52a02(param1));
         if(_loc3_ < 0)
         {
            _loc2_ = "−";
            _loc3_ = -_loc3_;
         }
         else
         {
            _loc2_ = "+";
         }
         return _loc2_ + this.valueToString(_loc3_);
      }
      
      private function a1a52a02(param1:int) : Number
      {
         return this.calculate(param1);
      }
   }
}

