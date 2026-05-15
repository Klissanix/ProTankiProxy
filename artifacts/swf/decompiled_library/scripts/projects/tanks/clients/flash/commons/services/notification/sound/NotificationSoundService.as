package projects.tanks.clients.flash.commons.services.notification.sound
{
   import flash.media.Sound;
   
   public class NotificationSoundService implements INotificationSoundService
   {
      
      private var §continue override§:Sound;
      
      public function NotificationSoundService()
      {
         super();
      }
      
      public function set notificationSound(param1:Sound) : void
      {
         this.§continue override§ = param1;
      }
      
      public function playNotificationSound() : void
      {
         if(this.§continue override§ != null)
         {
            this.§continue override§.play();
         }
      }
   }
}

