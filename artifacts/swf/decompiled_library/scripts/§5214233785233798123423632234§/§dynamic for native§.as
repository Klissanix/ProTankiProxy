package §5214233785233798123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.display.Display;
   import §else package do§.button_OFF_CENTER;
   import §else package do§.button_OFF_LEFT;
   import §else package do§.button_OFF_RIGHT;
   import §else package do§.button_blue_DOWN_CENTER;
   import §else package do§.button_blue_DOWN_LEFT;
   import §else package do§.button_blue_DOWN_RIGHT;
   import §else package do§.button_blue_OVER_CENTER;
   import §else package do§.button_blue_OVER_LEFT;
   import §else package do§.button_blue_OVER_RIGHT;
   import §else package do§.button_blue_UP_CENTER;
   import §else package do§.button_blue_UP_LEFT;
   import §else package do§.button_blue_UP_RIGHT;
   import §else package do§.button_def_DOWN_CENTER;
   import §else package do§.button_def_DOWN_LEFT;
   import §else package do§.button_def_DOWN_RIGHT;
   import §else package do§.button_def_OVER_CENTER;
   import §else package do§.button_def_OVER_LEFT;
   import §else package do§.button_def_OVER_RIGHT;
   import §else package do§.button_def_UP_CENTER;
   import §else package do§.button_def_UP_LEFT;
   import §else package do§.button_def_UP_RIGHT;
   import §else package do§.button_red_DOWN_CENTER;
   import §else package do§.button_red_DOWN_LEFT;
   import §else package do§.button_red_DOWN_RIGHT;
   import §else package do§.button_red_OVER_CENTER;
   import §else package do§.button_red_OVER_LEFT;
   import §else package do§.button_red_OVER_RIGHT;
   import §else package do§.button_red_UP_CENTER;
   import §else package do§.button_red_UP_LEFT;
   import §else package do§.button_red_UP_RIGHT;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import §get use set§.TanksFontService;
   
   public class §dynamic for native§ extends DiscreteSprite
   {
      
      public static const §5214233777233790123423632234§:String = "def";
      
      public static const §521423107532310766123423632234§:String = "red";
      
      public static const §implements set implements§:String = "blue";
      
      public var §each throw§:§5214232496232509123423632234§ = new §5214232496232509123423632234§();
      
      public var §native const class§:§5214232496232509123423632234§ = new §5214232496232509123423632234§();
      
      public var §switch set do§:§5214232496232509123423632234§ = new §5214232496232509123423632234§();
      
      public var §521423110842311097123423632234§:§5214232496232509123423632234§ = new §5214232496232509123423632234§();
      
      protected var §521423139392313952123423632234§:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
      
      protected var §include try§:§521423123762312389123423632234§;
      
      public var §break set null§:uint = 16777215;
      
      private var §521423139112313924123423632234§:Boolean = true;
      
      protected var §5214237851237864123423632234§:int;
      
      public function §dynamic for native§()
      {
         super();
         this.§5214239889239902123423632234§();
         this.enable = true;
         tabEnabled = false;
      }
      
      public function get label() : String
      {
         return this.§521423139392313952123423632234§.text;
      }
      
      protected function setState(param1:int = 0) : void
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
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§switch set do§.width = this.§521423110842311097123423632234§.width = this.§native const class§.width = this.§each throw§.width = this.§5214237851237864123423632234§;
         this.§521423139392313952123423632234§.width = this.§5214237851237864123423632234§ - 4;
      }
      
      protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(this.§521423139112313924123423632234§)
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
      }
      
      public function §5214239889239902123423632234§() : void
      {
         addChild(this.§521423110842311097123423632234§);
         addChild(this.§switch set do§);
         addChild(this.§native const class§);
         addChild(this.§each throw§);
         addChild(this.§521423139392313952123423632234§);
         this.§521423139392313952123423632234§.embedFonts = TanksFontService.isEmbedFonts();
         this.§521423139392313952123423632234§.align = "center";
         this.§521423139392313952123423632234§.autoSize = "none";
         this.§521423139392313952123423632234§.selectable = false;
         this.§521423139392313952123423632234§.x = 2;
         this.§521423139392313952123423632234§.y = 6;
         this.§521423139392313952123423632234§.width = 92;
         this.§521423139392313952123423632234§.height = 22;
         this.§521423139392313952123423632234§.mouseEnabled = false;
         this.§521423139392313952123423632234§.filters = [new DropShadowFilter(1 * Display.§521423132512313264123423632234§,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
      }
      
      public function set label(param1:String) : void
      {
         this.§521423139392313952123423632234§.text = param1;
      }
      
      public function set §521423124452312458123423632234§(param1:String) : void
      {
         if(this.§include try§ != null)
         {
            this.§include try§.text = param1;
            return;
         }
         this.§include try§ = new §521423123762312389123423632234§();
         this.§include try§.text = param1;
         addChild(this.§include try§);
         this.§include try§.visible = false;
         this.§include try§.y = -this.§include try§.height;
         addEventListener("mouseOver",this.§5214233257233270123423632234§);
         addEventListener("mouseOut",this.§super set null§);
      }
      
      protected function §continue catch each§() : void
      {
         this.setState(0);
         buttonMode = false;
         mouseEnabled = false;
         mouseChildren = false;
         removeEventListener("mouseOver",this.onMouseEvent);
         removeEventListener("mouseOut",this.onMouseEvent);
         removeEventListener("mouseDown",this.onMouseEvent);
         removeEventListener("mouseUp",this.onMouseEvent);
      }
      
      private function §5214236551236564123423632234§(param1:String) : BitmapData
      {
         var _loc2_:BitmapData = null;
         switch(param1)
         {
            case "button_def_UP_LEFT":
               _loc2_ = new button_def_UP_LEFT(1,1);
               break;
            case "button_def_UP_CENTER":
               _loc2_ = new button_def_UP_CENTER(1,1);
               break;
            case "button_def_UP_RIGHT":
               _loc2_ = new button_def_UP_RIGHT(1,1);
               break;
            case "button_def_OVER_LEFT":
               _loc2_ = new button_def_OVER_LEFT(1,1);
               break;
            case "button_def_OVER_CENTER":
               _loc2_ = new button_def_OVER_CENTER(1,1);
               break;
            case "button_def_OVER_RIGHT":
               _loc2_ = new button_def_OVER_RIGHT(1,1);
               break;
            case "button_def_DOWN_LEFT":
               _loc2_ = new button_def_DOWN_LEFT(1,1);
               break;
            case "button_def_DOWN_CENTER":
               _loc2_ = new button_def_DOWN_CENTER(1,1);
               break;
            case "button_def_DOWN_RIGHT":
               _loc2_ = new button_def_DOWN_RIGHT(1,1);
               break;
            case "button_red_UP_LEFT":
               _loc2_ = new button_red_UP_LEFT(1,1);
               break;
            case "button_red_UP_CENTER":
               _loc2_ = new button_red_UP_CENTER(1,1);
               break;
            case "button_red_UP_RIGHT":
               _loc2_ = new button_red_UP_RIGHT(1,1);
               break;
            case "button_red_OVER_LEFT":
               _loc2_ = new button_red_OVER_LEFT(1,1);
               break;
            case "button_red_OVER_CENTER":
               _loc2_ = new button_red_OVER_CENTER(1,1);
               break;
            case "button_red_OVER_RIGHT":
               _loc2_ = new button_red_OVER_RIGHT(1,1);
               break;
            case "button_red_DOWN_LEFT":
               _loc2_ = new button_red_DOWN_LEFT(1,1);
               break;
            case "button_red_DOWN_CENTER":
               _loc2_ = new button_red_DOWN_CENTER(1,1);
               break;
            case "button_red_DOWN_RIGHT":
               _loc2_ = new button_red_DOWN_RIGHT(1,1);
               break;
            case "button_blue_UP_LEFT":
               _loc2_ = new button_blue_UP_LEFT(1,1);
               break;
            case "button_blue_UP_CENTER":
               _loc2_ = new button_blue_UP_CENTER(1,1);
               break;
            case "button_blue_UP_RIGHT":
               _loc2_ = new button_blue_UP_RIGHT(1,1);
               break;
            case "button_blue_OVER_LEFT":
               _loc2_ = new button_blue_OVER_LEFT(1,1);
               break;
            case "button_blue_OVER_CENTER":
               _loc2_ = new button_blue_OVER_CENTER(1,1);
               break;
            case "button_blue_OVER_RIGHT":
               _loc2_ = new button_blue_OVER_RIGHT(1,1);
               break;
            case "button_blue_DOWN_LEFT":
               _loc2_ = new button_blue_DOWN_LEFT(1,1);
               break;
            case "button_blue_DOWN_CENTER":
               _loc2_ = new button_blue_DOWN_CENTER(1,1);
               break;
            case "button_blue_DOWN_RIGHT":
               _loc2_ = new button_blue_DOWN_RIGHT(1,1);
               break;
            case "button_OFF_LEFT":
               _loc2_ = new button_OFF_LEFT(1,1);
               break;
            case "button_OFF_CENTER":
               _loc2_ = new button_OFF_CENTER(1,1);
               break;
            case "button_OFF_RIGHT":
               _loc2_ = new button_OFF_RIGHT(1,1);
         }
         return _loc2_;
      }
      
      public function get enable() : Boolean
      {
         return this.§521423139112313924123423632234§;
      }
      
      public function §521423110472311060123423632234§(param1:String = "def") : void
      {
         var _loc3_:String = null;
         var _loc2_:String = "button_" + param1 + "_";
         _loc3_ = "UP";
         this.§each throw§.§class package while§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_LEFT");
         this.§each throw§.§true const break§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_CENTER");
         this.§each throw§.§5214234027234040123423632234§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_RIGHT");
         _loc3_ = "OVER";
         this.§native const class§.§class package while§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_LEFT");
         this.§native const class§.§true const break§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_CENTER");
         this.§native const class§.§5214234027234040123423632234§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_RIGHT");
         _loc3_ = "DOWN";
         this.§switch set do§.§class package while§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_LEFT");
         this.§switch set do§.§true const break§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_CENTER");
         this.§switch set do§.§5214234027234040123423632234§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_RIGHT");
         _loc3_ = "OFF";
         _loc2_ = "button_";
         this.§521423110842311097123423632234§.§class package while§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_LEFT");
         this.§521423110842311097123423632234§.§true const break§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_CENTER");
         this.§521423110842311097123423632234§.§5214234027234040123423632234§ = this.§5214236551236564123423632234§(_loc2_ + _loc3_ + "_RIGHT");
         this.width = 96;
      }
      
      protected function §catch var native§() : void
      {
         this.setState(1);
         buttonMode = true;
         mouseEnabled = true;
         mouseChildren = true;
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
      }
      
      private function §5214233257233270123423632234§(param1:Event) : void
      {
         this.§include try§.visible = true;
      }
      
      private function §super set null§(param1:Event) : void
      {
         this.§include try§.visible = false;
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
   }
}

