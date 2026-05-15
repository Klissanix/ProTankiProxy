package §521423103152310328123423632234§
{
   import alternativa.tanks.controllers.BattleSelectVectorUtil;
   import alternativa.tanks.model.item.§with package function§;
   import alternativa.tanks.service.battle.IBattleUserInfoService;
   import alternativa.tanks.service.battlelist.IBattleListFormService;
   import §if use class§.§5214237321237334123423632234§;
   import §if use class§.BattleDMItemModelBase;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.IFriendInfoService;
   
   public class BattleDMItemModel extends BattleDMItemModelBase implements §5214237321237334123423632234§, §static switch break§, §with package function§, §do set function§
   {
      
      public static var §5214233475233488123423632234§:IBattleListFormService;
      
      public static var §5214237545237558123423632234§:IFriendInfoService;
      
      public static var battleUserInfoService:IBattleUserInfoService;
      
      public function BattleDMItemModel()
      {
         super();
      }
      
      public function getUsersCount() : int
      {
         return this.data().users.length;
      }
      
      private function data() : BattleDMData
      {
         var _loc1_:BattleDMData = BattleDMData(getData(BattleDMData));
         if(_loc1_ == null)
         {
            _loc1_ = new BattleDMData();
            putData(BattleDMData,_loc1_);
         }
         return _loc1_;
      }
      
      public function onReleaseSlot(param1:String) : void
      {
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().users,param1);
         battleUserInfoService.disconnect(param1);
         if(§5214237545237558123423632234§.isFriendsInState(param1,FriendState.ACCEPTED))
         {
            this.onDeleteFriend(param1);
         }
         this.e2711992();
      }
      
      private function e2711992() : void
      {
         §5214233475233488123423632234§.updateUsersCountDm(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.name,this.data().users.length,this.data().friends.length);
      }
      
      public function onReserveSlot(param1:String) : void
      {
         this.data().users.push(param1);
         battleUserInfoService.connect(param1,platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         if(§5214237545237558123423632234§.isFriendsInState(param1,FriendState.ACCEPTED))
         {
            this.onAddFriend(param1);
         }
         this.e2711992();
      }
      
      public function onAddFriend(param1:String) : void
      {
         this.data().friends.push(param1);
         this.e2711992();
      }
      
      public function onDeleteFriend(param1:String) : void
      {
         BattleSelectVectorUtil.deleteElementInLongsVector(this.data().friends,param1);
         this.e2711992();
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:String = null;
         var _loc2_:BattleDMData = this.data();
         var _loc3_:Vector.<String> = getInitParam().users;
         var _loc4_:int = _loc3_.length - 1;
         while(_loc4_ >= 0)
         {
            _loc1_ = _loc3_[_loc4_];
            _loc2_.users.push(_loc1_);
            battleUserInfoService.connect(_loc1_,platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
            if(§5214237545237558123423632234§.isFriendsInState(_loc1_,FriendState.ACCEPTED))
            {
               _loc2_.friends.push(_loc1_);
            }
            _loc4_--;
         }
      }
      
      public function getFriendsCount() : int
      {
         return this.data().friends.length;
      }
   }
}

class BattleDMData
{
   
   public var users:Vector.<String> = new Vector.<String>();
   
   public var friends:Vector.<String> = new Vector.<String>();
   
   public function BattleDMData()
   {
      super();
   }
}
