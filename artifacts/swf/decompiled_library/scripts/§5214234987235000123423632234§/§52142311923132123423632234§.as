package §5214234987235000123423632234§
{
   import §5214233176233189123423632234§.ExternalLoginEvent;
   import alternativa.tanks.service.§521423109822310995123423632234§;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §52142311923132123423632234§ extends Command
   {
      
      public static var §in use while§:IEntranceServerFacade;
      
      [Inject]
      public var §5214236488236501123423632234§:ExternalLoginEvent;
      
      [Inject]
      public var §521423126522312665123423632234§:§521423109822310995123423632234§;
      
      public function §52142311923132123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         this.§521423126522312665123423632234§.storedUserName = this.§5214236488236501123423632234§.callsign;
         §in use while§.loginExternal(this.§5214236488236501123423632234§.callsign,this.§5214236488236501123423632234§.password);
      }
   }
}

