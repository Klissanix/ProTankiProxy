package §continue switch package§
{
   import §5214232472232485123423632234§.§with package true§;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §include package class§ extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      protected const §5214231864231877123423632234§:int = 15;
      
      protected var §521423104052310418123423632234§:§with package true§ = new §with package true§();
      
      protected var §5214233666233679123423632234§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      protected var §521423115722311585123423632234§:int = 0;
      
      protected var §in finally dynamic§:Timer;
      
      protected var §function set do§:String;
      
      public function §include package class§(param1:int)
      {
         super();
         this.§521423115722311585123423632234§ = param1;
         this.init();
      }
      
      protected function §521423102522310265123423632234§(param1:String, ... rest) : String
      {
         var _loc3_:int = 0;
         var _loc4_:String = param1;
         while(_loc3_ < rest.length)
         {
            _loc4_ = _loc4_.replace("%" + (_loc3_ + 1),rest[_loc3_]);
            _loc3_++;
         }
         return _loc4_;
      }
      
      protected function init() : void
      {
         this.§5214233666233679123423632234§.align = "center";
         this.§function set do§ = §5214236363236376123423632234§.getText("SERVER_STOP_ALERT_TEXT");
         this.§5214233666233679123423632234§.text = this.§521423102522310265123423632234§(this.§function set do§,"88");
         addChild(this.§521423104052310418123423632234§);
         addChild(this.§5214233666233679123423632234§);
         this.§5214233666233679123423632234§.x = 15;
         this.§5214233666233679123423632234§.y = 15;
         this.§521423104052310418123423632234§.width = this.§5214233666233679123423632234§.width + 15 * 2;
         this.§521423104052310418123423632234§.height = this.§5214233666233679123423632234§.height + 15 * 2;
         §5214235917235930123423632234§.dialogsLayer.addChild(this);
         §5214235917235930123423632234§.stage.addEventListener("resize",this.§52142326923282123423632234§);
         this.§52142326923282123423632234§();
         this.§final switch final§();
      }
      
      protected function §final switch final§() : void
      {
         this.§in finally dynamic§ = new Timer(1000);
         this.§in finally dynamic§.addEventListener("timer",this.§const set while§);
         this.§in finally dynamic§.start();
         this.§const set while§();
      }
      
      protected function §const set while§(param1:TimerEvent = null) : void
      {
         var _loc2_:String = this.§521423115722311585123423632234§ > 9 ? String(this.§521423115722311585123423632234§) : "0" + String(this.§521423115722311585123423632234§);
         this.§5214233666233679123423632234§.text = this.§5214233666233679123423632234§.text = this.§521423102522310265123423632234§(this.§function set do§,_loc2_);
         --this.§521423115722311585123423632234§;
         if(this.§521423115722311585123423632234§ < 0)
         {
            this.§in finally dynamic§.removeEventListener("timer",this.§const set while§);
            this.§in finally dynamic§.stop();
         }
      }
      
      private function §52142326923282123423632234§(param1:Event = null) : void
      {
         this.x = Math.round((§5214235917235930123423632234§.stage.stageWidth / Display.§521423132512313264123423632234§ - this.width) * 0.5);
         this.y = Math.round((§5214235917235930123423632234§.stage.stageHeight / Display.§521423132512313264123423632234§ - this.height) * 0.5);
      }
   }
}

