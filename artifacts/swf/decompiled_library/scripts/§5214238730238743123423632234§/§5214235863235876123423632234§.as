package §5214238730238743123423632234§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import §finally if§.§521423131952313208123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.§5214231456231469123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.UserInfoLabelUpdaterEvent;
   import §set package in§.ClientObject;
   
   public class §5214235863235876123423632234§
   {
      
      public static var §while for package§:IUserInfoService;
      
      public static var §do switch var§:TankUsersRegistry;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      public function §5214235863235876123423632234§()
      {
         super();
      }
      
      private function §each finally set§(param1:§5214231456231469123423632234§) : void
      {
         var _loc2_:ClientObject = §do switch var§.getUser(param1.uid);
         var _loc3_:§5214239411239424123423632234§ = §5214237923237936123423632234§.getTankData(_loc2_).§521423122212312234123423632234§;
         var _loc4_:§521423131952313208123423632234§ = _loc3_.§5214237342237355123423632234§;
         _loc4_.§native for import§(param1.hasPremium());
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:§5214231456231469123423632234§ = this.§521423109982311011123423632234§(param1);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.removeEventListener("UserLabelUpdaterEvent.CHANGE_PREMIUM_STATUS",this.§include package package§);
      }
      
      private function §521423109982311011123423632234§(param1:ClientObject) : §5214231456231469123423632234§
      {
         return §5214231456231469123423632234§(param1.getParams(§5214231456231469123423632234§));
      }
      
      private function §include package package§(param1:UserInfoLabelUpdaterEvent) : void
      {
         var _loc2_:ClientObject = §do switch var§.getUser(param1.user);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:§5214231456231469123423632234§ = this.§521423109982311011123423632234§(_loc2_);
         this.§each finally set§(_loc3_);
      }
      
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§5214231456231469123423632234§ = §while for package§.getOrCreateUpdater(param1.id);
         param1.putParams(§5214231456231469123423632234§,_loc2_);
         _loc2_.addEventListener("UserLabelUpdaterEvent.CHANGE_PREMIUM_STATUS",this.§include package package§);
         this.§each finally set§(_loc2_);
      }
   }
}

