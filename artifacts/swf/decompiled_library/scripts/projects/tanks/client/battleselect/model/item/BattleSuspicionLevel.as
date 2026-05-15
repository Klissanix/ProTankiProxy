package projects.tanks.client.battleselect.model.item
{
   public class BattleSuspicionLevel
   {
      
      public static const NONE:BattleSuspicionLevel = new BattleSuspicionLevel(0,"NONE");
      
      public static const LOW:BattleSuspicionLevel = new BattleSuspicionLevel(1,"LOW");
      
      public static const HIGH:BattleSuspicionLevel = new BattleSuspicionLevel(2,"HIGH");
      
      private var §521423125632312576123423632234§:int;
      
      private var §5214235906235919123423632234§:String;
      
      public function BattleSuspicionLevel(param1:int, param2:String)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
         this.§5214235906235919123423632234§ = param2;
      }
      
      public function get name() : String
      {
         return this.§5214235906235919123423632234§;
      }
      
      public function toString() : String
      {
         return "BattleSuspicionLevel [" + this.§5214235906235919123423632234§ + "]";
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
   }
}

