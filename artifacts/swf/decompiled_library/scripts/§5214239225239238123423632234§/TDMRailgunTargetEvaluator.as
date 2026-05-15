package §5214239225239238123423632234§
{
   import §5214237976237989123423632234§.§for const native§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.§521423102802310293123423632234§;
   import §each var null§.§const throw§;
   import §extends var import§.§5214231658231671123423632234§;
   
   public class TDMRailgunTargetEvaluator implements §for const native§, §521423102802310293123423632234§
   {
      
      private var §521423121582312171123423632234§:§5214231658231671123423632234§;
      
      public function TDMRailgunTargetEvaluator()
      {
         super();
      }
      
      public function setLocalTeamType(param1:§5214231658231671123423632234§) : void
      {
         this.§521423121582312171123423632234§ = param1;
      }
      
      public function isFriendly(param1:§const throw§) : Boolean
      {
         var _loc2_:§5214239411239424123423632234§ = param1.§521423122212312234123423632234§;
         return _loc2_.§try for const§(this.§521423121582312171123423632234§);
      }
      
      public function getHitEfficiency(param1:§const throw§) : Number
      {
         var _loc2_:§5214239411239424123423632234§ = param1.§521423122212312234123423632234§;
         if(_loc2_.§do for final§.§5214231837231850123423632234§ <= 0)
         {
            return 0;
         }
         if(_loc2_.§try for const§(this.§521423121582312171123423632234§))
         {
            return 0;
         }
         return 1;
      }
   }
}

