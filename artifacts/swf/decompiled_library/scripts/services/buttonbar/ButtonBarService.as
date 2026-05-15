package services.buttonbar
{
   import flash.events.EventDispatcher;
   import §include else§.§package switch set§;
   
   public class ButtonBarService extends EventDispatcher implements IButtonBarService
   {
      
      public function ButtonBarService()
      {
         super();
      }
      
      public function change(param1:int) : void
      {
         dispatchEvent(new §package switch set§(param1));
      }
   }
}

