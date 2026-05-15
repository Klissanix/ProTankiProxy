package projects.tanks.clients.flash.commons.services.notification
{
   import §521423102342310247123423632234§.Linear;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214236145236158123423632234§.Signal;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.utils.removeDisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import projects.tanks.clients.flash.commons.services.notification.sound.INotificationSoundService;
   import utils.tweener.TweenLite;
   
   public class Notification extends Sprite implements §521423102072310220123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §null class§:INotificationSoundService;
      
      protected static const §break override§:int = 11;
      
      private static const §extends for with§:int = 247;
      
      private static const §super catch if§:int = 200;
      
      private static const §5214235819235832123423632234§:int = 100;
      
      private static const §521423133472313360123423632234§:int = 34;
      
      private static const §use catch final§:int = 10;
      
      private static const §5214237429237442123423632234§:Number = 0.3;
      
      private static const §5214235228235241123423632234§:Number = 0.3;
      
      protected var §521423101102310123123423632234§:§native for dynamic§;
      
      protected var §5214232652232665123423632234§:§include return§;
      
      protected var _width:int;
      
      protected var _height:int;
      
      protected var §5214234887234900123423632234§:int;
      
      private var §5214232860232873123423632234§:Signal;
      
      private var §5214239869239882123423632234§:Boolean;
      
      private var §5214239555239568123423632234§:uint;
      
      private var §5214234339234352123423632234§:String;
      
      private var §get set while§:String;
      
      private var §521423115302311543123423632234§:Boolean;
      
      public function Notification(param1:String = null, param2:String = "", param3:Boolean = true)
      {
         super();
         this.§5214234339234352123423632234§ = param1;
         this.§get set while§ = param2;
         this.§521423115302311543123423632234§ = param3;
         this.init();
      }
      
      public function destroy() : void
      {
         this.removeEvents();
         clearTimeout(this.§5214239555239568123423632234§);
         removeDisplayObject(this);
      }
      
      private function onRollOut(param1:MouseEvent) : void
      {
         this.e6827d5a();
      }
      
      public function show(param1:Signal) : void
      {
         this.§5214232860232873123423632234§ = param1;
         this.resize();
         this.§5214239869239882123423632234§ = true;
         display.noticesLayer.addChild(this);
         var _loc2_:int = display.stage.stageWidth / Display.§521423132512313264123423632234§ - this._width;
         TweenLite.to(this,0.3,{
            "x":display.stage.stageWidth / Display.§521423132512313264123423632234§ - this._width,
            "ease":Linear.easeNone,
            "onComplete":this.c98784a
         });
         §null class§.playNotificationSound();
      }
      
      private function onResize(param1:Event) : void
      {
         this.resize();
      }
      
      protected function resize() : void
      {
         this.c65d2f95();
         if(this.§5214239869239882123423632234§)
         {
            this.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ - this._width;
         }
         else
         {
            this.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ + 100;
         }
         this.y = 34;
      }
      
      protected function init() : void
      {
         this._width = 247;
         this._height = 200;
         this.§5214234887234900123423632234§ = this._height - 11 * 2;
         this.d2fc2da2();
         addEventListener("addedToStage",this.onAddedToStage);
      }
      
      private function d50884f7(param1:MouseEvent) : void
      {
         this.closeNotification();
      }
      
      private function c98784a() : void
      {
         this.enable = true;
         this.setEvents();
         this.e6827d5a();
      }
      
      protected function closeNotification() : void
      {
         this.hide();
      }
      
      private function onRollOver(param1:MouseEvent) : void
      {
         clearTimeout(this.§5214239555239568123423632234§);
      }
      
      private function c65d2f95() : void
      {
         this.§521423101102310123123423632234§.width = this._width;
         this.§521423101102310123123423632234§.height = this._height;
         this.§5214232652232665123423632234§.width = this.§521423101102310123123423632234§.width - 11 * 2;
         this.§5214232652232665123423632234§.height = this.§5214234887234900123423632234§;
      }
      
      protected function setEvents() : void
      {
         addEventListener("removedFromStage",this.e3e7c912);
         addEventListener("rollOver",this.onRollOver);
         addEventListener("rollOut",this.onRollOut);
         this.§521423101102310123123423632234§.addEventListener("click",this.d50884f7);
      }
      
      protected function removeEvents() : void
      {
         removeEventListener("rollOver",this.onRollOver);
         removeEventListener("rollOut",this.onRollOut);
         this.§521423101102310123123423632234§.removeEventListener("click",this.d50884f7);
      }
      
      private function d37e59c1() : void
      {
         display.noticesLayer.removeChild(this);
         this.§5214232860232873123423632234§.§do for get§();
         this.§5214232860232873123423632234§ = null;
      }
      
      private function d2fc2da2() : void
      {
         this.§521423101102310123123423632234§ = new §native for dynamic§();
         addChild(this.§521423101102310123123423632234§);
         this.§5214232652232665123423632234§ = new §include return§(247,200,4278985229);
         addChild(this.§5214232652232665123423632234§);
         this.§5214232652232665123423632234§.mouseChildren = false;
         this.§5214232652232665123423632234§.mouseEnabled = false;
         this.§5214232652232665123423632234§.x = this.§5214232652232665123423632234§.y = 11;
         this.§5214232652232665123423632234§.§5214238301238314123423632234§ = true;
      }
      
      private function e6827d5a() : void
      {
         if(this.§521423115302311543123423632234§)
         {
            clearTimeout(this.§5214239555239568123423632234§);
            this.§5214239555239568123423632234§ = setTimeout(this.closeNotification,10 * 1000);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener("addedToStage",this.onAddedToStage);
         display.stage.addEventListener("resize",this.onResize);
         this.setEvents();
      }
      
      public function hide() : void
      {
         this.§5214239869239882123423632234§ = false;
         this.enable = false;
         this.removeEvents();
         clearTimeout(this.§5214239555239568123423632234§);
         TweenLite.to(this,0.3,{
            "x":display.stage.stageWidth / Display.§521423132512313264123423632234§ + 100,
            "ease":Linear.easeNone,
            "onComplete":this.d37e59c1
         });
      }
      
      public function set autoClosable(param1:Boolean) : void
      {
         this.§521423115302311543123423632234§ = param1;
      }
      
      private function e3e7c912(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.e3e7c912);
         display.stage.removeEventListener("resize",this.onResize);
      }
      
      public function set enable(param1:Boolean) : void
      {
         mouseChildren = param1;
         mouseEnabled = param1;
      }
      
      public function get message() : String
      {
         return this.§get set while§;
      }
      
      public function get userId() : String
      {
         return this.§5214234339234352123423632234§;
      }
   }
}

