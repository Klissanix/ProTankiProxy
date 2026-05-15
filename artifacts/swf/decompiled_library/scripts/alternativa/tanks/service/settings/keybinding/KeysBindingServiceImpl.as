package alternativa.tanks.service.settings.keybinding
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class KeysBindingServiceImpl extends EventDispatcher implements KeysBindingService
   {
      
      public static const §5214234662234675123423632234§:int = 3;
      
      public static const §52142318423197123423632234§:uint = 0;
      
      private var §if catch include§:IStorageService;
      
      private var §5214233684233697123423632234§:Dictionary = new Dictionary();
      
      private var §true for break§:Dictionary = new Dictionary();
      
      private var §in use true§:uint;
      
      private var §5214237757237770123423632234§:Dictionary = new Dictionary();
      
      private var §5214231413231426123423632234§:KeyCodesConverter;
      
      private var §5214234698234711123423632234§:Boolean;
      
      public function KeysBindingServiceImpl()
      {
         super();
         var _loc1_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.§if catch include§ = IStorageService(OSGi.getInstance().getService(IStorageService));
         this.§in use true§ = _loc1_.language == "de" ? 89 : 90;
         this.c51173d0();
         this.c589fafd();
      }
      
      private static function f3163548(param1:uint) : Boolean
      {
         return param1 == 0;
      }
      
      private static function fd4ade() : Vector.<uint>
      {
         return new Vector.<uint>(3,true);
      }
      
      public function restoreDefaultBindings() : void
      {
         this.§true for break§ = new Dictionary();
         this.§5214233684233697123423632234§ = new Dictionary();
         for(var _loc1_ in this.§5214237757237770123423632234§)
         {
            this.f1ee8bbf(_loc1_,this.§5214237757237770123423632234§[_loc1_].concat());
         }
      }
      
      public function getKeyBinding(param1:GameActionEnum, param2:uint) : uint
      {
         if(param2 >= 3)
         {
            return 0;
         }
         var _loc3_:Vector.<uint> = this.§true for break§[param1];
         if(_loc3_)
         {
            return _loc3_[param2];
         }
         return 0;
      }
      
      public function getKeyCodeLabel(param1:uint) : String
      {
         return this.f5fcebfc().keyCodeToString(param1);
      }
      
      private function c589fafd() : void
      {
         this.§5214234698234711123423632234§ = true;
         var _loc2_:SharedObject = this.§if catch include§.getStorage();
         var _loc5_:int = 0;
         var _loc3_:GameActionEnum = GameActionEnum;
         if(!alternativa.tanks.service.settings.keybinding.GameActionEnum.§get for catch§)
         {
            alternativa.tanks.service.settings.keybinding.GameActionEnum.§get for catch§ = new <alternativa.tanks.service.settings.keybinding.GameActionEnum>[alternativa.tanks.service.settings.keybinding.GameActionEnum.ROTATE_TURRET_LEFT,alternativa.tanks.service.settings.keybinding.GameActionEnum.ROTATE_TURRET_RIGHT,alternativa.tanks.service.settings.keybinding.GameActionEnum.CENTER_TURRET,alternativa.tanks.service.settings.keybinding.GameActionEnum.CHASSIS_LEFT_MOVEMENT,alternativa.tanks.service.settings.keybinding.GameActionEnum.CHASSIS_RIGHT_MOVEMENT,alternativa.tanks.service.settings.keybinding.GameActionEnum.CHASSIS_FORWARD_MOVEMENT,alternativa.tanks.service.settings.keybinding.GameActionEnum.CHASSIS_BACKWARD_MOVEMENT,alternativa.tanks.service.settings.keybinding.GameActionEnum.FOLLOW_CAMERA_UP,alternativa.tanks.service.settings.keybinding.GameActionEnum.FOLLOW_CAMERA_DOWN,alternativa.tanks.service.settings.keybinding.GameActionEnum.DROP_FLAG,alternativa.tanks.service.settings.keybinding.GameActionEnum
            .BATTLE_PAUSE,alternativa.tanks.service.settings.keybinding.GameActionEnum.BATTLE_VIEW_INCREASE,alternativa.tanks.service.settings.keybinding.GameActionEnum.BATTLE_VIEW_DECREASE,alternativa.tanks.service.settings.keybinding.GameActionEnum.FULL_SCREEN,alternativa.tanks.service.settings.keybinding.GameActionEnum.SUICIDE,alternativa.tanks.service.settings.keybinding.GameActionEnum.SHOW_TANK_PARAMETERS,alternativa.tanks.service.settings.keybinding.GameActionEnum.USE_FIRS_AID,alternativa.tanks.service.settings.keybinding.GameActionEnum.USE_DOUBLE_ARMOR,alternativa.tanks.service.settings.keybinding.GameActionEnum.USE_DOUBLE_DAMAGE,alternativa.tanks.service.settings.keybinding.GameActionEnum.USE_NITRO,alternativa.tanks.service.settings.keybinding.GameActionEnum.USE_MINE,alternativa.tanks.service.settings.keybinding.GameActionEnum.SHOT,alternativa.tanks.service.settings.keybinding.GameActionEnum.OPEN_GARAGE];
         }
         for each(var _loc1_ in alternativa.tanks.service.settings.keybinding.GameActionEnum.§get for catch§)
         {
            this.f1ee8bbf(_loc1_,_loc2_.data[_loc1_.name]);
         }
         this.§5214234698234711123423632234§ = false;
      }
      
      public function setKeyBinding(param1:GameActionEnum, param2:uint, param3:int) : Boolean
      {
         var _loc6_:GameActionEnum = null;
         var _loc4_:* = undefined;
         var _loc7_:int = 0;
         if(param3 >= 3)
         {
            return false;
         }
         if(!this.isFreeKey(param2))
         {
            _loc6_ = this.§5214233684233697123423632234§[param2];
            _loc4_ = this.§true for break§[_loc6_];
            _loc7_ = _loc4_.indexOf(param2);
            delete this.§5214233684233697123423632234§[param2];
            _loc4_[_loc7_] = 0;
            this.d51d3b2b(_loc6_,_loc4_);
            dispatchEvent(new KeyBindingChangeEvent("a483e340 changed: " + _loc6_.name,_loc6_));
         }
         var _loc5_:uint = this.getKeyBinding(param1,param3);
         if(!f3163548(_loc5_) && _loc5_ != param2)
         {
            delete this.§5214233684233697123423632234§[_loc5_];
         }
         this.§5214233684233697123423632234§[param2] = param1;
         this.§true for break§[param1][param3] = param2;
         if(!§5214234698234711123423632234§)
         {
            this.d51d3b2b(param1,this.§true for break§[param1]);
         }
         return true;
      }
      
      public function getBindingAction(param1:uint, param2:Boolean) : GameActionEnum
      {
         return this.§5214233684233697123423632234§[1073741824 * uint(param2) | param1];
      }
      
      private function c51173d0() : void
      {
         this.§5214237757237770123423632234§[GameActionEnum.ROTATE_TURRET_LEFT] = Vector.<uint>([this.§in use true§,188,0]);
         this.§5214237757237770123423632234§[GameActionEnum.ROTATE_TURRET_RIGHT] = Vector.<uint>([88,190,0]);
         this.§5214237757237770123423632234§[GameActionEnum.CENTER_TURRET] = Vector.<uint>([67,191,0]);
         this.§5214237757237770123423632234§[GameActionEnum.CHASSIS_LEFT_MOVEMENT] = Vector.<uint>([37,65,0]);
         this.§5214237757237770123423632234§[GameActionEnum.CHASSIS_RIGHT_MOVEMENT] = Vector.<uint>([39,68,0]);
         this.§5214237757237770123423632234§[GameActionEnum.CHASSIS_FORWARD_MOVEMENT] = Vector.<uint>([38,87,0]);
         this.§5214237757237770123423632234§[GameActionEnum.CHASSIS_BACKWARD_MOVEMENT] = Vector.<uint>([40,83,0]);
         this.§5214237757237770123423632234§[GameActionEnum.FOLLOW_CAMERA_UP] = Vector.<uint>([33,219,81]);
         this.§5214237757237770123423632234§[GameActionEnum.FOLLOW_CAMERA_DOWN] = Vector.<uint>([34,221,69]);
         this.§5214237757237770123423632234§[GameActionEnum.DROP_FLAG] = Vector.<uint>([70,0,0]);
         this.§5214237757237770123423632234§[GameActionEnum.BATTLE_PAUSE] = Vector.<uint>([80,0,0]);
         this.§5214237757237770123423632234§[GameActionEnum.BATTLE_VIEW_INCREASE] = Vector.<uint>([107,187,0]);
         this.§5214237757237770123423632234§[GameActionEnum.BATTLE_VIEW_DECREASE] = Vector.<uint>([79,0,0]);
         this.§5214237757237770123423632234§[GameActionEnum.FULL_SCREEN] = Vector.<uint>([79,122,0]);
         this.§5214237757237770123423632234§[GameActionEnum.BATTLE_VIEW_INCREASE] = Vector.<uint>([107,0x40000000 | 0xBB,0]);
         this.§5214237757237770123423632234§[GameActionEnum.BATTLE_VIEW_DECREASE] = Vector.<uint>([109,0x40000000 | 0xBD,0]);
         this.§5214237757237770123423632234§[GameActionEnum.SUICIDE] = Vector.<uint>([46,0x40000000 | 0xDC,0]);
         this.§5214237757237770123423632234§[GameActionEnum.USE_FIRS_AID] = Vector.<uint>([49,97,0]);
         this.§5214237757237770123423632234§[GameActionEnum.USE_DOUBLE_ARMOR] = Vector.<uint>([50,98,0]);
         this.§5214237757237770123423632234§[GameActionEnum.USE_DOUBLE_DAMAGE] = Vector.<uint>([51,99,0]);
         this.§5214237757237770123423632234§[GameActionEnum.USE_NITRO] = Vector.<uint>([52,100,0]);
         this.§5214237757237770123423632234§[GameActionEnum.USE_MINE] = Vector.<uint>([53,101,0]);
         this.§5214237757237770123423632234§[GameActionEnum.SHOT] = Vector.<uint>([32,0,0]);
         this.§5214237757237770123423632234§[GameActionEnum.OPEN_GARAGE] = Vector.<uint>([71,0,0]);
      }
      
      public function isFreeKey(param1:uint) : Boolean
      {
         return this.§5214233684233697123423632234§[param1] == null;
      }
      
      private function d51d3b2b(param1:GameActionEnum, param2:Vector.<uint> = null) : void
      {
         if(!param2)
         {
            param2 = fd4ade();
         }
         var _loc3_:SharedObject = this.§if catch include§.getStorage();
         _loc3_.data[param1.name] = param2;
         _loc3_.flush();
      }
      
      private function f5fcebfc() : KeyCodesConverter
      {
         if(!this.§5214231413231426123423632234§)
         {
            this.§5214231413231426123423632234§ = new KeyCodesConverter();
         }
         return this.§5214231413231426123423632234§;
      }
      
      public function getKeyBindings(param1:GameActionEnum) : Vector.<uint>
      {
         return this.§true for break§[param1];
      }
      
      private function f1ee8bbf(param1:GameActionEnum, param2:Vector.<uint>) : void
      {
         var _loc3_:int = 0;
         if(!param2)
         {
            param2 = this.§5214237757237770123423632234§[param1];
            if(!param2)
            {
               param2 = fd4ade();
            }
         }
         else if(param2.length == 2)
         {
            param2[2] = 0;
         }
         this.§true for break§[param1] = param2;
         while(_loc3_ < 3)
         {
            this.setKeyBinding(param1,param2[_loc3_],_loc3_);
            _loc3_++;
         }
      }
   }
}

