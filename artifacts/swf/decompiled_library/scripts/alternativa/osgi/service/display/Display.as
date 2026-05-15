package alternativa.osgi.service.display
{
   import alternativa.osgi.OSGi;
   import filters.Filters;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class Display implements IDisplay
   {
      
      public static var §521423132512313264123423632234§:int = 1;
      
      private var §5214236633236646123423632234§:Stage;
      
      private var §5214237044237057123423632234§:DisplayObjectContainer;
      
      private var §521423123962312409123423632234§:DisplayObjectContainer;
      
      private var §finally const default§:DisplayObjectContainer;
      
      private var §5214239564239577123423632234§:DisplayObjectContainer;
      
      private var §import for with§:DisplayObjectContainer;
      
      private var §5214232468232481123423632234§:DisplayObjectContainer;
      
      private var §with use do§:DisplayObjectContainer;
      
      private var §52142340323416123423632234§:DisplayObjectContainer;
      
      public function Display(param1:DisplayObjectContainer)
      {
         var rootContainer:DisplayObjectContainer = param1;
         super();
         this.§5214236633236646123423632234§ = rootContainer.stage;
         this.§5214237044237057123423632234§ = rootContainer;
         this.§521423123962312409123423632234§ = this.dbc9e66();
         this.§finally const default§ = this.dbc9e66();
         this.§5214239564239577123423632234§ = this.dbc9e66();
         this.§import for with§ = this.dbc9e66();
         this.§5214232468232481123423632234§ = this.dbc9e66();
         this.§with use do§ = this.dbc9e66();
         this.§52142340323416123423632234§ = this.dbc9e66();
         §5214236633236646123423632234§.addEventListener("vSyncStateChangeAvailability",function(param1:Object):void
         {
            OSGi.§try set return§.log("vs","event fired with " + String(param1.available));
         });
      }
      
      public function get contentUILayer() : DisplayObjectContainer
      {
         return this.§5214239564239577123423632234§;
      }
      
      public function get contentLayer() : DisplayObjectContainer
      {
         return this.§finally const default§;
      }
      
      public function updateUiScale(param1:int) : void
      {
         §521423132512313264123423632234§ = param1;
         §5214237044237057123423632234§.scaleX = §5214237044237057123423632234§.scaleY = param1;
         Filters.§5214238170238183123423632234§.blurX = Filters.§5214238170238183123423632234§.blurY = 4 * param1;
         Filters.§switch catch const§.blurX = Filters.§switch catch const§.blurY = 4 * param1;
         §5214236633236646123423632234§.dispatchEvent(new Event("resize"));
      }
      
      private function dbc9e66() : Sprite
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.mouseEnabled = false;
         _loc1_.tabEnabled = false;
         this.§5214237044237057123423632234§.addChild(_loc1_);
         return _loc1_;
      }
      
      public function get mainContainer() : DisplayObjectContainer
      {
         return this.§5214237044237057123423632234§;
      }
      
      public function get systemLayer() : DisplayObjectContainer
      {
         return this.§import for with§;
      }
      
      public function get dialogsLayer() : DisplayObjectContainer
      {
         return this.§with use do§;
      }
      
      public function get systemUILayer() : DisplayObjectContainer
      {
         return this.§5214232468232481123423632234§;
      }
      
      public function get noticesLayer() : DisplayObjectContainer
      {
         return this.§52142340323416123423632234§;
      }
      
      public function get backgroundLayer() : DisplayObjectContainer
      {
         return this.§521423123962312409123423632234§;
      }
      
      public function get stage() : Stage
      {
         return this.§5214236633236646123423632234§;
      }
   }
}

