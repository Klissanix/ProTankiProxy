package §5214231377231390123423632234§
{
   import alternativa.tanks.controller.events.InviteCodeEnteredEvent;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §5214237184237197123423632234§ extends Command
   {
      
      public static var §in use while§:IEntranceServerFacade;
      
      [Inject]
      public var §in catch break§:InviteCodeEnteredEvent;
      
      public function §5214237184237197123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         §in use while§.checkInviteCode(this.§in catch break§.inviteCode);
      }
   }
}

