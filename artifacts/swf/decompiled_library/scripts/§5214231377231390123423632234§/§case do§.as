package §5214231377231390123423632234§
{
   import alternativa.tanks.controller.events.GetNewCaptchaEvent;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §case do§ extends Command
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      [Inject]
      public var §in catch break§:GetNewCaptchaEvent;
      
      public function §case do§()
      {
         super();
      }
      
      override public function execute() : void
      {
         §dynamic use case§.getNewCaptcha(this.§in catch break§.location);
      }
   }
}

