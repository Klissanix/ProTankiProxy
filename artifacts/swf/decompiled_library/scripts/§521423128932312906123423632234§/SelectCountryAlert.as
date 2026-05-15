package §521423128932312906123423632234§
{
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214238087238100123423632234§.§while package static§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.country.CountryService;
   import §case catch override§.§5214236909236922123423632234§;
   import flash.events.MouseEvent;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class SelectCountryAlert extends DialogWindow
   {
      
      public static var §break var false§:CountryService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private const §5214232444232457123423632234§:int = 20;
      
      private var §5214236164236177123423632234§:§5214237085237098123423632234§;
      
      private var §if const if§:§5214236909236922123423632234§;
      
      private var §5214239522239535123423632234§:Function;
      
      public function SelectCountryAlert(param1:Function)
      {
         var _loc4_:§5214231141231154123423632234§ = null;
         var _loc3_:§5214231141231154123423632234§ = null;
         super();
         this.§5214239522239535123423632234§ = param1;
         var _loc2_:§native for dynamic§ = new §native for dynamic§(340,140);
         addChild(_loc2_);
         this.§5214236164236177123423632234§ = new §5214237085237098123423632234§();
         this.§5214236164236177123423632234§.label = §5214236363236376123423632234§.getText("ALERT_ANSWER_OK");
         this.§5214236164236177123423632234§.x = (width - this.§5214236164236177123423632234§.width) / 2;
         this.§5214236164236177123423632234§.y = _loc2_.height - this.§5214236164236177123423632234§.height - 20;
         this.§5214236164236177123423632234§.addEventListener("click",this.e17777e6);
         addChild(this.§5214236164236177123423632234§);
         _loc3_ = new §5214231141231154123423632234§();
         _loc3_.text = §5214236363236376123423632234§.getText("CHECK_YOU_LOCATION_TEXT");
         _loc3_.x = 20;
         _loc3_.y = 20 + 5;
         addChild(_loc3_);
         _loc4_ = new §5214231141231154123423632234§();
         _loc4_.text = §5214236363236376123423632234§.getText("YOURE_LOCATION_TEXT");
         _loc4_.x = 20;
         _loc4_.y = 55;
         _loc4_.width = 300;
         _loc4_.wordWrap = true;
         addChild(_loc4_);
         this.§if const if§ = new §5214236909236922123423632234§();
         this.§if const if§.width = _loc2_.width - 45 - _loc3_.width;
         this.§if const if§.y = 20;
         this.d70bb491();
         addChild(this.§if const if§);
         this.§if const if§.x = _loc3_.x + _loc3_.width + 5;
         §5214239382239395123423632234§.addDialog(this);
      }
      
      private function e1fdb9e2() : void
      {
         this.§5214236164236177123423632234§.removeEventListener("click",this.e17777e6);
         this.§5214239522239535123423632234§ = null;
         this.§5214236164236177123423632234§ = null;
         this.§if const if§ = null;
      }
      
      private function d70bb491() : void
      {
         var _loc1_:Vector.<§while package static§> = §break var false§.getRegisteredCountries();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            this.§if const if§.addItem({
               "rang":0,
               "index":_loc2_,
               "id":_loc2_,
               "gameName":_loc1_[_loc2_].§throw var each§,
               "code":_loc1_[_loc2_].§get for function§
            });
            _loc2_++;
         }
         this.§if const if§.sortOn("gameName");
         if(§break var false§.getDefaultCountryCode())
         {
            this.§if const if§.selectItemByField("code",§break var false§.getDefaultCountryCode());
         }
         else
         {
            this.§if const if§.selectItemByField("id",0);
         }
      }
      
      private function e17777e6(param1:MouseEvent) : void
      {
         §5214239382239395123423632234§.removeDialog(this);
         this.§5214239522239535123423632234§(this.§if const if§.§521423130742313087123423632234§["code"]);
         this.e1fdb9e2();
      }
   }
}

