package alternativa.tanks.models.service
{
   import flash.events.Event;
   
   public class ClanServiceEvent extends Event
   {
      
      public static const CLAN_LOADING:String = "CreateClanServiceEvent.CLAN_LOADING";
      
      public static const CLAN_BLOCK:String = "CreateClanServiceEvent.CLAN_BLOCK";
      
      public var §get use in§:String;
      
      public function ClanServiceEvent(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.§get use in§ = param2;
         super(param1,param3,param4);
      }
   }
}

