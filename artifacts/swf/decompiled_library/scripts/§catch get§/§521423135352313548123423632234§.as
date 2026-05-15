package §catch get§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import alternativa.osgi.service.display.Display;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   
   public class §521423135352313548123423632234§ extends MovieClip
   {
      
      public var icon:MovieClip;
      
      public var b:MovieClip;
      
      protected var §521423104052310418123423632234§:MovieClip;
      
      protected var §521423139392313952123423632234§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      private var §5214234806234819123423632234§:Boolean = false;
      
      public var type:int = 0;
      
      private var §521423139112313924123423632234§:Boolean = true;
      
      private var §521423135702313583123423632234§:String;
      
      private var §switch package default§:Boolean;
      
      public function §521423135352313548123423632234§()
      {
         super();
         this.§5214239889239902123423632234§();
         this.enable = true;
         tabEnabled = false;
      }
      
      protected function onMouseEvent(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case "mouseOver":
               this.§521423139392313952123423632234§.y = 4;
               gotoAndStop(3);
               this.§521423104052310418123423632234§.gotoAndStop(3 + (this.§5214234806234819123423632234§ ? 4 : 0));
               break;
            case "mouseOut":
               this.§521423139392313952123423632234§.y = 4;
               gotoAndStop(2);
               this.§521423104052310418123423632234§.gotoAndStop(2 + (this.§5214234806234819123423632234§ ? 4 : 0));
               break;
            case "mouseDown":
               this.§521423139392313952123423632234§.y = 5;
               gotoAndStop(4);
               this.§521423104052310418123423632234§.gotoAndStop(4 + (this.§5214234806234819123423632234§ ? 4 : 0));
               break;
            case "mouseUp":
               this.§521423139392313952123423632234§.y = 4;
               gotoAndStop(2);
               this.§521423104052310418123423632234§.gotoAndStop(2 + (this.§5214234806234819123423632234§ ? 4 : 0));
         }
      }
      
      public function get enable() : Boolean
      {
         return this.§521423139112313924123423632234§;
      }
      
      protected function §5214239889239902123423632234§() : void
      {
         this.§521423104052310418123423632234§ = getChildByName("b") as MovieClip;
         addChild(this.§521423139392313952123423632234§);
      }
      
      public function set short(param1:Boolean) : void
      {
         this.§5214234806234819123423632234§ = param1;
         this.§521423139392313952123423632234§.visible = !this.§5214234806234819123423632234§;
         this.§521423139392313952123423632234§.width = this.§5214234806234819123423632234§ ? 1 : this.§521423104052310418123423632234§.width - this.§521423139392313952123423632234§.x - 3;
         this.§521423139392313952123423632234§.text = this.§5214234806234819123423632234§ ? "" : this.§521423135702313583123423632234§;
         this.enable = this.§521423139112313924123423632234§;
      }
      
      public function set label(param1:String) : void
      {
         this.§521423139392313952123423632234§.autoSize = "none";
         this.§521423139392313952123423632234§.align = "center";
         this.§521423139392313952123423632234§.height = 19;
         this.§521423139392313952123423632234§.x = this.icon.x + this.icon.width - 3;
         this.§521423139392313952123423632234§.y = 4;
         this.§521423139392313952123423632234§.width = this.§521423104052310418123423632234§.width - this.§521423139392313952123423632234§.x - 3;
         this.§521423139392313952123423632234§.mouseEnabled = false;
         this.§521423139392313952123423632234§.filters = [new DropShadowFilter(1 * Display.§521423132512313264123423632234§,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
         this.§521423139392313952123423632234§.text = param1;
         this.§521423135702313583123423632234§ = param1;
      }
      
      protected function §continue catch each§() : void
      {
         gotoAndStop(1);
         this.§521423104052310418123423632234§.gotoAndStop(1 + (this.§5214234806234819123423632234§ ? 4 : 0));
         this.§521423139392313952123423632234§.y = 4;
         buttonMode = false;
         mouseEnabled = false;
         mouseChildren = false;
         removeEventListener("mouseOver",this.onMouseEvent);
         removeEventListener("mouseOut",this.onMouseEvent);
         removeEventListener("mouseDown",this.onMouseEvent);
         removeEventListener("mouseUp",this.onMouseEvent);
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§switch package default§ = param1;
         if(this.selected)
         {
            buttonMode = true;
            mouseEnabled = true;
            mouseChildren = true;
         }
      }
      
      public function set enable(param1:Boolean) : void
      {
         this.§521423139112313924123423632234§ = param1;
         if(this.§521423139112313924123423632234§)
         {
            this.§catch var native§();
         }
         else
         {
            this.§continue catch each§();
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§switch package default§;
      }
      
      protected function §catch var native§() : void
      {
         gotoAndStop(2);
         this.§521423104052310418123423632234§.gotoAndStop(2 + (this.§5214234806234819123423632234§ ? 4 : 0));
         buttonMode = true;
         mouseEnabled = true;
         mouseChildren = true;
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
      }
   }
}

