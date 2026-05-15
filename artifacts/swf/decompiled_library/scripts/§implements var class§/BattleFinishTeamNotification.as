package §implements var class§
{
   public class BattleFinishTeamNotification extends BattleFinishNotification
   {
      
      private static const §5214236334236347123423632234§:String = "{your_place}";
      
      private static const §package extends§:String = "{places}";
      
      private static const §521423131292313142123423632234§:String = "{crystalls}";
      
      private var §5214239765239778123423632234§:Boolean;
      
      private var §default null§:Boolean;
      
      private var §extends for break§:int;
      
      private var §5214239794239807123423632234§:int;
      
      private var §default implements§:int;
      
      private var §final catch do§:int;
      
      public function BattleFinishTeamNotification(param1:Boolean, param2:Boolean, param3:int, param4:int, param5:int, param6:int)
      {
         this.§5214239765239778123423632234§ = param1;
         this.§default null§ = param2;
         this.§extends for break§ = param3;
         this.§5214239794239807123423632234§ = param4;
         this.§default implements§ = param5;
         this.§final catch do§ = param6;
         super();
      }
      
      override public function get message() : String
      {
         return this.e604ddbb() + "\n" + §5214236363236376123423632234§.getText("REARM_BATTLE_PLACE").replace("{your_place}",this.§extends for break§).replace("{places}",this.§5214239794239807123423632234§) + "\n" + §5214236363236376123423632234§.getText("REARM_BATTLE_PRIZE").replace("{crystalls}",getRewardText(this.§default implements§,this.§final catch do§));
      }
      
      private function e604ddbb() : String
      {
         if(this.§5214239765239778123423632234§)
         {
            return §5214236363236376123423632234§.getText("REARM_TEAM_WIN");
         }
         if(this.§default null§)
         {
            return §5214236363236376123423632234§.getText("REARM_TEAM_LOOSE");
         }
         return §5214236363236376123423632234§.getText("REARM_TEAM_TIE");
      }
   }
}

