package §use finally function§
{
   import §5214237225237238123423632234§.§5214238103238116123423632234§;
   import §5214237225237238123423632234§.§function finally const§;
   import §5214237225237238123423632234§.§set const false§;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import platform.client.fp10.core.model.§do set function§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.UserClanInfo;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   
   public class ClanNotifierModel extends §5214238103238116123423632234§ implements §function finally const§, §do set function§
   {
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §switch use var§:ClanUserService;
      
      public static var §while for package§:IUserInfoService;
      
      public function ClanNotifierModel()
      {
         super();
      }
      
      public function setClan(param1:Vector.<§set const false§>) : void
      {
         var _loc3_:UserClanInfo = null;
         for each(var _loc2_ in param1)
         {
            _loc3_ = new UserClanInfo(_loc2_);
            §5214234066234079123423632234§.updateUserClanInfo(_loc3_);
         }
         if(§while for package§.getCurrentUserId() == _loc2_.userId && §5214234066234079123423632234§.updateFriendsClanButtonFunction != null)
         {
            §5214234066234079123423632234§.updateFriendsClanButtonFunction.call(null);
         }
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:§set const false§ = §switch var switch§();
         var _loc2_:UserClanInfo = new UserClanInfo(_loc1_);
         §5214234066234079123423632234§.updateUserClanInfo(_loc2_);
      }
   }
}

