package projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite
{
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   
   public class BattleInviteService extends EventDispatcher implements IBattleInviteService
   {
      
      public static var §use in§:IFriendInfoService;
      
      public static var §return set get§:IBattleInfoService;
      
      private var §get for do§:Boolean;
      
      private var §continue override§:Sound;
      
      public function BattleInviteService()
      {
         super();
      }
      
      public function playNotificationSound() : void
      {
         if(this.§continue override§ != null)
         {
            this.§continue override§.play();
         }
      }
      
      public function reject(param1:String) : void
      {
         dispatchEvent(new BattleInviteServiceEvent("BattleInviteServiceEvent.REJECT",param1));
      }
      
      public function removeInvite(param1:String) : void
      {
         dispatchEvent(new BattleInviteServiceEvent("BattleInviteServiceEvent.REMOVE_INVITE",param1));
      }
      
      public function getAvailabilityInviteBattle(param1:String) : Boolean
      {
         return §return set get§.hasCurrentSelectionBattleId() && §use in§.isFriendsInState(param1,FriendState.ACCEPTED);
      }
      
      public function accept(param1:String, param2:String, param3:String, param4:Boolean) : void
      {
         var _loc5_:BattleInviteServiceEvent = null;
         _loc5_ = new BattleInviteServiceEvent("BattleInviteServiceEvent.ACCEPT",param1);
         _loc5_.battleId = param2;
         _loc5_.§native const break§ = param3;
         _loc5_.§5214236370236383123423632234§ = param4;
         dispatchEvent(_loc5_);
      }
      
      public function set notificationSound(param1:Sound) : void
      {
         this.§continue override§ = param1;
      }
      
      public function invite(param1:String) : void
      {
         dispatchEvent(new BattleInviteServiceEvent("BattleInviteServiceEvent.INVITE",param1));
      }
      
      public function get receiveBattleInvite() : Boolean
      {
         return this.§get for do§;
      }
      
      public function set receiveBattleInvite(param1:Boolean) : void
      {
         if(this.§get for do§ != param1)
         {
            dispatchEvent(new BattleInviteEnableEvent("BattleInviteEnableEvent.UPDATE",param1));
         }
         this.§get for do§ = param1;
      }
   }
}

