package §switch package extends§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.§try var if§;
   import alternativa.tanks.newbieservice.NewbieUserService;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §for switch catch§.DateTimeHelper;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class NewbiesAbonementInfoWindow extends DialogWindow implements §try var if§, §5214235988236001123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §implements const var§:NewbieUserService;
      
      private var §switch set case§:Boolean;
      
      private var window:§native for dynamic§;
      
      private var §return const set§:§include return§;
      
      private var §5214237606237619123423632234§:§5214231141231154123423632234§;
      
      private var §finally use if§:Bitmap;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private var windowWidth:int = 450;
      
      private const §function continue§:int = 12;
      
      private const §5214236332236345123423632234§:int = 9;
      
      private const §5214235128235141123423632234§:Point = new Point(104,33);
      
      private const §5214235646235659123423632234§:int = 300;
      
      private var §static use use§:String;
      
      private var §null const default§:RegExp = /CRYSTAL_BONUS/gi;
      
      private var §for use dynamic§:RegExp = /EXPERIENCE_BONUS/gi;
      
      public function NewbiesAbonementInfoWindow(param1:Date, param2:int, param3:int, param4:§include catch with§)
      {
         super();
         var _loc5_:String = DateTimeHelper.formatDateTimeWithExpiredLabel(param1);
         this.§static use use§ = §5214236363236376123423632234§.getText("NEWBIES_ABONEMENT_WINDOW_TEXT");
         this.§static use use§ += "\r\n" + _loc5_;
         this.§static use use§ = this.§static use use§.replace(this.§null const default§,param2).replace(this.§for use dynamic§,param3);
         var _loc6_:§include catch with§ = param4;
         if((_loc6_.§else for include§ & 1) != 0)
         {
            this.§finally use if§ = new Bitmap(param4.data);
            this.init();
         }
         else
         {
            var _loc7_:§include catch with§ = param4;
            if(_loc7_.§5214239618239631123423632234§.§521423137152313728123423632234§)
            {
               param4.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
            }
         }
      }
      
      override protected function confirmationKeyPressed() : void
      {
         this.c59713a4();
      }
      
      private function init() : void
      {
         this.§switch set case§ = true;
         this.windowWidth = Math.max(this.§finally use if§.width + 12 * 2 + 9 * 2,300);
         this.window = new §native for dynamic§(this.windowWidth,this.§finally use if§.height);
         this.window.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.window.§extends catch default§ = §native set dynamic§.§null catch super§;
         addChild(this.window);
         this.§return const set§ = new §include return§(0,0,4278985229);
         addChild(this.§return const set§);
         this.§return const set§.x = 12;
         this.§return const set§.y = 12;
         this.§finally use if§.x = this.windowWidth - this.§finally use if§.width >> 1;
         this.§finally use if§.y = 12 * 2;
         addChild(this.§finally use if§);
         this.§5214237606237619123423632234§ = new §5214231141231154123423632234§();
         this.§5214237606237619123423632234§.align = "left";
         this.§5214237606237619123423632234§.wordWrap = true;
         this.§5214237606237619123423632234§.multiline = true;
         this.§5214237606237619123423632234§.§521423102842310297123423632234§ = 12;
         this.§5214237606237619123423632234§.color = 5898034;
         this.§5214237606237619123423632234§.htmlText = this.§static use use§;
         this.§5214237606237619123423632234§.x = 12 * 2;
         this.§5214237606237619123423632234§.y = this.§finally use if§.y + this.§finally use if§.height + 9;
         this.§5214237606237619123423632234§.width = this.windowWidth - 12 * 4;
         addChild(this.§5214237606237619123423632234§);
         if(this.§5214237606237619123423632234§.numLines > 2)
         {
            this.§5214237606237619123423632234§.htmlText = this.§static use use§;
            this.§5214237606237619123423632234§.width = this.windowWidth - 12 * 4;
         }
         this.closeButton = new §5214237085237098123423632234§();
         addChild(this.closeButton);
         this.closeButton.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         var _loc1_:int = this.§finally use if§.height + this.closeButton.height + 9 * 2 + 12 * 3;
         if(this.§5214237606237619123423632234§ != null)
         {
            _loc1_ += this.§5214237606237619123423632234§.height + 9;
         }
         this.window.height = _loc1_;
         this.closeButton.y = this.window.height - 9 - 35;
         this.closeButton.x = this.window.width - this.closeButton.width >> 1;
         this.§return const set§.width = this.window.width - 12 * 2;
         this.§return const set§.height = this.window.height - 12 - 9 * 2 - this.§5214235128235141123423632234§.y + 2;
         this.closeButton.addEventListener("click",this.c59713a4);
         §5214239382239395123423632234§.enqueueDialog(this);
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         this.§finally use if§ = new Bitmap(param1.data);
         this.init();
      }
      
      public function destroy() : void
      {
         if(this.§switch set case§)
         {
            this.§switch set case§ = false;
            this.closeButton.removeEventListener("click",this.c59713a4);
            §5214239382239395123423632234§.removeDialog(this);
         }
      }
      
      private function c59713a4(param1:MouseEvent = null) : void
      {
         if(§implements const var§.isNewbieUser)
         {
            §implements const var§.isNewbieUser = false;
         }
         this.destroy();
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.c59713a4();
      }
   }
}

