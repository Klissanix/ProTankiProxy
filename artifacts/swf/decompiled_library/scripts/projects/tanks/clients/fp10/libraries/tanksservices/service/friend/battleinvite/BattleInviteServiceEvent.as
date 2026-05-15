package projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite
{
   import flash.events.Event;
   
   public class BattleInviteServiceEvent extends Event
   {
      
      public static const INVITE:String = "BattleInviteServiceEvent.INVITE";
      
      public static const ACCEPT:String = "BattleInviteServiceEvent.ACCEPT";
      
      public static const REJECT:String = "BattleInviteServiceEvent.REJECT";
      
      public static const REMOVE_INVITE:String = "BattleInviteServiceEvent.REMOVE_INVITE";
      
      public var userId:String;
      
      public var battleId:String;
      
      public var §native const break§:String;
      
      public var §5214236370236383123423632234§:Boolean;
      
      public function BattleInviteServiceEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.userId = param2;
      }
   }
}

