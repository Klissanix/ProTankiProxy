package §521423100992310112123423632234§
{
   import §5214235609235622123423632234§.§5214236076236089123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class PremiumAccountWelcomeAlert extends §5214236076236089123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §return use return§:String;
      
      public function PremiumAccountWelcomeAlert(param1:String)
      {
         this.§return use return§ = param1;
         super(§5214236363236376123423632234§.getImage("IMAGE_PREMIUM_HEADER"),§5214236363236376123423632234§.getText("FREE_BONUSES_WINDOW_BUTTON_CLOSE_TEXT"));
      }
      
      private function c341e10b() : §5214231141231154123423632234§
      {
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.autoSize = "center";
         _loc1_.align = "center";
         _loc1_.multiline = true;
         _loc1_.text = this.§return use return§;
         _loc1_.§521423102842310297123423632234§ = 18;
         _loc1_.color = 381208;
         return _loc1_;
      }
      
      override protected function init() : void
      {
         var _loc2_:§5214231141231154123423632234§ = null;
         var _loc1_:Bitmap = null;
         super.init();
         _loc1_ = new Bitmap(PremiumAccountIcons.§get switch for§);
         §5214236204236217123423632234§.addChild(_loc1_);
         _loc2_ = this.c341e10b();
         _loc2_.width = _loc1_.width;
         §5214236204236217123423632234§.addChild(_loc2_);
         _loc2_.y = _loc1_.height + 11;
         var _loc3_:int = Math.max(_loc1_.width,_loc2_.width + 2 * 11);
         _loc1_.x = _loc3_ - _loc1_.width >> 1;
         _loc2_.x = _loc3_ - _loc2_.width >> 1;
         var _loc4_:int = _loc1_.height + 11 + _loc2_.height + 11;
         §var var use§(_loc3_,_loc4_);
      }
   }
}

