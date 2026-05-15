package §5214234056234069123423632234§
{
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.battlefield.§override switch native§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   
   public class §null for with§ implements §override switch native§, §521423117662311779123423632234§
   {
      
      public static var §5214236582236595123423632234§:BattleUserInfoService;
      
      public static var §do switch var§:TankUsersRegistry;
      
      public static var §native switch include§:ModelRegistry;
      
      private var §5214235053235066123423632234§:§52142376523778123423632234§;
      
      public function §null for with§(param1:§52142376523778123423632234§)
      {
         super();
         this.§5214235053235066123423632234§ = param1;
         §5214236582236595123423632234§.addBattleUserInfoListener(this);
      }
      
      public function userRankChanged(param1:String, param2:int) : void
      {
         var _loc3_:§super var dynamic§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService));
         var _loc4_:§5214239411239424123423632234§ = _loc3_.§521423110872311100123423632234§(§do switch var§.getUser(param1));
         var _loc5_:§5214232742232755123423632234§ = §5214232742232755123423632234§(§native switch include§.getModel(Long.getLong(170775304,-1579436046)));
         _loc5_.§implements const import§(_loc4_,param2);
      }
      
      public function userInfoChanged(param1:String, param2:int, param3:Boolean) : void
      {
      }
      
      public function userSuspiciousnessChanged(param1:String, param2:Boolean) : void
      {
      }
      
      public function close() : void
      {
         this.§5214235053235066123423632234§ = null;
         §5214236582236595123423632234§.removeBattleUserInfoListener(this);
      }
   }
}

