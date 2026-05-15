package §catch get§
{
   import §5214233785233798123423632234§.§5214235531235544123423632234§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §implements for each§.§521423120332312046123423632234§;
   import §implements for each§.§include implements§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214235648235661123423632234§ extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §with var try§:PremiumService;
      
      private static const §include package finally§:int = -73;
      
      private static const §5214231784231797123423632234§:int = 60;
      
      private static const §521423135752313588123423632234§:int = 90;
      
      private static const §while package if§:int = 135;
      
      private static const §521423106842310697123423632234§:Class = b3dbca7_png$002da9bca3ada6d42fc52b402ffa73ab362106629;
      
      private const §521423102532310266123423632234§:int = 4000;
      
      private const §default use class§:int = 2000;
      
      private var §do const each§:int;
      
      private var label:§5214231141231154123423632234§;
      
      private var §each const static§:§5214231141231154123423632234§;
      
      private var §5214239977239990123423632234§:Timer;
      
      private var §5214236045236058123423632234§:§include implements§;
      
      private var §5214238058238071123423632234§:int;
      
      public function §5214235648235661123423632234§(param1:int, param2:int)
      {
         var _loc3_:Bitmap = null;
         §5214236045236058123423632234§ = new §521423120332312046123423632234§();
         super();
         filters = [new GlowFilter(0,1,6 * Display.§521423132512313264123423632234§,6 * Display.§521423132512313264123423632234§)];
         this.§5214236045236058123423632234§.init(§with var try§.hasPremium(),param1);
         this.§5214236045236058123423632234§.x = -(this.§5214236045236058123423632234§.width >> 1);
         this.§5214236045236058123423632234§.y = -73;
         addChild(this.§5214236045236058123423632234§);
         this.label = new §5214231141231154123423632234§();
         this.label.color = 16776960;
         this.label.§521423102842310297123423632234§ = 18;
         this.label.bold = true;
         this.label.autoSize = "center";
         this.label.align = "center";
         this.label.multiline = true;
         this.label.text = §5214236363236376123423632234§.getText("STRING_MAIN_PANEL_UPDATE_RANK_NOTICE",§5214235531235544123423632234§.§extends set case§(param1));
         addChild(this.label);
         this.§do const each§ = 90;
         if(param2 > 0)
         {
            this.§each const static§ = new §5214231141231154123423632234§();
            this.§each const static§.color = 16776960;
            this.§each const static§.§521423102842310297123423632234§ = 18;
            this.§each const static§.bold = true;
            this.§each const static§.autoSize = "center";
            this.§each const static§.text = §5214236363236376123423632234§.getText("STRING_MAIN_PANEL_UPDATE_RANK_NOTICE_GIFT",param2.toString());
            this.§each const static§.x = -(this.§each const static§.width >> 1);
            this.§each const static§.y = 60;
            addChild(this.§each const static§);
            _loc3_ = new §521423106842310697123423632234§();
            _loc3_.x = this.§each const static§.x + this.§each const static§.width + 2;
            _loc3_.y = 60 - 1;
            addChild(_loc3_);
            this.§do const each§ = 135;
         }
         addEventListener("addedToStage",this.§5214239864239877123423632234§);
         addEventListener("removedFromStage",this.§for package continue§);
      }
      
      private function §break for implements§(param1:Event) : void
      {
         var _loc2_:Number = 1 - (getTimer() - this.§5214238058238071123423632234§) / 2000;
         this.alpha = _loc2_;
         if(_loc2_ <= 0)
         {
            removeEventListener("enterFrame",this.§break for implements§);
            parent.removeChild(this);
         }
      }
      
      private function §for package continue§(param1:Event) : void
      {
         stage.removeEventListener("resize",this.§5214235770235783123423632234§);
         removeEventListener("addedToStage",this.§5214239864239877123423632234§);
         removeEventListener("removedFromStage",this.§for package continue§);
      }
      
      private function §5214239864239877123423632234§(param1:Event) : void
      {
         stage.addEventListener("resize",this.§5214235770235783123423632234§);
         this.§5214239977239990123423632234§ = new Timer(4000,1);
         this.§5214239977239990123423632234§.addEventListener("timerComplete",this.§each do§);
         this.§5214239977239990123423632234§.start();
         this.§5214235770235783123423632234§(null);
      }
      
      private function §each do§(param1:TimerEvent) : void
      {
         this.§5214239977239990123423632234§.removeEventListener("timerComplete",this.§each do§);
         addEventListener("enterFrame",this.§break for implements§);
         this.§5214238058238071123423632234§ = getTimer();
      }
      
      private function §5214235770235783123423632234§(param1:Event) : void
      {
         x = stage.stageWidth / Display.§521423132512313264123423632234§ / 2;
         y = stage.stageHeight / Display.§521423132512313264123423632234§ - this.§do const each§ >> 1;
      }
   }
}

