package §in set include§
{
   import alternativa.tanks.model.EntranceServerParamsModel;
   import alternativa.tanks.service.§521423105832310596123423632234§;
   import alternativa.tanks.service.§521423109822310995123423632234§;
   import §default use final§.Command;
   import §import set with§.ShowLoginFormEvent;
   
   public class §set for var§ extends Command
   {
      
      [Inject]
      public var §case for if§:§521423109822310995123423632234§;
      
      [Inject]
      public var §521423135332313546123423632234§:EntranceServerParamsModel;
      
      [Inject]
      public var §521423140032314016123423632234§:§521423105832310596123423632234§;
      
      public function §set for var§()
      {
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:Boolean = false;
         if(this.§521423135332313546123423632234§.loginCaptchaEnabled)
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = this.§521423140032314016123423632234§.loginCaptchaEnabled;
         }
         §do for get§(new ShowLoginFormEvent(this.§case for if§.storedUserName,true,_loc1_,null));
      }
   }
}

