package alternativa.tanks.gui
{
   import §521423107782310791123423632234§.GarageItemBackground;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214233785233798123423632234§.§include return§;
   import §5214238440238453123423632234§.§5214233137233150123423632234§;
   import alternativa.osgi.service.locale.ILocaleService;
   import §continue switch package§.§var use true§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§5214237085237098123423632234§;
   import §var var with§.DialogWindow;
   
   public class WeeklyQuestRewardWindow extends DialogWindow
   {
      
      private static const §implements package extends§:int = 680;
      
      private static const §implements return§:int = 555;
      
      private static const §5214236332236345123423632234§:int = 10;
      
      private static const SPACE:int = 20;
      
      private static const §5214235106235119123423632234§:int = 90;
      
      private static const §if switch get§:int = 510;
      
      private static const §5214237461237474123423632234§:int = 3;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §package§:Class = b499171_png$73fedc62000b7789e72981dff115cb9a1177887258;
      
      private static const §const set package§:BitmapData = new §package§().bitmapData;
      
      private var window:§var use true§;
      
      private var closeButton:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      private var §extends for package§:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
      
      private var §default use switch§:Sprite = new Sprite();
      
      private var reward:Vector.<§5214233137233150123423632234§>;
      
      public function WeeklyQuestRewardWindow(param1:Vector.<§5214233137233150123423632234§>)
      {
         super();
         this.reward = param1;
         this.createWindow();
         this.e4c1239b();
         this.c7143a75();
         this.addMessage();
         this.f6dc6032();
         this.a1bb4543();
      }
      
      public function show() : void
      {
         §5214239382239395123423632234§.addDialog(this);
      }
      
      private function addMessage() : void
      {
         this.§extends for package§.wordWrap = true;
         this.§extends for package§.multiline = true;
         this.§extends for package§.text = §5214236363236376123423632234§.getText("WEEKLY_QUEST_REWARD_WINDOW_DESCRIPTION");
         this.§extends for package§.§521423102842310297123423632234§ = 12;
         this.§extends for package§.color = 5898034;
         this.§extends for package§.align = "center";
         this.§extends for package§.width = 510;
         this.§extends for package§.x = 85;
         this.§extends for package§.y = 90 + 10 * 2 + 20;
         this.window.addChild(this.§extends for package§);
      }
      
      override protected function cancelKeyPressed() : void
      {
         this.e4eb0370();
      }
      
      private function e4c1239b() : void
      {
         var _loc1_:§include return§ = new §include return§(680 - 2 * 10,555 - this.closeButton.height - 3 * 10,4278985229);
         _loc1_.x = 10;
         _loc1_.y = 10;
         this.window.addChild(_loc1_);
      }
      
      private function createWindow() : void
      {
         this.window = §var use true§.§set for static§("HEADER_CONGRATULATION",680,555);
         addChild(this.window);
      }
      
      override protected function confirmationKeyPressed() : void
      {
         this.e4eb0370();
      }
      
      private function a1bb4543() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:GarageItemBackground = new GarageItemBackground(11);
         var _loc4_:int = 0;
         while(_loc4_ < this.reward.length)
         {
            _loc1_ = _loc4_ > 2 && this.reward.length < 3 * 2;
            _loc2_ = _loc1_ ? int((_loc3_.width + 20) / 2) : 0;
            _loc5_ = _loc4_ % 3 * (_loc3_.width + 20) + _loc2_;
            _loc6_ = (_loc3_.height + 20) * (int(_loc4_ / 3));
            this.c7dc30e(this.reward[_loc4_].§finally use implements§,this.reward[_loc4_].§5214237362237375123423632234§,_loc5_,_loc6_);
            _loc4_++;
         }
         this.§default use switch§.y = this.§extends for package§.y + this.§extends for package§.height + 20;
         this.§default use switch§.x = 680 - this.§default use switch§.width >> 1;
         this.window.addChild(this.§default use switch§);
      }
      
      private function c7dc30e(param1:§include catch with§, param2:int, param3:int, param4:int) : void
      {
         var _loc6_:§5214231141231154123423632234§ = null;
         var _loc7_:GarageItemBackground = new GarageItemBackground(11);
         this.§default use switch§.addChild(_loc7_);
         var _loc5_:PreviewBonusItem = new PreviewBonusItem(param1,_loc7_.width,_loc7_.height);
         this.§default use switch§.addChild(_loc5_);
         _loc7_.x = _loc5_.x = param3;
         _loc7_.y = _loc5_.y = param4;
         if(param2 > 0)
         {
            _loc6_ = new §5214231141231154123423632234§();
            this.§default use switch§.addChild(_loc6_);
            _loc6_.§521423102842310297123423632234§ = 16;
            _loc6_.color = 5898034;
            _loc6_.text = "×" + param2.toString();
            _loc6_.x = _loc7_.x + _loc7_.width - _loc6_.width - 1.5 * 10;
            _loc6_.y = _loc7_.y + _loc7_.height - _loc6_.height - 10;
         }
      }
      
      private function c7143a75() : void
      {
         var _loc1_:Bitmap = new Bitmap(§const set package§);
         this.window.addChild(_loc1_);
         _loc1_.y = 10 + 20;
         _loc1_.x = (680 - 2 * 10 - _loc1_.width) / 2;
      }
      
      private function e4eb0370(param1:MouseEvent = null) : void
      {
         this.closeButton.removeEventListener("click",this.e4eb0370);
         §5214239382239395123423632234§.removeDialog(this);
      }
      
      private function f6dc6032() : void
      {
         this.closeButton.label = §5214236363236376123423632234§.getText("CLOSE_LABEL");
         this.closeButton.addEventListener("click",this.e4eb0370);
         this.closeButton.x = (680 - this.closeButton.width) / 2;
         this.closeButton.y = 555 - 10 - this.closeButton.height;
         this.window.addChild(this.closeButton);
      }
   }
}

