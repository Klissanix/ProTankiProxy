package alternativa.tanks.gui
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import §if const return§.BonusDetach;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class CongratulationsWindowPresent extends DialogWindow implements §try var if§, §5214235988236001123423632234§
   {
      
      public static var display:IDisplay;
      
      public static var §default finally§:IDialogsService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §5214237180237193123423632234§:Long;
      
      private var §switch set case§:Boolean;
      
      private var window:§native for dynamic§;
      
      private var §return const set§:§include return§;
      
      private var §5214232679232692123423632234§:§5214231141231154123423632234§;
      
      private var §5214237606237619123423632234§:§5214231141231154123423632234§;
      
      private var §finally use if§:Bitmap;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private var windowWidth:int = 450;
      
      private const §52142343223445123423632234§:int = 12;
      
      private const §final var class§:int = 9;
      
      private const §5214237400237413123423632234§:Point = new Point(104,33);
      
      private const space:int = 8;
      
      private const minWidth:int = 300;
      
      private var §52142375823771123423632234§:§521423120252312038123423632234§;
      
      private var §5214236870236883123423632234§:§include catch with§;
      
      private var §52142352723540123423632234§:String;
      
      private var §static use use§:String;
      
      public function CongratulationsWindowPresent(param1:BitmapData, param2:§include catch with§, param3:String = "", param4:String = "", param5:§521423120252312038123423632234§ = null)
      {
         super();
         this.§5214236870236883123423632234§ = param2;
         this.§52142352723540123423632234§ = param3;
         this.§static use use§ = param4;
         this.§52142375823771123423632234§ = param5;
         if(param1 != null)
         {
            this.init(param1);
         }
         else
         {
            var _loc6_:§include catch with§ = param2;
            var _loc7_:§include catch with§;
            if(_loc6_.§5214239618239631123423632234§.§521423137152313728123423632234§ && ((_loc7_ = param2).§else for include§ & 1) == 0)
            {
               var _loc8_:§include catch with§;
               this.§5214237180237193123423632234§ = (_loc8_ = param2).§5214239618239631123423632234§.id;
               param2.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
            }
            else
            {
               this.init(param2.data);
            }
         }
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         if(this.§5214237180237193123423632234§ == param1.§5214239618239631123423632234§.id)
         {
            this.init(param1.data);
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:BonusDetach = null;
         if(this.§switch set case§)
         {
            this.§switch set case§ = false;
            this.closeButton.removeEventListener("click",this.f646ac94);
            §default finally§.removeDialog(this);
            if(this.§52142375823771123423632234§ != null)
            {
               _loc1_ = new BonusDetach(this.§52142375823771123423632234§);
               _loc1_.detach();
               this.§52142375823771123423632234§ = null;
            }
            this.§5214237180237193123423632234§ = null;
         }
      }
      
      private function f646ac94(param1:MouseEvent = null) : void
      {
         this.destroy();
      }
      
      private function init(param1:BitmapData) : void
      {
         this.§switch set case§ = true;
         this.§finally use if§ = new Bitmap(param1);
         this.windowWidth = Math.max(this.§finally use if§.width + 12 * 2 + 9 * 2,300);
         this.window = new §native for dynamic§(this.windowWidth,this.§finally use if§.height);
         addChild(this.window);
         this.window.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.window.§extends catch default§ = §native set dynamic§.§null catch super§;
         this.§return const set§ = new §include return§(0,0,4278985229);
         addChild(this.§return const set§);
         this.§return const set§.x = 12;
         this.§return const set§.y = 12;
         if(this.§52142352723540123423632234§ != null && this.§52142352723540123423632234§ != "")
         {
            this.§5214232679232692123423632234§ = new §5214231141231154123423632234§();
            this.§5214232679232692123423632234§.align = "center";
            this.§5214232679232692123423632234§.wordWrap = true;
            this.§5214232679232692123423632234§.multiline = true;
            this.§5214232679232692123423632234§.§521423102842310297123423632234§ = 12;
            this.§5214232679232692123423632234§.htmlText = this.§52142352723540123423632234§;
            this.§5214232679232692123423632234§.color = 5898034;
            this.§5214232679232692123423632234§.x = 12 * 2;
            this.§5214232679232692123423632234§.y = 12 * 2;
            this.§5214232679232692123423632234§.width = this.windowWidth - 12 * 4;
            addChild(this.§5214232679232692123423632234§);
            if(this.§5214232679232692123423632234§.numLines > 2)
            {
               this.§5214232679232692123423632234§.align = "left";
               this.§5214232679232692123423632234§.htmlText = this.§52142352723540123423632234§;
               this.§5214232679232692123423632234§.width = this.windowWidth - 12 * 4;
            }
         }
         this.§finally use if§.x = this.windowWidth - this.§finally use if§.width >> 1;
         this.§finally use if§.y = this.§5214232679232692123423632234§ != null ? this.§5214232679232692123423632234§.y + this.§5214232679232692123423632234§.height + 9 : 24;
         addChild(this.§finally use if§);
         if(this.§static use use§ != null && this.§static use use§ != "")
         {
            this.§5214237606237619123423632234§ = new §5214231141231154123423632234§();
            this.§5214237606237619123423632234§.align = "center";
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
               this.§5214232679232692123423632234§.align = "left";
               this.§5214237606237619123423632234§.htmlText = this.§static use use§;
               this.§5214237606237619123423632234§.width = this.windowWidth - 12 * 4;
            }
         }
         this.closeButton = new §5214237085237098123423632234§();
         addChild(this.closeButton);
         this.closeButton.label = §5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT");
         var _loc2_:int = this.§finally use if§.height + this.closeButton.height + 9 * 2 + 12 * 3;
         if(this.§5214232679232692123423632234§ != null)
         {
            _loc2_ += this.§5214232679232692123423632234§.height + 9;
         }
         if(this.§5214237606237619123423632234§ != null)
         {
            _loc2_ += this.§5214237606237619123423632234§.height + 9;
         }
         this.window.height = _loc2_;
         this.closeButton.y = this.window.height - 9 - 35;
         this.closeButton.x = this.window.width - this.closeButton.width >> 1;
         this.§return const set§.width = this.window.width - 12 * 2;
         this.§return const set§.height = this.window.height - 12 - 9 * 2 - this.§5214237400237413123423632234§.y + 2;
         this.closeButton.addEventListener("click",this.f646ac94);
         §default finally§.addDialog(this);
      }
   }
}

