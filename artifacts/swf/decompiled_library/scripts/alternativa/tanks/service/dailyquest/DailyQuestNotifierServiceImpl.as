package alternativa.tanks.service.dailyquest
{
   import flash.events.EventDispatcher;
   
   public class DailyQuestNotifierServiceImpl extends EventDispatcher implements DailyQuestNotifierService
   {
      
      public function DailyQuestNotifierServiceImpl()
      {
         super();
      }
      
      public function showNotification() : void
      {
         dispatchEvent(new DailyQuestNotificationEvent("showNotification"));
      }
      
      public function hideNotification() : void
      {
         dispatchEvent(new DailyQuestNotificationEvent("hideNotification"));
      }
   }
}

