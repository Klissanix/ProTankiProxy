package alternativa.tanks.gui
{
   import §5214233785233798123423632234§.§include return§;
   import alternativa.osgi.service.locale.ILocaleService;
   import §continue switch package§.§for var extends§;
   import fl.containers.ScrollPane;
   import flash.display.Sprite;
   import §override finally set§.§5214235342235355123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import utils.ScrollStyleUtils;
   import §var var with§.DialogWindow;
   
   public class NewsAlertWindow extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public var closeButton:§5214237085237098123423632234§;
      
      private var window:§for var extends§;
      
      private var §set for set§:Sprite;
      
      private var §continue package throw§:ScrollPane;
      
      public function NewsAlertWindow(param1:Vector.<§5214235342235355123423632234§>)
      {
         var _loc5_:Sprite = null;
         var _loc2_:§5214235342235355123423632234§ = null;
         _loc5_ = null;
         var _loc6_:NewsItem = null;
         super();
         this.§set for set§ = new Sprite();
         var _loc3_:int = 10;
         for each(_loc2_ in param1)
         {
            _loc6_ = new NewsItem(_loc2_.§each for static§,_loc2_.§5214231429231442123423632234§,_loc2_.§if const implements§);
            _loc6_.y = _loc3_;
            this.§set for set§.addChild(_loc6_);
            _loc3_ += _loc6_.height;
         }
         _loc5_ = new Sprite();
         _loc5_.graphics.beginFill(0,0);
         _loc5_.graphics.drawRect(0,0,10,20);
         _loc5_.graphics.endFill();
         _loc5_.y = _loc3_;
         this.§set for set§.addChild(_loc5_);
         this.window = new §for var extends§();
         this.window.width = 500;
         this.window.height = this.§set for set§.height < 300 ? this.§set for set§.height + 100 : 400;
         this.window.§extends package var§ = §5214236363236376123423632234§.language;
         this.window.§var package case§ = "NEWS_HEADER";
         addChild(this.window);
         var _loc4_:§include return§ = new §include return§(0,0,4278985229);
         addChild(_loc4_);
         _loc4_.x = 10;
         _loc4_.y = 10;
         _loc4_.height = this.window.height - 50 - 20;
         _loc4_.width = this.window.width - 20;
         this.§continue package throw§ = new ScrollPane();
         ScrollStyleUtils.setGreenStyle(this.§continue package throw§);
         this.§continue package throw§.horizontalScrollPolicy = "off";
         this.§continue package throw§.verticalScrollPolicy = "auto";
         this.§continue package throw§.source = this.§set for set§;
         this.§continue package throw§.focusEnabled = false;
         this.§continue package throw§.x = 10;
         this.§continue package throw§.y = 10;
         this.§continue package throw§.setSize(_loc4_.width - 10,_loc4_.height - 20);
         this.§continue package throw§.update();
         _loc4_.addChild(this.§continue package throw§);
         this.closeButton = new §5214237085237098123423632234§();
         this.closeButton.label = §5214236363236376123423632234§.getText("REFERAL_WINDOW_BUTTON_CLOSE_TEXT");
         this.addChild(this.closeButton);
         this.closeButton.x = (this.window.width - this.closeButton.width) / 2;
         this.closeButton.y = this.window.height - this.closeButton.height - 20;
      }
      
      override public function get height() : Number
      {
         return this.window.height;
      }
   }
}

