package alternativa.tanks.models.battle.battlefield
{
   public class BattleType
   {
      
      public static const DM:BattleType = new BattleType(0);
      
      public static const TDM:BattleType = new BattleType(1);
      
      public static const CTF:BattleType = new BattleType(2);
      
      public static const CP:BattleType = new BattleType(3);
      
      public static const AS:BattleType = new BattleType(4);
      
      private var §521423125632312576123423632234§:int;
      
      public function BattleType(param1:int)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
   }
}

