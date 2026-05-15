package §5214231377231390123423632234§
{
   import alternativa.tanks.controller.events.RegisterEvent;
   import alternativa.tanks.service.§521423109822310995123423632234§;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §return package if§ extends Command
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      [Inject]
      public var §in catch break§:RegisterEvent;
      
      [Inject]
      public var §521423126522312665123423632234§:§521423109822310995123423632234§;
      
      public function §return package if§()
      {
         super();
      }
      
      override public function execute() : void
      {
         this.§521423126522312665123423632234§.storedUserName = this.§in catch break§.callsign;
         §dynamic use case§.registerUserThroughPassword(this.§in catch break§.callsign,this.§in catch break§.password,null,this.§in catch break§.rememberMe,null,this.§in catch break§.captchaAnswer);
      }
   }
}

