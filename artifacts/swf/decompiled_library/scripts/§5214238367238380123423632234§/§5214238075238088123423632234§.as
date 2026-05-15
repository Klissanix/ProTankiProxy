package §5214238367238380123423632234§
{
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeyBindingChangeEvent;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import flash.events.KeyboardEvent;
   import §package use for§.§const use class§;
   import §true switch true§.§5214231141231154123423632234§;
   import §true switch true§.§if const get§;
   
   public class §5214238075238088123423632234§ extends DiscreteSprite
   {
      
      public static const §521423105562310569123423632234§:uint = 1073741824;
      
      public static const §521423102252310238123423632234§:int = 120;
      
      public static var §extends package override§:KeysBindingService;
      
      private var §try var override§:Vector.<§if const get§>;
      
      private var §521423138202313833123423632234§:GameActionEnum;
      
      private var §5214233501233514123423632234§:Boolean;
      
      public function §5214238075238088123423632234§(param1:GameActionEnum, param2:String, param3:int, param4:int, param5:Boolean)
      {
         var _loc8_:int = 0;
         §try var override§ = new Vector.<§if const get§>(3,true);
         super();
         this.§521423138202313833123423632234§ = param1;
         var _loc9_:int = param4 - 6 * param3 - 120 * 3;
         var _loc6_:§const use class§ = new §const use class§();
         _loc6_.§521423118742311887123423632234§(param3);
         _loc6_.x = _loc9_ + param3;
         while(_loc8_ < 3)
         {
            _loc6_.addItem(this.§super const super§(_loc8_));
            _loc8_++;
         }
         var _loc7_:§5214231141231154123423632234§ = new §5214231141231154123423632234§();
         _loc7_.text = param2;
         _loc7_.x = 0;
         _loc7_.y = Math.round((this.§try var override§[0].height - _loc7_.textHeight) * 0.5) - 2;
         addChild(_loc7_);
         addChild(_loc6_);
         §extends package override§.addEventListener("a483e340 changed: " + param1.name,this.§null catch function§);
         this.§5214233501233514123423632234§ = param5;
      }
      
      public function §do set continue§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Vector.<uint> = §extends package override§.getKeyBindings(this.§521423138202313833123423632234§);
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = int(_loc1_.length);
         while(_loc3_ < _loc2_)
         {
            this.§try var override§[_loc3_].value = §extends package override§.getKeyCodeLabel(_loc1_[_loc3_]);
            _loc3_++;
         }
      }
      
      private function §null var class§(param1:KeyboardEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:§if const get§ = §if const get§(param1.currentTarget);
         if(param1.keyCode == 8)
         {
            if(§extends package override§.setKeyBinding(this.§521423138202313833123423632234§,0,this.§try var override§.indexOf(_loc5_)))
            {
               _loc5_.value = "";
            }
            else
            {
               _loc5_.value = this.§in const dynamic§(this.§try var override§.indexOf(_loc5_));
            }
            return;
         }
         var _loc2_:uint = uint(1073741824 * (uint(§5214233501233514123423632234§ && param1.ctrlKey)) | param1.keyCode);
         var _loc3_:String = §extends package override§.getKeyCodeLabel(_loc2_);
         if(_loc3_ != "")
         {
            _loc4_ = §extends package override§.setKeyBinding(this.§521423138202313833123423632234§,_loc2_,this.§try var override§.indexOf(_loc5_));
            _loc5_.value = _loc4_ ? _loc3_ : "";
         }
         else
         {
            _loc5_.value = this.§in const dynamic§(this.§try var override§.indexOf(_loc5_));
         }
      }
      
      private function §super const super§(param1:int) : §if const get§
      {
         var _loc2_:§if const get§ = new §if const get§();
         _loc2_.addEventListener("keyUp",this.§null var class§);
         _loc2_.§false set false§ = 1;
         _loc2_.width = 120;
         _loc2_.align = "center";
         _loc2_.value = this.§in const dynamic§(param1);
         this.§try var override§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §package package for§() : GameActionEnum
      {
         return this.§521423138202313833123423632234§;
      }
      
      public function destroy() : void
      {
         for each(var _loc1_ in this.§try var override§)
         {
            _loc1_.removeEventListener("keyDown",this.§null var class§);
         }
         this.§try var override§ = null;
         §extends package override§.removeEventListener("a483e340 changed: " + this.§521423138202313833123423632234§.name,this.§null catch function§);
      }
      
      private function §null catch function§(param1:KeyBindingChangeEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§try var override§.length)
         {
            this.§try var override§[_loc2_].value = this.§in const dynamic§(_loc2_);
            _loc2_++;
         }
      }
      
      private function §in const dynamic§(param1:uint) : String
      {
         var _loc2_:uint = §extends package override§.getKeyBinding(this.§521423138202313833123423632234§,param1);
         return §extends package override§.getKeyCodeLabel(_loc2_);
      }
   }
}

