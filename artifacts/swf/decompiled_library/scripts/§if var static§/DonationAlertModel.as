package §if var static§
{
   import §521423131142313127123423632234§.§5214232887232900123423632234§;
   import §521423131142313127123423632234§.§5214236688236701123423632234§;
   import §5214233087233100123423632234§.§super var switch§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.ThanksForPurchaseWindow;
   import flash.display.BitmapData;
   import flash.events.Event;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   
   public class DonationAlertModel extends §5214232887232900123423632234§ implements §5214236688236701123423632234§
   {
      
      public static var §default finally§:IDialogsService;
      
      public static var display:IDisplay;
      
      private var §52142386523878123423632234§:int = 0;
      
      private var §in switch while§:int = 0;
      
      private var §5214236956236969123423632234§:int = 0;
      
      private var §521423123532312366123423632234§:int = 0;
      
      private var window:ThanksForPurchaseWindow = null;
      
      private var §return switch dynamic§:int;
      
      private var image:BitmapData;
      
      public function DonationAlertModel()
      {
         super();
      }
      
      private function show() : void
      {
         this.window.closeButton.addEventListener("click",this.b35a7fd9);
         §default finally§.addDialog(this.window);
      }
      
      private function b35a7fd9(param1:Event) : void
      {
         §default finally§.removeDialog(this.window);
         this.window = null;
         if(this.§52142386523878123423632234§ > 0)
         {
            this.window = new ThanksForPurchaseWindow(this.image,this.§52142386523878123423632234§,this.§5214236956236969123423632234§,this.§in switch while§,this.§521423123532312366123423632234§);
            this.§52142386523878123423632234§ = 0;
            this.§in switch while§ = 0;
            this.§5214236956236969123423632234§ = 0;
            this.§521423123532312366123423632234§ = 0;
            this.§return switch dynamic§ = 10;
            display.stage.addEventListener("enterFrame",this.c183e96e);
         }
      }
      
      public function showDonationAlert(param1:int, param2:int, param3:int, param4:int, param5:§super var switch§) : void
      {
         if(this.window == null)
         {
            this.image = param5.data;
            this.window = new ThanksForPurchaseWindow(param5.data,param1,param2,param3,param4);
            this.show();
         }
         else
         {
            this.§52142386523878123423632234§ += param1;
            this.§in switch while§ += param3;
            this.§5214236956236969123423632234§ += param2;
            this.§521423123532312366123423632234§ += param4;
         }
      }
      
      private function c183e96e(param1:Event) : void
      {
         --this.§return switch dynamic§;
         if(this.§return switch dynamic§ == 0)
         {
            this.show();
            display.stage.removeEventListener("enterFrame",this.c183e96e);
         }
      }
   }
}

