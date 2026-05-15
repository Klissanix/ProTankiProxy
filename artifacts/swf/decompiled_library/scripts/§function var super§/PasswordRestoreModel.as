package §function var super§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.IEntranceClientFacade;
   import §default set case§.§5214232471232484123423632234§;
   import §do var function§.PasswordChangeModelBase;
   import §do var function§.§const const catch§;
   
   public class PasswordRestoreModel extends PasswordChangeModelBase implements §52142351423527123423632234§, §const const catch§
   {
      
      public static var §52142340023413123423632234§:IEntranceClientFacade;
      
      public static var display:IDisplay;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §native finally for§:String;
      
      public function PasswordRestoreModel()
      {
         super();
      }
      
      public function startEmailAndPasswordChangeProcess(param1:String) : void
      {
         this.§native finally for§ = param1;
         server.checkPasswordChangeHash(param1);
      }
      
      public function emailWithRestoreLinkSuccessfullySent() : void
      {
         §52142340023413123423632234§.emailWithRestoreLinkSuccessfullySent();
      }
      
      public function changePasswordAndEmail(param1:String, param2:String) : void
      {
         server.changePasswordAndEmail(param1,param2);
      }
      
      public function sendUsersRestorePasswordLink(param1:String) : void
      {
         server.sendUsersRestorePasswordLink(param1);
      }
      
      public function setPasswordChangeResult(param1:Boolean, param2:String) : void
      {
         §52142340023413123423632234§.setPasswordChangeResult(param1,param2);
      }
      
      public function emailNotFound() : void
      {
         §52142340023413123423632234§.emailNotFound();
      }
      
      public function passwordRecoveryHashCorrect(param1:String) : void
      {
         §52142340023413123423632234§.goToChangePasswordAndEmailForm(param1);
      }
      
      public function method_817() : void
      {
         display.noticesLayer.addChild(new §5214232471232484123423632234§(§5214236363236376123423632234§.getText("ACCOUNT_RECOVERY_FORM_ENTER_CODE"),this.startEmailAndPasswordChangeProcess));
      }
   }
}

