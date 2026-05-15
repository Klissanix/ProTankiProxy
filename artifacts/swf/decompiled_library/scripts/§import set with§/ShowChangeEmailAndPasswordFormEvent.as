package §import set with§
{
   import flash.events.Event;
   
   public class ShowChangeEmailAndPasswordFormEvent extends Event
   {
      
      public static const SHOW:String = "ShowChangeEmailAndPasswordFormEvent.SHOW";
      
      private var §5214235925235938123423632234§:String;
      
      public function ShowChangeEmailAndPasswordFormEvent(param1:String)
      {
         super("ShowChangeEmailAndPasswordFormEvent.SHOW");
         this.§5214235925235938123423632234§ = param1;
      }
      
      public function get email() : String
      {
         return this.§5214235925235938123423632234§;
      }
   }
}

