package §static catch var§
{
   import §5214231949231962123423632234§.§with var with§;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import §for use final§.§521423113662311379123423632234§;
   import §for use final§.§true var get§;
   import §for use final§.§use use const§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.§5214236607236620123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.§5214239646239659123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class PremiumNotifierModel extends §521423113662311379123423632234§ implements §use use const§, §5214236607236620123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §with var try§:PremiumService;
      
      private const §const catch finally§:int = 86400;
      
      private var data:Dictionary;
      
      private var §default use native§:Dictionary;
      
      public function PremiumNotifierModel()
      {
         super();
      }
      
      public function refresh(param1:String, param2:§5214239646239659123423632234§) : void
      {
         if(param1 in this.data)
         {
            param2.setPremium(getTimer() < this.data[param1]);
         }
      }
      
      public function remove(param1:String) : void
      {
         if(param1 in this.§default use native§)
         {
            clearTimeout(this.§default use native§[param1]);
            delete this.§default use native§[param1];
         }
         delete this.data[param1];
      }
      
      public function objectLoaded() : void
      {
         this.data = new Dictionary();
         this.§default use native§ = new Dictionary();
         §with var try§.updateTimeLeft(§switch var switch§().§5214237169237182123423632234§);
         §with var try§.addEventListener("change",this.e32d1f05);
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:Number = 0;
         for each(_loc1_ in this.§default use native§)
         {
            clearTimeout(_loc1_);
         }
         this.§default use native§ = null;
         this.data = null;
         §with var try§.removeEventListener("change",this.e32d1f05);
         §with var try§.destroy();
      }
      
      private function e32d1f05(param1:Event) : void
      {
         this.f7121a28(§52142329523308123423632234§.userId,§with var try§.hasPremium());
      }
      
      private function b223b64d(param1:String) : void
      {
         this.f7121a28(param1,false);
         this.remove(param1);
      }
      
      public function updateTimeLeft(param1:int) : void
      {
         §with var try§.updateTimeLeft(param1);
      }
      
      private function a3d96b0c(param1:§true var get§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = param1.§each use get§;
         var _loc4_:Boolean = param1.§5214234217234230123423632234§ > 0;
         if(param1.§5214234217234230123423632234§ > 0 && _loc3_ in this.data)
         {
            return;
         }
         if(_loc4_ && param1.§5214234217234230123423632234§ < 86400)
         {
            _loc2_ = param1.§5214234217234230123423632234§ * 1000 + getTimer();
            this.§default use native§[_loc3_] = setTimeout(this.b223b64d,param1.§5214234217234230123423632234§ * 1000,_loc3_);
         }
         else
         {
            _loc2_ = 86400 * 1000 + getTimer();
         }
         if(_loc4_)
         {
            this.data[_loc3_] = _loc2_;
         }
         else
         {
            this.remove(_loc3_);
         }
         this.f7121a28(_loc3_,_loc4_);
      }
      
      public function setPremiumTimeLeft(param1:Vector.<§true var get§>) : void
      {
         var _loc2_:§true var get§ = null;
         for each(_loc2_ in param1)
         {
            this.a3d96b0c(_loc2_);
         }
      }
      
      private function f7121a28(param1:String, param2:Boolean) : void
      {
         var _loc3_:§5214239646239659123423632234§ = null;
         var _loc4_:§with var with§ = §with var with§(modelRegistry.getModel(Long.getLong(1655167274,1570919751)));
         if(_loc4_.hasDataConsumer(param1))
         {
            _loc3_ = _loc4_.getDataConsumer(param1);
            _loc3_.setPremium(param2,param1);
         }
      }
   }
}

