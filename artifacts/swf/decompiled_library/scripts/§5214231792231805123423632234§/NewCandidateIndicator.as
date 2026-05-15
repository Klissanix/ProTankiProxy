package §5214231792231805123423632234§
{
   import alternativa.tanks.models.service.ClanNotificationsManager;
   
   public class NewCandidateIndicator extends LabelNewIndicator
   {
      
      private var userId:String;
      
      private var §5214237123237136123423632234§:Boolean = true;
      
      public function NewCandidateIndicator(param1:String)
      {
         super();
         this.userId = param1;
      }
      
      override public function show() : void
      {
         this.§5214237123237136123423632234§ = true;
      }
      
      override public function updateNotifications() : void
      {
         visible = ClanNotificationsManager.userInIncomingNotifications(this.userId) && this.§5214237123237136123423632234§;
      }
      
      override public function hide() : void
      {
         this.§5214237123237136123423632234§ = false;
      }
   }
}

