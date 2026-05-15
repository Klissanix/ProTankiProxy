package §5214231644231657123423632234§
{
   import §521423124882312501123423632234§.§521423102602310273123423632234§;
   import §521423124882312501123423632234§.§5214238746238759123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import flash.events.MouseEvent;
   import §super for case§.§get var extends§;
   import §true switch true§.§5214237085237098123423632234§;
   import §use continue§.§dynamic const include§;
   
   public class §521423116892311702123423632234§ extends §get var extends§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static const §continue catch extends§:Number = 900;
      
      public static const §return switch if§:Number = 500;
      
      private var §5214237633237646123423632234§:§dynamic const include§ = new §dynamic const include§();
      
      private var §default switch extends§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      private var §5214231935231948123423632234§:§521423102602310273123423632234§;
      
      private var §521423138342313847123423632234§:§5214238746238759123423632234§;
      
      public function §521423116892311702123423632234§()
      {
         super();
         this.§5214237633237646123423632234§.width = 120;
         this.§5214237633237646123423632234§.x = 900 - this.§5214237633237646123423632234§.width - 11;
         this.§5214237633237646123423632234§.y = 11;
         this.§5214237633237646123423632234§.label = §5214236363236376123423632234§.getText("CLAN_INCOMING");
         this.§5214237633237646123423632234§.addEventListener("click",this.§5214232788232801123423632234§);
         addChild(this.§5214237633237646123423632234§);
         this.§default switch extends§.width = 120;
         this.§default switch extends§.x = this.§5214237633237646123423632234§.x - this.§default switch extends§.width - 11;
         this.§default switch extends§.y = 11;
         this.§default switch extends§.label = §5214236363236376123423632234§.getText("CLAN_OUTGOUNG");
         this.§default switch extends§.addEventListener("click",this.§use for set§);
         addChild(this.§default switch extends§);
         if(ClanUserNotificationsManager.getIncomingNotificationsCount() > 0)
         {
            this.§5214232788232801123423632234§();
         }
         else
         {
            this.§use for set§();
         }
      }
      
      private function §dynamic for each§() : void
      {
         if(this.§5214231935231948123423632234§ != null)
         {
            if(contains(this.§5214231935231948123423632234§))
            {
               removeChild(this.§5214231935231948123423632234§);
            }
            this.§5214231935231948123423632234§.destroy();
            this.§5214231935231948123423632234§ = null;
         }
      }
      
      override protected function getImageHeader() : String
      {
         return §5214236363236376123423632234§.getText("CLAN_HEADER_MANAGMENT");
      }
      
      override public function get width() : Number
      {
         return 900;
      }
      
      private function §5214232788232801123423632234§(param1:MouseEvent = null) : void
      {
         this.§null package override§();
         this.§5214231935231948123423632234§ = new §521423102602310273123423632234§(closeButton.width);
         this.§5214231935231948123423632234§.x = 0;
         this.§5214231935231948123423632234§.y = this.§5214237633237646123423632234§.y + this.§5214237633237646123423632234§.height;
         this.§5214231935231948123423632234§.width = 900;
         this.§5214231935231948123423632234§.height = 500 - this.§default switch extends§.y - this.§default switch extends§.height;
         addChild(this.§5214231935231948123423632234§);
         this.§default switch extends§.enable = true;
         this.§5214237633237646123423632234§.enable = false;
      }
      
      override public function destroy() : void
      {
         this.§5214237633237646123423632234§.removeEventListener("click",this.§5214232788232801123423632234§);
         this.§default switch extends§.removeEventListener("click",this.§use for set§);
         this.§dynamic for each§();
         this.§null package override§();
         this.§5214237633237646123423632234§.destroy();
         super.destroy();
      }
      
      override public function get height() : Number
      {
         return 500;
      }
      
      private function §use for set§(param1:MouseEvent = null) : void
      {
         this.§dynamic for each§();
         this.§521423138342313847123423632234§ = new §5214238746238759123423632234§(closeButton.width);
         this.§521423138342313847123423632234§.x = 0;
         this.§521423138342313847123423632234§.y = this.§5214237633237646123423632234§.y + this.§5214237633237646123423632234§.height;
         this.§521423138342313847123423632234§.width = 900;
         this.§521423138342313847123423632234§.height = 500 - this.§default switch extends§.y - this.§default switch extends§.height;
         addChild(this.§521423138342313847123423632234§);
         this.§default switch extends§.enable = false;
         this.§5214237633237646123423632234§.enable = true;
      }
      
      private function §null package override§() : void
      {
         if(this.§521423138342313847123423632234§ != null)
         {
            if(contains(this.§521423138342313847123423632234§))
            {
               removeChild(this.§521423138342313847123423632234§);
            }
            this.§521423138342313847123423632234§.destroy();
            this.§521423138342313847123423632234§ = null;
         }
      }
   }
}

