package §while use for§
{
   public class ConfirmEmailStatus
   {
      
      public static const OK_EXISTS:ConfirmEmailStatus = new ConfirmEmailStatus(0,"OK_EXISTS");
      
      public static const OK:ConfirmEmailStatus = new ConfirmEmailStatus(1,"OK");
      
      public static const ERROR:ConfirmEmailStatus = new ConfirmEmailStatus(2,"ERROR");
      
      private var §521423125632312576123423632234§:int;
      
      private var §5214235906235919123423632234§:String;
      
      public function ConfirmEmailStatus(param1:int, param2:String)
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
         return "ConfirmEmailStatus [" + this.§5214235906235919123423632234§ + "]";
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
   }
}

