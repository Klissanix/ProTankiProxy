package §5214231377231390123423632234§
{
   import alternativa.tanks.controller.events.SendNewPasswordAndEmailToChangeEvent;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §5214238837238850123423632234§ extends Command
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      [Inject]
      public var §in catch break§:SendNewPasswordAndEmailToChangeEvent;
      
      public function §5214238837238850123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         §dynamic use case§.changePasswordAndEmail(this.§in catch break§.password,this.§in catch break§.email);
      }
   }
}

