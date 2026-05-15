package §5214235774235787123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.models.battle.battlefield.§override switch native§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import §finally if§.§521423131952313208123423632234§;
   import §set package in§.ClientObject;
   
   public class §5214237859237872123423632234§ implements §override switch native§
   {
      
      public static var §5214233829233842123423632234§:TankUsersRegistry;
      
      public function §5214237859237872123423632234§()
      {
         super();
      }
      
      public function userInfoChanged(param1:String, param2:int, param3:Boolean) : void
      {
         var _loc6_:§521423131952313208123423632234§ = null;
         var _loc5_:§521423138562313869123423632234§ = null;
         var _loc4_:§super var dynamic§ = this.§in set override§(param1);
         if(_loc4_ != null)
         {
            _loc5_ = _loc4_.§get for else§(§5214233829233842123423632234§.getUser(param1));
            _loc5_.§extends set case§ = param1;
            _loc5_.§5214237240237253123423632234§ = param2;
            _loc6_ = _loc4_.§false var set§(§5214233829233842123423632234§.getUser(param1));
            if(_loc6_ != null)
            {
               _loc6_.§set switch while§(param1);
               _loc6_.§true finally catch§(param2);
               _loc6_.§function use implements§(param3);
            }
         }
      }
      
      public function userSuspiciousnessChanged(param1:String, param2:Boolean) : void
      {
         var _loc4_:§super var dynamic§ = null;
         var _loc5_:§521423131952313208123423632234§ = null;
         var _loc3_:ClientObject = §5214233829233842123423632234§.getUser(param1);
         if(_loc3_ != null)
         {
            _loc4_ = this.§in set override§(param1);
            _loc5_ = _loc4_.§false var set§(_loc3_);
            if(_loc5_ != null)
            {
               _loc5_.§function use implements§(param2);
            }
         }
      }
      
      public function userRankChanged(param1:String, param2:int) : void
      {
         var _loc4_:§521423138562313869123423632234§ = null;
         var _loc5_:§521423131952313208123423632234§ = null;
         var _loc3_:§super var dynamic§ = this.§in set override§(param1);
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.§get for else§(§5214233829233842123423632234§.getUser(param1));
            _loc4_.§5214237240237253123423632234§ = param2;
            _loc5_ = _loc3_.§false var set§(§5214233829233842123423632234§.getUser(param1));
            if(_loc5_ != null)
            {
               _loc5_.§true finally catch§(param2);
            }
         }
      }
      
      private function §in set override§(param1:String) : §super var dynamic§
      {
         var _loc2_:ClientObject = §5214233829233842123423632234§.getUser(param1);
         if(_loc2_ != null)
         {
            return §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService));
         }
         return null;
      }
   }
}

