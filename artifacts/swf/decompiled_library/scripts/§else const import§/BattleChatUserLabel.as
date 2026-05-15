package §else const import§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import filters.Filters;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §set package in§.ClientObject;
   import §try const default§.§set catch function§;
   
   public class BattleChatUserLabel extends §set catch function§
   {
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §do switch var§:TankUsersRegistry;
      
      public static var §while for package§:BattleUserInfoService;
      
      public function BattleChatUserLabel(param1:String, param2:Boolean = true)
      {
         var _loc4_:ClientObject = null;
         var _loc3_:LocalTankInfoService = null;
         var _loc6_:§5214239411239424123423632234§ = null;
         §5214232654232667123423632234§ = §while for package§.getUserName(param1);
         §implements switch in§ = §while for package§.getUserRank(param1);
         §521423104272310440123423632234§ = §while for package§.getChatModeratorLevel(param1);
         §521423106752310688123423632234§ = false;
         §package package true§ = param2;
         var _loc5_:Boolean = false;
         if(§return set get§.isSpectatorMode())
         {
            _loc4_ = §do switch var§.getUser(param1);
            if(_loc4_ != null)
            {
               _loc3_ = LocalTankInfoService(OSGi.getInstance().getService(LocalTankInfoService));
               _loc6_ = _loc3_.getTankData(_loc4_).§521423122212312234123423632234§;
               if(_loc6_ != null)
               {
                  _loc5_ = _loc6_.§implements catch catch§ == §get catch§.§52142350323516123423632234§;
               }
            }
         }
         this.§52142354023553123423632234§ = _loc5_;
         super(param1);
         if(!§5214239243239256123423632234§)
         {
            addEventListener("mouseOver",this.d4af47a);
            addEventListener("mouseOut",this.f9d8cb2);
         }
      }
      
      override protected function getShadowFilters() : Array
      {
         return Filters.§include set each§;
      }
      
      private function f9d8cb2(param1:MouseEvent) : void
      {
         §dynamic package true§.filters = this.getShadowFilters();
      }
      
      protected function getShadowFiltersOnOver() : Array
      {
         return Filters.§class const with§;
      }
      
      override protected function createUidLabel() : void
      {
         super.createUidLabel();
         §5214235841235854123423632234§.antiAliasType = "advanced";
         §5214235841235854123423632234§.thickness = 150;
         §5214235841235854123423632234§.sharpness = 200;
      }
      
      override protected function updateProperties() : void
      {
         §function set each§(§5214232654232667123423632234§);
         §true finally catch§(§implements switch in§);
         §with set dynamic§(§case catch false§.state);
      }
      
      private function d4af47a(param1:MouseEvent) : void
      {
         §dynamic package true§.filters = this.getShadowFiltersOnOver();
      }
      
      override protected function onMouseClick(param1:MouseEvent) : void
      {
         super.onMouseClick(param1);
      }
   }
}

