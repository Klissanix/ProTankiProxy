package §521423129512312964123423632234§
{
   import §5214235655235668123423632234§.§5214233634233647123423632234§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.console.§5214235900235913123423632234§;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import platform.client.fp10.core.service.IResourceTimer;
   
   public class §5214231824231837123423632234§ implements IResourceTimer
   {
      
      private static const §class finally§:int = 30000;
      
      private static const §521423121652312178123423632234§:int = 3;
      
      private static const §implements for set§:int = 5000;
      
      private var §5214239977239990123423632234§:Timer;
      
      private var §try switch native§:Vector.<§include catch each§>;
      
      private var §throw switch try§:int;
      
      private var §false use with§:int;
      
      private var §521423118542311867123423632234§:int;
      
      public function §5214231824231837123423632234§(param1:OSGi)
      {
         super();
         var _loc4_:§5214233634233647123423632234§ = §5214233634233647123423632234§(param1.getService(§5214233634233647123423632234§));
         this.§false use with§ = int(_loc4_.getParameter("resource_timeout") || 30000);
         if(this.§false use with§ < 5000)
         {
            this.§false use with§ = 5000;
         }
         var _loc5_:LogService = LogService(param1.getService(LogService));
         var _loc3_:§dynamic use try§ = _loc5_.getLogger("resource");
         this.§521423118542311867123423632234§ = int(_loc4_.getParameter("resource_reload") || 3);
         if(this.§521423118542311867123423632234§ < 0)
         {
            this.§521423118542311867123423632234§ = 0;
         }
         this.§try switch native§ = new Vector.<§include catch each§>();
         this.§5214239977239990123423632234§ = new Timer(1000);
         var _loc2_:§5214235900235913123423632234§ = §5214235900235913123423632234§(param1.getService(§5214235900235913123423632234§));
         _loc2_.setCommandHandler("res_timer",this.§continue set for§);
      }
      
      private function §continue set for§(param1:§5214235900235913123423632234§, param2:Array) : void
      {
         if(param2.length == 0)
         {
            param1.addText("Available parameters:");
            param1.addText("ls -- list currently tracked resources");
            return;
         }
         var _loc3_:* = param2[0];
         if("ls" === _loc3_)
         {
            this.§static var use§(param1);
         }
      }
      
      public function removeResource(param1:§include catch each§) : void
      {
         var _loc2_:int = this.§try switch native§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§try switch native§[_loc2_] = this.§try switch native§[--this.§throw switch try§];
            this.§try switch native§[this.§throw switch try§] = null;
            if(this.§throw switch try§ == 0)
            {
               this.§5214239977239990123423632234§.stop();
               this.§5214239977239990123423632234§.removeEventListener("timer",this.§5214236758236771123423632234§);
            }
         }
      }
      
      private function §5214236758236771123423632234§(param1:TimerEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:§include catch each§ = null;
         var _loc3_:int = getTimer();
         while(_loc4_ < this.§throw switch try§)
         {
            _loc2_ = this.§try switch native§[_loc4_];
            if(_loc3_ - _loc2_.§extends package super§ > this.§false use with§)
            {
               this.removeResource(_loc2_);
               _loc4_--;
               _loc2_.§else var package§();
            }
            _loc4_++;
         }
      }
      
      public function getMaxReloadAttemts() : int
      {
         return this.§521423118542311867123423632234§;
      }
      
      private function §static var use§(param1:§5214235900235913123423632234§) : void
      {
         var _loc4_:int = 0;
         var _loc2_:§include catch each§ = null;
         var _loc5_:int = 0;
         var _loc3_:int = getTimer();
         while(_loc4_ < this.§throw switch try§)
         {
            _loc2_ = this.§try switch native§[_loc4_];
            _loc5_ = (_loc3_ - _loc2_.§extends package super§) / 1000;
            param1.addText(_loc4_ + 1 + ". " + _loc2_ + ", time: " + _loc5_ + " second(s)");
            _loc4_++;
         }
      }
      
      public function addResource(param1:§include catch each§) : void
      {
         var _loc2_:* = undefined;
         if(this.§try switch native§.indexOf(param1) < 0)
         {
            _loc2_ = this.§throw switch try§++;
            this.§try switch native§[_loc2_] = param1;
            if(this.§throw switch try§ == 1)
            {
               this.§5214239977239990123423632234§.addEventListener("timer",this.§5214236758236771123423632234§);
               this.§5214239977239990123423632234§.start();
            }
         }
      }
   }
}

