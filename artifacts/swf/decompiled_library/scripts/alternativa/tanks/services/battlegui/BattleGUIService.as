package alternativa.tanks.services.battlegui
{
   import flash.display.DisplayObjectContainer;
   import flash.events.IEventDispatcher;
   
   public interface BattleGUIService extends IEventDispatcher
   {
      
      function setPositionXDefaultLayout(param1:int) : void;
      
      function resetPositionXInventory() : void;
      
      function show() : void;
      
      function getPositionXDefaultLayout() : int;
      
      function getTabContainer() : DisplayObjectContainer;
      
      function hide() : void;
      
      function getViewportContainer() : DisplayObjectContainer;
      
      function getGuiContainer() : DisplayObjectContainer;
      
      function getPositionXInventory() : int;
      
      function setPositionXInventory(param1:int) : void;
   }
}

