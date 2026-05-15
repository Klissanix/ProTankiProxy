package alternativa.tanks.service.notificationcategories
{
   import §do package if§.ItemViewCategoryEnum;
   import §finally use true§.§do var set§;
   import flash.events.EventDispatcher;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class NotificationGarageCategoriesService extends EventDispatcher implements INotificationGarageCategoriesService
   {
      
      public static var §if catch include§:IStorageService;
      
      private static const §catch catch do§:String = "NEW_ITEM_NOTIFICATION_IN_CATEGORY";
      
      public function NotificationGarageCategoriesService()
      {
         super();
      }
      
      public function notifyAboutNewItemsInCategory(param1:ItemViewCategoryEnum) : void
      {
         this.a671abca(param1);
      }
      
      public function isNeedShowNewItemNotification(param1:ItemViewCategoryEnum) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = this.b1444985(param1);
         if(§if catch include§.getStorage().data.hasOwnProperty(_loc3_))
         {
            _loc2_ = Boolean(§if catch include§.getStorage().data[_loc3_]);
         }
         return _loc2_;
      }
      
      public function categoryShowed(param1:ItemViewCategoryEnum) : void
      {
         §if catch include§.getStorage().data[this.b1444985(param1)] = false;
      }
      
      public function notifyAboutAvailableItems(param1:Vector.<§do var set§>) : void
      {
         var _loc2_:ItemViewCategoryEnum = null;
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1[_loc4_].§5214237515237528123423632234§;
            if(!this.isNeedShowNewItemNotification(_loc2_))
            {
               this.a671abca(_loc2_);
            }
            _loc4_++;
         }
         dispatchEvent(new NotificationGarageCategoriesEvent("NotificationGarageCategoriesEvent.NOTIFICATION_CHANGE"));
      }
      
      private function a671abca(param1:ItemViewCategoryEnum) : void
      {
         §if catch include§.getStorage().data[this.b1444985(param1)] = true;
      }
      
      private function b1444985(param1:ItemViewCategoryEnum) : String
      {
         return "NEW_ITEM_NOTIFICATION_IN_CATEGORY" + param1.value;
      }
   }
}

