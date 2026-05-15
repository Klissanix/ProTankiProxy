package alternativa.tanks.service.temporaryitemnotify
{
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class TemporaryItemNotifyService implements ITemporaryItemNotifyService
   {
      
      private var listeners:Vector.<§final use try§> = new Vector.<§final use try§>();
      
      public function TemporaryItemNotifyService()
      {
         super();
      }
      
      public function removeListener(param1:§final use try§) : void
      {
         var _loc2_:Number = this.listeners.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.listeners.removeAt(_loc2_);
         }
      }
      
      public function notifyTimeIsUp(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.listeners.length)
         {
            this.listeners[_loc2_].temporaryItemTimeIsUp(param1);
            _loc2_++;
         }
      }
      
      public function addListener(param1:§final use try§) : void
      {
         if(this.listeners.indexOf(param1) == -1)
         {
            this.listeners[listeners.length] = param1;
         }
      }
   }
}

