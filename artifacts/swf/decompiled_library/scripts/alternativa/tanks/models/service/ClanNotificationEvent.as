package alternativa.tanks.models.service
{
   import flash.events.Event;
   import §override catch default§.Long;
   
   public class ClanNotificationEvent extends Event
   {
      
      public static const REMOVE_ACCEPTED_NOTIFICATION:String = "ClanNotificationEvent.REMOVE_ACCEPTED_NOTIFICATION";
      
      public static const REMOVE_INCOMING_NOTIFICATION:String = "ClanNotificationEvent.REMOVE_INCOMING_NOTIFICATION";
      
      public var clanId:Long = clanId;
      
      public var userId:String;
      
      public function ClanNotificationEvent(param1:String, param2:Long, param3:String = null)
      {
         this.userId = param3;
         super(param1);
      }
   }
}

