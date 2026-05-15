package §5214235485235498123423632234§
{
   import §5214237976237989123423632234§.§5214231455231468123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.§521423111742311187123423632234§;
   import §each var null§.§const throw§;
   import §extends var import§.§5214231658231671123423632234§;
   
   public class CTFCommonTargetEvaluator implements §5214231455231468123423632234§, §521423111742311187123423632234§
   {
      
      private static const §switch const override§:Number = 5;
      
      private var §521423121582312171123423632234§:§5214231658231671123423632234§;
      
      private var §false switch super§:§const throw§;
      
      public function CTFCommonTargetEvaluator()
      {
         super();
      }
      
      public function getTargetPriority(param1:§const throw§, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc7_:Number = NaN;
         var _loc6_:§5214239411239424123423632234§ = param1.§521423122212312234123423632234§;
         if(_loc6_.§do for final§.§5214231837231850123423632234§ > 0 && !_loc6_.§try for const§(this.§521423121582312171123423632234§))
         {
            _loc7_ = param1 == this.§false switch super§ ? 5 : 0;
            return 1000 - (0.65 * param2 / param4 + (1 - 0.65) * Math.abs(param3) / param5) + _loc7_;
         }
         return 0;
      }
      
      public function setLocalTeamType(param1:§5214231658231671123423632234§) : void
      {
         this.§521423121582312171123423632234§ = param1;
      }
      
      public function setFlagCarrier(param1:§const throw§) : void
      {
         this.§false switch super§ = param1;
      }
   }
}

