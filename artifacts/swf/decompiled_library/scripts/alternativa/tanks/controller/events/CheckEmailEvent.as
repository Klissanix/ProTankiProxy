package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class CheckEmailEvent extends Event
   {
      
      public static const CHECK_EMAIL:String = "CheckEmailEvent.CHECK_EMAIL";
      
      private var §5214235925235938123423632234§:String;
      
      public function CheckEmailEvent(param1:String)
      {
         super("CheckEmailEvent.CHECK_EMAIL");
         this.§5214235925235938123423632234§ = param1;
      }
      
      public function get email() : String
      {
         return this.§5214235925235938123423632234§;
      }
      
      override public function clone() : Event
      {
         return new CheckEmailEvent(this.email);
      }
   }
}

