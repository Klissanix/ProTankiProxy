package §5214231792231805123423632234§
{
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import §override catch default§.Long;
   
   public class NewClanItemIndicator extends LabelNewIndicator
   {
      
      private var clanId:Long;
      
      public function NewClanItemIndicator(param1:Long)
      {
         super();
         this.clanId = param1;
      }
      
      override public function updateNotifications() : void
      {
         visible = ClanUserNotificationsManager.clanInIncomingNotifications(this.clanId);
      }
   }
}

