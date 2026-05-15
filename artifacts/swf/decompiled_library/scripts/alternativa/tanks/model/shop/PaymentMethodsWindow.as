package alternativa.tanks.model.shop
{
   import §5214233785233798123423632234§.§native for dynamic§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import §import catch catch§.PaymentButton;
   import §package use for§.§5214235295235308123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class PaymentMethodsWindow extends DialogWindow
   {
      
      private var §521423137682313781123423632234§:Class = §c342be7_png$bcb4fe7f649a5b06474f1004ada933dc-803197622§;
      
      private var §with use try§:BitmapData;
      
      private var cards:Class = a267e6c_png$12d153807392b3d4350471485826216c1307233484;
      
      private var §5214232273232286123423632234§:BitmapData;
      
      private var sbp:Class = c1hgg09_png$9bc8a8eee34f8df9792edd3145d0a0751258576079;
      
      private var §for package import§:BitmapData;
      
      private var §catch set include§:Array;
      
      private var item:String;
      
      private var callback:Function;
      
      private var panel:§5214235295235308123423632234§;
      
      public function PaymentMethodsWindow(param1:String, param2:Function)
      {
         var _loc6_:§native for dynamic§ = null;
         this.§with use try§ = new this.§521423137682313781123423632234§().bitmapData;
         this.§5214232273232286123423632234§ = new this.cards().bitmapData;
         this.§for package import§ = new this.sbp().bitmapData;
         this.§catch set include§ = ["cryptomus","cards","sbp","other"];
         this.panel = new §5214235295235308123423632234§();
         super();
         this.item = param1;
         this.callback = param2;
         this.panel.§521423118742311887123423632234§(8);
         _loc6_ = new §native for dynamic§(400,300);
         var _loc7_:PaymentButton = new PaymentButton(this.§with use try§);
         _loc7_.addEventListener("click",this.e17777e6);
         var _loc4_:PaymentButton = new PaymentButton(this.§5214232273232286123423632234§);
         _loc4_.addEventListener("click",this.e17777e6);
         var _loc5_:PaymentButton = new PaymentButton(this.§for package import§);
         _loc5_.addEventListener("click",this.e17777e6);
         var _loc3_:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
         _loc3_.addEventListener("click",this.e17777e6);
         _loc3_.label = "Другое";
         _loc3_.width = 155;
         this.panel.addItem(_loc7_);
         this.panel.addItem(_loc4_);
         this.panel.addItem(_loc5_);
         this.panel.addItem(_loc3_);
         this.panel.x = _loc6_.width - this.panel.width >> 1;
         this.panel.y = _loc6_.height - this.panel.height >> 1;
         _loc6_.addChild(this.panel);
         addChild(_loc6_);
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.destroy();
      }
      
      private function destroy() : void
      {
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      private function e17777e6(param1:Event) : void
      {
         var _loc2_:int = this.panel.§521423111252311138123423632234§().indexOf(DisplayObject(param1.currentTarget));
         this.callback(this.item,this.§catch set include§[_loc2_]);
         this.destroy();
      }
   }
}

