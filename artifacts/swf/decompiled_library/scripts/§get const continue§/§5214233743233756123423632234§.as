package §get const continue§
{
   import alternativa.osgi.service.display.Display;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.money.§false catch case§;
   import assets.§if use implements§;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;
   import §switch set for§.§package default§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214234735234748123423632234§;
   
   public class §5214233743233756123423632234§ extends §5214234735234748123423632234§ implements §false catch case§
   {
      
      public static var §var var finally§:IMoneyService;
      
      private var §52142334223355123423632234§:§if use implements§ = new §if use implements§();
      
      private var §5214234342234355123423632234§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §true override§:int = 0;
      
      public function §5214233743233756123423632234§()
      {
         super();
         addChild(this.§52142334223355123423632234§);
         addChild(this.§5214234342234355123423632234§);
         this.§52142334223355123423632234§.visible = this.§5214234342234355123423632234§.visible = false;
         label = "";
         addEventListener("addedToStage",this.§each set true§);
         addEventListener("removedFromStage",this.§521423109452310958123423632234§);
         this.§52142334223355123423632234§.filters = this.§5214234342234355123423632234§.filters = [new DropShadowFilter(1 * Display.§521423132512313264123423632234§,45,0,0.7,1 * Display.§521423132512313264123423632234§,1 * Display.§521423132512313264123423632234§,1)];
      }
      
      private function §each set true§(param1:Event) : void
      {
         §var var finally§.addListener(this);
         this.§521423139852313998123423632234§();
      }
      
      private function §521423139852313998123423632234§() : void
      {
         if(this.§true override§ > §var var finally§.crystal)
         {
            this.§5214234342234355123423632234§.color = 16731648;
         }
         else
         {
            this.§5214234342234355123423632234§.color = 16777215;
         }
      }
      
      public function crystalsChanged(param1:int) : void
      {
         this.§521423139852313998123423632234§();
      }
      
      private function §521423109452310958123423632234§(param1:Event) : void
      {
         §var var finally§.removeListener(this);
      }
      
      override protected function §5214234483234496123423632234§() : void
      {
         super.§5214234483234496123423632234§();
         var _loc1_:int = §521423116092311622123423632234§() == §package default§.§default set package§ ? 1 : 0;
         §521423139392313952123423632234§.y = (this.§true override§ == 0 ? 16 : 6) + _loc1_;
         this.§52142334223355123423632234§.y = 26 + _loc1_;
         this.§5214234342234355123423632234§.y = 22 + _loc1_;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = param1;
         var _loc2_:Number = §5214237851237864123423632234§ - 4;
         §521423139392313952123423632234§.width = §5214237851237864123423632234§ - 4;
         §final use const§.width = _loc2_;
         if(§if for while§.bitmapData != null)
         {
            §if for while§.x = 6;
            §if for while§.y = int(25 - §if for while§.height / 2);
            §521423139392313952123423632234§.width = §5214237851237864123423632234§ - 8 - §if for while§.width;
            §521423139392313952123423632234§.x = §if for while§.width + 4;
            §521423139392313952123423632234§.y = this.§true override§ == 0 ? 16 : 6;
         }
         if(this.§true override§ > 0)
         {
            this.§52142334223355123423632234§.visible = this.§5214234342234355123423632234§.visible = true;
            this.§52142334223355123423632234§.x = §if for while§.width + 4 + (§521423139392313952123423632234§.width - §521423139392313952123423632234§.textWidth) / 2;
            this.§52142334223355123423632234§.y = 26;
            this.§5214234342234355123423632234§.y = 22;
            this.§5214234342234355123423632234§.text = String(this.§true override§);
            this.§5214234342234355123423632234§.x = this.§52142334223355123423632234§.x + this.§52142334223355123423632234§.width;
            this.§521423139852313998123423632234§();
         }
         else
         {
            this.§52142334223355123423632234§.visible = this.§5214234342234355123423632234§.visible = false;
         }
      }
      
      public function set §5214232015232028123423632234§(param1:int) : void
      {
         this.§true override§ = param1;
         this.width = §5214237851237864123423632234§;
      }
   }
}

