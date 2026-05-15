package alternativa.tanks.battle
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.View;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.bg.IBackgroundService;
   import alternativa.tanks.display.AxisIndicator;
   import alternativa.tanks.models.battle.battlefield.§5214235633235646123423632234§;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.utils.removeDisplayObject;
   import alternativa.utils.removeDisplayObjectChildren;
   import §finally catch with§.§throw for continue§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Rectangle;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class BattleView
   {
      
      public static var §if catch include§:IStorageService;
      
      public static var §521423131302313143123423632234§:BattleInputService;
      
      public static var display:IDisplay;
      
      public static var §extends package override§:KeysBindingService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214238741238754123423632234§:IBackgroundService;
      
      public static const §521423622375123423632234§:int = 10;
      
      private static const §implements set var§:String = "screenSize";
      
      private var container:Sprite;
      
      private var view:View;
      
      private var §5214239711239724123423632234§:Sprite;
      
      private var §get function§:Shape;
      
      private var §5214237895237908123423632234§:Boolean;
      
      private var §include package include§:AxisIndicator;
      
      private var screenSize:int = 10;
      
      public function BattleView()
      {
         super();
         this.c6f6c6e0();
         var _temp_4:* = this;
         var _temp_3:* = §§findproperty(View);
         var _temp_2:* = 1;
         var _temp_1:* = 1;
         var _loc1_:GPUCapabilities = GPUCapabilities;
         _temp_4.view = new View(_temp_2,_temp_1,projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§);
         this.view.mouseEnabled = false;
         this.view.hideLogo();
         this.container.addChild(this.view);
         §52142380523818123423632234§.getBattleScene3D().§use set switch§(this.view);
         this.§5214239711239724123423632234§ = new Sprite();
         this.container.addChild(this.§5214239711239724123423632234§);
         this.§get function§ = new Shape();
         this.container.addChild(this.§get function§);
         this.setSize(§if catch include§.getStorage().data["screenSize"]);
      }
      
      public function decSize() : void
      {
         if(this.screenSize > 1)
         {
            --this.screenSize;
            this.resize();
         }
      }
      
      public function setShowAxisIndicator(param1:Boolean) : void
      {
         if(this.§5214237895237908123423632234§ != param1)
         {
            this.§5214237895237908123423632234§ = param1;
            if(param1)
            {
               this.§include package include§ = new AxisIndicator(100);
               this.container.addChild(this.§include package include§);
               this.e4454655();
            }
            else
            {
               this.container.removeChild(this.§include package include§);
               this.§include package include§ = null;
            }
         }
      }
      
      private function setSize(param1:int) : void
      {
         if(param1 == 0)
         {
            this.screenSize = 10;
         }
         else
         {
            this.screenSize = §throw for continue§.§52142393423947123423632234§(param1,1,10);
         }
         this.resize();
      }
      
      public function getX() : int
      {
         return this.container.x;
      }
      
      public function getY() : int
      {
         return this.container.y;
      }
      
      private function e291d6c0() : void
      {
         this.decSize();
         §if catch include§.getStorage().data["screenSize"] = this.getScreenSize();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.container.stage.addEventListener("resize",this.onResize);
         this.container.stage.addEventListener("keyDown",this.onKeyDown);
         this.setFocus();
         this.resize();
      }
      
      public function incSize() : void
      {
         if(this.screenSize < 10)
         {
            ++this.screenSize;
            this.resize();
         }
      }
      
      public function removeFromScreen() : void
      {
         removeDisplayObject(this.container);
      }
      
      public function destroy() : void
      {
         this.removeFromScreen();
         this.view.clear();
         this.view = null;
         removeDisplayObjectChildren(this.§5214239711239724123423632234§);
         this.§5214239711239724123423632234§ = null;
         removeDisplayObjectChildren(this.container);
         this.container.removeEventListener("addedToStage",this.onAddedToStage);
         this.container.removeEventListener("removedFromStage",this.onRemovedFromStage);
         this.container = null;
      }
      
      private function c6f6c6e0() : void
      {
         this.container = new Sprite();
         this.container.addEventListener("addedToStage",this.onAddedToStage);
         this.container.addEventListener("removedFromStage",this.onRemovedFromStage);
      }
      
      public function getWidth() : int
      {
         if(this.container.stage == null)
         {
            return 1;
         }
         return this.container.stage.stageWidth / Display.§521423132512313264123423632234§ * this.screenSize / 10;
      }
      
      public function update() : void
      {
         if(this.§5214237895237908123423632234§)
         {
            this.§include package include§.update(§52142380523818123423632234§.getBattleScene3D().§while set for§());
         }
      }
      
      private function d15bb480() : void
      {
         this.container.x = this.container.stage.stageWidth - this.view.width >> 1;
         this.container.x /= Display.§521423132512313264123423632234§;
         this.container.y = this.container.stage.stageHeight - this.view.height >> 1;
         this.container.y /= Display.§521423132512313264123423632234§;
      }
      
      public function setFocus() : void
      {
         display.stage.focus = this.container;
      }
      
      private function e4454655() : void
      {
         if(this.§5214237895237908123423632234§)
         {
            this.§include package include§.y = this.view.height - this.§include package include§.size - 50;
         }
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(§521423131302313143123423632234§.isInputLocked())
         {
            return;
         }
         var _loc2_:GameActionEnum = §extends package override§.getBindingAction(param1.keyCode,param1.ctrlKey);
         switch(_loc2_)
         {
            case GameActionEnum.BATTLE_VIEW_INCREASE:
               this.e5c41eb8();
               break;
            case GameActionEnum.BATTLE_VIEW_DECREASE:
               this.e291d6c0();
         }
      }
      
      private function c50c7b10() : void
      {
         var _loc3_:Number = this.screenSize / 10;
         var _loc1_:int = this.container.stage.stageWidth;
         var _loc2_:int = this.container.stage.stageHeight;
         this.view.width = int(_loc1_ * _loc3_);
         this.view.height = int(_loc2_ * _loc3_);
      }
      
      private function onResize(param1:Event) : void
      {
         this.resize();
      }
      
      private function drawBackground() : void
      {
         var _loc1_:int = 0.5 * (this.container.stage.stageWidth - this.view.width);
         _loc1_ /= Display.§521423132512313264123423632234§;
         var _loc2_:int = 0.5 * (this.container.stage.stageHeight - this.view.height);
         _loc2_ /= Display.§521423132512313264123423632234§;
         §5214238741238754123423632234§.drawBg(new Rectangle(_loc1_,_loc2_,this.view.width / Display.§521423132512313264123423632234§,this.view.height / Display.§521423132512313264123423632234§));
      }
      
      public function getParentDisplayContainer() : DisplayObjectContainer
      {
         return this.container.parent;
      }
      
      public function addToScreen(param1:DisplayObjectContainer) : void
      {
         param1.addChild(this.container);
      }
      
      public function getDiagonalSquared() : Number
      {
         return this.getHeight() * this.getHeight() + this.getWidth() * this.getWidth();
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         this.container.stage.removeEventListener("resize",this.onResize);
         this.container.stage.removeEventListener("keyDown",this.onKeyDown);
      }
      
      public function getScreenSize() : int
      {
         return this.screenSize;
      }
      
      public function setShowFPSIndicator(param1:Boolean) : void
      {
         var _loc2_:Camera3D = §52142380523818123423632234§.getBattleScene3D().§while set for§();
         if(param1 != this.container.contains(_loc2_.diagram))
         {
            if(param1)
            {
               _loc2_.diagramAlign = "TL";
               _loc2_.diagramVerticalMargin = 66;
               this.container.addChild(_loc2_.diagram);
            }
            else
            {
               this.container.removeChild(_loc2_.diagram);
            }
         }
      }
      
      private function resize() : void
      {
         if(this.container.stage == null)
         {
            return;
         }
         this.c50c7b10();
         this.d15bb480();
         this.f14b83a8();
         this.drawBackground();
         this.e4454655();
         §52142380523818123423632234§.getBattleScene3D().§while set for§().§5214232834232847123423632234§();
      }
      
      public function getHeight() : int
      {
         if(this.container.stage == null)
         {
            return 1;
         }
         return this.container.stage.stageHeight / Display.§521423132512313264123423632234§ * this.screenSize / 10;
      }
      
      private function e5c41eb8() : void
      {
         this.incSize();
         §if catch include§.getStorage().data["screenSize"] = this.getScreenSize();
      }
      
      public function addOverlayObject(param1:DisplayObject) : void
      {
         this.§5214239711239724123423632234§.addChild(param1);
      }
      
      private function f14b83a8() : void
      {
         this.§get function§.graphics.clear();
         if(this.screenSize < 10)
         {
            §5214235633235646123423632234§.draw(this.§get function§.graphics,this.view.width / Display.§521423132512313264123423632234§,this.view.height / Display.§521423132512313264123423632234§);
         }
      }
   }
}

