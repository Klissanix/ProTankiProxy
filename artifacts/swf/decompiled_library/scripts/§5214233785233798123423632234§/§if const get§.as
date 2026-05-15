package §5214233785233798123423632234§
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §get use set§.TanksFontService;
   import §include else§.§5214233871233884123423632234§;
   
   public class §if const get§ extends Sprite
   {
      
      private static const §function set super§:Class = S13619d_png$44e75244b8a89442980e279e3a4f1d2e1622618861;
      
      private static const §throw use super§:Class = §e61hc9_png$cfd2ac54a3c96c6b5024a7f8da956c82-1839810206§;
      
      private static const §try switch super§:Class = §cc6ac6_png$4c2c6fcc822346c8965acb01af322f6b-705487518§;
      
      private static const §5214232369232382123423632234§:Class = §S52fb34_png$6db4564409d3fe4dbd15861fc63513b8-1224964033§;
      
      private static const §try var§:Class = a5ba45f_png$5947c092fca7ec5e28d8fdac824ed8ce665923284;
      
      private static const §5214238010238023123423632234§:Class = §e66hd1c_png$13efca871424abc51f07a2efe18b89ad-1608254571§;
      
      private var §native const if§:int = 0;
      
      private var §native set each§:Boolean = true;
      
      private var §521423125632312576123423632234§:String = "";
      
      public var §521423139392313952123423632234§:§5214238529238542123423632234§;
      
      private const §const var for§:TextFormat = TanksFontService.getTextFormat(12);
      
      private const §521423104052310418123423632234§:Sprite = new Sprite();
      
      private const §521423100042310017123423632234§:Shape = new Shape();
      
      private const §5214236214236227123423632234§:Shape = new Shape();
      
      private const §with var false§:Shape = new Shape();
      
      private const §class package while§:BitmapData = new §function set super§().bitmapData;
      
      private const §true const break§:BitmapData = new §throw use super§().bitmapData;
      
      private const §5214234027234040123423632234§:BitmapData = new §try switch super§().bitmapData;
      
      private const §extends const if§:BitmapData = new §5214232369232382123423632234§().bitmapData;
      
      private const §5214232139232152123423632234§:BitmapData = new §try var§().bitmapData;
      
      private const §package catch if§:BitmapData = new §5214238010238023123423632234§().bitmapData;
      
      protected var §5214237851237864123423632234§:int;
      
      private var §do finally set§:int;
      
      public var §52142339223405123423632234§:TextField;
      
      private var §5214232502232515123423632234§:int = 0;
      
      private var §5214236875236888123423632234§:String = "";
      
      private var §5214239977239990123423632234§:Timer;
      
      private var §null finally var§:Boolean;
      
      public function §if const get§()
      {
         super();
         addChild(this.§521423104052310418123423632234§);
         this.§521423104052310418123423632234§.addChild(this.§521423100042310017123423632234§);
         this.§521423104052310418123423632234§.addChild(this.§5214236214236227123423632234§);
         this.§521423104052310418123423632234§.addChild(this.§with var false§);
         this.§521423139392313952123423632234§ = new §5214238529238542123423632234§();
         this.§521423139392313952123423632234§.x = -10;
         this.§521423139392313952123423632234§.y = 7;
         addChild(this.§521423139392313952123423632234§);
         this.§5214232502232515123423632234§ = getTimer();
         this.§52142339223405123423632234§ = new TextField();
         addChild(this.§52142339223405123423632234§);
         this.§const var for§.color = 16777215;
         this.§52142339223405123423632234§.defaultTextFormat = this.§const var for§;
         this.§52142339223405123423632234§.antiAliasType = "advanced";
         this.§52142339223405123423632234§.gridFitType = "pixel";
         this.§52142339223405123423632234§.embedFonts = TanksFontService.isEmbedFonts();
         this.§52142339223405123423632234§.type = "input";
         this.§52142339223405123423632234§.x = 3;
         this.§52142339223405123423632234§.y = 7;
         this.§52142339223405123423632234§.height = 20;
         this.§52142339223405123423632234§.addEventListener("change",this.§for catch default§);
         this.width = 212;
      }
      
      public function set §false use with§(param1:int) : void
      {
         this.§native const if§ = param1;
         this.§52142339223405123423632234§.addEventListener("keyUp",this.§5214234460234473123423632234§);
         this.§5214239977239990123423632234§ = new Timer(this.§native const if§);
         this.§5214239977239990123423632234§.addEventListener("timer",this.§5214233629233642123423632234§);
         this.§52142339223405123423632234§.removeEventListener("textInput",this.§for catch default§);
         this.§5214239977239990123423632234§.start();
      }
      
      public function set §5214235789235802123423632234§(param1:String) : void
      {
         this.§52142339223405123423632234§.restrict = param1;
      }
      
      private function §5214233629233642123423632234§(param1:TimerEvent) : void
      {
         var _loc2_:int = getTimer();
         if(_loc2_ - this.§5214232502232515123423632234§ > this.§native const if§ && this.§5214236875236888123423632234§ != this.value)
         {
            this.§5214236875236888123423632234§ = this.value;
            dispatchEvent(new §5214233871233884123423632234§("LoginChanged"));
         }
         this.§5214232502232515123423632234§ = _loc2_;
      }
      
      private function §for catch default§(param1:Event) : void
      {
         this.§521423125632312576123423632234§ = this.§52142339223405123423632234§.text;
         dispatchEvent(new §5214233871233884123423632234§("LoginChanged"));
      }
      
      public function get §in use set§() : Boolean
      {
         return this.§native set each§;
      }
      
      private function §5214234460234473123423632234§(param1:KeyboardEvent) : void
      {
         var _loc2_:int = getTimer();
         this.§5214232502232515123423632234§ = _loc2_;
      }
      
      public function set §in use set§(param1:Boolean) : void
      {
         this.§native set each§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      public function §true package final§(param1:Event) : void
      {
         removeEventListener("removedFromStage",this.§true package final§);
         this.§52142339223405123423632234§.removeEventListener("textInput",this.§for catch default§);
         this.§52142339223405123423632234§.removeEventListener("keyUp",this.§5214234460234473123423632234§);
      }
      
      public function set §false set false§(param1:int) : void
      {
         this.§52142339223405123423632234§.maxChars = param1;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§5214237851237864123423632234§ = param1;
         this.§52142339223405123423632234§.width = this.§5214237851237864123423632234§ - 6;
         this.§5214233910233923123423632234§();
      }
      
      public function §false set final§() : void
      {
         this.§52142339223405123423632234§.text = "";
         this.§in use set§ = true;
      }
      
      public function set align(param1:String) : void
      {
         this.§const var for§.align = param1;
         this.§if for final§();
      }
      
      public function get value() : String
      {
         return this.§521423125632312576123423632234§;
      }
      
      private function §5214233910233923123423632234§() : void
      {
         var _loc1_:Graphics = this.§521423100042310017123423632234§.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§native set each§ ? this.§class package while§ : this.§extends const if§);
         _loc1_.drawRect(0,0,5,30);
         _loc1_.endFill();
         this.§521423100042310017123423632234§.x = 0;
         this.§521423100042310017123423632234§.y = 0;
         _loc1_ = this.§5214236214236227123423632234§.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§native set each§ ? this.§true const break§ : this.§5214232139232152123423632234§);
         _loc1_.drawRect(0,0,this.§5214237851237864123423632234§ - 10,30);
         _loc1_.endFill();
         this.§5214236214236227123423632234§.x = 5;
         this.§5214236214236227123423632234§.y = 0;
         _loc1_ = this.§with var false§.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this.§native set each§ ? this.§5214234027234040123423632234§ : this.§package catch if§);
         _loc1_.drawRect(0,0,5,30);
         _loc1_.endFill();
         this.§with var false§.x = this.§5214237851237864123423632234§ - 5;
         this.§with var false§.y = 0;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§do finally set§ = param1;
         this.§5214233910233923123423632234§();
      }
      
      public function set value(param1:String) : void
      {
         this.§52142339223405123423632234§.text = this.§521423125632312576123423632234§ = param1;
      }
      
      private function §if for final§() : void
      {
         this.§52142339223405123423632234§.defaultTextFormat = this.§const var for§;
         this.§52142339223405123423632234§.setTextFormat(this.§const var for§);
      }
      
      override public function set tabIndex(param1:int) : void
      {
         this.§52142339223405123423632234§.tabIndex = param1;
      }
      
      public function set hidden(param1:Boolean) : void
      {
         this.§null finally var§ = param1;
         this.§52142339223405123423632234§.displayAsPassword = this.§null finally var§;
         this.§52142339223405123423632234§.defaultTextFormat = this.§const var for§;
         this.§52142339223405123423632234§.setTextFormat(this.§const var for§);
      }
      
      public function set label(param1:String) : void
      {
         this.§521423139392313952123423632234§.text = param1;
         this.§521423139392313952123423632234§.autoSize = "right";
      }
   }
}

