package alternativa.tanks.services.battlegui
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.utils.removeDisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   
   public class BattleGUIServiceImpl extends EventDispatcher implements BattleGUIService
   {
      
      public static var display:IDisplay;
      
      private var §import import§:Sprite = new Sprite();
      
      private var §dynamic import§:Sprite = new Sprite();
      
      private var §521423128942312907123423632234§:Sprite = new Sprite();
      
      private var §521423138602313873123423632234§:int;
      
      private var §final var with§:int;
      
      public function BattleGUIServiceImpl()
      {
         super();
      }
      
      public function resetPositionXInventory() : void
      {
         this.§final var with§ = 0;
      }
      
      public function setPositionXDefaultLayout(param1:int) : void
      {
         this.§521423138602313873123423632234§ = param1;
         dispatchEvent(new BattleGUIServiceEvent("BattleGUIServiceEvent.ON_CHANGE_POSITION_DEFAULT_LAYOUT"));
      }
      
      public function show() : void
      {
         display.contentLayer.addChild(this.§import import§);
         display.contentUILayer.addChild(this.§dynamic import§);
         display.contentUILayer.addChild(this.§521423128942312907123423632234§);
      }
      
      public function getPositionXInventory() : int
      {
         return this.§final var with§;
      }
      
      public function getTabContainer() : DisplayObjectContainer
      {
         return this.§521423128942312907123423632234§;
      }
      
      public function getGuiContainer() : DisplayObjectContainer
      {
         return this.§dynamic import§;
      }
      
      public function getPositionXDefaultLayout() : int
      {
         return this.§521423138602313873123423632234§;
      }
      
      public function hide() : void
      {
         removeDisplayObject(this.§import import§);
         removeDisplayObject(this.§dynamic import§);
         removeDisplayObject(this.§521423128942312907123423632234§);
      }
      
      public function getViewportContainer() : DisplayObjectContainer
      {
         return this.§import import§;
      }
      
      public function setPositionXInventory(param1:int) : void
      {
         this.§final var with§ = param1;
         dispatchEvent(new InventoryChangePositionEvent());
      }
   }
}

