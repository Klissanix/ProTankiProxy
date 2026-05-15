package alternativa.tanks.service.item
{
   import flash.events.Event;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class ItemEvents extends Event
   {
      
      public static var §import use use§:String = "ItemEvents:OnItemAdded";
      
      private var item:§521423120252312038123423632234§;
      
      public function ItemEvents(param1:String, param2:§521423120252312038123423632234§)
      {
         super(param1);
         this.item = param2;
      }
      
      public function getItem() : §521423120252312038123423632234§
      {
         return this.item;
      }
   }
}

