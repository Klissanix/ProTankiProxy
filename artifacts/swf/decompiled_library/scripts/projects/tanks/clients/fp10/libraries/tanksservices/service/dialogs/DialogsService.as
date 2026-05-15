package projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs
{
   import §521423128372312850123423632234§.§continue§;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.loader.TipsLoadingCompletedEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.DialogWindowsDispatcherServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import §var var with§.DialogWindow;
   
   public class DialogsService implements IDialogsService, §continue§
   {
      
      public static var display:IDisplay;
      
      public static var §with catch override§:IBlurService;
      
      public static var §5214238240238253123423632234§:IDialogWindowsDispatcherService;
      
      public static var §521423101112310124123423632234§:ILoaderWindowService;
      
      private var §return const while§:Vector.<DialogWindow>;
      
      private var §5214239234239247123423632234§:Vector.<DialogWindow>;
      
      public function DialogsService()
      {
         super();
         this.§return const while§ = new Vector.<DialogWindow>();
         this.§5214239234239247123423632234§ = new Vector.<DialogWindow>();
      }
      
      private static function center(param1:DisplayObject) : void
      {
         param1.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ - param1.width >> 1;
         param1.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - param1.height >> 1;
      }
      
      private function b6a4e48e(param1:TipsLoadingCompletedEvent) : void
      {
         if(this.§5214239234239247123423632234§.length > 0)
         {
            this.addDialog(this.§5214239234239247123423632234§.pop());
            §521423101112310124123423632234§.removeEventListener("tipsLoadingCompleted",this.b6a4e48e);
         }
      }
      
      private function get dialogsLayer() : DisplayObjectContainer
      {
         return display.dialogsLayer;
      }
      
      private function d6f9b9c1(param1:DialogWindow, param2:Boolean) : void
      {
         if(param2)
         {
            §with catch override§.blurGameContent();
         }
         center(param1);
         §5214238240238253123423632234§.addEventListener("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE",this.b66fa208);
         §5214238240238253123423632234§.open();
         this.dialogsLayer.addChild(param1);
         param1.setEventListeners();
      }
      
      public function enqueueDialog(param1:DialogWindow) : void
      {
         if(§521423101112310124123423632234§.isInProgress())
         {
            this.§5214239234239247123423632234§.unshift(param1);
            §521423101112310124123423632234§.addEventListener("tipsLoadingCompleted",this.b6a4e48e);
            return;
         }
         if(this.§return const while§.length == 0)
         {
            this.addDialog(param1);
         }
         else
         {
            this.§5214239234239247123423632234§.unshift(param1);
         }
      }
      
      public function centerDialog(param1:DialogWindow) : void
      {
         center(param1);
      }
      
      public function onConnectionClosed(param1:ConnectionCloseStatus) : void
      {
         if(this.§return const while§.length > 0)
         {
            this.f328ed4a(this.§return const while§[0],true);
            display.stage.removeEventListener("resize",this.onResize);
         }
         this.§return const while§.length = 0;
         this.§5214239234239247123423632234§.length = 0;
      }
      
      private function f328ed4a(param1:DialogWindow, param2:Boolean) : void
      {
         if(this.dialogsLayer.contains(param1))
         {
            param1.removeEventListeners();
            this.dialogsLayer.removeChild(param1);
            §5214238240238253123423632234§.removeEventListener("DialogWindowsDispatcherServiceEvent.FORCIBLY_CLOSE",this.b66fa208);
            §5214238240238253123423632234§.close();
         }
         if(param2)
         {
            §with catch override§.unblurGameContent();
         }
      }
      
      private function b66fa208(param1:DialogWindowsDispatcherServiceEvent) : void
      {
         for each(var _loc2_ in this.§return const while§.concat())
         {
            _loc2_.forciblyClose();
         }
      }
      
      public function addDialog(param1:DialogWindow) : void
      {
         if(this.§return const while§.indexOf(param1) > -1)
         {
            return;
         }
         this.§return const while§.unshift(param1);
         if(this.§return const while§.length > 1)
         {
            this.f328ed4a(this.§return const while§[1],false);
         }
         this.d6f9b9c1(param1,this.§return const while§.length == 1);
         if(this.§return const while§.length == 1)
         {
            display.stage.addEventListener("resize",this.onResize,false,-1);
         }
      }
      
      private function onResize(param1:Event) : void
      {
         if(this.§return const while§.length > 0)
         {
            center(this.§return const while§[0]);
         }
      }
      
      public function removeDialog(param1:DialogWindow) : void
      {
         var _loc2_:int = this.§return const while§.indexOf(param1);
         if(_loc2_ < 0)
         {
            return;
         }
         this.§return const while§.removeAt(this.§return const while§.indexOf(param1));
         if(this.§return const while§.length == 0 && this.§5214239234239247123423632234§.length > 0)
         {
            this.§return const while§.push(this.§5214239234239247123423632234§.pop());
         }
         this.f328ed4a(param1,this.§return const while§.length == 0);
         if(this.§return const while§.length > 0)
         {
            this.d6f9b9c1(this.§return const while§[0],false);
         }
         else
         {
            display.stage.removeEventListener("resize",this.onResize);
         }
      }
   }
}

