package alternativa.tanks.bg
{
   import §5214236766236779123423632234§.§static package try§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class BackgroundService implements IBackgroundService
   {
      
      private static const §521423136372313650123423632234§:Class = fca67c_jpg$d17f8809328bbf00aa7c9a37e336565a1470336339;
      
      private static const §dynamic for dynamic§:BitmapData = new §521423136372313650123423632234§().bitmapData;
      
      private var osgi:OSGi;
      
      private var stage:Stage;
      
      private var §while catch break§:DisplayObjectContainer;
      
      private var bg:Shape;
      
      private var §5214236838236851123423632234§:Rectangle;
      
      public function BackgroundService()
      {
         super();
         this.osgi = §static package try§.§521423123322312345123423632234§;
         var _loc1_:IDisplay = this.osgi.getService(IDisplay) as IDisplay;
         this.stage = _loc1_.stage;
         this.§while catch break§ = _loc1_.backgroundLayer;
         this.bg = new Shape();
      }
      
      public function drawBg(param1:Rectangle = null) : void
      {
         this.§5214236838236851123423632234§ = param1;
         this.d61bb2ae();
      }
      
      public function showBg() : void
      {
         if(!this.§while catch break§.contains(this.bg))
         {
            this.d61bb2ae();
            this.§while catch break§.addChild(this.bg);
            this.stage.addEventListener("resize",this.d61bb2ae);
         }
      }
      
      private function d61bb2ae(param1:Event = null) : void
      {
         this.bg.graphics.clear();
         this.bg.graphics.beginBitmapFill(§dynamic for dynamic§);
         this.bg.graphics.drawRect(0,0,this.stage.stageWidth / Display.§521423132512313264123423632234§,this.stage.stageHeight / Display.§521423132512313264123423632234§);
         if(this.§5214236838236851123423632234§ != null)
         {
            this.bg.graphics.drawRect(this.§5214236838236851123423632234§.x,this.§5214236838236851123423632234§.y,this.§5214236838236851123423632234§.width,this.§5214236838236851123423632234§.height);
         }
      }
      
      public function hideBg() : void
      {
         if(this.§while catch break§.contains(this.bg))
         {
            this.stage.removeEventListener("resize",this.d61bb2ae);
            this.§while catch break§.removeChild(this.bg);
         }
      }
   }
}

