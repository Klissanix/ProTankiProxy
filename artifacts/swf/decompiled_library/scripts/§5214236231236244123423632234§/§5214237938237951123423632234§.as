package §5214236231236244123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import alternativa.tanks.controller.events.CheckCaptchaAnswerEvent;
   import alternativa.tanks.controller.events.ChooseInitialStateEvent;
   import alternativa.tanks.controller.events.GetNewCaptchaEvent;
   import §default use final§.§5214232760232773123423632234§;
   import §extends package get§.§5214231794231807123423632234§;
   import flash.events.MouseEvent;
   
   public class §5214237938237951123423632234§ extends §5214232760232773123423632234§
   {
      
      [Inject]
      public var §extends var override§:§static finally finally§;
      
      public function §5214237938237951123423632234§()
      {
         super();
      }
      
      override public function onRegister() : void
      {
         §5214234594234607123423632234§("RefreshCaptchaClickedEvent.CLICKED",this.§5214235469235482123423632234§,§5214231794231807123423632234§);
         §521423129522312965123423632234§.§for var for§(this.§extends var override§.§null set set§,"click",this.§5214235471235484123423632234§);
      }
      
      private function §5214235469235482123423632234§(param1:§5214231794231807123423632234§) : void
      {
         §do for get§(new GetNewCaptchaEvent(CaptchaLocation.CLIENT_STARTUP));
      }
      
      private function §5214235471235484123423632234§(param1:MouseEvent) : void
      {
         §do for get§(new CheckCaptchaAnswerEvent(this.§extends var override§.§52142310723120123423632234§,CaptchaLocation.CLIENT_STARTUP,new ChooseInitialStateEvent()));
      }
   }
}

