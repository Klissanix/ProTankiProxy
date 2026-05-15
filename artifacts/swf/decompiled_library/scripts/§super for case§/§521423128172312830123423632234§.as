package §super for case§
{
   import §5214233785233798123423632234§.§include return§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§do var const§;
   
   public class §521423128172312830123423632234§ extends §get var extends§
   {
      
      public static var §switch use var§:ClanUserService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §continue catch extends§:Number = 550;
      
      public static const §return switch if§:Number = 320;
      
      private var §5214234210234223123423632234§:Class = §c61b67f_png$a83dfb916286946b0dae26a7d48470d4-590909006§;
      
      private var §5214238944238957123423632234§:Bitmap = new this.§5214234210234223123423632234§() as Bitmap;
      
      private var §super use break§:§do var const§;
      
      private var §5214234033234046123423632234§:§include return§;
      
      private var §5214231335231348123423632234§:§5214231141231154123423632234§;
      
      public function §521423128172312830123423632234§()
      {
         super();
         this.§super use break§ = new §do var const§();
         this.§super use break§.§extends for native§(§5214236363236376123423632234§.getText("CLAN_BUY_LICENCE"));
         this.§5214231335231348123423632234§ = new §5214231141231154123423632234§();
         this.§5214231335231348123423632234§.wordWrap = true;
         this.§5214231335231348123423632234§.align = "center";
         this.§5214231335231348123423632234§.text = §5214236363236376123423632234§.getText("CLAN_PURCHASE_INFORMATION");
         this.§super use break§.x = 550 - this.§super use break§.width >> 1;
         this.§super use break§.y = 320 - this.§super use break§.height - 11;
         this.§5214234033234046123423632234§ = new §include return§(0,0,4278985229);
         this.§5214234033234046123423632234§.x = 11;
         this.§5214234033234046123423632234§.y = 11;
         this.§5214234033234046123423632234§.width = 550 - 2 * 11;
         this.§5214234033234046123423632234§.height = 320 - this.§super use break§.height - 7 - 2 * 11;
         this.§5214238944238957123423632234§.x = 7;
         this.§5214238944238957123423632234§.y = 7;
         this.§5214238944238957123423632234§.width = this.§5214234033234046123423632234§.width - 2 * 7;
         this.§5214238944238957123423632234§.height = this.§5214238944238957123423632234§.bitmapData.height * this.§5214238944238957123423632234§.width / this.§5214238944238957123423632234§.bitmapData.width;
         this.§5214231335231348123423632234§.x = 7;
         this.§5214231335231348123423632234§.y = this.§5214238944238957123423632234§.y + this.§5214238944238957123423632234§.height + 7;
         this.§5214231335231348123423632234§.width = 550 - 2 * 11;
         this.§5214231335231348123423632234§.height = this.§5214234033234046123423632234§.height - this.§5214238944238957123423632234§.height - 3 * 7;
         §521423108472310860123423632234§.addChild(this.§super use break§);
         §521423108472310860123423632234§.addChild(this.§5214234033234046123423632234§);
         this.§5214234033234046123423632234§.addChild(this.§5214238944238957123423632234§);
         this.§5214234033234046123423632234§.addChild(this.§5214231335231348123423632234§);
         this.§super use break§.addEventListener("click",this.§521423101182310131123423632234§);
         this.§super use break§.enabled = §switch use var§.showBuyLicenseButton;
      }
      
      override public function get width() : Number
      {
         return 550;
      }
      
      override public function get height() : Number
      {
         return 320;
      }
      
      protected function §521423101182310131123423632234§(param1:MouseEvent) : void
      {
         §in catch null§(param1);
      }
      
      override protected function getImageHeader() : String
      {
         return §5214236363236376123423632234§.getText("CLAN_HEADER_LICENSE");
      }
   }
}

