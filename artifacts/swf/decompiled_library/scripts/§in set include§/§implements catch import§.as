package §in set include§
{
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.tanks.model.EntranceServerParamsModel;
   import alternativa.tanks.model.RegistrationBackgroundModel;
   import §default use final§.Command;
   import §import set with§.ShowRegistrationFormEvent;
   
   public class §implements catch import§ extends Command
   {
      
      [Inject]
      public var §for catch dynamic§:RegistrationBackgroundModel;
      
      [Inject]
      public var §in const implements§:EntranceServerParamsModel;
      
      public function §implements catch import§()
      {
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:§include catch with§ = this.§for catch dynamic§.backgroundImageResource;
         §do for get§(new ShowRegistrationFormEvent(_loc1_,true,true,this.§in const implements§.registrationThroughEmail));
      }
   }
}

