package alternativa.tanks.service.clan
{
   import flash.events.Event;
   
   public class ClanPanelNotificationEvent extends Event
   {
      
      public static const UPDATE:String = "ClanPanelNotificationEvent.UPDATE";
      
      private var §for catch override§:int;
      
      public function ClanPanelNotificationEvent(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         this.§for catch override§ = param2;
         super(param1,param3,param4);
      }
      
      public function set notification(param1:int) : void
      {
         this.§for catch override§ = param1;
      }
      
      public function get notification() : int
      {
         return this.§for catch override§;
      }
   }
}

