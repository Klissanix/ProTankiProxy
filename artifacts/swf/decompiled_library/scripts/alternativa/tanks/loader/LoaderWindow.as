package alternativa.tanks.loader
{
   import §5214236766236779123423632234§.§static package try§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import §finally catch with§.§521423119702311983123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class LoaderWindow extends Sprite implements ILoaderWindowService
   {
      
      private static const §implements set while§:int = 1000;
      
      private static const §default use null§:int = 10000;
      
      private static const §case const switch§:int = 9000;
      
      private static const §521423139802313993123423632234§:Class = §S2f8654_jpg$bc321a28958fd734f792c605b6210031-1540014953§;
      
      private static const §521423123712312384123423632234§:Class = §D5bf4ha_jpg$33f399e77e4940e4028af4162c6de904-796770429§;
      
      private static const §default const if§:Class = LoaderClipLoaderAsset;
      
      private var layer:DisplayObjectContainer;
      
      private var §throw set static§:Bitmap;
      
      private var §do for continue§:TipBlock;
      
      private const §var package else§:Sprite = new §default const if§();
      
      private var §switch switch do§:Timer;
      
      private var §5214235396235409123423632234§:Timer;
      
      private var §5214232168232181123423632234§:Timer;
      
      private var lock:Boolean = false;
      
      private var §521423111662311179123423632234§:Array = [];
      
      public function LoaderWindow()
      {
         super();
         this.layer = (§static package try§.§521423123322312345123423632234§.getService(IDisplay) as IDisplay).systemUILayer;
         var _loc1_:BitmapData = this.e4171bb6(§static package try§.§521423123322312345123423632234§.getService(ILocaleService) as ILocaleService);
         this.§throw set static§ = §521423119702311983123423632234§.§5214239513239526123423632234§(_loc1_,new §521423123712312384123423632234§().bitmapData);
         addChild(this.§throw set static§);
         this.§do for continue§ = new TipBlock();
         addChild(this.§do for continue§);
         this.§var package else§.x = 10;
         this.§var package else§.y = 239;
         addChild(this.§var package else§);
         this.§switch switch do§ = new Timer(1000,1);
         this.§5214235396235409123423632234§ = new Timer(10000,1);
         this.§5214232168232181123423632234§ = new Timer(9000,1);
         this.§switch switch do§.addEventListener("timerComplete",this.e5c52152);
         this.§5214235396235409123423632234§.addEventListener("timerComplete",this.c36fc8ad);
         this.§5214232168232181123423632234§.addEventListener("timerComplete",this.d6dc1e34);
      }
      
      public function unlockLoaderWindow() : void
      {
         if(this.lock)
         {
            this.lock = false;
         }
      }
      
      public function showLoaderWindow() : void
      {
         this.e5c52152();
      }
      
      private function e4171bb6(param1:ILocaleService) : BitmapData
      {
         return new §521423139802313993123423632234§().bitmapData;
      }
      
      private function show() : void
      {
         if(!this.layer.contains(this))
         {
            this.layer.addChild(this);
            stage.addEventListener("resize",this.align);
            this.align();
            this.§5214232168232181123423632234§.start();
            this.d6dc1e34(null);
         }
      }
      
      private function hide() : void
      {
         if(this.layer.contains(this))
         {
            stage.removeEventListener("resize",this.align);
            this.layer.removeChild(this);
            this.§5214232168232181123423632234§.stop();
         }
         dispatchEvent(new TipsLoadingCompletedEvent("tipsLoadingCompleted"));
      }
      
      private function align(param1:Event = null) : void
      {
         this.x = stage.stageWidth / Display.§521423132512313264123423632234§ - this.§throw set static§.width >>> 1;
         this.y = stage.stageHeight / Display.§521423132512313264123423632234§ - this.§throw set static§.height >>> 1;
      }
      
      public function hideLoaderWindow() : void
      {
         this.§switch switch do§.stop();
         this.c36fc8ad();
      }
      
      private function e5c52152(param1:TimerEvent = null) : void
      {
         this.§switch switch do§.stop();
         this.show();
      }
      
      public function showTip(param1:DisplayObject) : void
      {
         this.§521423111662311179123423632234§[§521423111662311179123423632234§.length] = param1;
      }
      
      private function d6dc1e34(param1:TimerEvent) : void
      {
         var _loc2_:§5214232604232617123423632234§ = OSGi.getInstance().getService(§5214232604232617123423632234§) as §5214232604232617123423632234§;
         if(this.§521423111662311179123423632234§[0] is DisplayObject)
         {
            this.§do for continue§.showTip(this.§521423111662311179123423632234§.shift());
         }
         if(_loc2_ != null)
         {
            _loc2_.getTip();
         }
         this.§5214232168232181123423632234§.stop();
         this.§5214232168232181123423632234§.reset();
         this.§5214232168232181123423632234§.start();
      }
      
      public function isInProgress() : Boolean
      {
         return this.§5214232168232181123423632234§.running;
      }
      
      private function c36fc8ad(param1:TimerEvent = null) : void
      {
         this.§5214235396235409123423632234§.stop();
         this.hide();
      }
      
      public function lockLoaderWindow() : void
      {
         if(!this.lock)
         {
            this.lock = true;
            this.§switch switch do§.stop();
            this.§5214235396235409123423632234§.stop();
         }
      }
      
      public function anyTipLoaded() : Boolean
      {
         return this.§do for continue§.hasAnyTip();
      }
   }
}

