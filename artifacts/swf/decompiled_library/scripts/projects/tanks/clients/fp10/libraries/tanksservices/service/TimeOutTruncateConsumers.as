package projects.tanks.clients.fp10.libraries.tanksservices.service
{
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class TimeOutTruncateConsumers
   {
      
      private static const §5214234499234512123423632234§:int = 300000;
      
      private var §5214235054235067123423632234§:uint;
      
      private var §include package var§:Dictionary;
      
      private var §521423117252311738123423632234§:Dictionary;
      
      private var §import finally switch§:Function;
      
      public function TimeOutTruncateConsumers()
      {
         super();
         this.§include package var§ = new Dictionary();
         this.§5214235054235067123423632234§ = setInterval(this.d12c85b4,300000);
      }
      
      public function get truncateFunction() : Function
      {
         return this.§import finally switch§;
      }
      
      private function d12c85b4() : void
      {
         var _loc4_:§521423128522312865123423632234§ = null;
         if(this.§import finally switch§ == null)
         {
            return;
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:Number = new Date().time - 300000;
         for(var _loc3_ in this.§521423117252311738123423632234§)
         {
            _loc4_ = this.§521423117252311738123423632234§[_loc3_];
            if(_loc4_.lastAccessTime < _loc2_ && _loc4_.visibleLabelsCounter == 0)
            {
               _loc1_[_loc1_.length] = _loc3_;
            }
         }
         if(_loc1_.length > 0)
         {
            this.§import finally switch§(_loc1_);
         }
      }
      
      public function set truncateFunction(param1:Function) : void
      {
         this.§import finally switch§ = param1;
      }
      
      public function stop() : void
      {
         clearInterval(this.§5214235054235067123423632234§);
      }
      
      public function updateLastAccessTime(param1:String) : void
      {
         this.§include package var§[param1] = new Date().time;
      }
      
      public function set consumers(param1:Dictionary) : void
      {
         this.§521423117252311738123423632234§ = param1;
      }
   }
}

