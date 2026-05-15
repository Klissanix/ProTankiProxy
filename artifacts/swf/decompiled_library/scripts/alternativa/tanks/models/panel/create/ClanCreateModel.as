package alternativa.tanks.models.panel.create
{
   import alternativa.tanks.models.panel.create.service.ClanCreateService;
   import §final for extends§.§521423110682311081123423632234§;
   import §final for extends§.§521423125552312568123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class ClanCreateModel extends §521423125552312568123423632234§ implements §521423110682311081123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §5214239670239683123423632234§:ClanCreateService;
      
      public function ClanCreateModel()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
         §5214239670239683123423632234§.removeEventListener("CreateClanServiceEvent.CREATE",getFunctionWrapper(this.a6bcbdf2));
         §5214239670239683123423632234§.removeEventListener("CreateClanServiceEvent.VALIDATE_NAME",getFunctionWrapper(this.b27d2a37));
         §5214239670239683123423632234§.removeEventListener("CreateClanServiceEvent.VALIDATE_TAG",getFunctionWrapper(this.f10d983c));
      }
      
      public function tagIsIncorrect() : void
      {
         §5214239670239683123423632234§.incorrectTag();
      }
      
      public function notUniqueName() : void
      {
         §5214239670239683123423632234§.notUniqueName();
      }
      
      public function correctName() : void
      {
         §5214239670239683123423632234§.correctName();
      }
      
      private function a6bcbdf2(param1:CreateClanServiceEvent) : void
      {
         §521423120492312062123423632234§.§if switch class§(param1.clanName,param1.§native use var§);
      }
      
      public function nameIsIncorrect() : void
      {
         §5214239670239683123423632234§.incorrectName();
      }
      
      public function youAlreadyInClan() : void
      {
         §5214239670239683123423632234§.alreadyInClan();
      }
      
      public function notUniqueTag() : void
      {
         §5214239670239683123423632234§.notUniqueTag();
      }
      
      private function f10d983c(param1:CreateClanServiceEvent) : void
      {
         §521423120492312062123423632234§.§5214238732238745123423632234§(param1.§native use var§);
      }
      
      public function otherError() : void
      {
         §5214239670239683123423632234§.otherError();
      }
      
      private function b27d2a37(param1:CreateClanServiceEvent) : void
      {
         §521423120492312062123423632234§.§5214236144236157123423632234§(param1.clanName);
      }
      
      public function objectLoaded() : void
      {
         §5214239670239683123423632234§.addEventListener("CreateClanServiceEvent.CREATE",getFunctionWrapper(this.a6bcbdf2));
         §5214239670239683123423632234§.addEventListener("CreateClanServiceEvent.VALIDATE_NAME",getFunctionWrapper(this.b27d2a37));
         §5214239670239683123423632234§.addEventListener("CreateClanServiceEvent.VALIDATE_TAG",getFunctionWrapper(this.f10d983c));
      }
      
      public function correctTag() : void
      {
         §5214239670239683123423632234§.correctTag();
      }
   }
}

