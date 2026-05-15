package alternativa.tanks.service.battle
{
   import alternativa.tanks.model.item.§with package function§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.FriendStateChangeEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   
   public class BattleFriendNotifier
   {
      
      public static var §5214237545237558123423632234§:IFriendInfoService;
      
      public static var battleUserInfoService:IBattleUserInfoService;
      
      public function BattleFriendNotifier()
      {
         super();
         §5214237545237558123423632234§.addEventListener("FriendsStateChangeEvent.CHANGE",this.d4816c7);
      }
      
      private function d4816c7(param1:FriendStateChangeEvent) : void
      {
         var _loc2_:§with package function§ = null;
         var _loc4_:String = param1.userId;
         var _loc5_:FriendState = param1.state;
         var _loc3_:FriendState = param1.§521423132002313213123423632234§;
         if(battleUserInfoService.userInBattle(_loc4_))
         {
            _loc2_ = §with package function§(battleUserInfoService.getBattle(_loc4_).adapt(§with package function§));
            if(_loc5_ == FriendState.ACCEPTED)
            {
               _loc2_.onAddFriend(_loc4_);
            }
            if(_loc5_ == FriendState.UNKNOWN && _loc3_ == FriendState.ACCEPTED)
            {
               _loc2_.onDeleteFriend(_loc4_);
            }
         }
      }
      
      public function destroy() : void
      {
         §5214237545237558123423632234§.removeEventListener("FriendsStateChangeEvent.CHANGE",this.d4816c7);
      }
   }
}

