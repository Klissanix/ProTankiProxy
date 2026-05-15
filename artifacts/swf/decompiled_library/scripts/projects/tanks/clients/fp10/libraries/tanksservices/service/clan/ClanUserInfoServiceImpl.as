package projects.tanks.clients.fp10.libraries.tanksservices.service.clan
{
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class ClanUserInfoServiceImpl extends EventDispatcher implements ClanUserInfoService
   {
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      private var §5214235427235440123423632234§:Dictionary = new Dictionary();
      
      private var §521423135362313549123423632234§:Function;
      
      private var §native var switch§:Vector.<§5214238194238207123423632234§>;
      
      private var §521423138672313880123423632234§:int;
      
      private var §static set else§:Boolean;
      
      private var §521423128412312854123423632234§:Boolean;
      
      private var §5214233472233485123423632234§:int;
      
      private var §5214238245238258123423632234§:Boolean;
      
      public function ClanUserInfoServiceImpl()
      {
         super();
      }
      
      public function updateUserClanInfo(param1:UserClanInfo) : void
      {
         this.§5214235427235440123423632234§[param1.userId] = param1;
      }
      
      public function get updateFriendsClanButtonFunction() : Function
      {
         return this.§521423135362313549123423632234§;
      }
      
      public function get selfClan() : Boolean
      {
         return this.§static set else§;
      }
      
      public function get clanMember() : Boolean
      {
         return this.§521423128412312854123423632234§;
      }
      
      public function set giveBonusesClan(param1:Boolean) : void
      {
         this.§5214238245238258123423632234§ = param1;
         dispatchEvent(new ClanUserInfoEvent("ClanUserInfoEvent.UPDATE_GIVE_BONUSES_CLAN"));
      }
      
      public function set clanMember(param1:Boolean) : void
      {
         this.§521423128412312854123423632234§ = param1;
      }
      
      public function set selfClan(param1:Boolean) : void
      {
         this.§static set else§ = param1;
      }
      
      public function get actions() : Vector.<§5214238194238207123423632234§>
      {
         return this.§native var switch§;
      }
      
      public function set restrictionTime(param1:int) : void
      {
         this.§521423138672313880123423632234§ = param1;
         this.§5214233472233485123423632234§ = getTimer();
         if(this.§521423138672313880123423632234§ > 0)
         {
            setTimeout(this.a2e0e302,this.§521423138672313880123423632234§ * 1000);
         }
      }
      
      public function set actions(param1:Vector.<§5214238194238207123423632234§>) : void
      {
         this.§native var switch§ = param1;
      }
      
      public function inSameClan(param1:String) : Boolean
      {
         var _loc2_:UserClanInfo = this.userClanInfoByUserId(param1);
         var _loc3_:UserClanInfo = this.userClanInfoByUserId(§52142329523308123423632234§.userId);
         if(!_loc3_.§5214237039237052123423632234§)
         {
            return false;
         }
         if(_loc2_ != null && _loc3_ != null)
         {
            return _loc2_.§native use var§ == _loc3_.§native use var§;
         }
         return false;
      }
      
      public function onJoinClan() : void
      {
         dispatchEvent(new ClanUserInfoEvent("ClanUserInfoEvent.ON_JOIN_CLAN"));
      }
      
      public function hasAction(param1:§5214238194238207123423632234§) : Boolean
      {
         for each(var _loc2_ in this.actions)
         {
            if(_loc2_.value == param1.value)
            {
               return true;
            }
         }
         return false;
      }
      
      public function userClanInfoByUserId(param1:String) : UserClanInfo
      {
         return param1 in this.§5214235427235440123423632234§ ? this.§5214235427235440123423632234§[param1] : null;
      }
      
      public function get restrictionTime() : int
      {
         return this.§521423138672313880123423632234§ - (getTimer() - this.§5214233472233485123423632234§) / 1000;
      }
      
      public function get giveBonusesClan() : Boolean
      {
         return this.§5214238245238258123423632234§;
      }
      
      private function a2e0e302() : void
      {
         dispatchEvent(new RestrictionJoinClanEvent("RestrictionJoinClanEvent.UPDATE"));
      }
      
      public function onLeaveClan() : void
      {
         dispatchEvent(new ClanUserInfoEvent("ClanUserInfoEvent.ON_LEAVE_CLAN"));
      }
      
      public function set updateFriendsClanButtonFunction(param1:Function) : void
      {
         this.§521423135362313549123423632234§ = param1;
      }
   }
}

