package projects.tanks.clients.fp10.libraries.tanksservices.service.user
{
   import §5214231949231962123423632234§.§with var with§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.§5214239646239659123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.TimeOutTruncateConsumers;
   
   public class UserInfoService extends EventDispatcher implements IUserInfoService
   {
      
      public static var modelRegistry:ModelRegistry;
      
      private var consumers:Dictionary;
      
      private var §in use do§:Dictionary;
      
      private var §52142326223275123423632234§:TimeOutTruncateConsumers;
      
      public function UserInfoService()
      {
         super();
      }
      
      public function hasPremium(param1:String) : Boolean
      {
         return this.getOrCreateUpdater(param1).hasPremium();
      }
      
      public function init() : void
      {
         this.§52142326223275123423632234§ = new TimeOutTruncateConsumers();
         this.§52142326223275123423632234§.consumers = this.consumers;
         this.§52142326223275123423632234§.truncateFunction = this.f31ff17f;
         this.consumers = new Dictionary();
         this.§in use do§ = new Dictionary();
      }
      
      private function refresh(param1:String, param2:§5214239646239659123423632234§) : void
      {
         this.consumers[param1] = param2;
         §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751))).refresh(param1,param2);
      }
      
      public function forciblySubscribe(param1:String) : void
      {
         var _loc2_:UserInfoLabelUpdater = null;
         if(!this.hasConsumer(param1))
         {
            _loc2_ = new UserInfoLabelUpdater();
            _loc2_.setUid(param1);
            this.c593a7fc(param1,_loc2_);
            _loc2_.updateLastAccessTime();
         }
      }
      
      public function hasConsumer(param1:String) : Boolean
      {
         return param1 in this.consumers;
      }
      
      public function getCurrentUserId() : String
      {
         return §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751))).getCurrentUserId();
      }
      
      private function c593a7fc(param1:String, param2:§5214239646239659123423632234§) : void
      {
         delete this.§in use do§[param1];
         this.consumers[param1] = param2;
         §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751))).subcribe(param1,param2);
      }
      
      public function getOrCreateUpdater(param1:String) : §5214231456231469123423632234§
      {
         var _loc2_:UserInfoLabelUpdater = null;
         if(this.hasConsumer(param1))
         {
            _loc2_ = this.consumers[param1];
         }
         else
         {
            _loc2_ = new UserInfoLabelUpdater();
            _loc2_.setUid(param1);
            if(param1 in this.§in use do§)
            {
               this.c593a7fc(param1,_loc2_);
            }
            else
            {
               this.refresh(param1,_loc2_);
            }
            this.c593a7fc(param1,_loc2_);
         }
         _loc2_.updateLastAccessTime();
         return _loc2_;
      }
      
      public function unload() : void
      {
         this.§52142326223275123423632234§.stop();
         this.§52142326223275123423632234§ = null;
         this.consumers = null;
         this.§in use do§ = null;
      }
      
      private function f31ff17f(param1:Vector.<String>) : void
      {
         var _loc2_:Long = null;
         for each(_loc2_ in param1)
         {
            this.§in use do§[_loc2_] = true;
            delete this.consumers[_loc2_];
         }
         §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751))).unsubcribe(param1);
      }
      
      public function getConsumer(param1:String) : §5214239646239659123423632234§
      {
         return this.consumers[param1];
      }
   }
}

