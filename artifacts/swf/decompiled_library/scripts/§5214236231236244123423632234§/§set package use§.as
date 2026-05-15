package §5214236231236244123423632234§
{
   import alternativa.tanks.controller.events.InviteCheckResultEvent;
   import alternativa.tanks.controller.events.InviteCodeEnteredEvent;
   import §default use final§.§5214232760232773123423632234§;
   import §extends package get§.§5214235856235869123423632234§;
   import §static switch in§.§521423125282312541123423632234§;
   
   public class §set package use§ extends §5214232760232773123423632234§
   {
      
      [Inject]
      public var §extends var override§:§521423125282312541123423632234§;
      
      public function §set package use§()
      {
         super();
      }
      
      override public function onRegister() : void
      {
         §5214234594234607123423632234§("OK_BUTTON_CLICKED",this.§get switch false§,§5214235856235869123423632234§);
         §521423128342312847123423632234§("INVITE_CODE_DOES_NOT_EXIST",this.§521423125812312594123423632234§,InviteCheckResultEvent);
      }
      
      private function §get switch false§(param1:§5214235856235869123423632234§) : void
      {
         §do for get§(new InviteCodeEnteredEvent(this.§extends var override§.§import var true§));
      }
      
      private function §521423125812312594123423632234§(param1:InviteCheckResultEvent) : void
      {
         this.§extends var override§.§5214232013232026123423632234§();
      }
   }
}

