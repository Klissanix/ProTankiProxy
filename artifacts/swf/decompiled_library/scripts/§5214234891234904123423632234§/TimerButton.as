package §5214234891234904123423632234§
{
   import §5214236800236813123423632234§.§5214231879231892123423632234§;
   import §5214236800236813123423632234§.§include switch var§;
   import alternativa.osgi.service.display.Display;
   import §false switch if§.§do switch include§;
   import flash.filters.DropShadowFilter;
   import §in set var§.§521423101352310148123423632234§;
   
   public class TimerButton extends §do switch include§ implements §5214231879231892123423632234§
   {
      
      private var §use switch get§:§521423101352310148123423632234§;
      
      private var timer:§include switch var§;
      
      public function TimerButton()
      {
         super();
         this.init();
      }
      
      private function d3213acc() : void
      {
         this.§use switch get§.width = int(width) - 4;
         this.§use switch get§.visible = true;
         this.§use switch get§.§native var include§(this.timer);
         this.resize();
      }
      
      private function resize() : void
      {
         if(this.§use switch get§.visible)
         {
            §521423139392313952123423632234§.y = 8;
         }
         else
         {
            §521423139392313952123423632234§.y = 15;
         }
      }
      
      public function hideTime() : void
      {
         if(this.timer != null)
         {
            this.timer.§return use var§(§5214231879231892123423632234§,this);
            this.timer = null;
         }
         this.§use switch get§.visible = false;
         this.§use switch get§.§521423129602312973123423632234§();
         this.resize();
      }
      
      public function onCompleteAfter(param1:§include switch var§, param2:Boolean) : void
      {
         this.hideTime();
         dispatchEvent(new TimerButtonEvent("TimerButtonEventTimeOnCompleteTimerButton"));
      }
      
      private function init() : void
      {
         this.§use switch get§ = new §521423101352310148123423632234§();
         this.§use switch get§.align = "center";
         this.§use switch get§.autoSize = "none";
         this.§use switch get§.autoSize = "none";
         this.§use switch get§.selectable = false;
         this.§use switch get§.x = 2;
         this.§use switch get§.y = 25;
         this.§use switch get§.height = 24;
         this.§use switch get§.§521423102842310297123423632234§ = 14;
         this.§use switch get§.mouseEnabled = false;
         this.§use switch get§.filters = [new DropShadowFilter(1,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
         addChild(this.§use switch get§);
         this.§use switch get§.visible = false;
      }
      
      public function startTimer(param1:§include switch var§) : void
      {
         enabled = false;
         this.timer = param1;
         if(param1.§throw package return§() > 0)
         {
            this.d3213acc();
            param1.§5214232580232593123423632234§(§5214231879231892123423632234§,this);
         }
      }
   }
}

