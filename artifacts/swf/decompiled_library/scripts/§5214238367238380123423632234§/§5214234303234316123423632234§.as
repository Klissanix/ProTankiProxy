package §5214238367238380123423632234§
{
   import §5214231620231633123423632234§.§5214235758235771123423632234§;
   import §5214233785233798123423632234§.§catch in§;
   import §5214233785233798123423632234§.§include return§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.settings.SettingEnum;
   import §include else§.§package var in§;
   import §package use for§.§5214235295235308123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class §5214234303234316123423632234§ extends §5214235758235771123423632234§
   {
      
      public static const §extends use override§:int = 1;
      
      public static const §5214236248236261123423632234§:int = 20;
      
      public static var §5214232770232783123423632234§:FullscreenService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      private var §get catch default§:§catch in§;
      
      public function §5214234303234316123423632234§()
      {
         super();
         var _loc2_:§include return§ = new §include return§(751,456,16744512);
         addChildAt(_loc2_,0);
         var _loc1_:§5214235295235308123423632234§ = new §5214235295235308123423632234§();
         _loc1_.§521423118742311887123423632234§(8);
         _loc1_.x = 8;
         _loc1_.y = 3;
         if(!§5214232770232783123423632234§.isMouseLockDisabled())
         {
            _loc1_.addItem(this.§for set implements§());
         }
         _loc1_.addItem(§get use dynamic§(SettingEnum.§implements catch super§,§5214236363236376123423632234§.getText("SETTINGS_INVERSE_TURN_CONTROL_CHECKBOX_LABEL_TEXT"),§521423998231011123423632234§.inverseBackDriving));
         _loc1_.addItem(new §52142374823761123423632234§());
         addItem(_loc1_);
      }
      
      private function §default use super§() : DiscreteSprite
      {
         var _loc2_:DiscreteSprite = new DiscreteSprite();
         var _loc1_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc1_.text = §5214236363236376123423632234§.getText("SETTINGS_MOUSE_SENSITIVITY_CHECKBOX_LABEL") + ":";
         _loc2_.addChild(_loc1_);
         this.§get catch default§ = new §catch in§();
         this.§get catch default§.§else const in§ = 20;
         this.§get catch default§.§5214232241232254123423632234§ = 1;
         this.§get catch default§.§521423137382313751123423632234§ = 1;
         this.§get catch default§.width = 751 - 8 * 4 - _loc1_.width;
         this.§get catch default§.x = _loc1_.width + 8;
         this.§get catch default§.value = §521423998231011123423632234§.mouseSensitivity;
         this.§get catch default§.addEventListener("SliderChangeValue",this.§class for import§);
         _loc1_.y = Math.round((this.§get catch default§.height - _loc1_.textHeight) * 0.5) - 2;
         _loc2_.addChild(this.§get catch default§);
         return _loc2_;
      }
      
      private function §for set implements§() : DiscreteSprite
      {
         var _loc1_:§5214235295235308123423632234§ = new §5214235295235308123423632234§();
         _loc1_.§521423118742311887123423632234§(8);
         _loc1_.addItem(§get use dynamic§(SettingEnum.§null use extends§,§5214236363236376123423632234§.getText("SETTINGS_MOUSE_CONTROL_CHECKBOX"),§521423998231011123423632234§.mouseControl));
         _loc1_.addItem(this.§default use super§());
         _loc1_.addItem(§get use dynamic§(SettingEnum.§521423136022313615123423632234§,§5214236363236376123423632234§.getText("SETTINGS_MOUSE_INVERSION_CHECKBOX_LABEL"),§521423998231011123423632234§.mouseYInverse));
         _loc1_.addItem(§get use dynamic§(SettingEnum.§5214233995234008123423632234§,§5214236363236376123423632234§.getText("SETTINGS_MOUSE_SHAFT_SCOPE_VERTICAL_INVERSION"),§521423998231011123423632234§.mouseYInverseShaftAim));
         return _loc1_;
      }
      
      override public function destroy() : void
      {
         if(!§5214232770232783123423632234§.isMouseLockDisabled())
         {
            this.§get catch default§.removeEventListener("SliderChangeValue",this.§class for import§);
         }
         super.destroy();
      }
      
      private function §class for import§(param1:§package var in§) : void
      {
         §521423998231011123423632234§.setClientSetting(SettingEnum.§switch var with§,this.§get catch default§.value);
      }
   }
}

