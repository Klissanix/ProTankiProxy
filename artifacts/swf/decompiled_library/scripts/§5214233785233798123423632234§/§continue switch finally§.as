package §5214233785233798123423632234§
{
   import alternativa.osgi.service.display.Display;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import §set package throw§.ComboButtonState;
   import §set package throw§.ComboDownButton;
   import §set package throw§.ComboOffButton;
   import §set package throw§.ComboOverButton;
   import §set package throw§.ComboUpButton;
   
   public class §continue switch finally§ extends Sprite
   {
      
      public var §each throw§:ComboButtonState = new ComboUpButton();
      
      public var §native const class§:ComboButtonState = new ComboOverButton();
      
      public var §switch set do§:ComboButtonState = new ComboDownButton();
      
      public var §521423110842311097123423632234§:ComboButtonState = new ComboOffButton();
      
      public var §521423139392313952123423632234§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      public var §break set null§:uint = 16777215;
      
      private var §521423139112313924123423632234§:Boolean = true;
      
      private var §5214237851237864123423632234§:int;
      
      public function §continue switch finally§()
      {
         super();
         this.§5214239889239902123423632234§();
         this.enable = true;
         tabEnabled = false;
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
      
      public function set label(param1:String) : void
      {
         this.§521423139392313952123423632234§.text = param1;
      }
      
      private function §catch var native§() : void
      {
         this.setState(1);
         buttonMode = true;
         mouseEnabled = true;
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
      }
      
      private function onMouseEvent(param1:MouseEvent) : void
      {
         switch(param1.type)
         {
            case "mouseOver":
               this.setState(2);
               this.§521423139392313952123423632234§.y = 6;
               break;
            case "mouseOut":
               this.setState(1);
               this.§521423139392313952123423632234§.y = 6;
               break;
            case "mouseDown":
               this.setState(3);
               this.§521423139392313952123423632234§.y = 7;
               break;
            case "mouseUp":
               this.setState(1);
               this.§521423139392313952123423632234§.y = 6;
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§switch set do§.width = this.§521423110842311097123423632234§.width = this.§native const class§.width = this.§each throw§.width = this.§5214237851237864123423632234§;
         this.§521423139392313952123423632234§.width = this.§5214237851237864123423632234§ - 37;
      }
      
      public function get label() : String
      {
         return this.§521423139392313952123423632234§.text;
      }
      
      private function §continue catch each§() : void
      {
         this.setState(0);
         buttonMode = false;
         mouseEnabled = false;
         removeEventListener("mouseOver",this.onMouseEvent);
         removeEventListener("mouseOut",this.onMouseEvent);
         removeEventListener("mouseDown",this.onMouseEvent);
         removeEventListener("mouseUp",this.onMouseEvent);
      }
      
      public function §5214239889239902123423632234§() : void
      {
         addChild(this.§521423110842311097123423632234§);
         addChild(this.§switch set do§);
         addChild(this.§native const class§);
         addChild(this.§each throw§);
         addChild(this.§521423139392313952123423632234§);
         this.§521423139392313952123423632234§.color = this.§break set null§;
         this.§521423139392313952123423632234§.align = "left";
         this.§521423139392313952123423632234§.autoSize = "none";
         this.§521423139392313952123423632234§.selectable = false;
         this.§521423139392313952123423632234§.x = 5;
         this.§521423139392313952123423632234§.y = 6;
         this.§521423139392313952123423632234§.width = 92;
         this.§521423139392313952123423632234§.height = 22;
         this.§521423139392313952123423632234§.mouseEnabled = false;
         this.§521423139392313952123423632234§.filters = [new DropShadowFilter(1 * Display.§521423132512313264123423632234§,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
      }
      
      private function setState(param1:int = 0) : void
      {
         switch(param1)
         {
            case 0:
               this.§521423110842311097123423632234§.visible = true;
               this.§each throw§.alpha = 0;
               this.§native const class§.visible = false;
               this.§switch set do§.visible = false;
               break;
            case 1:
               this.§521423110842311097123423632234§.visible = false;
               this.§each throw§.alpha = 1;
               this.§native const class§.visible = false;
               this.§switch set do§.visible = false;
               break;
            case 2:
               this.§521423110842311097123423632234§.visible = false;
               this.§each throw§.alpha = 0;
               this.§native const class§.visible = true;
               this.§switch set do§.visible = false;
               break;
            case 3:
               this.§521423110842311097123423632234§.visible = false;
               this.§each throw§.alpha = 0;
               this.§native const class§.visible = false;
               this.§switch set do§.visible = true;
         }
      }
   }
}

