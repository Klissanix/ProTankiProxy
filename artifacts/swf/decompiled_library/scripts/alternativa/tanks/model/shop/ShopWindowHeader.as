package alternativa.tanks.model.shop
{
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§include return§;
   import §5214238087238100123423632234§.§while package static§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.country.CountryService;
   import §case catch override§.§5214236909236922123423632234§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class ShopWindowHeader extends Sprite
   {
      
      public static var §break var false§:CountryService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      public static var §for continue§:ResourceRegistry;
      
      public static const §function continue§:int = 11;
      
      private var §super return§:Bitmap;
      
      private var header:§5214231141231154123423632234§;
      
      private var §var set static§:§include return§;
      
      public var §521423135762313589123423632234§:§5214236909236922123423632234§;
      
      private var §5214234752234765123423632234§:§5214231141231154123423632234§;
      
      private var §521423130442313057123423632234§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      public function ShopWindowHeader()
      {
         super();
         this.§var set static§ = new §include return§(0,0,16744512);
         addChild(this.§var set static§);
         this.§super return§ = new Bitmap();
         var _loc1_:§include catch with§ = §include catch with§(§for continue§.getResource(Long.fromInt(1151)));
         if(_loc1_ != null)
         {
            this.§super return§.bitmapData = _loc1_.data;
            this.§super return§.smoothing = true;
            this.§super return§.scaleX = this.§super return§.scaleY = 0.75;
         }
         addChild(this.§super return§);
         this.§super return§.x = 11;
         this.§super return§.y = 5;
         this.header = new §5214231141231154123423632234§();
         addChild(this.header);
         this.header.multiline = true;
         this.header.wordWrap = true;
         this.header.x = this.§super return§.x + this.§super return§.width + 11;
         this.header.htmlText = §5214236363236376123423632234§.getText("SHOP_WINDOW_HEADER_DESCRIPTION");
         if(ShopWindow.§52142358723600123423632234§)
         {
            this.§521423130442313057123423632234§.multiline = true;
            this.§521423130442313057123423632234§.wordWrap = true;
            this.§521423130442313057123423632234§.x = this.§super return§.x + this.§super return§.width + 11;
            this.§521423130442313057123423632234§.htmlText = §5214236363236376123423632234§.getText("SHOP_CATEGORY_DOUBLE_CRYSTALS");
            this.§521423130442313057123423632234§.bold = true;
            this.§521423130442313057123423632234§.color = 16760355;
            addChild(this.§521423130442313057123423632234§);
         }
         if(§break var false§.chooseCountryForPayment())
         {
            this.§521423135762313589123423632234§ = new §5214236909236922123423632234§();
            this.§521423135762313589123423632234§.width = 160;
            this.initCountries();
            addChild(this.§521423135762313589123423632234§);
            this.§521423135762313589123423632234§.addEventListener("change",this.a7384ed1);
            this.§5214234752234765123423632234§ = new §5214231141231154123423632234§();
            this.§5214234752234765123423632234§.text = §5214236363236376123423632234§.getText("CHECK_YOU_LOCATION_TEXT");
            addChild(this.§5214234752234765123423632234§);
         }
      }
      
      public function resize(param1:int) : void
      {
         this.§var set static§.width = param1;
         this.§var set static§.height = this.§super return§.height + (ShopWindow.§52142358723600123423632234§ ? 55 : 35);
         this.header.width = param1 - this.header.x - 11;
         this.header.y = this.§super return§.y + (this.§super return§.height - this.header.textHeight >> 1);
         this.§521423130442313057123423632234§.width = param1 - this.header.x - 11;
         this.§521423130442313057123423632234§.y = this.header.y + this.header.height;
         if(§break var false§.chooseCountryForPayment())
         {
            this.§521423135762313589123423632234§.y = this.§var set static§.height - this.§521423135762313589123423632234§.§do use for§ - 15;
            this.§521423135762313589123423632234§.x = this.§var set static§.width - this.§521423135762313589123423632234§.width + 5;
            this.§5214234752234765123423632234§.y = this.§521423135762313589123423632234§.y + 6;
            this.§5214234752234765123423632234§.x = this.§521423135762313589123423632234§.x - this.§5214234752234765123423632234§.width - 5;
         }
      }
      
      private function a7384ed1(param1:Event) : void
      {
         §break var false§.changeCountry(this.§521423135762313589123423632234§.§521423130742313087123423632234§["code"]);
         dispatchEvent(new Event("close"));
         §continue for final§.showPayment();
      }
      
      public function initCountries() : void
      {
         var _loc1_:Vector.<§while package static§> = §break var false§.getRegisteredCountries();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            this.§521423135762313589123423632234§.addItem({
               "rang":0,
               "index":_loc2_,
               "id":_loc2_,
               "gameName":_loc1_[_loc2_].§throw var each§,
               "code":_loc1_[_loc2_].§get for function§
            });
            _loc2_++;
         }
         this.§521423135762313589123423632234§.sortOn("gameName");
         if(§break var false§.getDefaultCountryCode())
         {
            this.§521423135762313589123423632234§.selectItemByField("code",§break var false§.getDefaultCountryCode());
         }
         else
         {
            this.§521423135762313589123423632234§.selectItemByField("id",0);
         }
      }
      
      override public function get height() : Number
      {
         return this.§var set static§.height;
      }
   }
}

