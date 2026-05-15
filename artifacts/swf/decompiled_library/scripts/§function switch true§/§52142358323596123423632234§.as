package §function switch true§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.filters.BlurFilter;
   import flash.filters.DropShadowFilter;
   import §import set if§.§catch use extends§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237555237568123423632234§;
   
   public class §52142358323596123423632234§ extends Sprite
   {
      
      private var label:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §if use case§:Bitmap;
      
      public var §52142310723120123423632234§:§5214237555237568123423632234§;
      
      public var §521423222335123423632234§:§catch use extends§;
      
      private var §5214239403239416123423632234§:Bitmap;
      
      private const §class catch catch§:int = 10;
      
      private const §function var override§:int = 21;
      
      public function §52142358323596123423632234§()
      {
         super();
      }
      
      public function set §null var case§(param1:Bitmap) : void
      {
         this.§5214239403239416123423632234§ = param1;
         this.§if use case§.bitmapData = this.§5214239403239416123423632234§.bitmapData;
         this.§52142310723120123423632234§.value = "";
      }
      
      public function §5214235418235431123423632234§(param1:Boolean) : void
      {
         this.§52142310723120123423632234§.enable = param1;
         this.§521423222335123423632234§.doubleClickEnabled = param1;
         this.§521423222335123423632234§.mouseEnabled = param1;
      }
      
      override public function set width(param1:Number) : void
      {
         this.label.width = param1 - this.label.x;
         this.§if use case§.width = param1;
         this.§52142310723120123423632234§.width = param1;
         this.§521423222335123423632234§.x = this.§if use case§.x + this.§if use case§.width - this.§521423222335123423632234§.width - 10;
         this.§if use case§.y = this.label.y + this.label.height + 10;
         this.§52142310723120123423632234§.y = this.§if use case§.y + this.§if use case§.height + 10;
         this.§521423222335123423632234§.y = this.§if use case§.y + 10 + 2;
      }
      
      override public function get height() : Number
      {
         return this.§52142310723120123423632234§.y + this.§52142310723120123423632234§.height;
      }
      
      public function §52142362123634123423632234§() : void
      {
         this.label = new §5214231141231154123423632234§();
         this.label.multiline = true;
         this.label.wordWrap = true;
         this.label.text = OSGi.getInstance().getService(ILocaleService).getText("STRING_CAPTCHA_FORM_TITLE");
         this.label.y = -8;
         addChild(this.label);
         this.§if use case§ = new Bitmap(new BitmapData(285,50,true,0));
         this.§if use case§.filters = [new BlurFilter(2,2),new DropShadowFilter(0,45,0,1,4,4,2)];
         this.§if use case§.x = 2;
         addChild(this.§if use case§);
         this.§52142310723120123423632234§ = new §5214237555237568123423632234§();
         this.§52142310723120123423632234§.tabIndex = 5;
         this.§52142310723120123423632234§.§5214235789235802123423632234§ = ".0-9a-zA-z_\\-";
         addChild(this.§52142310723120123423632234§);
         if(stage != null)
         {
            stage.focus = this.§52142310723120123423632234§.§52142339223405123423632234§;
         }
         this.§521423222335123423632234§ = new §catch use extends§();
         this.§521423222335123423632234§.buttonMode = this.§521423222335123423632234§.useHandCursor = true;
         addChild(this.§521423222335123423632234§);
         this.width = 275;
      }
      
      [PostConstruct]
      public function §use const continue§() : void
      {
         this.§52142362123634123423632234§();
      }
   }
}

