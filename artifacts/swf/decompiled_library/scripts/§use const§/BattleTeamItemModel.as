package §use const§
{
   import §521423127082312721123423632234§.§5214232555232568123423632234§;
   import §521423127082312721123423632234§.TeamBattleItemModelBase;
   import alternativa.tanks.controllers.BattleSelectVectorUtil;
   import alternativa.tanks.model.item.§with package function§;
   import alternativa.tanks.service.battle.IBattleUserInfoService;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import §extends var import§.§5214231658231671123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   
   public class BattleTeamItemModel extends TeamBattleItemModelBase implements §5214232555232568123423632234§, §implements package override§, §with package function§, §do set function§
   {
      
      public static var §5214233475233488123423632234§:IBattleListFormService;
      
      public static var §5214237545237558123423632234§:IFriendInfoService;
      
      public static var battleUserInfoService:IBattleUserInfoService;
      
      public function BattleTeamItemModel()
      {
         super();
      }
      
      public function swapTeams() : void
      {
         var _loc1_:Vector.<String> = this.data().usersBlue;
         this.data().usersBlue = this.data().usersRed;
         this.data().usersRed = _loc1_;
         var _loc2_:Vector.<String> = this.data().friendsBlue;
         this.data().friendsBlue = this.data().friendsRed;
         this.data().friendsRed = _loc2_;
         §5214233475233488123423632234§.swapTeams(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name);
      }
      
      public function onReleaseSlot(param1:String) : void
      {
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().usersBlue,param1);
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().usersRed,param1);
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().friendsRed,param1);
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().friendsBlue,param1);
         battleUserInfoService.disconnect(param1);
         if(§5214237545237558123423632234§.isFriendsInState(param1,FriendState.ACCEPTED))
         {
            this.onDeleteFriend(param1);
         }
         §5214233475233488123423632234§.updateUsersCountTeam(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,this.data().usersRed.length,this.data().usersBlue.length,this.data().friendsRed.length,this.data().friendsBlue.length);
      }
      
      private function data() : BattleTeamData
      {
         var _loc1_:BattleTeamData = BattleTeamData(getData(BattleTeamData));
         if(_loc1_ == null)
         {
            _loc1_ = new BattleTeamData();
            putData(BattleTeamData,_loc1_);
         }
         return _loc1_;
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:BattleTeamData = this.data();
         var _loc2_:Vector.<String> = getInitParam().usersRed;
         this.f57cb8d(_loc2_,_loc1_.usersRed,_loc1_.friendsRed);
         var _loc3_:Vector.<String> = getInitParam().usersBlue;
         this.f57cb8d(_loc3_,_loc1_.usersBlue,_loc1_.friendsBlue);
      }
      
      public function onAddFriend(param1:String) : void
      {
         this.d4ff7039(param1,this.data().usersRed,this.data().friendsRed);
         this.d4ff7039(param1,this.data().usersBlue,this.data().friendsBlue);
         §5214233475233488123423632234§.updateUsersCountTeam(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,this.data().usersRed.length,this.data().usersBlue.length,this.data().friendsRed.length,this.data().friendsBlue.length);
      }
      
      private function a363ae8(param1:String, param2:Vector.<String>, param3:Vector.<String>) : void
      {
         param2.push(param1);
      }
      
      private function d4ff7039(param1:String, param2:Vector.<String>, param3:Vector.<String>) : void
      {
         if(BattleSelectVectorUtil.containsElementInVector(param2,param1))
         {
            param3.push(param1);
         }
      }
      
      public function onReserveSlot(param1:String, param2:§5214231658231671123423632234§) : void
      {
         switch(param2)
         {
            case §5214231658231671123423632234§.§521423107532310766123423632234§:
               this.a363ae8(param1,this.data().usersRed,this.data().friendsRed);
               break;
            case §5214231658231671123423632234§.§implements set implements§:
               this.a363ae8(param1,this.data().usersBlue,this.data().friendsBlue);
         }
         battleUserInfoService.connect(param1,platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         if(§5214237545237558123423632234§.isFriendsInState(param1,FriendState.ACCEPTED))
         {
            this.onAddFriend(param1);
         }
         §5214233475233488123423632234§.updateUsersCountTeam(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,this.data().usersRed.length,this.data().usersBlue.length,this.data().friendsRed.length,this.data().friendsBlue.length);
      }
      
      public function onDeleteFriend(param1:String) : void
      {
         this.b760419(param1,this.data().usersRed,this.data().friendsRed);
         this.b760419(param1,this.data().usersBlue,this.data().friendsBlue);
         §5214233475233488123423632234§.updateUsersCountTeam(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,this.data().usersRed.length,this.data().usersBlue.length,this.data().friendsRed.length,this.data().friendsBlue.length);
      }
      
      public function getUsersCountRed() : int
      {
         return this.data().usersRed.length;
      }
      
      public function getFriendsCountRed() : int
      {
         return this.data().friendsRed.length;
      }
      
      public function getFriendsCountBlue() : int
      {
         return this.data().friendsBlue.length;
      }
      
      private function b760419(param1:String, param2:Vector.<String>, param3:Vector.<String>) : void
      {
         if(BattleSelectVectorUtil.containsElementInVector(param2,param1))
         {
            BattleSelectVectorUtil.deleteElementInLongsVector(param3,param1);
         }
      }
      
      public function getUsersCountBlue() : int
      {
         return this.data().usersBlue.length;
      }
      
      private function f57cb8d(param1:Vector.<String>, param2:Vector.<String>, param3:Vector.<String>) : void
      {
         var _loc4_:int = param1.length - 1;
         while(_loc4_ >= 0)
         {
            param2.push(param1[_loc4_]);
            battleUserInfoService.connect(param1[_loc4_],platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
            if(§5214237545237558123423632234§.isFriendsInState(param1[_loc4_],FriendState.ACCEPTED))
            {
               param3.push(param1[_loc4_]);
            }
            _loc4_--;
         }
      }
   }
}

class BattleTeamData
{
   
   public var usersRed:Vector.<String> = new Vector.<String>();
   
   public var usersBlue:Vector.<String> = new Vector.<String>();
   
   public var friendsRed:Vector.<String> = new Vector.<String>();
   
   public var friendsBlue:Vector.<String> = new Vector.<String>();
   
   public function BattleTeamData()
   {
      super();
   }
}
