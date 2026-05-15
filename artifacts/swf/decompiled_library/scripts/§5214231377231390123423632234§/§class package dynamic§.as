package §5214231377231390123423632234§
{
   import alternativa.tanks.controller.events.LoginEvent;
   import alternativa.tanks.service.§521423109822310995123423632234§;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §class package dynamic§ extends Command
   {
      
      public static var §in use while§:IEntranceServerFacade;
      
      [Inject]
      public var §5214236488236501123423632234§:LoginEvent;
      
      [Inject]
      public var §521423126522312665123423632234§:§521423109822310995123423632234§;
      
      public function §class package dynamic§()
      {
         super();
      }
      
      override public function execute() : void
      {
         this.§521423126522312665123423632234§.storedUserName = this.§5214236488236501123423632234§.callsign;
         §in use while§.login(this.§5214236488236501123423632234§.callsign,this.§5214236488236501123423632234§.password,this.§5214236488236501123423632234§.rememberMe);
      }
   }
}

