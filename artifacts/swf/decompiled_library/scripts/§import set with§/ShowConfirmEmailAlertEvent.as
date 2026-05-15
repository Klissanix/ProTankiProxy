package §import set with§
{
   import flash.events.Event;
   import §while use for§.ConfirmEmailStatus;
   
   public class ShowConfirmEmailAlertEvent extends Event
   {
      
      public static const SHOW:String = "ShowConfirmEmailAlertEvent.SHOW";
      
      public var §521423127412312754123423632234§:ConfirmEmailStatus;
      
      public function ShowConfirmEmailAlertEvent(param1:ConfirmEmailStatus)
      {
         super("ShowConfirmEmailAlertEvent.SHOW");
         this.§521423127412312754123423632234§ = param1;
      }
      
      override public function clone() : Event
      {
         return new ShowConfirmEmailAlertEvent(this.§521423127412312754123423632234§);
      }
   }
}

