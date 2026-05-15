package projects.tanks.clients.fp10.libraries.tanksservices.service.blur
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.utils.removeDisplayObject;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.helper.IHelpService;
   
   public class BlurService extends EventDispatcher implements IBlurService
   {
      
      public static var §5214233469233482123423632234§:IHelpService;
      
      private static const §for switch set§:uint = 0;
      
      private static const §521423103102310323123423632234§:Number = 0.5;
      
      private var §521423138392313852123423632234§:Boolean;
      
      private var §5214231840231853123423632234§:Boolean;
      
      private var §5214238121238134123423632234§:Boolean;
      
      private var §5214235804235817123423632234§:Boolean;
      
      private var §5214239711239724123423632234§:Sprite;
      
      private var §if var super§:IDisplay;
      
      private var §521423116392311652123423632234§:Dictionary;
      
      private var §5214231606231619123423632234§:int = 0;
      
      public function BlurService()
      {
         super();
         this.§if var super§ = IDisplay(OSGi.getInstance().getService(IDisplay));
         this.§5214239711239724123423632234§ = new Sprite();
         this.§5214239711239724123423632234§.mouseEnabled = true;
         this.§521423116392311652123423632234§ = new Dictionary();
      }
      
      private static function e49f4b() : void
      {
         §5214233469233482123423632234§.pushState();
         §5214233469233482123423632234§.hideAllHelpers();
         §5214233469233482123423632234§.lock();
      }
      
      private static function d3c54957() : void
      {
         §5214233469233482123423632234§.popState();
         §5214233469233482123423632234§.unlock();
      }
      
      private function onStageResize(param1:Event) : void
      {
         for(var _loc2_ in this.§521423116392311652123423632234§)
         {
            this.e58350b7(this.§521423116392311652123423632234§[_loc2_],DisplayObject(_loc2_));
         }
      }
      
      public function unblurDialogContent() : void
      {
         if(this.§5214238121238134123423632234§)
         {
            this.§5214238121238134123423632234§ = false;
            if(this.§5214235804235817123423632234§)
            {
               return;
            }
            if(this.§521423138392313852123423632234§)
            {
               this.blurGameContent();
               return;
            }
            if(this.§5214231840231853123423632234§)
            {
               this.blurBattleContent();
               return;
            }
            this.a1b32cf3();
         }
      }
      
      private function e93ad5c() : void
      {
         if(this.§5214239711239724123423632234§.parent == null)
         {
            this.§if var super§.stage.addEventListener("resize",this.f5eee4bb);
            this.§5214239711239724123423632234§.addEventListener("click",this.a40d04d);
            this.f5eee4bb();
            e49f4b();
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:DisplayObject = DisplayObject(param1.target);
         this.unblurComponent(_loc2_);
      }
      
      private function a1b32cf3() : void
      {
         if(this.§5214239711239724123423632234§.parent != null)
         {
            this.§5214239711239724123423632234§.removeEventListener("click",this.a40d04d);
            removeDisplayObject(this.§5214239711239724123423632234§);
            this.§if var super§.stage.removeEventListener("resize",this.f5eee4bb);
            d3c54957();
         }
      }
      
      private function e4e64ad1(param1:DisplayObject) : Sprite
      {
         var _loc2_:Sprite = new Sprite();
         param1.addEventListener("removedFromStage",this.onRemovedFromStage);
         this.e58350b7(_loc2_,param1);
         return _loc2_;
      }
      
      public function blurBattleContent() : void
      {
         if(!this.§5214231840231853123423632234§)
         {
            this.§5214231840231853123423632234§ = true;
            this.e93ad5c();
         }
         this.§if var super§.systemLayer.addChildAt(this.§5214239711239724123423632234§,0);
      }
      
      public function blurGameContent() : void
      {
         if(!this.§521423138392313852123423632234§)
         {
            this.§521423138392313852123423632234§ = true;
            this.e93ad5c();
         }
         this.§if var super§.dialogsLayer.addChildAt(this.§5214239711239724123423632234§,0);
      }
      
      public function unblurAllComponents() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§521423116392311652123423632234§)
         {
            this.unblurComponent(DisplayObject(_loc1_));
         }
      }
      
      public function unblurAllContent() : void
      {
         if(this.§5214235804235817123423632234§)
         {
            this.§5214235804235817123423632234§ = false;
            if(this.§5214238121238134123423632234§)
            {
               this.blurDialogContent();
               return;
            }
            if(this.§521423138392313852123423632234§)
            {
               this.blurGameContent();
               return;
            }
            if(this.§5214231840231853123423632234§)
            {
               this.blurBattleContent();
               return;
            }
            this.a1b32cf3();
         }
      }
      
      public function unblurComponent(param1:DisplayObject) : void
      {
         if(param1 in this.§521423116392311652123423632234§)
         {
            param1.removeEventListener("removedFromStage",this.onRemovedFromStage);
            removeDisplayObject(this.§521423116392311652123423632234§[param1]);
            delete this.§521423116392311652123423632234§[param1];
            --this.§5214231606231619123423632234§;
            if(this.§5214231606231619123423632234§ == 0)
            {
               this.§if var super§.stage.removeEventListener("resize",this.onStageResize);
            }
         }
      }
      
      private function a40d04d(param1:MouseEvent) : void
      {
         if(this.a3dc1c7b())
         {
            dispatchEvent(new BlurServiceEvent("BlurServiceEvent.CLICK_OVERLAY_BATTLE_CONTENT"));
         }
      }
      
      private function a3dc1c7b() : Boolean
      {
         return this.§5214231840231853123423632234§ && !this.§521423138392313852123423632234§ && !this.§5214238121238134123423632234§ && !this.§5214235804235817123423632234§;
      }
      
      private function f5eee4bb(param1:Event = null) : void
      {
         var _loc2_:int = this.§if var super§.stage.stageWidth / Display.§521423132512313264123423632234§;
         var _loc3_:int = this.§if var super§.stage.stageHeight / Display.§521423132512313264123423632234§;
         this.§5214239711239724123423632234§.graphics.clear();
         this.§5214239711239724123423632234§.graphics.beginFill(0,0.5);
         this.§5214239711239724123423632234§.graphics.drawRect(0,0,_loc2_,_loc3_);
      }
      
      public function blurDialogContent() : void
      {
         if(!this.§5214238121238134123423632234§)
         {
            this.§5214238121238134123423632234§ = true;
            this.e93ad5c();
         }
         this.§if var super§.noticesLayer.addChildAt(this.§5214239711239724123423632234§,0);
      }
      
      public function unblurBattleContent() : void
      {
         if(this.§5214231840231853123423632234§)
         {
            this.§5214231840231853123423632234§ = false;
            if(this.§5214235804235817123423632234§)
            {
               return;
            }
            if(this.§5214238121238134123423632234§)
            {
               this.blurDialogContent();
               return;
            }
            if(this.§521423138392313852123423632234§)
            {
               this.blurGameContent();
               return;
            }
            this.a1b32cf3();
         }
      }
      
      public function blurAllContent() : void
      {
         if(!this.§5214235804235817123423632234§)
         {
            this.§5214235804235817123423632234§ = true;
            this.e93ad5c();
         }
         this.§if var super§.stage.addChild(this.§5214239711239724123423632234§);
      }
      
      public function unblurGameContent() : void
      {
         if(this.§521423138392313852123423632234§)
         {
            this.§521423138392313852123423632234§ = false;
            if(this.§5214235804235817123423632234§)
            {
               return;
            }
            if(this.§5214238121238134123423632234§)
            {
               this.blurDialogContent();
               return;
            }
            if(this.§5214231840231853123423632234§)
            {
               this.blurBattleContent();
               return;
            }
            this.a1b32cf3();
         }
      }
      
      public function blurComponent(param1:DisplayObject) : void
      {
         if(param1 in this.§521423116392311652123423632234§)
         {
            return;
         }
         var _loc2_:Sprite = this.e4e64ad1(param1);
         this.§521423116392311652123423632234§[param1] = _loc2_;
         ++this.§5214231606231619123423632234§;
         if(this.§5214231606231619123423632234§ == 1)
         {
            this.§if var super§.stage.addEventListener("resize",this.onStageResize);
         }
         this.§if var super§.dialogsLayer.addChildAt(_loc2_,0);
      }
      
      private function e58350b7(param1:Sprite, param2:DisplayObject) : void
      {
         var _loc3_:Point = param2.localToGlobal(new Point(0,0));
         param1.graphics.clear();
         param1.graphics.beginFill(0,0);
         param1.graphics.drawRect(_loc3_.x,_loc3_.y,param2.width,param2.height);
         param1.graphics.endFill();
      }
   }
}

