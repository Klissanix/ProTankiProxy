package §5214231792231805123423632234§
{
   import alternativa.tanks.models.service.ClanNotificationsManager;
   
   public class NewClanMemberIndicator extends LabelNewIndicator
   {
      
      private var userId:String;
      
      private var data:Object;
      
      public function NewClanMemberIndicator(param1:String, param2:Object)
      {
         super();
         this.userId = param1;
         this.data = param2;
      }
      
      public function set isNew(param1:Boolean) : void
      {
         this.data.isNew = param1;
         visible = param1;
      }
      
      public function get isNew() : Boolean
      {
         return this.data.isNew;
      }
      
      override public function updateNotifications() : void
      {
         visible = ClanNotificationsManager.userInAcceptedNotifications(this.userId) || this.isNew;
         if(visible && Boolean(stage))
         {
            ClanNotificationsManager.removeAcceptedNotification(this.userId);
            this.isNew = true;
         }
      }
   }
}

