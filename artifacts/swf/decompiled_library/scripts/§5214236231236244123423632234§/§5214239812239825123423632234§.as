package §5214236231236244123423632234§
{
   import §5214233176233189123423632234§.FinishExternalRegisterEvent;
   import alternativa.tanks.controller.events.CallsignCheckResultEvent;
   import alternativa.tanks.controller.events.CheckCallsignEvent;
   import alternativa.tanks.controller.events.NavigationEvent;
   import §default use final§.§5214232760232773123423632234§;
   import §static switch in§.§52142363623649123423632234§;
   
   public class §5214239812239825123423632234§ extends §5214232760232773123423632234§
   {
      
      [Inject]
      public var §extends var override§:§52142363623649123423632234§;
      
      public function §5214239812239825123423632234§()
      {
         super();
      }
      
      private function §5214236855236868123423632234§(param1:CallsignCheckResultEvent) : void
      {
         this.§extends var override§.§null use finally§(param1.freeUids);
      }
      
      private function §var switch finally§(param1:CallsignCheckResultEvent) : void
      {
         this.§extends var override§.§throw const return§();
      }
      
      private function §5214232228232241123423632234§(param1:CallsignCheckResultEvent) : void
      {
         this.§extends var override§.§521423131962313209123423632234§();
      }
      
      override public function onRegister() : void
      {
         §5214234594234607123423632234§("CheckCallsignEvent.CHECK_CALLSIGN",§do for get§,CheckCallsignEvent);
         §5214234594234607123423632234§("FinishExternalRegisterEvent.FINISH_REGISTRATION",§do for get§,FinishExternalRegisterEvent);
         §5214234594234607123423632234§("NavigationEvent.GO_TO_REGISTRATION",§do for get§,NavigationEvent);
         §521423128342312847123423632234§("CallsignCheckResultEvent.CALLSIGN_IS_BUSY",this.§5214236855236868123423632234§);
         §521423128342312847123423632234§("CallsignCheckResultEvent.CALLSIGN_IS_FREE",this.§5214232228232241123423632234§);
         §521423128342312847123423632234§("CallsignCheckResultEvent.CALLSIGN_IS_INCORRECT",this.§var switch finally§);
      }
   }
}

