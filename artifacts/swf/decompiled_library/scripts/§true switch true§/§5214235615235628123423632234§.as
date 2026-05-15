package §true switch true§
{
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §5214235615235628123423632234§ extends Sprite
   {
      
      private static const §continue catch extends§:int = 90;
      
      private static const §5214237191237204123423632234§:Class = f46f6e0_png$be59a645e49ebb3e0cd7916482500753395591956;
      
      private static const §521423135672313580123423632234§:Class = §b169c2d_png$c6108676f9314cdc2814d1c6f3fb3065-1831187980§;
      
      private static const §false set import§:Class = D6gbac_png$98926e15e45c8eea1c679d88fce43a7f1442909372;
      
      private static const §5214236795236808123423632234§:Class = §S29a8g2_png$932b558348aeb468f6c52bd380459ca7-892984707§;
      
      private static const §5214235812235825123423632234§:Class = S5fd270_png$9f21ab0673ae6034c724c0e99a0f2fc31440421708;
      
      private static const §while catch final§:BitmapData = new BitmapData(85,22,true,299950088);
      
      private var §get set implements§:Bitmap = new Bitmap(new §false set import§().bitmapData);
      
      private var §native const class§:Bitmap = new Bitmap(§while catch final§);
      
      private var §switch set do§:Bitmap = new Bitmap(new §5214236795236808123423632234§().bitmapData);
      
      private var §return set in§:Bitmap = new §5214235812235825123423632234§();
      
      protected var §521423139392313952123423632234§:§5214238529238542123423632234§ = new §5214231141231154123423632234§();
      
      private var §5214234806234819123423632234§:Boolean = false;
      
      public var type:int = 0;
      
      private var §521423139112313924123423632234§:Boolean = true;
      
      private var §521423135702313583123423632234§:String;
      
      protected var §if for while§:Bitmap;
      
      private var §switch package default§:Boolean;
      
      private var §5214231711231724123423632234§:int;
      
      private var §native use dynamic§:int;
      
      public function §5214235615235628123423632234§()
      {
         super();
         this.§5214239889239902123423632234§();
         this.enable = true;
         tabEnabled = false;
      }
      
      protected function §else each§(param1:int, param2:int) : void
      {
         this.§5214231711231724123423632234§ = param1;
         this.§native use dynamic§ = param2;
         this.§if for while§.x = this.§5214231711231724123423632234§;
         this.§if for while§.y = this.§native use dynamic§;
      }
      
      override public function get width() : Number
      {
         if(§5214234806234819123423632234§)
         {
            return 30;
         }
         return super.width;
      }
      
      public function set label(param1:String) : void
      {
         this.§521423139392313952123423632234§.autoSize = "none";
         this.§521423139392313952123423632234§.align = "center";
         this.§521423139392313952123423632234§.height = 19;
         §521423139392313952123423632234§.x = 18;
         this.§521423139392313952123423632234§.y = 4;
         this.§521423139392313952123423632234§.width = 72;
         this.§521423139392313952123423632234§.mouseEnabled = false;
         this.§521423139392313952123423632234§.text = param1;
         this.§521423135702313583123423632234§ = param1;
      }
      
      protected function onMouseEvent(param1:MouseEvent) : void
      {
         this.§native const class§.visible = false;
         this.§return set in§.visible = false;
         this.§switch set do§.visible = false;
         this.§get set implements§.visible = false;
         switch(param1.type)
         {
            case "mouseOver":
               this.§521423139392313952123423632234§.y = 4;
               this.§if for while§.y = this.§native use dynamic§;
               this.§get set implements§.visible = true;
               this.§native const class§.visible = true;
               break;
            case "mouseOut":
               this.§521423139392313952123423632234§.y = 4;
               this.§if for while§.y = this.§native use dynamic§;
               this.§get set implements§.visible = true;
               break;
            case "mouseDown":
               this.§521423139392313952123423632234§.y = 5;
               this.§if for while§.y = this.§native use dynamic§ + 1;
               this.§switch set do§.visible = true;
               break;
            case "mouseUp":
               this.§get set implements§.visible = true;
               this.§521423139392313952123423632234§.y = 4;
               this.§if for while§.y = this.§native use dynamic§;
         }
      }
      
      protected function §continue catch each§() : void
      {
         this.§521423139392313952123423632234§.y = 4;
         buttonMode = false;
         mouseEnabled = false;
         mouseChildren = false;
         removeEventListener("mouseOver",this.onMouseEvent);
         removeEventListener("mouseOut",this.onMouseEvent);
         removeEventListener("mouseDown",this.onMouseEvent);
         removeEventListener("mouseUp",this.onMouseEvent);
      }
      
      private function §5214233818233831123423632234§() : void
      {
         this.§catch var native§();
         this.§get set implements§.visible = true;
         this.§return set in§.visible = false;
         this.§native const class§.visible = false;
         this.§switch set do§.visible = false;
      }
      
      public function set enable(param1:Boolean) : void
      {
         this.§521423139112313924123423632234§ = param1;
         if(this.§521423139112313924123423632234§)
         {
            this.§5214233818233831123423632234§();
         }
         else
         {
            this.§for package class§();
         }
      }
      
      public function get selected() : Boolean
      {
         return this.§switch package default§;
      }
      
      protected function §catch var native§() : void
      {
         buttonMode = true;
         mouseEnabled = true;
         mouseChildren = true;
         addEventListener("mouseOver",this.onMouseEvent);
         addEventListener("mouseOut",this.onMouseEvent);
         addEventListener("mouseDown",this.onMouseEvent);
         addEventListener("mouseUp",this.onMouseEvent);
      }
      
      protected function §5214239889239902123423632234§() : void
      {
         addChild(this.§return set in§);
         addChild(this.§switch set do§);
         addChild(this.§get set implements§);
         addChild(this.§native const class§);
         addChild(this.§if for while§);
         addChild(this.§521423139392313952123423632234§);
         §native const class§.y = 2;
         §native const class§.x = 1;
         this.§if for while§.x = 3;
         this.§if for while§.y = 2;
         this.§native const class§.visible = false;
         this.§return set in§.visible = false;
         this.§switch set do§.visible = false;
         this.§get set implements§.visible = true;
      }
      
      public function get enable() : Boolean
      {
         return this.§521423139112313924123423632234§;
      }
      
      private function §for package class§() : void
      {
         this.§continue catch each§();
         this.§return set in§.visible = true;
         this.§native const class§.visible = false;
         this.§switch set do§.visible = false;
         this.§get set implements§.visible = false;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.§switch package default§ = param1;
         if(this.selected)
         {
            this.§return set in§.visible = true;
            this.§native const class§.visible = false;
            this.§switch set do§.visible = false;
            this.§get set implements§.visible = false;
            buttonMode = true;
            mouseEnabled = true;
            mouseChildren = true;
         }
      }
      
      public function set short(param1:Boolean) : void
      {
         if(param1 == §5214234806234819123423632234§)
         {
            return;
         }
         this.§5214234806234819123423632234§ = param1;
         this.§521423139392313952123423632234§.visible = !this.§5214234806234819123423632234§;
         this.§521423139392313952123423632234§.width = this.§5214234806234819123423632234§ ? 1 : 90 - this.§521423139392313952123423632234§.x - 3;
         this.§521423139392313952123423632234§.text = this.§5214234806234819123423632234§ ? "" : this.§521423135702313583123423632234§;
         this.enable = this.§521423139112313924123423632234§;
         §native const class§.width = param1 ? 23 : 85;
         if(param1)
         {
            §get set implements§.bitmapData = new §5214237191237204123423632234§().bitmapData;
            §switch set do§.bitmapData = new §521423135672313580123423632234§().bitmapData;
         }
         else
         {
            §get set implements§.bitmapData = new §false set import§().bitmapData;
            §switch set do§.bitmapData = new §5214236795236808123423632234§().bitmapData;
         }
      }
   }
}

