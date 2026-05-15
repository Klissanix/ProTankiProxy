package §in switch throw§
{
   import §5214237837237850123423632234§.§true const default§;
   
   internal class ProgressListeners
   {
      
      private var listeners:Vector.<§true const default§> = new Vector.<§true const default§>();
      
      private var §521423101552310168123423632234§:Vector.<§true const default§> = new Vector.<§true const default§>();
      
      private var §521423114182311431123423632234§:Vector.<§true const default§> = new Vector.<§true const default§>();
      
      private var locked:Boolean;
      
      public function ProgressListeners()
      {
         super();
      }
      
      private function unlock() : void
      {
         this.locked = false;
         if(this.§521423114182311431123423632234§.length > 0)
         {
            for each(var _loc1_ in this.§521423114182311431123423632234§)
            {
               this.a629e425(this.listeners.indexOf(_loc1_),this.listeners);
            }
            this.§521423114182311431123423632234§.length = 0;
         }
         if(this.§521423101552310168123423632234§.length > 0)
         {
            for each(_loc1_ in this.§521423101552310168123423632234§)
            {
               this.listeners[listeners.length] = _loc1_;
            }
            this.§521423101552310168123423632234§.length = 0;
         }
      }
      
      public function onLoadingStop() : void
      {
         this.lock();
         for each(var _loc1_ in this.listeners)
         {
            _loc1_.onLoadingStop();
         }
         this.unlock();
      }
      
      private function a629e425(param1:int, param2:Vector.<§true const default§>) : void
      {
         var _loc3_:uint = param2.length;
         param2[param1] = param2[--_loc3_];
         param2.length = _loc3_;
      }
      
      public function onLoadingStart() : void
      {
         this.lock();
         for each(var _loc1_ in this.listeners)
         {
            _loc1_.onLoadingStart();
         }
         this.unlock();
      }
      
      private function lock() : void
      {
         this.locked = true;
      }
      
      public function removeListener(param1:§true const default§) : void
      {
         var _loc2_:int = 0;
         if(this.locked)
         {
            _loc2_ = this.§521423101552310168123423632234§.indexOf(param1);
            if(_loc2_ > -1)
            {
               this.a629e425(_loc2_,this.§521423101552310168123423632234§);
            }
            else if(this.listeners.indexOf(param1) > -1 && this.§521423114182311431123423632234§.indexOf(param1) < 0)
            {
               this.§521423114182311431123423632234§[§521423114182311431123423632234§.length] = param1;
            }
         }
         else
         {
            _loc2_ = this.listeners.indexOf(param1);
            if(_loc2_ > -1)
            {
               this.a629e425(_loc2_,this.listeners);
            }
         }
      }
      
      public function addListener(param1:§true const default§) : void
      {
         var _loc2_:int = 0;
         if(this.locked)
         {
            _loc2_ = this.§521423114182311431123423632234§.indexOf(param1);
            if(_loc2_ > -1)
            {
               this.a629e425(_loc2_,this.§521423114182311431123423632234§);
            }
            else if(this.listeners.indexOf(param1) < 0 && this.§521423101552310168123423632234§.indexOf(param1) < 0)
            {
               this.§521423101552310168123423632234§[§521423101552310168123423632234§.length] = param1;
            }
         }
         else if(this.listeners.indexOf(param1) < 0)
         {
            this.listeners[listeners.length] = param1;
         }
      }
   }
}

