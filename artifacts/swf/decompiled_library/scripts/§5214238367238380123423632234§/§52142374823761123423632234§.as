package §5214238367238380123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import flash.events.MouseEvent;
   import §package use for§.§5214235295235308123423632234§;
   import §package use for§.§switch with§;
   import §true switch true§.§5214237085237098123423632234§;
   
   public class §52142374823761123423632234§ extends DiscreteSprite
   {
      
      public static var §extends package override§:KeysBindingService;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §521423115912311604123423632234§:§5214235295235308123423632234§ = new §5214235295235308123423632234§();
      
      private var §each class§:Vector.<§5214238075238088123423632234§> = new Vector.<§5214238075238088123423632234§>();
      
      private var §final finally const§:§5214237085237098123423632234§ = new §5214237085237098123423632234§();
      
      public function §52142374823761123423632234§()
      {
         super();
         this.§final finally const§.label = §5214236363236376123423632234§.getText("BUTTON_LABEL_RESTORE_DEFAULT_BUTTONS");
         this.§final finally const§.width = 250;
         this.§final finally const§.addEventListener("click",this.§5214233992234005123423632234§);
         addChild(this.§final finally const§);
         this.§521423115912311604123423632234§.§521423118742311887123423632234§(8 * 2);
         this.§521423115912311604123423632234§.addItem(this.§521423123342312347123423632234§());
         this.§521423115912311604123423632234§.addItem(this.§5214235976235989123423632234§());
         this.§521423115912311604123423632234§.addItem(this.§5214238204238217123423632234§());
         this.§521423115912311604123423632234§.addItem(this.§throw for switch§());
         this.§521423115912311604123423632234§.addItem(this.§continue catch set§());
         this.§521423115912311604123423632234§.addItem(this.§5214236728236741123423632234§());
         this.§521423115912311604123423632234§.y = 8 + this.§final finally const§.height;
         addChild(this.§521423115912311604123423632234§);
      }
      
      private function §throw for switch§() : §switch with§
      {
         var _loc1_:§switch with§ = new §5214235295235308123423632234§();
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.SUICIDE,§5214236363236376123423632234§.getText("GAME_ACTION_SELF_DESTRUCTION")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.DROP_FLAG,§5214236363236376123423632234§.getText("GAME_ACTION_DROP_FLAG")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.BATTLE_PAUSE,§5214236363236376123423632234§.getText("GAME_ACTION_PAUSE")));
         return _loc1_;
      }
      
      private function §5214236435236448123423632234§(param1:GameActionEnum, param2:String, param3:Boolean = true) : §5214238075238088123423632234§
      {
         var _loc4_:§5214238075238088123423632234§ = new §5214238075238088123423632234§(param1,param2,8,751,param3);
         this.§each class§[§each class§.length] = _loc4_;
         return _loc4_;
      }
      
      private function §continue catch set§() : §switch with§
      {
         var _loc1_:§switch with§ = new §5214235295235308123423632234§();
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.BATTLE_VIEW_INCREASE,§5214236363236376123423632234§.getText("GAME_ACTION_SCREEN_SIZE_INCREASE")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.BATTLE_VIEW_DECREASE,§5214236363236376123423632234§.getText("GAME_ACTION_SCREEN_SIZE_DECREASE")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.OPEN_GARAGE,§5214236363236376123423632234§.getText("OPEN_GARAGE")));
         return _loc1_;
      }
      
      private function §5214233992234005123423632234§(param1:MouseEvent) : void
      {
         §extends package override§.restoreDefaultBindings();
         for each(var _loc2_ in this.§each class§)
         {
            _loc2_.§do set continue§();
         }
      }
      
      private function §521423123342312347123423632234§() : §switch with§
      {
         var _loc1_:§switch with§ = new §5214235295235308123423632234§();
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.ROTATE_TURRET_LEFT,§5214236363236376123423632234§.getText("GAME_ACTION_TURRET_TURN_LEFT"),false));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.ROTATE_TURRET_RIGHT,§5214236363236376123423632234§.getText("GAME_ACTION_TURRET_TURN_RIGHT"),false));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.CENTER_TURRET,§5214236363236376123423632234§.getText("GAME_ACTION_TURRET_CENTER"),false));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.SHOT,§5214236363236376123423632234§.getText("GAME_ACTION_SHOOT"),false));
         return _loc1_;
      }
      
      private function §5214236728236741123423632234§() : §switch with§
      {
         var _loc1_:§switch with§ = new §5214235295235308123423632234§();
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.FOLLOW_CAMERA_UP,§5214236363236376123423632234§.getText("GAME_ACTION_CAMERA_UP"),false));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.FOLLOW_CAMERA_DOWN,§5214236363236376123423632234§.getText("GAME_ACTION_CAMERA_DOWN"),false));
         return _loc1_;
      }
      
      private function §5214235976235989123423632234§() : §switch with§
      {
         var _loc1_:§switch with§ = new §5214235295235308123423632234§();
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.CHASSIS_LEFT_MOVEMENT,§5214236363236376123423632234§.getText("GAME_ACTION_TANK_TURN_LEFT"),false));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.CHASSIS_FORWARD_MOVEMENT,§5214236363236376123423632234§.getText("GAME_ACTION_TANK_MOVE_FORWARD"),false));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.CHASSIS_RIGHT_MOVEMENT,§5214236363236376123423632234§.getText("GAME_ACTION_TANK_TURN_RIGHT"),false));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.CHASSIS_BACKWARD_MOVEMENT,§5214236363236376123423632234§.getText("GAME_ACTION_TANK_MOVE_BACKWARD"),false));
         return _loc1_;
      }
      
      public function destroy() : void
      {
         this.§final finally const§.removeEventListener("click",this.§5214233992234005123423632234§);
         for each(var _loc1_ in this.§each class§)
         {
            _loc1_.destroy();
         }
         this.§521423115912311604123423632234§ = null;
         this.§each class§ = null;
      }
      
      private function §5214238204238217123423632234§() : §switch with§
      {
         var _loc1_:§switch with§ = new §5214235295235308123423632234§();
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.USE_FIRS_AID,§5214236363236376123423632234§.getText("GAME_ACTION_USE_FIRST_AID")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.USE_DOUBLE_ARMOR,§5214236363236376123423632234§.getText("GAME_ACTION_USE_DOUBLE_ARMOR")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.USE_DOUBLE_DAMAGE,§5214236363236376123423632234§.getText("GAME_ACTION_USE_DOBLE_DAMAGE")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.USE_NITRO,§5214236363236376123423632234§.getText("GAME_ACTION_USE_NITRO")));
         _loc1_.addItem(this.§5214236435236448123423632234§(GameActionEnum.USE_MINE,§5214236363236376123423632234§.getText("GAME_ACTION_USE_MINE")));
         return _loc1_;
      }
   }
}

