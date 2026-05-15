package projects.tanks.client.commons.models.layout
{
   public class LayoutState
   {
      
      public static const BATTLE_SELECT:LayoutState = new LayoutState(0,"BATTLE_SELECT");
      
      public static const GARAGE:LayoutState = new LayoutState(1,"GARAGE");
      
      public static const PAYMENT:LayoutState = new LayoutState(2,"PAYMENT");
      
      public static const BATTLE:LayoutState = new LayoutState(3,"BATTLE");
      
      public static const RELOAD_SPACE:LayoutState = new LayoutState(4,"RELOAD_SPACE");
      
      public static const CLAN:LayoutState = new LayoutState(5,"CLAN");
      
      private var §521423125632312576123423632234§:int;
      
      private var §5214235906235919123423632234§:String;
      
      public function LayoutState(param1:int, param2:String)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
         this.§5214235906235919123423632234§ = param2;
      }
      
      public function get name() : String
      {
         return this.§5214235906235919123423632234§;
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
      
      public function toString() : String
      {
         return "LayoutState [" + this.§5214235906235919123423632234§ + "]";
      }
   }
}

