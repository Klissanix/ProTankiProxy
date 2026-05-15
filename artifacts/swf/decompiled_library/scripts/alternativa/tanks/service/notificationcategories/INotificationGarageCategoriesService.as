package alternativa.tanks.service.notificationcategories
{
   import §do package if§.ItemViewCategoryEnum;
   import §finally use true§.§do var set§;
   import flash.events.IEventDispatcher;
   
   public interface INotificationGarageCategoriesService extends IEventDispatcher
   {
      
      function categoryShowed(param1:ItemViewCategoryEnum) : void;
      
      function isNeedShowNewItemNotification(param1:ItemViewCategoryEnum) : Boolean;
      
      function notifyAboutNewItemsInCategory(param1:ItemViewCategoryEnum) : void;
      
      function notifyAboutAvailableItems(param1:Vector.<§do var set§>) : void;
   }
}

