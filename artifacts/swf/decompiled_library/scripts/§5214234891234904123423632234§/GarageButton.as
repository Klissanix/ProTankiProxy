package §5214234891234904123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import §5214237509237522123423632234§.CrystalIcon;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.CrystalLabel;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.money.§false catch case§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import §implements for each§.§5214237300237313123423632234§;
   import §in set var§.§521423106942310707123423632234§;
   import §include else§.§do package in§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import §true switch true§.§do var const§;
   
   public class GarageButton extends §do var const§ implements §false catch case§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §var var finally§:IMoneyService;
      
      public static var §with var try§:PremiumService;
      
      private var §in package if§:Sprite = new DiscreteSprite();
      
      private var §null catch try§:CrystalLabel = new CrystalLabel();
      
      private var §for set catch§:§521423106942310707123423632234§ = new §521423106942310707123423632234§();
      
      private var §5214236045236058123423632234§:§5214237300237313123423632234§ = new §5214237300237313123423632234§();
      
      private var §5214232300232313123423632234§:Bitmap = CrystalIcon.createSmallInstance();
      
      private var §5214235425235438123423632234§:Sprite = new DiscreteSprite();
      
      private var §521423126462312659123423632234§:CrystalLabel = new CrystalLabel();
      
      private var §5214239459239472123423632234§:§521423106942310707123423632234§ = new §521423106942310707123423632234§();
      
      private var §5214238830238843123423632234§:int;
      
      public function GarageButton(param1:int = 120)
      {
         super();
         this.width = param1;
         addEventListener("FormEventFormDestoy",this.onDestroy);
         §var var finally§.addListener(this);
         this.§521423126462312659123423632234§.setSharpness(-100);
         this.§521423126462312659123423632234§.setThickness(100);
         this.§null catch try§.setSharpness(-100);
         this.§null catch try§.setThickness(100);
         this.§for set catch§.color = 16731648;
         this.§for set catch§.sharpness = -100;
         this.§for set catch§.thickness = 100;
         this.§in package if§.addChild(this.§null catch try§);
         this.§in package if§.addChild(this.§for set catch§);
         this.§5214236045236058123423632234§.y = 3;
         this.§in package if§.addChild(this.§5214236045236058123423632234§);
         this.§5214232300232313123423632234§.y = 4;
         this.§in package if§.addChild(this.§5214232300232313123423632234§);
         this.§for set catch§.text = §5214236363236376123423632234§.getText("GARAGE_BUY_BUTTON_RANK_LABEL");
         this.§5214235425235438123423632234§.addChild(this.§521423126462312659123423632234§);
         this.§5214235425235438123423632234§.addChild(this.§5214239459239472123423632234§);
         §var switch override§.addChild(this.§in package if§);
         §var switch override§.addChild(this.§5214235425235438123423632234§);
         addChild(§var switch override§);
      }
      
      private function d600c0d3() : void
      {
         this.§5214235425235438123423632234§.visible = true;
         super.§52142314823161123423632234§(§continue use with§,this.§in package if§,this.§5214235425235438123423632234§);
      }
      
      private function f53ce2cb() : void
      {
         this.§5214235425235438123423632234§.visible = false;
         super.§continue const true§(§continue use with§,this.§in package if§);
      }
      
      private function a6b73db0() : void
      {
         if(§var var finally§.crystal < this.§5214238830238843123423632234§)
         {
            this.§521423126462312659123423632234§.setColor(16731648);
            this.§null catch try§.setColor(16731648);
         }
         else if(this.§5214238830238843123423632234§ == 0)
         {
            this.§521423126462312659123423632234§.setColor(11206400);
            this.§null catch try§.setColor(11206400);
         }
         else
         {
            this.§null catch try§.setColor(16777215);
            this.§521423126462312659123423632234§.setColor(16777215);
         }
      }
      
      public function crystalsChanged(param1:int) : void
      {
         this.a6b73db0();
      }
      
      public function setInfo(param1:int, param2:int = 1, param3:int = 0, param4:Boolean = false) : void
      {
         param1 *= param2;
         this.§5214238830238843123423632234§ = param1;
         var _loc5_:int = param1;
         this.a6b73db0();
         this.§null catch try§.setCost(_loc5_);
         this.label = "";
         §var switch override§.visible = true;
         §var switch override§.x = 0;
         §continue use with§.x = (§5214237851237864123423632234§ - §continue use with§.width) * 0.5;
         if(param3 < 0)
         {
            param3 = -param3;
            this.§5214236045236058123423632234§.init(param4 && !§with var try§.hasPremium(),param3);
            this.§null catch try§.x = (§5214237851237864123423632234§ - (this.§null catch try§.width + this.§for set catch§.width + this.§5214236045236058123423632234§.width + 4 - 1)) * 0.5;
            this.§for set catch§.x = this.§null catch try§.x + this.§null catch try§.width + 5;
            this.§5214236045236058123423632234§.x = this.§for set catch§.x + this.§for set catch§.width;
            this.§5214236045236058123423632234§.visible = true;
            this.§for set catch§.visible = true;
            this.§5214232300232313123423632234§.visible = false;
            enabled = false;
         }
         else
         {
            this.§for set catch§.visible = false;
            this.§5214236045236058123423632234§.visible = false;
            enabled = !param4 || §with var try§.hasPremium();
            this.§5214232300232313123423632234§.visible = !enabled;
            this.§null catch try§.x = (§5214237851237864123423632234§ - this.§null catch try§.width - (this.§5214232300232313123423632234§.visible ? this.§5214232300232313123423632234§.width : 0)) * 0.5;
            this.§5214232300232313123423632234§.x = this.§null catch try§.x + this.§null catch try§.width + 5;
         }
         this.f53ce2cb();
      }
      
      private function onDestroy(param1:§do package in§) : void
      {
         §var var finally§.removeListener(this);
         removeEventListener("FormEventFormDestoy",this.onDestroy);
      }
   }
}

