package alternativa.tanks.models.service
{
   import alternativa.tanks.gui.§521423138122313825123423632234§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   
   public class ClanUserNotificationsManager
   {
      
      private static var count:int;
      
      private static var §5214236986236999123423632234§:Vector.<§521423138122313825123423632234§> = new Vector.<§521423138122313825123423632234§>();
      
      private static var §5214236538236551123423632234§:Dictionary = new Dictionary();
      
      public static var dispatcher:EventDispatcher = new EventDispatcher();
      
      public function ClanUserNotificationsManager()
      {
         super();
      }
      
      public static function resetManager() : void
      {
         §5214236986236999123423632234§ = new Vector.<§521423138122313825123423632234§>();
         §5214236538236551123423632234§ = new Dictionary();
         count = 0;
      }
      
      public static function removeIncomingNotification(param1:Long) : void
      {
         if(clanInIncomingNotifications(param1))
         {
            dispatcher.dispatchEvent(new ClanNotificationEvent("ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION",param1));
         }
      }
      
      public static function onRemoveIncomingNotification(param1:Long) : void
      {
         if(param1 in §5214236538236551123423632234§)
         {
            count = count - 1;
            delete §5214236538236551123423632234§[param1];
            e6a2f69d(§5214236986236999123423632234§);
         }
      }
      
      public static function addIncomingIndicatorListener(param1:§521423138122313825123423632234§) : void
      {
         §5214236986236999123423632234§.push(param1);
         param1.updateNotifications();
      }
      
      public static function removeIncomingIndicatorListener(param1:§521423138122313825123423632234§) : void
      {
         var _loc2_:Number = §5214236986236999123423632234§.indexOf(param1);
         if(_loc2_ > 0)
         {
            §5214236986236999123423632234§.splice(_loc2_,1);
         }
      }
      
      public static function initializeIncomingNotifications(param1:Vector.<Long>) : void
      {
         count = 0;
         for each(var _loc2_ in param1)
         {
            count = count + 1;
            §5214236538236551123423632234§[_loc2_] = true;
         }
         e6a2f69d(§5214236986236999123423632234§);
      }
      
      private static function e6a2f69d(param1:Vector.<§521423138122313825123423632234§>) : void
      {
         for each(var _loc2_ in param1)
         {
            _loc2_.updateNotifications();
         }
      }
      
      public static function clanInIncomingNotifications(param1:Long) : Boolean
      {
         return param1 in §5214236538236551123423632234§;
      }
      
      public static function onIncomingNotification(param1:Long) : void
      {
         if(!(param1 in §5214236538236551123423632234§))
         {
            count = count + 1;
            §5214236538236551123423632234§[param1] = true;
            e6a2f69d(§5214236986236999123423632234§);
         }
      }
      
      public static function getIncomingNotificationsCount() : int
      {
         return count;
      }
   }
}

