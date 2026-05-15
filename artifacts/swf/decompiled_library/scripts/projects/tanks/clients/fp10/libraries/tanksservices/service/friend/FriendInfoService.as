package projects.tanks.clients.fp10.libraries.tanksservices.service.friend
{
   import §521423128372312850123423632234§.§continue§;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.§5214231516231529123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.FriendState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.TimeOutTruncateConsumers;
   
   public class FriendInfoService extends EventDispatcher implements IFriendInfoService, §continue§
   {
      
      private var consumers:Dictionary = new Dictionary();
      
      private var friends:Dictionary = new Dictionary();
      
      private var §5214237338237351123423632234§:Dictionary = new Dictionary();
      
      private var §5214235058235071123423632234§:Dictionary = new Dictionary();
      
      private var §52142326223275123423632234§:TimeOutTruncateConsumers;
      
      public function FriendInfoService()
      {
         super();
         this.§52142326223275123423632234§ = new TimeOutTruncateConsumers();
         this.§52142326223275123423632234§.consumers = this.consumers;
         this.§52142326223275123423632234§.truncateFunction = this.f31ff17f;
      }
      
      private static function a3e4b713(param1:Dictionary, param2:Object = null) : int
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         for each(_loc3_ in param1)
         {
            if(param2 != null)
            {
               if(_loc3_ == param2)
               {
                  _loc4_++;
               }
            }
            else
            {
               _loc4_++;
            }
         }
         return _loc4_;
      }
      
      private function b305b20b(param1:String) : void
      {
         dispatchEvent(new NewFriendEvent("NewFriendEvent.ACCEPTED_CHANGE",param1));
      }
      
      private function d2bb6a48(param1:String, param2:FriendState) : void
      {
         if(param1 in this.consumers)
         {
            this.getConsumer(param1).setFriendState(param2);
         }
      }
      
      public function get newAcceptedFriendsLength() : int
      {
         return a3e4b713(this.§5214237338237351123423632234§);
      }
      
      public function isNewFriend(param1:String) : Boolean
      {
         return this.isNewAcceptedFriend(param1) || this.isNewIncomingFriend(param1);
      }
      
      private function c59c0469(param1:String) : void
      {
         dispatchEvent(new NewFriendEvent("NewFriendEvent.INCOMING_CHANGE",param1));
      }
      
      public function isNewAcceptedFriend(param1:String) : Boolean
      {
         return param1 in this.§5214237338237351123423632234§;
      }
      
      private function c593a7fc(param1:String, param2:§5214231516231529123423632234§) : void
      {
         this.consumers[param1] = param2;
         if(param1 in this.friends)
         {
            this.d2bb6a48(param1,this.friends[param1]);
         }
      }
      
      public function get incomingFriendsLength() : int
      {
         return a3e4b713(this.friends,FriendState.INCOMING);
      }
      
      public function setFriendState(param1:String, param2:FriendState) : void
      {
         var _loc3_:FriendState = this.getFriendState(param1);
         this.friends[param1] = param2;
         this.d2bb6a48(param1,param2);
         dispatchEvent(new FriendStateChangeEvent("FriendsStateChangeEvent.CHANGE",param1,param2,_loc3_));
      }
      
      public function get outgoingFriendsLength() : int
      {
         return a3e4b713(this.friends,FriendState.OUTGOING);
      }
      
      public function getOrCreateUpdater(param1:String) : §52142355023563123423632234§
      {
         var _loc2_:FriendsInfoLabelUpdater = null;
         this.§52142326223275123423632234§.updateLastAccessTime(param1);
         if(param1 in this.consumers)
         {
            _loc2_ = this.consumers[param1];
         }
         else
         {
            _loc2_ = new FriendsInfoLabelUpdater();
            this.consumers[param1] = _loc2_;
            this.c593a7fc(param1,_loc2_);
         }
         _loc2_.updateLastAccessTime();
         return _loc2_;
      }
      
      public function get newIncomingFriendsLength() : int
      {
         return a3e4b713(this.§5214235058235071123423632234§);
      }
      
      public function deleteFriend(param1:String, param2:FriendState) : void
      {
         var _loc3_:FriendState = null;
         if(this.isFriendsInState(param1,param2))
         {
            _loc3_ = this.getFriendState(param1);
            delete this.friends[param1];
            this.d2bb6a48(param1,FriendState.UNKNOWN);
            dispatchEvent(new FriendStateChangeEvent("FriendsStateChangeEvent.CHANGE",param1,FriendState.UNKNOWN,_loc3_));
         }
      }
      
      public function removeNewIncomingFriend(param1:String) : void
      {
         dispatchEvent(new NewFriendRemoveEvent("NewFriendRemoveEvent.INCOMING",param1));
      }
      
      public function getConsumer(param1:String) : §5214231516231529123423632234§
      {
         return this.consumers[param1];
      }
      
      public function onRemoveNewIncomingFriend(param1:String) : void
      {
         delete this.§5214235058235071123423632234§[param1];
         this.c59c0469(param1);
      }
      
      private function f31ff17f(param1:Vector.<String>) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            delete this.consumers[_loc2_];
         }
      }
      
      public function onAddNewIncomingFriend(param1:String) : void
      {
         this.§5214235058235071123423632234§[param1] = true;
         this.c59c0469(param1);
      }
      
      public function onConnectionClosed(param1:ConnectionCloseStatus) : void
      {
         this.consumers = new Dictionary();
         this.friends = new Dictionary();
         this.§5214237338237351123423632234§ = new Dictionary();
         this.§5214235058235071123423632234§ = new Dictionary();
      }
      
      public function getFriendState(param1:String) : FriendState
      {
         if(param1 in this.friends)
         {
            return this.friends[param1];
         }
         return FriendState.UNKNOWN;
      }
      
      public function removeNewAcceptedFriend(param1:String) : void
      {
         dispatchEvent(new NewFriendRemoveEvent("NewFriendRemoveEvent.ACCEPTED",param1));
      }
      
      public function onRemoveNewAcceptedFriend(param1:String) : void
      {
         delete this.§5214237338237351123423632234§[param1];
         this.b305b20b(param1);
      }
      
      public function getFriendsIdByState(param1:FriendState) : Vector.<String>
      {
         var _loc2_:* = undefined;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.friends)
         {
            if(this.friends[_loc2_] == param1)
            {
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      public function isFriendsInState(param1:String, param2:FriendState) : Boolean
      {
         return this.friends[param1] == param2;
      }
      
      public function get acceptedFriendsLength() : int
      {
         return a3e4b713(this.friends,FriendState.ACCEPTED);
      }
      
      public function isNewIncomingFriend(param1:String) : Boolean
      {
         return param1 in this.§5214235058235071123423632234§;
      }
      
      public function onAddNewAcceptedFriend(param1:String) : void
      {
         this.§5214237338237351123423632234§[param1] = true;
         this.b305b20b(param1);
      }
      
      public function hasUpdater(param1:String) : Boolean
      {
         return param1 in this.consumers;
      }
   }
}

