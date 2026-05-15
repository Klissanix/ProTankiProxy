package §521423121922312205123423632234§
{
   import §521423133332313346123423632234§.§5214238163238176123423632234§;
   import §521423133332313346123423632234§.§5214239054239067123423632234§;
   import §521423133332313346123423632234§.§native catch set§;
   import §5214231949231962123423632234§.§with var with§;
   import §override catch default§.Long;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.§5214236607236620123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.§5214239646239659123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.notifier.online.IOnlineNotifierService;
   
   public class OnlineNotifierModel extends §5214239054239067123423632234§ implements §native catch set§, §5214236607236620123423632234§
   {
      
      public static var §5214238546238559123423632234§:IOnlineNotifierService;
      
      public function OnlineNotifierModel()
      {
         super();
      }
      
      private static function e477e1b3(param1:§5214238163238176123423632234§) : ClientOnlineNotifierData
      {
         return new ClientOnlineNotifierData(param1.§each use get§,param1.§import for final§,param1.§5214235402235415123423632234§);
      }
      
      public function refresh(param1:String, param2:§5214239646239659123423632234§) : void
      {
         var _loc3_:ClientOnlineNotifierData = null;
         if(§5214238546238559123423632234§.hasUserOnlineData(param1))
         {
            _loc3_ = §5214238546238559123423632234§.getUserOnlineData(param1);
            param2.setOnline(_loc3_.online,_loc3_.serverNumber);
         }
      }
      
      public function remove(param1:String) : void
      {
         §5214238546238559123423632234§.removeUserOnlineData(param1);
      }
      
      public function setOnline(param1:Vector.<§5214238163238176123423632234§>) : void
      {
         var _loc2_:ClientOnlineNotifierData = null;
         var _loc4_:Vector.<ClientOnlineNotifierData> = new Vector.<ClientOnlineNotifierData>(param1.length);
         var _loc5_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_)
         {
            _loc2_ = e477e1b3(param1[_loc3_]);
            this.setAndUpdateConsumer(_loc2_);
            _loc4_[_loc3_] = _loc2_;
            _loc3_++;
         }
         §5214238546238559123423632234§.setOnline(_loc4_);
      }
      
      private function setAndUpdateConsumer(param1:ClientOnlineNotifierData) : void
      {
         var _loc2_:§5214239646239659123423632234§ = null;
         var _loc3_:String = param1.userId;
         §5214238546238559123423632234§.addUserOnlineData(param1);
         var _loc4_:§with var with§ = §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751)));
         if(_loc4_.hasDataConsumer(_loc3_))
         {
            _loc2_ = _loc4_.getDataConsumer(_loc3_);
            _loc2_.setOnline(param1.online,param1.serverNumber);
         }
      }
   }
}

