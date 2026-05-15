package alternativa.tanks.models.battle.battlefield
{
   import alternativa.tanks.battle.PerformanceMonitor;
   import alternativa.tanks.battle.§dynamic switch break§;
   import filters.Filters;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class PerformanceDisplay implements §dynamic switch break§, §521423117662311779123423632234§
   {
      
      private var §5214238987239000123423632234§:PerformanceMonitor;
      
      private var §for var switch§:TextField;
      
      private var container:DisplayObjectContainer;
      
      public function PerformanceDisplay(param1:PerformanceMonitor, param2:DisplayObjectContainer)
      {
         super();
         this.§5214238987239000123423632234§ = param1;
         this.§for var switch§ = new TextField();
         this.§for var switch§.defaultTextFormat = new TextFormat("Tahoma",16,16777215);
         this.§for var switch§.filters = Filters.§include set each§;
         this.§for var switch§.autoSize = "left";
         param2.addChild(this.§for var switch§);
         this.container = param2;
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         this.§for var switch§.text = this.§5214238987239000123423632234§.getAverageFrameTimeInMs().toFixed(3) + "\n" + this.§5214238987239000123423632234§.getAverageFps();
      }
      
      public function close() : void
      {
         this.container.removeChild(this.§for var switch§);
      }
   }
}

