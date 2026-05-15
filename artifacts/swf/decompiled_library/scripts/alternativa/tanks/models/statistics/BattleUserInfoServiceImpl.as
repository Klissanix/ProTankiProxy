package alternativa.tanks.models.statistics
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import §5214231664231677123423632234§.ShortUserInfo;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.battlefield.§override switch native§;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class BattleUserInfoServiceImpl implements BattleUserInfoService, §521423117662311779123423632234§
   {
      
      public static var §with switch implements§:IClientUserInfo;
      
      private const §5214237655237668123423632234§:Vector.<§override switch native§> = new Vector.<§override switch native§>();
      
      private var §else package switch§:§521423120252312038123423632234§;
      
      public function BattleUserInfoServiceImpl(param1:§521423120252312038123423632234§)
      {
         super();
         this.§else package switch§ = param1;
         OSGi.getInstance().registerService(BattleUserInfoService,this);
      }
      
      public function getUserName(param1:String) : String
      {
         var _loc2_:ShortUserInfo = §with switch implements§.getShortUserInfo(param1);
         if(_loc2_ != null)
         {
            return _loc2_.userId;
         }
         return null;
      }
      
      public function getChatModeratorLevel(param1:String) : §5214231668231681123423632234§
      {
         var _loc2_:ShortUserInfo = §with switch implements§.getShortUserInfo(param1);
         return _loc2_ != null ? _loc2_.chatModeratorLevel : §5214231668231681123423632234§.§dynamic use false§;
      }
      
      public function getUserRank(param1:String) : int
      {
         var _loc2_:ShortUserInfo = §with switch implements§.getShortUserInfo(param1);
         if(_loc2_ != null)
         {
            return _loc2_.rank;
         }
         return 1;
      }
      
      public function dispatchStatChange(param1:ShortUserInfo) : void
      {
         for each(var _loc2_ in this.§5214237655237668123423632234§)
         {
            _loc2_.userInfoChanged(param1.userId,param1.rank,param1.suspicious);
         }
      }
      
      public function isUserSuspected(param1:String) : Boolean
      {
         var _loc2_:ShortUserInfo = §with switch implements§.getShortUserInfo(param1);
         if(_loc2_ != null)
         {
            return _loc2_.suspicious;
         }
         return false;
      }
      
      public function addBattleUserInfoListener(param1:§override switch native§) : void
      {
         var _loc2_:int = this.§5214237655237668123423632234§.indexOf(param1);
         if(_loc2_ < 0)
         {
            this.§5214237655237668123423632234§.push(param1);
         }
      }
      
      public function dispatchSuspiciousnessChange(param1:String, param2:Boolean) : void
      {
         var _loc3_:§override switch native§ = null;
         for each(_loc3_ in this.§5214237655237668123423632234§)
         {
            _loc3_.userSuspiciousnessChanged(param1,param2);
         }
      }
      
      public function getUsersCount() : int
      {
         return §with switch implements§.getUsersCount();
      }
      
      public function dispatchRankChange(param1:String, param2:int) : void
      {
         for each(var _loc3_ in this.§5214237655237668123423632234§)
         {
            _loc3_.userRankChanged(param1,param2);
         }
      }
      
      public function close() : void
      {
         this.§else package switch§ = null;
         this.§5214237655237668123423632234§.length = 0;
         OSGi.getInstance().unregisterService(BattleUserInfoService);
      }
      
      public function removeBattleUserInfoListener(param1:§override switch native§) : void
      {
         var _loc2_:int = this.§5214237655237668123423632234§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§5214237655237668123423632234§.removeAt(_loc2_);
         }
      }
   }
}

