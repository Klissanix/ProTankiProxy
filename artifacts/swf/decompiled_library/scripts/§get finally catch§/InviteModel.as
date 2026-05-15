package §get finally catch§
{
   import §5214237353237366123423632234§.§5214232804232817123423632234§;
   import §5214237353237366123423632234§.InviteEntranceModelBase;
   import alternativa.tanks.service.IEntranceClientFacade;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   
   public class InviteModel extends InviteEntranceModelBase implements §5214232804232817123423632234§, §set continue§, §5214235049235062123423632234§
   {
      
      public static var §5214239171239184123423632234§:IEntranceClientFacade;
      
      public function InviteModel()
      {
         super();
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function checkInvite(param1:String) : void
      {
         server.activateInvite(param1);
      }
      
      public function inviteNotFound() : void
      {
         §5214239171239184123423632234§.inviteNotFound();
      }
      
      public function inviteFree() : void
      {
         §5214239171239184123423632234§.inviteIsFree();
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function objectLoaded() : void
      {
         §5214239171239184123423632234§.inviteEnabled = getInitParam().enabled;
      }
      
      public function inviteAlreadyActivated(param1:String) : void
      {
         §5214239171239184123423632234§.inviteAlreadyActivated(param1);
      }
   }
}

