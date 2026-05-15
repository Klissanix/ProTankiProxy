package §5214239225239238123423632234§
{
   import §5214237976237989123423632234§.§catch use native§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.§521423111742311187123423632234§;
   import §each var null§.§const throw§;
   import §extends var import§.§5214231658231671123423632234§;
   
   public class TDMHealingGunTargetEvaluator implements §catch use native§, §521423111742311187123423632234§
   {
      
      private static const §521423129252312938123423632234§:Number = 0.0001;
      
      private var §521423121582312171123423632234§:§5214231658231671123423632234§;
      
      public function TDMHealingGunTargetEvaluator()
      {
         super();
      }
      
      public function getTargetPriority(param1:§const throw§) : Number
      {
         var _loc2_:int = 0;
         var _loc3_:§5214239411239424123423632234§ = param1.§521423122212312234123423632234§;
         if(_loc3_.§try for const§(this.§521423121582312171123423632234§))
         {
            _loc2_ = 0;
            if(_loc3_.§while use null§() > 0.0001)
            {
               _loc2_ = 5;
            }
            else if(_loc3_.§while use null§() < -0.0001)
            {
               _loc2_ = 4;
            }
            return _loc3_.§do for final§.§5214231837231850123423632234§ > _loc3_.§5214237641237654123423632234§() - 0.0001 ? 1 : 3 + _loc2_;
         }
         return 2;
      }
      
      public function setFlagCarrier(param1:§const throw§) : void
      {
      }
      
      public function setLocalTeamType(param1:§5214231658231671123423632234§) : void
      {
         this.§521423121582312171123423632234§ = param1;
      }
   }
}

