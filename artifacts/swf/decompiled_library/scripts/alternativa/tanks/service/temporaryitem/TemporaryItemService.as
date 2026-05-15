package alternativa.tanks.service.temporaryitem
{
   import alternativa.tanks.service.temporaryitemnotify.ITemporaryItemNotifyService;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class TemporaryItemService implements ITemporaryItemService
   {
      
      public static var §get use final§:ITemporaryItemNotifyService;
      
      private var items:Dictionary;
      
      public function TemporaryItemService()
      {
         super();
         this.items = new Dictionary();
      }
      
      public function startItem(param1:§521423120252312038123423632234§, param2:uint) : void
      {
         var _loc3_:ItemTimer = new ItemTimer(param1,param2);
         this.items[param1] = _loc3_;
         _loc3_.addEventListener("complete",this.b44ed804);
      }
      
      public function getCurrentTimeRemainingMSec(param1:§521423120252312038123423632234§) : Number
      {
         var _loc2_:ItemTimer = this.items[param1];
         if(_loc2_ != null)
         {
            return _loc2_.currentTimeRemainingMSec;
         }
         return 0;
      }
      
      public function stopItem(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:ItemTimer = this.items[param1];
         if(_loc2_ != null)
         {
            _loc2_.removeEventListener("complete",this.b44ed804);
            _loc2_.destroy();
            delete this.items[param1];
         }
      }
      
      private function b44ed804(param1:Event) : void
      {
         var _loc2_:§521423120252312038123423632234§ = ItemTimer(param1.target).item;
         §get use final§.notifyTimeIsUp(_loc2_);
         delete this.items[_loc2_];
      }
   }
}

