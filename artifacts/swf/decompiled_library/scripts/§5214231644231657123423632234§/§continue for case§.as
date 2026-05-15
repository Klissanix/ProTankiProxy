package §5214231644231657123423632234§
{
   import §5214233785233798123423632234§.§include return§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import §super for case§.§521423128172312830123423632234§;
   import §super for case§.§get var extends§;
   import §super for case§.§throw package false§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§do var const§;
   import §use continue§.§5214236761236774123423632234§;
   import utils.TimeFormatter;
   
   public class §continue for case§ extends §get var extends§
   {
      
      public static var §switch use var§:ClanUserService;
      
      public static var §break use do§:IAlertService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static const §521423110342311047123423632234§:Number = 7;
      
      public static const §5214236332236345123423632234§:Number = 11;
      
      public static const §continue catch extends§:Number = 790;
      
      public static const §return switch if§:Number = 450;
      
      private static var §521423131582313171123423632234§:Class = §c1067gd_png$6aeb4c307ca93cbf5fdb19117c00538a-229530196§;
      
      private static const §5214233309233322123423632234§:Bitmap = new §521423131582313171123423632234§();
      
      private var §final package if§:§521423120252312038123423632234§;
      
      private var §continue use include§:§5214231141231154123423632234§;
      
      private var §5214232652232665123423632234§:§include return§;
      
      private var §5214231843231856123423632234§:§do var const§ = new §do var const§();
      
      private var §5214236927236940123423632234§:§5214236761236774123423632234§ = new §5214236761236774123423632234§();
      
      private var §521423114532311466123423632234§:§get var extends§;
      
      private var §521423138672313880123423632234§:int = 0;
      
      private var §521423116842311697123423632234§:uint = 0;
      
      public function §continue for case§(param1:§521423120252312038123423632234§)
      {
         super();
         this.§final package if§ = param1;
         ClanUserNotificationsManager.addIncomingIndicatorListener(this.§5214236927236940123423632234§);
         this.init();
      }
      
      private function §5214236574236587123423632234§(param1:MouseEvent) : void
      {
         this.§521423114532311466123423632234§ = new §521423116892311702123423632234§();
      }
      
      private function §each default§(param1:MouseEvent) : void
      {
         if(§switch use var§.hasClanLicense)
         {
            this.§521423114532311466123423632234§ = new §throw package false§();
         }
         else
         {
            this.§521423114532311466123423632234§ = new §521423128172312830123423632234§();
         }
      }
      
      override public function destroy() : void
      {
         §switch use var§.hideNotInClanPanel();
         ClanUserNotificationsManager.removeIncomingIndicatorListener(this.§5214236927236940123423632234§);
         this.§5214236927236940123423632234§.destroy();
         if(this.§521423114532311466123423632234§ != null)
         {
            this.§521423114532311466123423632234§.destroy();
         }
         clearInterval(this.§521423116842311697123423632234§);
         super.destroy();
      }
      
      private function §for catch false§() : void
      {
         --this.§final var catch§;
         if(this.§final var catch§ <= 0)
         {
            clearInterval(this.§521423116842311697123423632234§);
            this.§521423116842311697123423632234§ = 0;
            this.§final var catch§ = 0;
            this.§5214236927236940123423632234§.enabled = true;
         }
         else
         {
            this.§5214236927236940123423632234§.enabled = false;
            this.§5214236927236940123423632234§.label = TimeFormatter.format(this.§final var catch§);
         }
      }
      
      public function set §final var catch§(param1:int) : void
      {
         this.§521423138672313880123423632234§ = param1;
      }
      
      public function init() : void
      {
         this.§5214232652232665123423632234§ = new §include return§(0,0,4278985229);
         addChild(this.§5214232652232665123423632234§);
         addChild(§5214233309233322123423632234§);
         this.§continue use include§ = new §5214231141231154123423632234§();
         this.§continue use include§.align = "center";
         this.§continue use include§.text = §5214236363236376123423632234§.getText("CLAN_DESCRIPTION");
         this.§5214232652232665123423632234§.addChild(this.§continue use include§);
         §5214233309233322123423632234§.x = 790 / 2 - §5214233309233322123423632234§.width / 2 + 1;
         §5214233309233322123423632234§.y = 2 * 11;
         this.§5214232652232665123423632234§.width = 790 - 2 * 11;
         this.§5214232652232665123423632234§.height = 450 - this.§5214231843231856123423632234§.height - 3 * 11;
         this.§5214232652232665123423632234§.x = 11;
         this.§5214232652232665123423632234§.y = 11;
         this.§continue use include§.width = this.§5214232652232665123423632234§.width - 2 * 11;
         this.§continue use include§.height = this.§5214232652232665123423632234§.height - 2 * 11;
         this.§continue use include§.x = this.§5214232652232665123423632234§.width / 2 - this.§continue use include§.width / 2;
         this.§continue use include§.y = §5214233309233322123423632234§.y + §5214233309233322123423632234§.height + 11;
         this.§5214231843231856123423632234§.label = §5214236363236376123423632234§.getText("CLAN_CREATE");
         this.§5214231843231856123423632234§.addEventListener("click",this.§each default§);
         this.§5214231843231856123423632234§.x = 790 / 2 - this.§5214231843231856123423632234§.width - 13;
         this.§5214231843231856123423632234§.y = 450 - this.§5214231843231856123423632234§.height - 11;
         addChild(this.§5214231843231856123423632234§);
         this.§5214236927236940123423632234§.label = §5214236363236376123423632234§.getText("CLAN_SEARCH");
         this.§5214236927236940123423632234§.addEventListener("click",this.§5214236574236587123423632234§);
         this.§5214236927236940123423632234§.x = 408;
         this.§5214236927236940123423632234§.y = this.§5214231843231856123423632234§.y;
         addChild(this.§5214236927236940123423632234§);
         this.§while const try§();
      }
      
      override public function get height() : Number
      {
         return 450;
      }
      
      public function §while const try§() : void
      {
         this.§final var catch§ = §5214234066234079123423632234§.restrictionTime;
         if(this.§final var catch§ > 0 && this.§521423116842311697123423632234§ == 0)
         {
            this.§for catch false§();
            this.§521423116842311697123423632234§ = setInterval(this.§for catch false§,1000);
         }
      }
      
      public function get §final var catch§() : int
      {
         return this.§521423138672313880123423632234§;
      }
      
      public function §5214232382232395123423632234§() : void
      {
         §break use do§.showOkAlert(§5214236363236376123423632234§.getText("CLAN_ALERT_CLAN_FULL"));
      }
      
      override protected function getImageHeader() : String
      {
         return §5214236363236376123423632234§.getText("CLAN_HEADER_CLAN");
      }
      
      override public function get width() : Number
      {
         return 790;
      }
   }
}

