package §var set var§
{
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import alternativa.engine3d.core.EllipsoidCollider;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.TargetingModeChangedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.service.fps.FPSService;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battleinput.§default catch break§;
   import alternativa.tanks.services.targeting.§521423108262310839123423632234§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import §finally catch with§.§throw for continue§;
   import flash.display.Stage;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class §dynamic catch use§ extends §finally catch null§ implements §521423108262310839123423632234§, §if use default§, §default catch break§
   {
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      public static var §if catch include§:IStorageService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §5214234884234897123423632234§:TargetingInputManager;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §extends package override§:KeysBindingService;
      
      public static var §521423130032313016123423632234§:FPSService;
      
      private static const §do use else§:Number = 0.001;
      
      private static const §final for import§:Number = 0.08726646259971647;
      
      private static const §const catch import§:Number = 50;
      
      private static const §5214236293236306123423632234§:Number = 5;
      
      private static const §521423120072312020123423632234§:Number = 3;
      
      private static const §package switch default§:Number = 9;
      
      public static var §super use function§:Number = 10;
      
      private static const §implements for switch§:Number = 0.17453292519943295;
      
      private static const §case use final§:Number = 1;
      
      private static const §with set import§:Number = 300;
      
      private static const §import switch break§:ConsoleVarFloat = new ConsoleVarFloat("cam_vspeed",0.7,0,10);
      
      private static const §521423103952310408123423632234§:Vector3 = new Vector3();
      
      private static const §52142367423687123423632234§:Vector3 = new Vector3();
      
      private static const §5214239160239173123423632234§:Vector3D = new Vector3D();
      
      private static const §5214237991238004123423632234§:Vector3D = new Vector3D();
      
      private static const §null switch class§:Vector3D = new Vector3D();
      
      private static const §package finally const§:Vector3D = new Vector3D();
      
      private static const §extends set class§:Matrix3 = new Matrix3();
      
      private static const §try use each§:Vector3 = new Vector3();
      
      private static const §52142342023433123423632234§:Vector3 = new Vector3();
      
      private static var §native package extends§:ConsoleVarFloat = new ConsoleVarFloat("cam_maxmove",5,0,5);
      
      private static var §native var package§:ConsoleVarFloat = new ConsoleVarFloat("max_pos_error",10,0,50);
      
      private static var §extends const final§:ConsoleVarFloat = new ConsoleVarFloat("max_angle_error",0.5,0,5);
      
      private static const §5214232864232877123423632234§:Vector3 = new Vector3();
      
      private static const §5214233638233651123423632234§:Vector3 = new Vector3();
      
      private static const §521423137192313732123423632234§:Vector3 = new Vector3();
      
      private static const §5214237117237130123423632234§:Vector3 = new Vector3();
      
      private static const §5214238825238838123423632234§:Vector3 = new Vector3();
      
      private var §override include§:Boolean;
      
      public var §each package for§:Boolean;
      
      private var §5214232073232086123423632234§:Stage;
      
      private var §with finally var§:Number = 0;
      
      private var locked:Boolean;
      
      private var §5214233335233348123423632234§:Boolean;
      
      private var §set var native§:Boolean;
      
      private var §continue set in§:Boolean;
      
      private var §5214235960235973123423632234§:§static package§;
      
      private var §dynamic final§:Vector3 = new Vector3();
      
      private var §else use extends§:Vector3 = new Vector3();
      
      private var §native for while§:Vector3 = new Vector3();
      
      private var §do const implements§:Vector3 = new Vector3();
      
      private var §5214232182232195123423632234§:Number = 0;
      
      private var §5214231244231257123423632234§:Number = 0;
      
      private var §521423110042311017123423632234§:Number = 0;
      
      private var §521423137342313747123423632234§:int;
      
      private var §5214238663238676123423632234§:§each catch include§ = new §each catch include§();
      
      private var §5214236342236355123423632234§:Number;
      
      private var §5214233234233247123423632234§:Number = 0;
      
      private var §5214235338235351123423632234§:Point = new Point();
      
      private var §5214232847232860123423632234§:Point;
      
      private var §set var class§:Point;
      
      private var §static for null§:Point;
      
      private var §for var in§:Point;
      
      private var §5214234552234565123423632234§:EllipsoidCollider;
      
      private var §case catch super§:Object3D;
      
      private var §5214238006238019123423632234§:int;
      
      private var §5214235569235582123423632234§:Number = 0;
      
      private var §5214231604231617123423632234§:int;
      
      public function §dynamic catch use§()
      {
         super();
         this.§5214232073232086123423632234§ = §5214235917235930123423632234§.stage;
         this.§5214232847232860123423632234§ = new Point(145,545);
         this.§set var class§ = new Point(930,1395);
         this.§static for null§ = new Point(2245,1565);
         this.§for var in§ = new Point(3105,760);
         this.§5214234552234565123423632234§ = new EllipsoidCollider(50,50,50);
         §5214232551232564123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§package package continue§);
         this.§package package continue§();
         var _loc1_:Number = Number(§if catch include§.getStorage().data.cameraT);
         if(isNaN(_loc1_))
         {
            _loc1_ = 0.2;
         }
         this.§5214236381236394123423632234§(_loc1_);
         §with set include§.addBattleEventListener(TargetingModeChangedEvent,this);
      }
      
      private static function §5214236049236062123423632234§(param1:Vector3, param2:Vector3D) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      private static function §521423114262311439123423632234§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc7_:Number = 3 * (param3 - param2);
         var _loc8_:Number = 3 * param2 - 6 * param3 + 3 * param4;
         var _loc6_:Number = -param2 + 3 * param3 - 3 * param4 + param5;
         return param2 + param1 * _loc7_ + param1 * param1 * _loc8_ + param1 * param1 * param1 * _loc6_;
      }
      
      private static function §false use null§(param1:Number) : Number
      {
         return §native package extends§.value * param1;
      }
      
      private function §import for set§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = this.§5214231604231617123423632234§ == 2 ? 9 : 3;
         var _loc4_:Number = §throw for continue§.§5214231069231082123423632234§(§extends const final§.value);
         if(param1 < -_loc4_)
         {
            return _loc3_ * (param1 + _loc4_);
         }
         if(param1 > _loc4_)
         {
            return _loc3_ * (param1 - _loc4_);
         }
         return param2;
      }
      
      override public function §extends for include§() : void
      {
         super.§extends for include§();
         this.§5214239604239617123423632234§();
         if(!this.§continue set in§)
         {
            this.§continue set in§ = true;
            §5214234884234897123423632234§.addListener(this);
         }
      }
      
      override public function §5214234355234368123423632234§() : void
      {
         if(this.§continue set in§)
         {
            this.§continue set in§ = false;
            §5214234884234897123423632234§.removeListener(this);
            this.§5214233335233348123423632234§ = false;
            this.§set var native§ = false;
         }
      }
      
      override public function §521423120402312053123423632234§(param1:int, param2:int) : void
      {
         if(this.§5214235960235973123423632234§ == null)
         {
            return;
         }
         var _loc10_:Number = param2 * 0.001;
         if(_loc10_ > 0.1)
         {
            _loc10_ = 0.1;
         }
         this.§if catch implements§(_loc10_);
         if(!this.locked)
         {
            this.§if switch native§();
         }
         this.§521423112732311286123423632234§(this.§native for while§,this.§do const implements§,this.§5214238663238676123423632234§);
         §5214238825238838123423632234§.diff(this.§5214238663238676123423632234§.§dynamic final§,this.§dynamic final§);
         var _loc4_:Number = §5214238825238838123423632234§.length();
         if(_loc4_ > §native var package§.value)
         {
            this.§5214232182232195123423632234§ = §false use null§(_loc4_ - §native var package§.value);
         }
         var _loc5_:Number = this.§5214232182232195123423632234§ * _loc10_;
         if(_loc5_ > _loc4_)
         {
            _loc5_ = _loc4_;
         }
         §5214238825238838123423632234§.normalize().scale(_loc5_);
         var _loc3_:Number = this.§false§(this.§5214238663238676123423632234§);
         var _loc7_:Number = Math.atan2(-this.§do const implements§.x,this.§do const implements§.y);
         var _loc13_:Number = §throw for continue§.§package use extends§(this.§else use extends§.x + 0.5 * 3.141592653589793);
         var _loc9_:Number = §throw for continue§.§package use extends§(this.§else use extends§.z);
         var _loc12_:Number = §throw for continue§.§5214238295238308123423632234§(_loc3_ - _loc13_);
         this.§5214231244231257123423632234§ = this.§import for set§(_loc12_,this.§5214231244231257123423632234§);
         var _loc8_:Number = this.§5214231244231257123423632234§ * _loc10_;
         if(_loc12_ > 0 && _loc8_ > _loc12_ || _loc12_ < 0 && _loc8_ < _loc12_)
         {
            _loc8_ = _loc12_;
         }
         var _loc6_:Number = §throw for continue§.§5214238295238308123423632234§(_loc7_ - _loc9_);
         this.§521423110042311017123423632234§ = this.§import for set§(_loc6_,this.§521423110042311017123423632234§);
         var _loc11_:Number = this.§521423110042311017123423632234§ * _loc10_;
         if(_loc6_ > 0 && _loc11_ > _loc6_ || _loc6_ < 0 && _loc11_ < _loc6_)
         {
            _loc11_ = _loc6_;
         }
         §§push(this);
         var _temp_12:* = §throw for continue§;
         var _temp_11:* = this.§5214232182232195123423632234§;
         var _temp_10:* = 0;
         var _loc17_:Number = §super use function§;
         var _loc18_:int = _temp_10;
         var _loc19_:Number = _temp_11;
         var _loc14_:§throw for continue§ = _temp_12;
         §§pop().§5214232182232195123423632234§ = _loc19_ > _loc18_ - _loc17_ && _loc19_ < _loc18_ + _loc17_ ? _loc18_ : _loc19_;
         §§push(this);
         var _temp_16:* = §throw for continue§;
         var _temp_15:* = this.§5214231244231257123423632234§;
         var _temp_14:* = 0;
         var _loc20_:Number = §super use function§;
         var _loc21_:int = _temp_14;
         var _loc22_:Number = _temp_15;
         var _loc15_:§throw for continue§ = _temp_16;
         §§pop().§5214231244231257123423632234§ = _loc22_ > _loc21_ - _loc20_ && _loc22_ < _loc21_ + _loc20_ ? _loc21_ : _loc22_;
         §§push(this);
         var _temp_20:* = §throw for continue§;
         var _temp_19:* = this.§521423110042311017123423632234§;
         var _temp_18:* = 0;
         var _loc23_:Number = §super use function§;
         var _loc24_:int = _temp_18;
         var _loc25_:Number = _temp_19;
         var _loc16_:§throw for continue§ = _temp_20;
         §§pop().§521423110042311017123423632234§ = _loc25_ > _loc24_ - _loc23_ && _loc25_ < _loc24_ + _loc23_ ? _loc24_ : _loc25_;
         this.§dynamic final§.add(§5214238825238838123423632234§);
         this.§else use extends§.x += _loc8_;
         this.§else use extends§.z += _loc11_;
         §5214232864232877123423632234§.copy(this.§dynamic final§);
         §5214233638233651123423632234§.copy(this.§else use extends§);
         §5214233236233249123423632234§(§5214232864232877123423632234§);
         §521423112372311250123423632234§(§5214233638233651123423632234§);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:TargetingModeChangedEvent = param1 as TargetingModeChangedEvent;
         if(_loc2_ != null)
         {
            this.§5214231604231617123423632234§ = _loc2_.targetingMode;
         }
      }
      
      public function §override use default§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         this.§521423112732311286123423632234§(param1,param2,this.§5214238663238676123423632234§);
         param4.x = this.§false§(this.§5214238663238676123423632234§) - 0.5 * 3.141592653589793;
         param4.z = Math.atan2(-param2.x,param2.y);
         param3.copy(this.§5214238663238676123423632234§.§dynamic final§);
      }
      
      public function §do const get§(param1:§static package§) : void
      {
         this.§5214235960235973123423632234§ = param1;
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function §521423134202313433123423632234§(param1:Boolean) : void
      {
         this.locked = param1;
         if(param1)
         {
            this.§5214238006238019123423632234§ = 0;
         }
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      override public function close() : void
      {
         §with set include§.removeBattleEventListener(TargetingModeChangedEvent,this);
         §if catch include§.getStorage().setProperty("cameraT",this.§5214233234233247123423632234§);
         §5214232551232564123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§package package continue§);
      }
      
      private function §false§(param1:§each catch include§) : Number
      {
         var _loc4_:Number = this.§5214236342236355123423632234§ - 0.17453292519943295;
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         var _loc2_:Number = param1.§5214232932232945123423632234§;
         if(_loc2_ >= 1 || _loc4_ < 0.08726646259971647 || !this.§override include§)
         {
            return param1.§5214239923239936123423632234§ - _loc4_;
         }
         var _loc3_:Number = this.§5214235338235351123423632234§.x;
         return param1.§5214239923239936123423632234§ - Math.atan2(_loc2_ * _loc3_,1 * _loc3_ * (1 / Math.tan(_loc4_) - (1 - _loc2_) / Math.tan(this.§5214236342236355123423632234§)));
      }
      
      private function §default for include§(param1:Vector3, param2:Vector3, param3:Number, param4:Vector3) : void
      {
         var _loc5_:Number = NaN;
         §5214236049236062123423632234§(param1,§5214239160239173123423632234§);
         §5214237991238004123423632234§.x = param3 * param2.x;
         §5214237991238004123423632234§.y = param3 * param2.y;
         §5214237991238004123423632234§.z = param3 * param2.z;
         if(!§5214232551232564123423632234§.forceDisabledTankShadows && §521423130032313016123423632234§.getFps() > 12 && Boolean(this.§5214234552234565123423632234§.getCollision(§5214239160239173123423632234§,§5214237991238004123423632234§,§null switch class§,§package finally const§,this.§case catch super§)))
         {
            _loc5_ = 50.1;
            param4.x = §null switch class§.x + _loc5_ * §package finally const§.x;
            param4.y = §null switch class§.y + _loc5_ * §package finally const§.y;
            param4.z = §null switch class§.z + _loc5_ * §package finally const§.z;
         }
         else
         {
            param4.copy(param1).addScaled(param3,param2);
         }
      }
      
      public function onGameAction(param1:GameActionEnum, param2:Boolean) : void
      {
      }
      
      public function mouseWheel(param1:int) : void
      {
         var _loc2_:Boolean = false;
         param1 *= §5214232551232564123423632234§.mouseYInverse ? -1 : 1;
         if(!this.locked)
         {
            _loc2_ = false;
            if(param1 > 1)
            {
               if(this.§5214238006238019123423632234§ < 0)
               {
                  this.§5214238006238019123423632234§ = 0;
               }
               _loc2_ = true;
            }
            if(param1 < 1)
            {
               if(this.§5214238006238019123423632234§ > 0)
               {
                  this.§5214238006238019123423632234§ = 0;
               }
               _loc2_ = true;
            }
            if(_loc2_)
            {
               this.§5214238006238019123423632234§ = param1 * 2;
            }
         }
      }
      
      public function §521423106122310625123423632234§(param1:Object3D) : void
      {
         this.§case catch super§ = param1;
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function §521423772390123423632234§() : void
      {
         this.§override include§ = false;
      }
      
      private function §package package continue§(param1:SettingsServiceEvent = null) : void
      {
         if(§5214232551232564123423632234§.alternateCamera)
         {
            this.§521423772390123423632234§();
         }
         else
         {
            this.§521423134192313432123423632234§();
         }
      }
      
      private function §if catch implements§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§5214238006238019123423632234§ < 0)
         {
            this.§5214233335233348123423632234§ = true;
            this.§set var native§ = false;
            ++this.§5214238006238019123423632234§;
            if(this.§5214238006238019123423632234§ == 0)
            {
               this.§5214233335233348123423632234§ = false;
            }
         }
         else if(this.§5214238006238019123423632234§ > 0)
         {
            this.§5214233335233348123423632234§ = false;
            this.§set var native§ = true;
            --this.§5214238006238019123423632234§;
            if(this.§5214238006238019123423632234§ == 0)
            {
               this.§set var native§ = false;
            }
         }
         if(!this.§each package for§ && this.§5214233335233348123423632234§ != this.§set var native§)
         {
            _loc2_ = this.§5214233335233348123423632234§ ? 1 : -1;
            this.§5214236381236394123423632234§(this.§5214233234233247123423632234§ + _loc2_ * §import switch break§.value * param1);
         }
         else
         {
            this.§5214236381236394123423632234§(this.§5214233234233247123423632234§);
         }
      }
      
      public function §521423134192313432123423632234§() : void
      {
         this.§override include§ = true;
      }
      
      private function §521423112732311286123423632234§(param1:Vector3, param2:Vector3, param3:§each catch include§) : void
      {
         var _loc7_:Number = NaN;
         var _loc5_:Number = this.§5214236342236355123423632234§;
         var _loc6_:Number = Math.sqrt(param2.x * param2.x + param2.y * param2.y);
         if(_loc6_ < 0.00001)
         {
            §5214237117237130123423632234§.x = 1;
            §5214237117237130123423632234§.y = 0;
         }
         else
         {
            §5214237117237130123423632234§.x = param2.x / _loc6_;
            §5214237117237130123423632234§.y = param2.y / _loc6_;
         }
         param3.§5214239923239936123423632234§ = 0;
         param3.§5214232932232945123423632234§ = 1;
         §521423137192313732123423632234§.copy(param1);
         §try use each§.x = §5214237117237130123423632234§.y;
         §try use each§.y = -§5214237117237130123423632234§.x;
         §5214237117237130123423632234§.reverse();
         §extends set class§.fromAxisAngle(§try use each§,-_loc5_);
         §extends set class§.transformVector(§5214237117237130123423632234§,§52142342023433123423632234§);
         this.§default for include§(§521423137192313732123423632234§,§52142342023433123423632234§,this.§with finally var§,§521423103952310408123423632234§);
         var _loc4_:Number = §52142367423687123423632234§.copy(§521423137192313732123423632234§).subtract(§521423103952310408123423632234§).length();
         param3.§5214232932232945123423632234§ = _loc4_ / this.§with finally var§;
         if(_loc4_ < 300)
         {
            §521423137192313732123423632234§.copy(§521423103952310408123423632234§);
            _loc7_ = 300 - _loc4_;
            this.§default for include§(§521423137192313732123423632234§,Vector3.§521423109692310982123423632234§,_loc7_,§521423103952310408123423632234§);
         }
         param3.§dynamic final§.copy(§521423103952310408123423632234§);
      }
      
      public function §5214239604239617123423632234§() : void
      {
         this.§dynamic final§.copy(§import use break§());
         this.§else use extends§.reset(§5214236753236766123423632234§(),§5214236389236402123423632234§(),§null const package§());
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
         if(!this.locked)
         {
            this.§5214235569235582123423632234§ += param2 * 0.001 * (§5214232551232564123423632234§.mouseYInverse ? -1 : 1);
            this.§5214235569235582123423632234§ = §throw for continue§.§52142393423947123423632234§(this.§5214235569235582123423632234§,-1,1);
         }
      }
      
      public function §if switch native§() : void
      {
         this.§5214235960235973123423632234§.getCameraParams(this.§native for while§,this.§do const implements§);
      }
      
      public function §5214236381236394123423632234§(param1:Number) : void
      {
         this.§5214233234233247123423632234§ = §throw for continue§.§52142393423947123423632234§(param1,0,1);
         var _loc2_:Number = §throw for continue§.§52142393423947123423632234§(this.§5214233234233247123423632234§ + this.§5214235569235582123423632234§ * 0.1,0,1);
         var _temp_5:* = this.§5214235338235351123423632234§;
         var _temp_4:* = _loc2_;
         var _temp_3:* = this.§5214232847232860123423632234§.x;
         var _temp_2:* = this.§set var class§.x;
         var _temp_1:* = this.§static for null§.x;
         var _loc7_:Number = this.§for var in§.x;
         var _loc6_:Number = _temp_1;
         var _loc5_:Number = _temp_2;
         var _loc3_:Number = _temp_3;
         var _loc8_:Number = _temp_4;
         var _loc9_:Number = 3 * (_loc5_ - _loc3_);
         var _loc10_:Number = 3 * _loc3_ - 6 * _loc5_ + 3 * _loc6_;
         var _loc4_:Number = -_loc3_ + 3 * _loc5_ - 3 * _loc6_ + _loc7_;
         _temp_5.x = _loc3_ + _loc8_ * _loc9_ + _loc8_ * _loc8_ * _loc10_ + _loc8_ * _loc8_ * _loc8_ * _loc4_;
         var _temp_10:* = this.§5214235338235351123423632234§;
         var _temp_9:* = _loc2_;
         var _temp_8:* = this.§5214232847232860123423632234§.y;
         var _temp_7:* = this.§set var class§.y;
         var _temp_6:* = this.§static for null§.y;
         var _loc15_:Number = this.§for var in§.y;
         var _loc14_:Number = _temp_6;
         var _loc13_:Number = _temp_7;
         var _loc11_:Number = _temp_8;
         var _loc16_:Number = _temp_9;
         var _loc17_:Number = 3 * (_loc13_ - _loc11_);
         var _loc18_:Number = 3 * _loc11_ - 6 * _loc13_ + 3 * _loc14_;
         var _loc12_:Number = -_loc11_ + 3 * _loc13_ - 3 * _loc14_ + _loc15_;
         _temp_10.y = _loc11_ + _loc16_ * _loc17_ + _loc16_ * _loc16_ * _loc18_ + _loc16_ * _loc16_ * _loc16_ * _loc12_;
         this.§5214236342236355123423632234§ = Math.atan2(this.§5214235338235351123423632234§.x,this.§5214235338235351123423632234§.y);
         this.§with finally var§ = this.§5214235338235351123423632234§.length;
         this.§521423137342313747123423632234§ = 0;
      }
      
      public function §var function§(param1:Vector3, param2:Vector3) : void
      {
         this.§native for while§.copy(param1);
         this.§do const implements§.copy(param2);
         this.§521423137342313747123423632234§ = 0;
         this.§521423112732311286123423632234§(param1,param2,this.§5214238663238676123423632234§);
         this.§dynamic final§.copy(this.§5214238663238676123423632234§.§dynamic final§);
         this.§else use extends§.x = this.§false§(this.§5214238663238676123423632234§) - 0.5 * 3.141592653589793;
         this.§else use extends§.y = 0;
         this.§else use extends§.z = Math.atan2(-param2.x,param2.y);
         §5214233236233249123423632234§(this.§dynamic final§);
         §521423112372311250123423632234§(this.§else use extends§);
      }
      
      public function keyboardButton(param1:uint, param2:Boolean, param3:Boolean) : Boolean
      {
         var _loc4_:GameActionEnum;
         switch(_loc4_ = §extends package override§.getBindingAction(param1,false))
         {
            case GameActionEnum.FOLLOW_CAMERA_UP:
               this.§5214233335233348123423632234§ = param2;
               break;
            case GameActionEnum.FOLLOW_CAMERA_DOWN:
               this.§set var native§ = param2;
         }
         return true;
      }
   }
}

