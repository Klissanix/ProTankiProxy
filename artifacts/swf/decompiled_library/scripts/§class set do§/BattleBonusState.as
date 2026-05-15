package §class set do§
{
   public class BattleBonusState
   {
      
      public var §5214237151237164123423632234§:Number = 0;
      
      public var §52142317323186123423632234§:Number = 0;
      
      public var §do for set§:Number = 0;
      
      public function BattleBonusState()
      {
         super();
      }
      
      public function interpolate(param1:BattleBonusState, param2:BattleBonusState, param3:Number) : void
      {
         this.§5214237151237164123423632234§ = param1.§5214237151237164123423632234§ + param3 * (param2.§5214237151237164123423632234§ - param1.§5214237151237164123423632234§);
         this.§52142317323186123423632234§ = param1.§52142317323186123423632234§ + param3 * (param2.§52142317323186123423632234§ - param1.§52142317323186123423632234§);
         this.§do for set§ = param1.§do for set§ + param3 * (param2.§do for set§ - param1.§do for set§);
      }
      
      public function copy(param1:BattleBonusState) : void
      {
         this.§5214237151237164123423632234§ = param1.§5214237151237164123423632234§;
         this.§52142317323186123423632234§ = param1.§52142317323186123423632234§;
         this.§do for set§ = param1.§do for set§;
      }
   }
}

