package §package for final§
{
   import alternativa.osgi.service.display.Display;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214236714236727123423632234§ extends Sprite
   {
      
      private var §in catch include§:GlowFilter = new GlowFilter(5898034,0.9,4 * Display.§521423132512313264123423632234§,4 * Display.§521423132512313264123423632234§,0);
      
      private var §continue const if§:Array = [this.§in catch include§];
      
      protected var §521423139392313952123423632234§:§5214231141231154123423632234§;
      
      private var §5214236029236042123423632234§:Boolean;
      
      public function §5214236714236727123423632234§()
      {
         super();
         this.init();
      }
      
      protected function init() : void
      {
         this.tabChildren = false;
         this.tabEnabled = false;
         this.§521423139392313952123423632234§ = new §5214231141231154123423632234§();
         this.§521423139392313952123423632234§.mouseEnabled = false;
         this.§521423139392313952123423632234§.autoSize = "left";
         addChild(this.§521423139392313952123423632234§);
         buttonMode = useHandCursor = true;
         this.locked = false;
      }
      
      private function removeEvents() : void
      {
         if(hasEventListener("mouseOver"))
         {
            removeEventListener("mouseOver",this.§5214236640236653123423632234§);
         }
         if(hasEventListener("mouseOut"))
         {
            removeEventListener("mouseOut",this.§5214231199231212123423632234§);
         }
      }
      
      private function §5214236640236653123423632234§(param1:MouseEvent) : void
      {
         this.§in catch include§.strength = 1;
         filters = this.§continue const if§;
      }
      
      private function setEvents() : void
      {
         if(!hasEventListener("mouseOver"))
         {
            addEventListener("mouseOver",this.§5214236640236653123423632234§);
         }
         if(!hasEventListener("mouseOut"))
         {
            addEventListener("mouseOut",this.§5214231199231212123423632234§);
         }
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.§5214236029236042123423632234§ = param1;
         if(this.§5214236029236042123423632234§)
         {
            this.removeEvents();
            this.§5214231199231212123423632234§();
         }
         else
         {
            this.setEvents();
         }
         mouseChildren = mouseEnabled = !this.§5214236029236042123423632234§;
         this.§521423139392313952123423632234§.color = this.§5214236029236042123423632234§ ? 11645361 : 1244928;
      }
      
      public function get locked() : Boolean
      {
         return this.§5214236029236042123423632234§;
      }
      
      private function §5214231199231212123423632234§(param1:MouseEvent = null) : void
      {
         this.§in catch include§.strength = 0;
         filters = this.§continue const if§;
      }
      
      public function destroy() : void
      {
         this.removeEvents();
         if(this.§521423139392313952123423632234§ != null && this.contains(this.§521423139392313952123423632234§))
         {
            removeChild(this.§521423139392313952123423632234§);
         }
         this.§521423139392313952123423632234§ = null;
      }
      
      public function set text(param1:String) : void
      {
         this.§521423139392313952123423632234§.text = param1;
      }
   }
}

