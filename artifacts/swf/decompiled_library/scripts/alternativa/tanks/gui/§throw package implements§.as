package alternativa.tanks.gui
{
   import §do package if§.ItemViewCategoryEnum;
   import flash.events.IEventDispatcher;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public interface §throw package implements§ extends IEventDispatcher
   {
      
      function getItemInfoPanel() : ItemInfoPanel;
      
      function removeItemFromStore(param1:§521423120252312038123423632234§) : void;
      
      function showCategory(param1:ItemViewCategoryEnum) : void;
      
      function getSelectedItem() : §521423120252312038123423632234§;
      
      function mountItem(param1:§521423120252312038123423632234§) : void;
      
      function itemFullUpgraded(param1:§521423120252312038123423632234§) : void;
      
      function updateDiscount(param1:§521423120252312038123423632234§) : void;
      
      function unmountItem(param1:§521423120252312038123423632234§) : void;
      
      function addItemToMarket(param1:§521423120252312038123423632234§) : void;
      
      function getTimersKitCouldBeBoughtContext() : Vector.<TimerKitCouldBeBoughtContext>;
      
      function removeItemFromDepot(param1:§521423120252312038123423632234§) : void;
   }
}

