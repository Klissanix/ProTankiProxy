package §5214231377231390123423632234§
{
   import alternativa.tanks.controller.events.EntranceErrorEvent;
   import alternativa.tanks.controller.events.NavigationEvent;
   import alternativa.tanks.model.EntranceServerParamsModel;
   import alternativa.tanks.service.§521423109822310995123423632234§;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §default use final§.Command;
   
   public class §5214233767233780123423632234§ extends Command
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      [Inject]
      public var §case for if§:§521423109822310995123423632234§;
      
      [Inject]
      public var §in const implements§:EntranceServerParamsModel;
      
      public function §5214233767233780123423632234§()
      {
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:String = null;
         if(this.§in const implements§.serverHalt)
         {
            §do for get§(new EntranceErrorEvent("EntranceErrorEvent.SERVER_HALT"));
         }
         else if(this.§in const implements§.inviteEnabled)
         {
            §do for get§(new NavigationEvent("NavigationEvent.GO_TO_INVITE_FORM"));
         }
         else if(this.§case for if§.entranceHash)
         {
            _loc1_ = this.§case for if§.entranceHash;
            §dynamic use case§.loginByHash(_loc1_);
         }
         else if(this.§case for if§.haveVisitedTankiAlready)
         {
            §do for get§(new NavigationEvent("NavigationEvent.GO_TO_LOGIN_FORM"));
         }
         else
         {
            this.§case for if§.haveVisitedTankiAlready = true;
            §do for get§(new NavigationEvent("NavigationEvent.GO_TO_REGISTRATION"));
         }
      }
   }
}

