package alternativa.tanks.gui
{
   import §521423107782310791123423632234§.GarageItemBackground;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214233785233798123423632234§.§native set dynamic§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §super package break§.§5214235534235547123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class RankUpSupplyBonusAlert extends DialogWindow
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var closeButton:§5214237085237098123423632234§;
      
      private const §each finally§:int = 12;
      
      private const §5214236332236345123423632234§:int = 12;
      
      public function RankUpSupplyBonusAlert(param1:§5214235534235547123423632234§)
      {
         super();
         this.createAlertWindow(this,param1);
         §5214239382239395123423632234§.enqueueDialog(this);
      }
      
      override protected function confirmationKeyPressed() : void
      {
         this.f646ac94();
      }
      
      private function c28c863b(param1:Sprite, param2:§include catch with§) : void
      {
         var _loc3_:PreviewBonusItem = new PreviewBonusItem(param2,param1.width,param1.height);
         param1.addChild(_loc3_);
      }
      
      private function f2e4c506(param1:Sprite, param2:String, param3:int) : §5214231141231154123423632234§
      {
         var _loc4_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         param1.addChild(_loc4_);
         _loc4_.wordWrap = true;
         _loc4_.multiline = true;
         _loc4_.text = param2;
         _loc4_.§521423102842310297123423632234§ = 12;
         _loc4_.color = 5898034;
         _loc4_.x = 12 - 2;
         _loc4_.y = 12;
         _loc4_.width = param3;
         return _loc4_;
      }
      
      private function f646ac94(param1:MouseEvent = null) : void
      {
         this.destroy();
      }
      
      private function c33963dc(param1:Sprite) : Sprite
      {
         var _loc2_:Sprite = new Sprite();
         _loc2_.addChild(new GarageItemBackground(11));
         param1.addChild(_loc2_);
         return _loc2_;
      }
      
      private function e5567e76(param1:Sprite, param2:int) : void
      {
         var _loc3_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         param1.addChild(_loc3_);
         _loc3_.§521423102842310297123423632234§ = 16;
         _loc3_.color = 5898034;
         _loc3_.text = "×" + param2;
         _loc3_.x = param1.width - _loc3_.width - 15;
         _loc3_.y = param1.height - _loc3_.height - 10;
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.f646ac94();
      }
      
      public function destroy() : void
      {
         this.closeButton.removeEventListener("click",this.f646ac94);
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      public function createAlertWindow(param1:Sprite, param2:§5214235534235547123423632234§) : void
      {
         var _loc4_:§native for dynamic§ = new §native for dynamic§();
         _loc4_.§extends package var§ = §5214236363236376123423632234§.getText("GUI_LANG");
         _loc4_.§extends catch default§ = §native set dynamic§.§null catch super§;
         param1.addChild(_loc4_);
         var _loc3_:§include return§ = this.e331545b(_loc4_,param2);
         this.closeButton = this.d1e5b4f1(_loc4_);
         _loc4_.width = _loc3_.width + 12 * 2;
         _loc4_.height = _loc3_.height + this.closeButton.height + 12 * 3 - 4;
         this.closeButton.x = (_loc4_.width - this.closeButton.width) / 2;
         this.closeButton.y = _loc3_.height + 12 * 2 - 6;
      }
      
      private function f6a349d5(param1:Sprite, param2:§5214235534235547123423632234§, param3:int, param4:int) : void
      {
         param1.x = param3;
         param1.y = param4;
         this.c28c863b(param1,param2.§5214233998234011123423632234§);
         this.e5567e76(param1,param2.§5214237362237375123423632234§);
      }
      
      private function d1e5b4f1(param1:Sprite) : §5214237085237098123423632234§
      {
         var _loc2_:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
         _loc2_.label = §5214236363236376123423632234§.getText("ALERT_ANSWER_OK");
         _loc2_.addEventListener("click",this.f646ac94);
         param1.addChild(_loc2_);
         return _loc2_;
      }
      
      private function e331545b(param1:Sprite, param2:§5214235534235547123423632234§) : §include return§
      {
         var _loc3_:§include return§ = new §include return§(0,0,4278985229);
         param1.addChild(_loc3_);
         _loc3_.x = 12;
         _loc3_.y = 12;
         var _loc4_:Sprite = this.c33963dc(_loc3_);
         var _loc5_:§5214231141231154123423632234§ = this.f2e4c506(_loc3_,param2.text,_loc4_.width);
         this.f6a349d5(_loc4_,param2,12 - 3,_loc5_.height + 12 * 2);
         _loc3_.width = _loc4_.width + 12 * 2 - 6;
         _loc3_.height = _loc5_.height + 12 * 3 + _loc4_.height - 2;
         return _loc3_;
      }
   }
}

