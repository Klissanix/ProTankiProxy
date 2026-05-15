package §5214231377231390123423632234§
{
   import alternativa.tanks.controller.events.CheckCallsignEvent;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §521423115082311521123423632234§ extends Command
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      [Inject]
      public var §5214239187239200123423632234§:CheckCallsignEvent;
      
      public function §521423115082311521123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         §dynamic use case§.checkCallsign(this.§5214239187239200123423632234§.uid);
      }
   }
}

