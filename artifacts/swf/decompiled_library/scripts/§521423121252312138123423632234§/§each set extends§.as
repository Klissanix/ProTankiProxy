package §521423121252312138123423632234§
{
   import §5214231620231633123423632234§.§5214237111237124123423632234§;
   import §5214231620231633123423632234§.§native use if§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §5214233785233798123423632234§.§include return§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.settings.SettingEnum;
   import flash.events.MouseEvent;
   import §get for try§.§5214239113239126123423632234§;
   import §package use for§.§5214235295235308123423632234§;
   import §package use for§.§switch with§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   
   public class §each set extends§ extends §5214237111237124123423632234§
   {
      
      public static var §5214233439233452123423632234§:IBattleInviteService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      private var §get import§:§5214239113239126123423632234§;
      
      private var §521423124822312495123423632234§:§5214239113239126123423632234§;
      
      private var §false for while§:§5214239113239126123423632234§;
      
      private var §try for return§:§native use if§;
      
      public function §each set extends§(param1:Boolean)
      {
         super();
         var _loc3_:§5214235295235308123423632234§ = new §5214235295235308123423632234§();
         _loc3_.x = 8;
         _loc3_.y = 8;
         _loc3_.§521423118742311887123423632234§(8);
         _loc3_.addItem(§get use dynamic§(SettingEnum.SHOW_DAMAGE,§5214236363236376123423632234§.getText("SHOW_DAMAGE"),§521423998231011123423632234§.showDamage));
         _loc3_.addItem(§get use dynamic§(SettingEnum.§5214238215238228123423632234§,§5214236363236376123423632234§.getText("SETTINGS_ALTERNATE_CAMERA_LABEL_TEXT"),§521423998231011123423632234§.alternateCamera));
         var _loc4_:§5214235295235308123423632234§ = new §5214235295235308123423632234§();
         _loc4_.§521423118742311887123423632234§(8);
         _loc4_.y = 8;
         _loc4_.x = 751 * 0.5;
         this.§get import§ = this.§5214237266237279123423632234§(§5214236363236376123423632234§.getText("SETTINGS_MESSAGE_ONLY_FROM_FRIENDS"),param1);
         this.§get import§.addEventListener("click",this.§native catch get§);
         _loc4_.addItem(§get use dynamic§(SettingEnum.§5214238844238857123423632234§,§5214236363236376123423632234§.getText("SETTINGS_SHOW_CHAT_CHECKBOX_LABEL_TEXT"),§521423998231011123423632234§.showChat));
         this.§521423124822312495123423632234§ = this.§5214237266237279123423632234§(§5214236363236376123423632234§.getText("SHOW_NOTIFICATIONS_LABEL"),§5214233439233452123423632234§.receiveBattleInvite);
         this.§521423124822312495123423632234§.addEventListener("click",this.§5214234466234479123423632234§);
         _loc4_.addItem(this.§521423124822312495123423632234§);
         this.§false for while§ = §get use dynamic§(SettingEnum.§521423126132312626123423632234§,§5214236363236376123423632234§.getText("SETTINGS_UI_SCALE_2X"),§521423998231011123423632234§.uiScale2x);
         this.§false for while§.addEventListener("click",this.§521423127402312753123423632234§,false,-1);
         _loc4_.addItem(this.§false for while§);
         var _loc2_:§include return§ = new §include return§(751,Math.max(_loc3_.height,_loc4_.height) + 2 * 8,16744512);
         _loc2_.addChild(_loc3_);
         _loc2_.addChild(_loc4_);
         addChild(_loc2_);
         var _loc5_:§switch with§ = this.§52142371723730123423632234§();
         _loc5_.y = _loc2_.y + _loc2_.height + 10;
         addChild(_loc5_);
      }
      
      override public function destroy() : void
      {
         this.§521423124822312495123423632234§.removeEventListener("click",this.§5214234466234479123423632234§);
         this.§get import§.removeEventListener("click",this.§native catch get§);
         this.§false for while§.removeEventListener("click",this.§521423127402312753123423632234§);
         this.§try for return§.destroy();
         super.destroy();
      }
      
      private function §5214234466234479123423632234§(param1:MouseEvent) : void
      {
         §5214233439233452123423632234§.receiveBattleInvite = this.§521423124822312495123423632234§.§return for case§;
      }
      
      private function §5214237266237279123423632234§(param1:String, param2:Boolean, param3:int = 0, param4:int = 0) : §5214239113239126123423632234§
      {
         var _loc5_:§5214239113239126123423632234§ = new §5214239113239126123423632234§();
         _loc5_.§return for case§ = param2;
         _loc5_.x = param3;
         _loc5_.y = param4;
         _loc5_.label = param1;
         return _loc5_;
      }
      
      private function §52142371723730123423632234§() : §switch with§
      {
         var _loc1_:§5214235295235308123423632234§ = new §5214235295235308123423632234§();
         _loc1_.§521423118742311887123423632234§(3);
         var _loc2_:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
         _loc2_.text = §5214236363236376123423632234§.getText("SETTINGS_SOUND_VOLUME_LABEL_TEXT");
         _loc1_.addItem(_loc2_);
         this.§try for return§ = new §native use if§();
         _loc1_.addItem(this.§try for return§);
         return _loc1_;
      }
      
      private function §native catch get§(param1:MouseEvent) : void
      {
         dispatchEvent(new §else use import§(§else use import§.§dynamic default§,this.§get import§.§return for case§));
      }
      
      private function §521423127402312753123423632234§(param1:MouseEvent) : void
      {
         var _loc2_:int = §false for while§.§return for case§ ? 2 : 1;
         §5214235917235930123423632234§.updateUiScale(_loc2_);
      }
   }
}

