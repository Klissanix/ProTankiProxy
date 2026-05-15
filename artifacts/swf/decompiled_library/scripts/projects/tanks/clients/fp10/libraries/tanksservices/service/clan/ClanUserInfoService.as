package projects.tanks.clients.fp10.libraries.tanksservices.service.clan
{
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import flash.events.IEventDispatcher;
   
   public interface ClanUserInfoService extends IEventDispatcher
   {
      
      function userClanInfoByUserId(param1:String) : UserClanInfo;
      
      function get restrictionTime() : int;
      
      function set restrictionTime(param1:int) : void;
      
      function set selfClan(param1:Boolean) : void;
      
      function get selfClan() : Boolean;
      
      function updateUserClanInfo(param1:UserClanInfo) : void;
      
      function get clanMember() : Boolean;
      
      function set updateFriendsClanButtonFunction(param1:Function) : void;
      
      function hasAction(param1:§5214238194238207123423632234§) : Boolean;
      
      function onJoinClan() : void;
      
      function inSameClan(param1:String) : Boolean;
      
      function set giveBonusesClan(param1:Boolean) : void;
      
      function set clanMember(param1:Boolean) : void;
      
      function set actions(param1:Vector.<§5214238194238207123423632234§>) : void;
      
      function get giveBonusesClan() : Boolean;
      
      function onLeaveClan() : void;
      
      function get updateFriendsClanButtonFunction() : Function;
      
      function get actions() : Vector.<§5214238194238207123423632234§>;
   }
}

