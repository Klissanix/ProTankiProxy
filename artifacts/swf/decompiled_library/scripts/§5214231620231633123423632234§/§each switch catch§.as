package §5214231620231633123423632234§
{
   import §5214233785233798123423632234§.§catch in§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.settings.ISettingsService;
   import §include else§.§package var in§;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §each switch catch§ extends DiscreteSprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      private static const §5214236647236660123423632234§:int = 30;
      
      private static const §521423131502313163123423632234§:int = 120;
      
      private var §521423127452312758123423632234§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §521423133462313359123423632234§:§catch in§ = new §catch in§();
      
      private var §5214235590235603123423632234§:String;
      
      private var §with finally dynamic§:int;
      
      public function §each switch catch§()
      {
         super();
         this.§521423127452312758123423632234§.y = 16;
         this.§5214235590235603123423632234§ = §5214236363236376123423632234§.getText("SETTINGS_FPS_LIMIT") + ": (";
         var _loc1_:int = §521423998231011123423632234§.refreshRate;
         this.§521423127452312758123423632234§.text = this.§5214235590235603123423632234§ + _loc1_.toString() + ")";
         addChild(this.§521423127452312758123423632234§);
         this.§521423133462313359123423632234§.§else const in§ = 120;
         this.§521423133462313359123423632234§.§5214232241232254123423632234§ = 30;
         this.§521423133462313359123423632234§.§521423137382313751123423632234§ = 5;
         this.§521423133462313359123423632234§.x = §521423127452312758123423632234§.width + 8;
         this.§521423133462313359123423632234§.y = 10;
         this.§521423133462313359123423632234§.width = 728 - §521423127452312758123423632234§.width;
         addChild(this.§521423133462313359123423632234§);
         this.§521423133462313359123423632234§.addEventListener("SliderChangeValue",this.§5214238184238197123423632234§);
         this.§with finally dynamic§ = this.§521423133462313359123423632234§.value = _loc1_;
      }
      
      private function §5214238184238197123423632234§(param1:§package var in§) : void
      {
         var _loc2_:int = Math.round(param1.§5214238927238940123423632234§);
         if(this.§with finally dynamic§ == _loc2_)
         {
            return;
         }
         this.§with finally dynamic§ = _loc2_;
         this.§521423127452312758123423632234§.text = this.§5214235590235603123423632234§ + _loc2_ + ")";
         §521423998231011123423632234§.refreshRate = _loc2_;
      }
   }
}

