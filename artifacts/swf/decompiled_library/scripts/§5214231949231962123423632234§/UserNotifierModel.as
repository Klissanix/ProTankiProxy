package §5214231949231962123423632234§
{
   import §import set import§.§52142313423147123423632234§;
   import §import set import§.§catch const var§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.§5214236607236620123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.§5214239646239659123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class UserNotifierModel extends §catch const var§ implements §52142313423147123423632234§, §with var with§, §do set function§, §throw catch var§
   {
      
      public static var §while for package§:IUserInfoService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public function UserNotifierModel()
      {
         super();
      }
      
      public function unsubcribe(param1:Vector.<String>) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-620337827,18690180))).remove(_loc2_);
            §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-1674414200,422322608))).remove(_loc2_);
            §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-256405452,1210698123))).remove(_loc2_);
            §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(1950018808,688837297))).remove(_loc2_);
            §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-488888416,-259434257))).remove(_loc2_);
         }
         §521423120492312062123423632234§.§try var function§(param1);
      }
      
      public function objectUnloaded() : void
      {
         §while for package§.unload();
      }
      
      public function refresh(param1:String, param2:§5214239646239659123423632234§) : void
      {
         §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-620337827,18690180))).refresh(param1,param2);
         §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-1674414200,422322608))).refresh(param1,param2);
         §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-256405452,1210698123))).refresh(param1,param2);
         §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(1950018808,688837297))).refresh(param1,param2);
         §5214236607236620123423632234§(modelRegistry.getModel(Long.getLong(-488888416,-259434257))).refresh(param1,param2);
      }
      
      public function objectLoaded() : void
      {
         §while for package§.init();
      }
      
      public function hasDataConsumer(param1:String) : Boolean
      {
         return §while for package§.hasConsumer(param1);
      }
      
      public function getCurrentUserId() : String
      {
         return §52142329523308123423632234§.userName;
      }
      
      public function subcribe(param1:String, param2:§5214239646239659123423632234§) : void
      {
         this.refresh(param1,param2);
         §521423120492312062123423632234§.§set package override§(param1);
      }
      
      public function getDataConsumer(param1:String) : §5214239646239659123423632234§
      {
         return §while for package§.getConsumer(param1);
      }
   }
}

