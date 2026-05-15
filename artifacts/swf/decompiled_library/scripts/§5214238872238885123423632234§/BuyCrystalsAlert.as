package §5214238872238885123423632234§
{
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.events.Event;
   import §super use true§.§521423126072312620123423632234§;
   import §true switch true§.§52142336223375123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   import §with switch break§.PanelModel;
   
   public class BuyCrystalsAlert extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §package set break§:Class = §D61f565_png$7310d6f8a75895009d44a25f4d484173-1103039290§;
      
      public static const image:Bitmap = new Bitmap(new §package set break§().bitmapData);
      
      private var §5214235088235101123423632234§:§521423126072312620123423632234§;
      
      private var §super use break§:§52142336223375123423632234§;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private var crystals:int;
      
      public function BuyCrystalsAlert(param1:int)
      {
         super();
         this.§5214235088235101123423632234§ = new §521423126072312620123423632234§(416,270,30);
         addChild(this.§5214235088235101123423632234§);
         this.crystals = param1;
         this.§5214235088235101123423632234§.§521423108472310860123423632234§.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         this.§5214235088235101123423632234§.§521423108472310860123423632234§.§extends catch default§ = §native set dynamic§.§package const const§;
         this.§super use break§ = new §52142336223375123423632234§();
         this.§super use break§.label = §5214236363236376123423632234§.getText("GARAGE_BUY_TEXT");
         this.§super use break§.x = this.§5214235088235101123423632234§.§return const set§.x;
         this.§super use break§.y = this.§5214235088235101123423632234§.§return const set§.y + this.§5214235088235101123423632234§.§return const set§.height + 9;
         this.§5214235088235101123423632234§.§521423108472310860123423632234§.addChild(this.§super use break§);
         this.closeButton = new §5214237085237098123423632234§();
         this.closeButton.width = 95;
         this.closeButton.label = §5214236363236376123423632234§.getText("GARAGE_CLOSE_TEXT");
         this.closeButton.y = this.§super use break§.y - 1;
         this.closeButton.x = this.§5214235088235101123423632234§.§return const set§.x + this.§5214235088235101123423632234§.§return const set§.width - this.closeButton.width;
         var _loc2_:Bitmap = new Bitmap(§5214236363236376123423632234§.getImage("GARAGE_ADD_MORE_CRYSTALS"));
         _loc2_.x = int((this.§5214235088235101123423632234§.§return const set§.width - _loc2_.width) / 2);
         _loc2_.y = 14;
         this.§5214235088235101123423632234§.§return const set§.addChild(_loc2_);
         image.x = (this.§5214235088235101123423632234§.§return const set§.width - image.width) * 0.5 + 3;
         image.y = _loc2_.y + _loc2_.height + 3;
         this.§5214235088235101123423632234§.§return const set§.addChild(image);
         this.§5214235088235101123423632234§.§521423108472310860123423632234§.addChild(this.closeButton);
         this.§super use break§.addEventListener("click",this.d3b2b6c0);
         this.closeButton.addEventListener("click",this.onCancel);
         §5214239382239395123423632234§.addDialog(this);
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.onCancel();
      }
      
      private function onCancel(param1:Event = null) : void
      {
         this.hide();
      }
      
      private function hide() : void
      {
         this.§super use break§.removeEventListener("click",this.d3b2b6c0);
         this.closeButton.removeEventListener("click",this.onCancel);
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      private function d3b2b6c0(param1:Event = null) : void
      {
         dispatchEvent(new BuyCrystalsEvent(this.crystals));
         this.hide();
         PanelModel.switchPayment();
      }
      
      override protected function confirmationKeyPressed() : void
      {
         this.d3b2b6c0();
      }
   }
}

