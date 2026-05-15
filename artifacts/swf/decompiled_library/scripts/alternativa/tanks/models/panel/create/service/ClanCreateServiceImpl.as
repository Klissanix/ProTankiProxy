package alternativa.tanks.models.panel.create.service
{
   import §5214236935236948123423632234§.§true switch do§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.panel.create.CreateClanServiceEvent;
   import flash.events.EventDispatcher;
   
   public class ClanCreateServiceImpl extends EventDispatcher implements ClanCreateService
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §521423136212313634123423632234§:Vector.<§true switch do§> = new Vector.<§true switch do§>();
      
      public function ClanCreateServiceImpl()
      {
         super();
      }
      
      public function incorrectName() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.INCORRECT_NAME"));
      }
      
      public function notUniqueName() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.NOT_UNIQUE_NAME"));
      }
      
      public function notUniqueTag() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.NOT_UNIQUE_TAG"));
      }
      
      public function correctTag() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.CORRECT_TAG"));
      }
      
      public function createClan(param1:String, param2:String, param3:String, param4:§true switch do§) : void
      {
         dispatchEvent(new CreateClanServiceEvent("CreateClanServiceEvent.CREATE",param1,param2,param3,param4));
      }
      
      public function incorrectTag() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.INCORRECT_TAG"));
      }
      
      public function validateTag(param1:String) : void
      {
         dispatchEvent(new CreateClanServiceEvent("CreateClanServiceEvent.VALIDATE_TAG",null,param1));
      }
      
      public function validateName(param1:String) : void
      {
         dispatchEvent(new CreateClanServiceEvent("CreateClanServiceEvent.VALIDATE_NAME",param1));
      }
      
      public function otherError() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.OTHER_ERROR"));
      }
      
      public function alreadyInClan() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.ALREADY_IN_CLAN"));
      }
      
      public function correctName() : void
      {
         dispatchEvent(new CreateClanServiceEvent("ValidateClanNameEvent.CORRECT_NAME"));
      }
   }
}

