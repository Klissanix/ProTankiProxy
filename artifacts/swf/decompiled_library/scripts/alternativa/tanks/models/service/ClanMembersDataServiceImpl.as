package alternativa.tanks.models.service
{
   import §521423138062313819123423632234§.§if set class§;
   import §5214233242233255123423632234§.§5214236221236234123423632234§;
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   
   public class ClanMembersDataServiceImpl implements ClanMembersDataService
   {
      
      public static var §while for package§:IUserInfoService;
      
      private var §521423162329123423632234§:Dictionary = new Dictionary();
      
      public function ClanMembersDataServiceImpl()
      {
         super();
      }
      
      public function getDateInClanInSec(param1:String) : int
      {
         var _loc2_:§if set class§ = this.§521423162329123423632234§[param1];
         return _loc2_.§import switch set§;
      }
      
      public function getDeaths(param1:String) : int
      {
         var _loc2_:§if set class§ = this.§521423162329123423632234§[param1];
         return _loc2_.deaths;
      }
      
      public function getPermission(param1:String) : §5214234734234747123423632234§
      {
         var _loc2_:§if set class§ = null;
         if(param1 in this.§521423162329123423632234§)
         {
            _loc2_ = this.§521423162329123423632234§[param1];
            return _loc2_.§default for package§;
         }
         return §5214234734234747123423632234§.§override const const§;
      }
      
      public function getKillDeathRatio(param1:String) : Number
      {
         var _loc3_:§if set class§ = this.§521423162329123423632234§[param1];
         var _loc4_:Number = _loc3_.deaths;
         var _loc2_:Number = _loc3_.kills;
         if(_loc4_ == 0)
         {
            return _loc2_;
         }
         return _loc2_ / _loc4_;
      }
      
      public function getLastVisitDateInSec(param1:String) : Long
      {
         var _loc2_:§if set class§ = this.§521423162329123423632234§[param1];
         return _loc2_.§5214234268234281123423632234§;
      }
      
      public function getScore(param1:String) : int
      {
         var _loc2_:§if set class§ = this.§521423162329123423632234§[param1];
         return _loc2_.score;
      }
      
      public function getKills(param1:String) : int
      {
         var _loc2_:§if set class§ = this.§521423162329123423632234§[param1];
         return _loc2_.kills;
      }
      
      public function setData(param1:§if set class§) : void
      {
         this.§521423162329123423632234§[param1.§each use get§] = param1;
         §5214236221236234123423632234§.§package set true§(param1);
      }
      
      public function getClanMemberData(param1:String) : Object
      {
         var _loc2_:Object = {};
         _loc2_.score = this.getScore(param1).toString();
         _loc2_.permission = this.getPermission(param1);
         _loc2_.kills = this.getKills(param1).toString();
         _loc2_.deaths = this.getDeaths(param1).toString();
         _loc2_.score = this.getScore(param1).toString();
         _loc2_.kd = this.getKillDeathRatio(param1).toFixed(2);
         _loc2_.date = this.getDateInClanInSec(param1);
         _loc2_.lastOnlineDate = this.getLastVisitDateInSec(param1);
         _loc2_.id = param1;
         var _loc3_:String = §while for package§.getCurrentUserId();
         _loc2_.currentUserId = _loc3_;
         _loc2_.currentUserPermission = this.getPermission(_loc3_);
         _loc2_.isNew = ClanNotificationsManager.userInAcceptedNotifications(param1);
         return _loc2_;
      }
   }
}

