package alternativa.tanks.models.service
{
   import alternativa.tanks.gui.§521423138122313825123423632234§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class ClanNotificationsManager
   {
      
      private static var §5214235693235706123423632234§:int = 0;
      
      private static var §521423138012313814123423632234§:int = 0;
      
      private static var §5214236986236999123423632234§:Vector.<§521423138122313825123423632234§> = new Vector.<§521423138122313825123423632234§>();
      
      private static var §throw if§:Vector.<§521423138122313825123423632234§> = new Vector.<§521423138122313825123423632234§>();
      
      private static var §5214236538236551123423632234§:Dictionary = new Dictionary();
      
      private static var §5214231811231824123423632234§:Dictionary = new Dictionary();
      
      public static var dispatcher:EventDispatcher = new EventDispatcher();
      
      public function ClanNotificationsManager()
      {
         super();
      }
      
      public static function onAcceptedNotification(param1:String) : void
      {
         §521423138012313814123423632234§ = §521423138012313814123423632234§ + 1;
         §5214231811231824123423632234§[param1] = true;
         e6a2f69d(§throw if§);
      }
      
      public static function removeIncomingNotification(param1:String) : void
      {
         if(userInIncomingNotifications(param1))
         {
            dispatcher.dispatchEvent(new ClanNotificationEvent("ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION",null,param1));
         }
      }
      
      public static function removeAcceptedNotification(param1:String) : void
      {
         if(userInAcceptedNotifications(param1))
         {
            dispatcher.dispatchEvent(new ClanNotificationEvent("ClanNotificationEvent.REMOVE_ACCEPTED_NOTIFICATION",null,param1));
         }
      }
      
      public static function initializeAcceptedNotifications(param1:Vector.<String>) : void
      {
         §521423138012313814123423632234§ = 0;
         for each(var _loc2_ in param1)
         {
            §521423138012313814123423632234§ = §521423138012313814123423632234§ + 1;
            §5214231811231824123423632234§[_loc2_] = true;
         }
         e6a2f69d(§throw if§);
      }
      
      public static function onIncomingNotification(param1:String) : void
      {
         §5214235693235706123423632234§ = §5214235693235706123423632234§ + 1;
         §5214236538236551123423632234§[param1] = true;
         e6a2f69d(§5214236986236999123423632234§);
      }
      
      public static function addAcceptedIndicatorListener(param1:§521423138122313825123423632234§) : void
      {
         §throw if§.push(param1);
      }
      
      public static function addIncomingIndicatorListener(param1:§521423138122313825123423632234§) : void
      {
         §5214236986236999123423632234§.push(param1);
      }
      
      private static function e6a2f69d(param1:Vector.<§521423138122313825123423632234§>) : void
      {
         for each(var _loc2_ in param1)
         {
            _loc2_.updateNotifications();
         }
      }
      
      public static function clearListeners() : void
      {
         §5214236986236999123423632234§ = new Vector.<§521423138122313825123423632234§>();
         §throw if§ = new Vector.<§521423138122313825123423632234§>();
      }
      
      public static function acceptedAndIncomingCount() : int
      {
         return acceptedNotificationsCount() + incomingNotificationsCount();
      }
      
      public static function userInIncomingNotifications(param1:String) : Boolean
      {
         return param1 in §5214236538236551123423632234§;
      }
      
      public static function incomingNotificationsCount() : int
      {
         return §5214235693235706123423632234§;
      }
      
      public static function onRemoveIncomingNotification(param1:String) : void
      {
         if(param1 in §5214236538236551123423632234§)
         {
            §5214235693235706123423632234§ = §5214235693235706123423632234§ - 1;
            delete §5214236538236551123423632234§[param1];
            e6a2f69d(§5214236986236999123423632234§);
         }
      }
      
      public static function acceptedNotificationsCount() : int
      {
         return §521423138012313814123423632234§;
      }
      
      public static function initializeIncomingNotifications(param1:Vector.<String>) : void
      {
         §5214235693235706123423632234§ = 0;
         for each(var _loc2_ in param1)
         {
            §5214235693235706123423632234§ = §5214235693235706123423632234§ + 1;
            §5214236538236551123423632234§[_loc2_] = true;
         }
         e6a2f69d(§5214236986236999123423632234§);
      }
      
      public static function userInAcceptedNotifications(param1:String) : Boolean
      {
         return param1 in §5214231811231824123423632234§;
      }
      
      public static function onRemoveAcceptedNotification(param1:String) : void
      {
         if(param1 in §5214231811231824123423632234§)
         {
            §521423138012313814123423632234§ = §521423138012313814123423632234§ - 1;
            delete §5214231811231824123423632234§[param1];
            e6a2f69d(§throw if§);
         }
      }
   }
}

