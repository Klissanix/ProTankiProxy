package §5214237228237241123423632234§
{
   import alternativa.tanks.controller.events.CheckCaptchaAnswerEvent;
   import alternativa.tanks.service.§521423105832310596123423632234§;
   import §default use final§.Command;
   
   public class §521423136942313707123423632234§ extends Command
   {
      
      [Inject]
      public var §521423140032314016123423632234§:§521423105832310596123423632234§;
      
      [Inject]
      public var §in catch break§:CheckCaptchaAnswerEvent;
      
      public function §521423136942313707123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         §5214233488233501123423632234§.§5214231745231758123423632234§(this);
         this.§521423140032314016123423632234§.checkAnswer(this.§in catch break§.location,this.§in catch break§.captchaAnswer,this.§with set continue§);
      }
      
      private function §with set continue§() : void
      {
         §5214233488233501123423632234§.release(this);
         §do for get§(this.§in catch break§.onSuccessEvent);
      }
   }
}

