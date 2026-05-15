package §continue const finally§
{
   import §5214238325238338123423632234§.§5214234586234599123423632234§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.LocalTankActivationEvent;
   import alternativa.tanks.battle.events.LocalTankKilledEvent;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputLockEvent;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import §const const if§.§521423127792312792123423632234§;
   import §const const if§.§case switch each§;
   import §finally catch with§.§implements package return§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §override catch default§.Long;
   
   public class InventoryModel extends §case switch each§ implements §521423127792312792123423632234§, §finally set var§, §5214234586234599123423632234§, §if use default§
   {
      
      public static var display:IDisplay;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §case const default§:BattleGUIService;
      
      public static var §extends package override§:KeysBindingService;
      
      private static const §5214232383232396123423632234§:int = 50;
      
      private var container:DisplayObjectContainer;
      
      private var §5214234408234421123423632234§:Vector.<InventoryPanelSlot>;
      
      private var §get switch each§:Dictionary = new Dictionary();
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §super package false§:§implements package return§;
      
      private var §for catch case§:§5214233525233538123423632234§;
      
      public function InventoryModel()
      {
         super();
         this.§super package false§ = new §implements package return§();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(LocalTankActivationEvent,this.f447004d);
         this.§5214238269238282123423632234§.addEventHandler(LocalTankKilledEvent,this.onLocalTankKilled);
         this.§5214238269238282123423632234§.addEventHandler(BattleFinishEvent,this.c629987c);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,this.onTankLoaded);
      }
      
      private function f29594e0(param1:BattleInputLockEvent) : void
      {
         this.d52b8995(4,false);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(this.§super package false§.§set for package§(param1.keyCode))
         {
            return;
         }
         var _loc3_:GameActionEnum = §extends package override§.getBindingAction(param1.keyCode,param1.ctrlKey);
         var _loc6_:* = this.§get switch each§[_loc3_];
         if(_loc6_ == null)
         {
            return;
         }
         var _loc4_:int = _loc6_;
         var _loc5_:InventoryPanelSlot = this.§5214234408234421123423632234§[_loc4_];
         if(_loc5_.isLocked())
         {
            return;
         }
         var _loc2_:InventoryItem = _loc5_.getItem();
         if(_loc2_ != null)
         {
            this.§super package false§.§5214235587235600123423632234§(param1.keyCode);
            this.§for catch case§.requestActivation(_loc2_);
         }
      }
      
      private function a6f9cf12(param1:BattleInputLockEvent) : void
      {
         this.d52b8995(4,true);
      }
      
      private function e13f5880() : void
      {
         var _loc4_:int = 0;
         var _loc5_:InventoryPanelSlot = null;
         var _loc2_:DisplayObject = null;
         this.§5214234408234421123423632234§ = new Vector.<InventoryPanelSlot>(5);
         var _loc1_:int = 50;
         var _loc3_:int = 10;
         while(_loc4_ < 5)
         {
            _loc5_ = new InventoryPanelSlot(_loc4_ + 1);
            _loc5_.getCanvas().addEventListener("click",this.onMouseClick,false,0,true);
            this.§5214234408234421123423632234§[_loc4_] = _loc5_;
            _loc2_ = _loc5_.getCanvas();
            _loc2_.x = _loc3_;
            this.container.addChild(_loc2_);
            _loc3_ += _loc1_;
            _loc4_++;
         }
         §521423131302313143123423632234§.addEventListener("BattleInputLockEvent.INPUT_LOCKED",this.a6f9cf12);
         §521423131302313143123423632234§.addEventListener("BattleInputLockEvent.INPUT_UNLOCKED",this.f29594e0);
      }
      
      private function e1d1903(param1:Event) : void
      {
         var _loc2_:int = getTimer();
         for each(var _loc3_ in this.§5214234408234421123423632234§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function d52b8995(param1:int, param2:Boolean) : void
      {
         for each(var _loc3_ in this.§5214234408234421123423632234§)
         {
            _loc3_.setLockMask(param1,param2);
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      public function assignItemToSlot(param1:InventoryItem, param2:int) : void
      {
         if(this.c5365f9f() == 0)
         {
            display.stage.addEventListener("keyDown",this.onKeyDown);
            display.stage.addEventListener("keyUp",this.onKeyUp);
            display.stage.addEventListener("enterFrame",this.e1d1903);
         }
         var _loc3_:InventoryPanelSlot = InventoryPanelSlot(this.§5214234408234421123423632234§[param2]);
         _loc3_.setItem(param1);
         if(param1.count > 0 || param1.count == -1)
         {
            this.container.visible = true;
         }
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         var _loc3_:int = int((param1.currentTarget as Sprite).name) - 1;
         var _loc4_:InventoryPanelSlot = this.§5214234408234421123423632234§[_loc3_];
         if(_loc4_.isLocked())
         {
            return;
         }
         var _loc2_:InventoryItem = _loc4_.getItem();
         if(_loc2_ != null)
         {
            this.§for catch case§.requestActivation(_loc2_);
         }
      }
      
      private function c629987c(param1:BattleFinishEvent) : void
      {
         var _loc2_:InventoryItem = null;
         this.d52b8995(1,true);
         for each(var _loc3_ in this.§5214234408234421123423632234§)
         {
            _loc2_ = _loc3_.getItem();
            if(_loc2_ != null)
            {
               _loc2_.clearCooldown();
            }
         }
      }
      
      public function itemUpdateCount(param1:InventoryItem) : void
      {
         if(param1.count > 0 && !this.container.visible)
         {
            this.container.visible = true;
         }
         for each(var _loc2_ in this.§5214234408234421123423632234§)
         {
            if(_loc2_.getItem() == param1)
            {
               _loc2_.updateCounter();
            }
         }
      }
      
      public function objectLoaded() : void
      {
         this.§for catch case§ = §5214233525233538123423632234§(modelRegistry.getModel(Long.getLong(-1658848388,382118050)));
         this.container = new Sprite();
         this.container.visible = false;
         §case const default§.resetPositionXInventory();
         §case const default§.getGuiContainer().addChild(this.container);
         this.§5214238269238282123423632234§.activateHandlers();
         this.e13f5880();
         this.b5b07f08();
         display.stage.addEventListener("resize",this.onResize);
         this.onResize(null);
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(this.§super package false§.§set for package§(param1.keyCode))
         {
            this.§super package false§.§const var break§(param1.keyCode);
         }
      }
      
      public function lockItem(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:InventoryItem = null;
         for each(var _loc5_ in this.§5214234408234421123423632234§)
         {
            _loc4_ = _loc5_.getItem();
            if(_loc4_ != null && _loc4_.getId() == param1)
            {
               _loc5_.setLockMask(param2,param3);
            }
         }
      }
      
      public function onLocalTankKilled(param1:Object) : void
      {
         this.d52b8995(1,true);
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:int = 0;
         if(this.§5214234408234421123423632234§ == null)
         {
            return;
         }
         while(_loc1_ < this.§5214234408234421123423632234§.length)
         {
            this.b724f317(_loc1_);
            _loc1_++;
         }
         this.§5214234408234421123423632234§ = null;
         §case const default§.getGuiContainer().removeChild(this.container);
         this.container = null;
         display.stage.removeEventListener("resize",this.onResize);
         this.§5214238269238282123423632234§.deactivateHandlers();
         §521423131302313143123423632234§.removeEventListener("BattleInputLockEvent.INPUT_LOCKED",this.a6f9cf12);
         §521423131302313143123423632234§.removeEventListener("BattleInputLockEvent.INPUT_UNLOCKED",this.f29594e0);
      }
      
      public function initItemSlot(param1:InventoryItem) : void
      {
         for each(var _loc2_ in this.§5214234408234421123423632234§)
         {
            if(_loc2_.getItem() == param1)
            {
               _loc2_.updateSlot();
            }
         }
      }
      
      public function itemActivated(param1:InventoryItem) : void
      {
         for each(var _loc2_ in this.§5214234408234421123423632234§)
         {
            if(_loc2_.getItem() == param1)
            {
               _loc2_.updateCounter();
            }
         }
      }
      
      public function onTankLoaded(param1:TankLoadedEvent) : void
      {
         var _loc2_:InventoryItem = null;
         if(param1.isLocal)
         {
            for each(var _loc3_ in this.§5214234408234421123423632234§)
            {
               _loc2_ = _loc3_.getItem();
               if(_loc2_ != null)
               {
                  _loc2_.clearCooldown();
               }
            }
         }
      }
      
      private function b724f317(param1:int) : void
      {
         var _loc2_:InventoryPanelSlot = this.§5214234408234421123423632234§[param1];
         _loc2_.setItem(null);
         if(this.c5365f9f() == 0)
         {
            display.stage.removeEventListener("keyDown",this.onKeyDown);
            display.stage.removeEventListener("keyUp",this.onKeyUp);
            display.stage.removeEventListener("enterFrame",this.e1d1903);
         }
      }
      
      private function b5b07f08() : void
      {
         this.§get switch each§[49] = 0;
         this.§get switch each§[GameActionEnum.USE_FIRS_AID] = 0;
         this.§get switch each§[50] = 1;
         this.§get switch each§[GameActionEnum.USE_DOUBLE_ARMOR] = 1;
         this.§get switch each§[51] = 2;
         this.§get switch each§[GameActionEnum.USE_DOUBLE_DAMAGE] = 2;
         this.§get switch each§[52] = 3;
         this.§get switch each§[GameActionEnum.USE_NITRO] = 3;
         this.§get switch each§[53] = 4;
         this.§get switch each§[GameActionEnum.USE_MINE] = 4;
      }
      
      private function f447004d(param1:Object) : void
      {
         var _loc2_:InventoryItem = null;
         var _loc3_:int = getTimer();
         for each(var _loc4_ in this.§5214234408234421123423632234§)
         {
            _loc4_.setLockMask(1,false);
            _loc4_.startFlash(_loc3_);
            _loc4_.updateFlash(_loc3_);
            _loc2_ = _loc4_.getItem();
            if(_loc2_ != null && _loc2_.getCooldownTime() <= 75000)
            {
               _loc2_.clearCooldown();
            }
         }
      }
      
      private function onResize(param1:Event) : void
      {
         this.container.x = 0;
         this.container.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - 50;
      }
      
      private function c5365f9f() : int
      {
         var _loc1_:int = 0;
         for each(var _loc2_ in this.§5214234408234421123423632234§)
         {
            if(_loc2_.getItem() != null)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
   }
}

