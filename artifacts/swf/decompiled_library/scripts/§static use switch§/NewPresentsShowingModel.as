package §static use switch§
{
   import §521423136932313706123423632234§.NewPresentsAlert;
   import §521423136932313706123423632234§.NewPresentsAlertEvent;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import §do package if§.ItemViewCategoryEnum;
   import §switch in§.§521423135912313604123423632234§;
   import §switch in§.§null var continue§;
   
   public class NewPresentsShowingModel extends §null var continue§ implements §521423135912313604123423632234§
   {
      
      public static var §5214236480236493123423632234§:INotificationGarageCategoriesService;
      
      public function NewPresentsShowingModel()
      {
         super();
      }
      
      public function showAlert(param1:§include catch with§) : void
      {
         var _loc2_:NewPresentsAlert = new NewPresentsAlert(param1);
         _loc2_.addEventListener("NewPresentsAlertEvent.Accept",this.accept);
         _loc2_.addEventListener("NewPresentsAlertEvent.Cancel",this.cancel);
         §5214236480236493123423632234§.notifyAboutNewItemsInCategory(ItemViewCategoryEnum.GIVEN_PRESENTS);
      }
      
      private function cancel(param1:NewPresentsAlertEvent) : void
      {
         this.c2132962(NewPresentsAlert(param1.target));
      }
      
      private function accept(param1:NewPresentsAlertEvent) : void
      {
         this.c2132962(NewPresentsAlert(param1.target));
         §521423120492312062123423632234§.§521423122392312252123423632234§();
      }
      
      private function c2132962(param1:NewPresentsAlert) : void
      {
         param1.removeEventListener("NewPresentsAlertEvent.Accept",this.accept);
         param1.removeEventListener("NewPresentsAlertEvent.Cancel",this.cancel);
      }
   }
}

