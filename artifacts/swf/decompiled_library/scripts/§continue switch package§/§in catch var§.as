package §continue switch package§
{
   import §5214232472232485123423632234§.§with package true§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §in catch var§ extends Sprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §521423107532310766123423632234§:int = 0;
      
      public static const §implements set implements§:int = 1;
      
      private const §5214231864231877123423632234§:int = 15;
      
      private var §521423104052310418123423632234§:§with package true§ = new §with package true§();
      
      private var label:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §521423115722311585123423632234§:int = 0;
      
      private var §in finally dynamic§:Timer;
      
      public function §in catch var§(param1:int, param2:int = 0)
      {
         super();
         var _loc3_:String = param2 == 0 ? §5214236363236376123423632234§.getText("BATTLE_TEAM_RED") : §5214236363236376123423632234§.getText("BATTLE_TEAM_BLUE");
         this.label.align = "center";
         this.label.§521423102842310297123423632234§ = 14;
         this.label.bold = true;
         this.label.htmlText = "<font color=" + (param2 == 0 ? "\"#ff9999\">" : "\"#99ccff\">") + §5214236363236376123423632234§.getText("BATTLE_TEAM_ALERT",_loc3_) + "</font>";
         addChild(this.§521423104052310418123423632234§);
         addChild(this.label);
         this.label.x = 15;
         this.label.y = 15;
         this.§521423104052310418123423632234§.width = this.label.width + 15 * 2;
         this.§521423104052310418123423632234§.height = this.label.height + 15 * 2;
         this.§521423115722311585123423632234§ = param1;
         this.§final switch final§();
         addEventListener("click",this.§true package final§);
      }
      
      private function §const set while§(param1:TimerEvent = null) : void
      {
         --this.§521423115722311585123423632234§;
         if(this.§521423115722311585123423632234§ < 0)
         {
            this.§in finally dynamic§.removeEventListener("timer",this.§const set while§);
            this.§in finally dynamic§.stop();
            this.§true package final§();
         }
      }
      
      private function §final switch final§() : void
      {
         this.§in finally dynamic§ = new Timer(1000);
         this.§in finally dynamic§.addEventListener("timer",this.§const set while§);
         this.§in finally dynamic§.start();
         this.§const set while§();
      }
      
      public function §true package final§(param1:Event = null) : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
            removeEventListener("click",this.§true package final§);
         }
      }
   }
}

