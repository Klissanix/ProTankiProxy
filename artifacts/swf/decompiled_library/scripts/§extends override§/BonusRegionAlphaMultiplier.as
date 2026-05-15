package §extends override§
{
   public class BonusRegionAlphaMultiplier
   {
      
      private static const §5214233819233832123423632234§:Number = 0;
      
      private static const §try use dynamic§:Number = 1;
      
      private var §import for extends§:int;
      
      private var §521423120222312035123423632234§:int;
      
      private var §while set§:Number;
      
      private var §final for throw§:Number;
      
      public function BonusRegionAlphaMultiplier()
      {
         super();
      }
      
      private static function clamp(param1:Number) : Number
      {
         return Math.max(0,Math.min(1,param1));
      }
      
      public function getAlphaMultiplier(param1:int, param2:Boolean) : Number
      {
         if(param1 > this.§import for extends§ + this.§521423120222312035123423632234§)
         {
            if(param2)
            {
               return 1;
            }
            return 0;
         }
         var _loc3_:Number = (param1 - this.§import for extends§) / this.§521423120222312035123423632234§;
         if(!param2)
         {
            _loc3_ = 1 - _loc3_;
         }
         return clamp(_loc3_);
      }
      
      public function init(param1:int, param2:int, param3:Number) : void
      {
         this.§import for extends§ = param1;
         this.§521423120222312035123423632234§ = param2;
         this.§while set§ = param3;
      }
      
      public function getAlpha(param1:int, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         if(param1 > this.§import for extends§ + this.§521423120222312035123423632234§)
         {
            if(param2)
            {
               return 1;
            }
            return 0;
         }
         var _loc3_:Number = (param1 - this.§import for extends§) / this.§521423120222312035123423632234§;
         if(param2)
         {
            _loc4_ = this.§while set§ + (1 - this.§while set§) * _loc3_;
         }
         else
         {
            _loc4_ = this.§while set§ * (1 - _loc3_);
         }
         return clamp(_loc4_);
      }
      
      public function get startAlphaMesh() : Number
      {
         return this.§while set§;
      }
      
      public function set newAlpha(param1:Number) : void
      {
         this.§final for throw§ = param1;
      }
      
      public function get newAlpha() : Number
      {
         return this.§final for throw§;
      }
      
      public function reset() : void
      {
         this.§import for extends§ = -1;
         this.§521423120222312035123423632234§ = 0;
      }
   }
}

