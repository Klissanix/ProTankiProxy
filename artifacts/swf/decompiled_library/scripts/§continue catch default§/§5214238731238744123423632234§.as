package §continue catch default§
{
   public class §5214238731238744123423632234§
   {
      
      public var §do set package§:uint;
      
      private var §do use include§:Number;
      
      private var §5214236451236464123423632234§:Number;
      
      private var §use var get§:Number;
      
      public function §5214238731238744123423632234§(param1:uint, param2:uint)
      {
         super();
         this.§do set package§ = param1;
         this.§do use include§ = (param2 >> 16 & 0xFF) - (param1 >> 16 & 0xFF);
         this.§5214236451236464123423632234§ = (param2 >> 8 & 0xFF) - (param1 >> 8 & 0xFF);
         this.§use var get§ = (param2 & 0xFF) - (param1 & 0xFF);
      }
      
      public function §do const extends§(param1:Number) : uint
      {
         var _loc2_:int = (this.§do set package§ >> 16 & 0xFF) + param1 * this.§do use include§;
         var _loc3_:int = (this.§do set package§ >> 8 & 0xFF) + param1 * this.§5214236451236464123423632234§;
         var _loc4_:int = (this.§do set package§ & 0xFF) + param1 * this.§use var get§;
         return _loc2_ << 16 | _loc3_ << 8 | _loc4_;
      }
   }
}

