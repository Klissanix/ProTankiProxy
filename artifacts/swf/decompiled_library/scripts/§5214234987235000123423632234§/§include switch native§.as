package §5214234987235000123423632234§
{
   import §5214233176233189123423632234§.StartExternalEntranceEvent;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §include switch native§ extends Command
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      [Inject]
      public var §in catch break§:StartExternalEntranceEvent;
      
      public function §include switch native§()
      {
         super();
      }
      
      override public function execute() : void
      {
         §dynamic use case§.startExternalLoginUser(this.§in catch break§.socialNetworkId,this.§in catch break§.rememberMe,null);
      }
   }
}

