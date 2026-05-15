package §5214231620231633123423632234§
{
   import §5214233785233798123423632234§.§catch in§;
   import §5214233785233798123423632234§.§include return§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.settings.SettingEnum;
   import §get for try§.§5214239113239126123423632234§;
   import §include else§.§package var in§;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §native use if§ extends §5214237111237124123423632234§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      private var §5214236360236373123423632234§:§catch in§;
      
      private var §use const set§:§5214239113239126123423632234§;
      
      public function §native use if§()
      {
         super();
         var _loc1_:§include return§ = new §include return§(751 - 7,0,16744512);
         var _loc2_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.addChild(_loc2_);
         _loc2_.text = §5214236363236376123423632234§.getText("SETTINGS_SOUND_VOLUME_LABEL_TEXT");
         _loc2_.x = 8;
         this.§5214236360236373123423632234§ = new §catch in§();
         this.§5214236360236373123423632234§.§else const in§ = 100;
         this.§5214236360236373123423632234§.§5214232241232254123423632234§ = 0;
         this.§5214236360236373123423632234§.§521423137382313751123423632234§ = 5;
         this.§5214236360236373123423632234§.x = _loc2_.x + _loc2_.textWidth + 8;
         this.§5214236360236373123423632234§.y = 8;
         this.§5214236360236373123423632234§.width = 751 - 2 * 8 - _loc2_.width - 8;
         if(§5214236363236376123423632234§.language == "cn")
         {
            this.§5214236360236373123423632234§.width -= 4;
         }
         this.§dynamic package break§ = §521423998231011123423632234§.soundVolume;
         this.§5214236360236373123423632234§.addEventListener("SliderChangeValue",this.§52142354323556123423632234§);
         _loc1_.addChild(this.§5214236360236373123423632234§);
         this.§use const set§ = §get use dynamic§(SettingEnum.§5214237738237751123423632234§,§5214236363236376123423632234§.getText("SETTINGS_BACKGROUND_SOUND_CHECKBOX_LABEL_TEXT"),§521423998231011123423632234§.bgSound,8,0);
         this.§use const set§.x = 8;
         this.§use const set§.y = 8 + this.§5214236360236373123423632234§.y + this.§5214236360236373123423632234§.height;
         _loc1_.addChild(this.§use const set§);
         _loc1_.height = 8 + this.§use const set§.y + this.§use const set§.height;
         _loc2_.y = this.§5214236360236373123423632234§.y + Math.round((this.§5214236360236373123423632234§.height - _loc2_.textHeight) * 0.5) - 2;
         addChild(_loc1_);
      }
      
      override public function §true package final§() : void
      {
         super.§true package final§();
      }
      
      private function §52142354323556123423632234§(param1:§package var in§) : void
      {
         §521423998231011123423632234§.soundVolume = this.§dynamic package break§;
      }
      
      override public function destroy() : void
      {
         this.§5214236360236373123423632234§.removeEventListener("SliderChangeValue",this.§52142354323556123423632234§);
         super.destroy();
      }
      
      public function set §dynamic package break§(param1:Number) : void
      {
         this.§5214236360236373123423632234§.value = int(param1 * 100);
      }
      
      public function get §dynamic package break§() : Number
      {
         return this.§5214236360236373123423632234§.value / 100;
      }
   }
}

