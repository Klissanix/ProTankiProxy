package §implements var class§
{
   public class BattleFinishDmNotification extends BattleFinishNotification
   {
      
      private static const §5214236334236347123423632234§:String = "{your_place}";
      
      private static const §package extends§:String = "{places}";
      
      private static const §521423131292313142123423632234§:String = "{crystalls}";
      
      private var §extends for break§:int;
      
      private var §5214239794239807123423632234§:int;
      
      private var §default implements§:int;
      
      private var §final catch do§:int;
      
      public function BattleFinishDmNotification(param1:int, param2:int, param3:int, param4:int)
      {
         this.§extends for break§ = param1;
         this.§5214239794239807123423632234§ = param2;
         this.§default implements§ = param3;
         this.§final catch do§ = param4;
         super();
      }
      
      override public function get message() : String
      {
         return §5214236363236376123423632234§.getText("REARM_DM_END_BATTLE") + "\n" + §5214236363236376123423632234§.getText("REARM_BATTLE_PLACE").replace("{your_place}",this.§extends for break§).replace("{places}",this.§5214239794239807123423632234§) + "\n" + §5214236363236376123423632234§.getText("REARM_BATTLE_PRIZE").replace("{crystalls}",getRewardText(this.§default implements§,this.§final catch do§));
      }
   }
}

