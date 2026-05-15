package alternativa.tanks.service.dailyquest
{
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§import use const§;
   import §var const class§.§5214236302236315123423632234§;
   import §var const class§.§5214238524238537123423632234§;
   
   public class DailyQuestNotifierModel extends §5214236302236315123423632234§ implements §5214238524238537123423632234§, §5214234168234181123423632234§, §import use const§
   {
      
      public static var §52142343623449123423632234§:DailyQuestNotifierService;
      
      public function DailyQuestNotifierModel()
      {
         super();
      }
      
      public function objectUnloadedPost() : void
      {
         §52142343623449123423632234§.removeEventListener("hideNotification",this.c1d7a1a3);
      }
      
      private function c1d7a1a3(param1:DailyQuestNotificationEvent) : void
      {
         §521423120492312062123423632234§.§get const import§();
      }
      
      public function notifyDailyQuestGenerated() : void
      {
         §52142343623449123423632234§.showNotification();
      }
      
      public function notifyDailyQuestCompleted() : void
      {
         §52142343623449123423632234§.showNotification();
      }
      
      public function objectLoadedPost() : void
      {
         §52142343623449123423632234§.addEventListener("hideNotification",this.c1d7a1a3);
      }
   }
}

