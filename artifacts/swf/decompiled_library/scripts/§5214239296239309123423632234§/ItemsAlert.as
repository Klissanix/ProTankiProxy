package §5214239296239309123423632234§
{
   import §5214233785233798123423632234§.§include return§;
   import §52142358223595123423632234§.PartsList;
   import alternativa.osgi.service.locale.ILocaleService;
   import §continue switch package§.§var use true§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §include else§.§52142345223465123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class ItemsAlert extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var window:§var use true§;
      
      private var §return const set§:§include return§;
      
      private var §extends for package§:§5214231141231154123423632234§;
      
      public var §5214236516236529123423632234§:PartsList;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private var windowWidth:int = 350;
      
      private var windowHeight:int = 350;
      
      private const §52142343223445123423632234§:int = 12;
      
      private const space:int = 8;
      
      public function ItemsAlert(param1:String, param2:String, param3:Function, param4:Object)
      {
         super();
         this.§5214236516236529123423632234§ = new PartsList();
         this.§5214236516236529123423632234§.height = 148;
         param3(param4);
         this.windowWidth = this.§5214236516236529123423632234§.columnWidth * Math.min(3,this.§5214236516236529123423632234§.itemsCount()) + 12 * 2 + 8 * 2;
         this.§extends for package§ = new §5214231141231154123423632234§();
         this.§extends for package§.width = this.windowWidth - 12 * 2 - 8 * 2;
         this.§extends for package§.multiline = true;
         this.§extends for package§.wordWrap = true;
         this.§extends for package§.text = §5214236363236376123423632234§.getText(param2);
         this.window = §var use true§.§set for static§(param1,this.windowWidth,this.windowHeight);
         addChild(this.window);
         this.§return const set§ = new §include return§(0,0,4278985229);
         addChild(this.§return const set§);
         this.§return const set§.x = 12;
         this.§return const set§.y = 12;
         this.§return const set§.width = this.windowWidth - 12 * 2;
         addChild(this.§extends for package§);
         this.§extends for package§.x = 12 + 8;
         this.§extends for package§.y = 12 + 8;
         this.§5214236516236529123423632234§.x = 12 + 8;
         this.§5214236516236529123423632234§.y = this.§extends for package§.y + this.§extends for package§.height + 8;
         this.§5214236516236529123423632234§.width = this.windowWidth - 12 * 2 - 8 * 2;
         addChild(this.§5214236516236529123423632234§);
         this.closeButton = new §5214237085237098123423632234§();
         addChild(this.closeButton);
         this.closeButton.label = §5214236363236376123423632234§.getText("ALERT_ANSWER_OK");
         this.closeButton.x = this.windowWidth - this.closeButton.width >> 1;
         this.closeButton.y = this.§5214236516236529123423632234§.y + this.§5214236516236529123423632234§.height + 8;
         this.windowHeight = this.§extends for package§.height + this.§5214236516236529123423632234§.height + this.closeButton.height + 8 * 4 + 12 * 2;
         this.window.height = this.windowHeight;
         this.§return const set§.height = this.windowHeight - 12 * 3 - this.closeButton.height;
         this.closeButton.addEventListener("click",this.c59713a4);
         this.§5214236516236529123423632234§.addEventListener("SelectPartsListItem",this.c5c79c20);
         §5214239382239395123423632234§.enqueueDialog(this);
      }
      
      private function d8c5f2e() : void
      {
         this.closeButton.removeEventListener("click",this.c59713a4);
         this.§5214236516236529123423632234§.removeEventListener("SelectPartsListItem",this.c5c79c20);
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      override protected function confirmationKeyPressed() : void
      {
         this.c59713a4();
      }
      
      private function c59713a4(param1:MouseEvent = null) : void
      {
         this.d8c5f2e();
         dispatchEvent(new Event("cancel"));
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.c59713a4();
      }
      
      private function c5c79c20(param1:§52142345223465123423632234§) : void
      {
         this.d8c5f2e();
      }
   }
}

