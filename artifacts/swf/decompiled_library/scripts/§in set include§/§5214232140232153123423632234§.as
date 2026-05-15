package §in set include§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import alternativa.tanks.controller.events.ChooseInitialStateEvent;
   import alternativa.tanks.controller.events.GetNewCaptchaEvent;
   import alternativa.tanks.model.EntranceServerParamsModel;
   import §default use final§.Command;
   import §import set with§.ShowFormEvent;
   
   public class §5214232140232153123423632234§ extends Command
   {
      
      [Inject]
      public var §521423135332313546123423632234§:EntranceServerParamsModel;
      
      public function §5214232140232153123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         if(this.§521423135332313546123423632234§.standAloneCaptchaEnabled)
         {
            §do for get§(new ShowFormEvent("ShowFormEvent.SHOW_STAND_ALONE_CAPTCHA"));
            §do for get§(new GetNewCaptchaEvent(CaptchaLocation.CLIENT_STARTUP));
         }
         else
         {
            §do for get§(new ChooseInitialStateEvent());
         }
      }
   }
}

