package §5214234987235000123423632234§
{
   import §5214233176233189123423632234§.FinishExternalRegisterEvent;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §true catch static§ extends Command
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      [Inject]
      public var §in catch break§:FinishExternalRegisterEvent;
      
      public function §true catch static§()
      {
         super();
      }
      
      override public function execute() : void
      {
         §dynamic use case§.finishExternalRegisterUser(this.§in catch break§.uid,null);
      }
   }
}

