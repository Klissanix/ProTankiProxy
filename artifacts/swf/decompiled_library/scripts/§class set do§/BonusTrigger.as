package §class set do§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§5214234639234652123423632234§;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import §do catch return§.§5214232252232265123423632234§;
   import §each var null§.§521423119402311953123423632234§;
   import §each var null§.§const throw§;
   import §for catch for§.§5214234380234393123423632234§;
   
   public class BonusTrigger extends BattleRunnerProvider implements §5214234639234652123423632234§
   {
      
      private var bonus:BattleBonus;
      
      private var §implements set null§:§5214232252232265123423632234§;
      
      public function BonusTrigger(param1:BattleBonus)
      {
         super();
         this.bonus = param1;
         var _loc2_:Number = 75;
         this.§implements set null§ = new §5214232252232265123423632234§(new Vector3(_loc2_,_loc2_,_loc2_),64,§521423119402311953123423632234§.§with catch class§);
      }
      
      public function checkTrigger(param1:§const throw§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§5214234380234393123423632234§ = getBattleRunner().getCollisionDetector();
         while(_loc3_ < param1.§5214237167237180123423632234§)
         {
            if(_loc2_.§set const try§(param1.§if package default§[_loc3_],this.§implements set null§))
            {
               this.bonus.onTriggerActivated();
               return;
            }
            _loc3_++;
         }
      }
      
      public function updateByComponents(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:Number) : void
      {
         var _loc7_:Matrix4 = this.§implements set null§.§try const throw§;
         _loc7_.setMatrix(param1,param2,param3,param4,param5,param6);
         this.§implements set null§.§finally switch static§();
      }
      
      public function update(param1:Matrix4) : void
      {
         var _loc2_:Matrix4 = this.§implements set null§.§try const throw§;
         _loc2_.copy(param1);
         this.§implements set null§.§finally switch static§();
      }
      
      public function disable() : void
      {
         getBattleRunner().removeTrigger(this);
      }
      
      public function setTransform(param1:Vector3, param2:Matrix3) : void
      {
         var _loc3_:Matrix4 = this.§implements set null§.§try const throw§;
         _loc3_.setFromMatrix3(param2,param1);
         this.§implements set null§.§finally switch static§();
      }
      
      public function enable() : void
      {
         getBattleRunner().addTrigger(this);
      }
   }
}

