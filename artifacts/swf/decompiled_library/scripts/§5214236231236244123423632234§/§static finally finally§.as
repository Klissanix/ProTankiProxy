package §5214236231236244123423632234§
{
   import §5214232186232199123423632234§.§for const package§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§switch try§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import §extends package get§.§5214231794231807123423632234§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import §function switch true§.§52142358323596123423632234§;
   
   public class §static finally finally§ extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §5214239729239742123423632234§:§52142358323596123423632234§;
      
      public var §null set set§:§switch try§;
      
      private var §extends var final§:int = 25;
      
      private var §continue package each§:int = 20;
      
      public function §static finally finally§()
      {
         super();
      }
      
      private function §finally set break§(param1:int) : void
      {
         var _loc2_:§for const package§ = new §for const package§(param1);
         parent.addChild(_loc2_);
         stage.focus = _loc2_.closeButton;
      }
      
      private function §switch override§(param1:Event) : void
      {
         §5214239729239742123423632234§.§52142310723120123423632234§.addEventListener("keyDown",§case const extends§);
         stage.focus = §5214239729239742123423632234§.§52142310723120123423632234§.§52142339223405123423632234§;
         addEventListener("removedFromStage",this.§continue use each§);
         stage.addEventListener("resize",§52142326923282123423632234§);
         §52142326923282123423632234§();
      }
      
      [PostConstruct]
      public function §use const continue§() : void
      {
         var _loc1_:§native for dynamic§ = new §native for dynamic§(325,200);
         addChild(_loc1_);
         this.§5214239729239742123423632234§ = new §52142358323596123423632234§();
         this.§5214239729239742123423632234§.§use const continue§();
         this.§5214239729239742123423632234§.x = this.§extends var final§;
         this.§5214239729239742123423632234§.y = this.§extends var final§;
         addChild(this.§5214239729239742123423632234§);
         this.§null set set§ = new §switch try§();
         this.§null set set§.label = §5214236363236376123423632234§.getText("STRING_CAPTCHA_PROCEED_BUTTON");
         this.§null set set§.y = this.§5214239729239742123423632234§.y + this.§5214239729239742123423632234§.height + this.§continue package each§;
         this.§null set set§.x = _loc1_.width - this.§extends var final§ - this.§null set set§.width;
         _loc1_.height = this.§extends var final§ + this.§null set set§.y + this.§null set set§.height;
         addChild(this.§null set set§);
         this.§5214239729239742123423632234§.§521423222335123423632234§.addEventListener("click",this.§get use for§);
         addEventListener("addedToStage",this.§switch override§);
      }
      
      public function §521423110052311018123423632234§(param1:Bitmap) : void
      {
         this.§5214239729239742123423632234§.§null var case§ = param1;
      }
      
      public function §5214234175234188123423632234§() : void
      {
         this.§finally set break§(19);
         this.§5214239729239742123423632234§.§52142310723120123423632234§.§false set final§();
      }
      
      private function §continue use each§(param1:Event) : void
      {
         stage.removeEventListener("resize",§52142326923282123423632234§);
         §5214239729239742123423632234§.§52142310723120123423632234§.removeEventListener("keyDown",§case const extends§);
      }
      
      private function §get use for§(param1:MouseEvent) : void
      {
         dispatchEvent(new §5214231794231807123423632234§());
      }
      
      public function set §52142310723120123423632234§(param1:String) : void
      {
         this.§5214239729239742123423632234§.§52142310723120123423632234§.§52142339223405123423632234§.text = param1;
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.x = int((stage.stageWidth / Display.§521423132512313264123423632234§ - this.width) / 2);
         this.y = int((stage.stageHeight / Display.§521423132512313264123423632234§ - this.height) / 2);
      }
      
      public function get §52142310723120123423632234§() : String
      {
         return this.§5214239729239742123423632234§.§52142310723120123423632234§.value;
      }
      
      private function §case const extends§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13)
         {
            this.§null set set§.dispatchEvent(new MouseEvent("click"));
         }
      }
   }
}

