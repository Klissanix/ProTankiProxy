package §import set with§
{
   import flash.events.Event;
   
   public class ShowExternalEntranceFormEvent extends Event
   {
      
      public static const REGISTRATION_FORM:String = "ShowExternalEntranceFormEvent.REGISTRATION_FORM";
      
      public static const LOGIN_FORM:String = "ShowExternalEntranceFormEvent.LOGIN_FORM";
      
      public var loginCaptchaEnabled:Boolean;
      
      public var §521423127892312802123423632234§:String;
      
      public var socialNetworkId:String;
      
      public function ShowExternalEntranceFormEvent(param1:String, param2:String, param3:String, param4:Boolean)
      {
         this.socialNetworkId = param2;
         this.§521423127892312802123423632234§ = param3;
         this.loginCaptchaEnabled = param4;
         super(param1);
      }
      
      override public function clone() : Event
      {
         return new ShowExternalEntranceFormEvent(type,this.socialNetworkId,this.§521423127892312802123423632234§,this.loginCaptchaEnabled);
      }
   }
}

