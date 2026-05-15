package §5214235485235498123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §5214231366231379123423632234§.§default catch native§;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§throw for true§;
   import §52142360623619123423632234§.§dynamic const§;
   import §5214238325238338123423632234§.§5214234586234599123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import §5214239225239238123423632234§.TDMHealingGunTargetEvaluator;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.§521423111742311187123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.BattleRestartEvent;
   import alternativa.tanks.battle.events.LocalTankActivationEvent;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.models.battle.battlefield.BattleType;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import alternativa.tanks.service.settings.keybinding.GameActionEnum;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.utils.TextureMaterialRegistry;
   import §const false§.TankDeadEvent;
   import §each var null§.§catch for in§;
   import §each var null§.§const throw§;
   import §else switch default§.§5214235140235153123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import §finally catch with§.§true use package§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §native set final§.§5214231867231880123423632234§;
   import §native set final§.§5214238635238648123423632234§;
   import §native set final§.§class set var§;
   import §native set final§.§in set each§;
   import §native set final§.§native var override§;
   import §override catch default§.Long;
   import §package package false§.§static set true§;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §throw set function§.§if catch true§;
   import §throw set function§.§try var case§;
   
   public class CaptureTheFlagModel extends §in set each§ implements §class set var§, §true var finally§, §5214234168234181123423632234§, §throw catch var§, §if use default§
   {
      
      public static const §import set case§:Number = 80;
      
      private static const §5214239292239305123423632234§:int = 128;
      
      private static const §final default§:int = 256;
      
      private static const §5214235600235613123423632234§:int = 5000;
      
      private static const §521423112852311298123423632234§:String = "taken";
      
      private static const §with const for§:String = "lost";
      
      private static const §5214232765232778123423632234§:String = "returned";
      
      private static const §with const while§:String = "captured";
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var display:IDisplay;
      
      public static var §while for package§:BattleUserInfoService;
      
      public static var §5214236492236505123423632234§:BattleInputService;
      
      public static var §extends package override§:KeysBindingService;
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private var §5214231017231030123423632234§:Boolean;
      
      private var §if switch finally§:BattlefieldGUI;
      
      private var §with var include§:§dynamic const§;
      
      private var §5214232242232255123423632234§:§5214234586234599123423632234§;
      
      private var §else for include§:Dictionary;
      
      private var §5214238484238497123423632234§:Object;
      
      private var §for set switch§:Object;
      
      private var §override super§:Object;
      
      private var §if package native§:String;
      
      private var §5214235705235718123423632234§:String;
      
      private var §switch package true§:FlagMessage;
      
      private var §521423116972311710123423632234§:FlagMessage;
      
      private var §5214231777231790123423632234§:Sound;
      
      private var §set throw§:Sound;
      
      private var §5214231320231333123423632234§:Sound;
      
      private var §5214234542234555123423632234§:Sound;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §5214239755239768123423632234§:Dictionary;
      
      private var §implements package while§:§5214239411239424123423632234§;
      
      private var §const use if§:Vector.<FlagBaseTrigger>;
      
      private var §set package class§:Vector.<§521423111742311187123423632234§>;
      
      public function CaptureTheFlagModel()
      {
         super();
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(BattleFinishEvent,this.c629987c);
         this.§5214238269238282123423632234§.addEventHandler(BattleRestartEvent,this.b50281ca);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,this.onTankLoaded);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.a47915e9);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.b3b06d40);
         this.§5214238269238282123423632234§.addEventHandler(LocalTankActivationEvent,this.d3b9261b);
         this.§5214238269238282123423632234§.addEventHandler(TankDeadEvent,this.f1196fd5);
      }
      
      private static function c551a4e2(param1:§5214233863233876123423632234§) : Object3D
      {
         var _loc3_:TextureMaterial = null;
         var _loc2_:Mesh = Mesh(param1.§5214237990238003123423632234§[0]);
         var _loc4_:BSP = new BSP();
         _loc4_.createTree(_loc2_);
         var _loc5_:BitmapData = param1.§finally for break§(0);
         if(_loc5_ == null)
         {
            _loc5_ = new §throw for true§(16776960);
         }
         _loc3_ = §5214235868235881123423632234§.getMaterial(_loc5_);
         _loc3_.resolution = 1;
         _loc4_.setMaterialToAllFaces(_loc3_);
         return _loc4_;
      }
      
      private static function a6b4e7ea(param1:Object, param2:uint) : void
      {
         param1["taken"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_GOT_FLAG_NEUTRAL"),param2);
         param1["lost"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_LOST_FLAG_NEUTRAL"),param2);
         param1["returned"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_RETURNED_FLAG_NEUTRAL"),param2);
         param1["captured"] = new FlagMessage(§5214236363236376123423632234§.getText("CTF_CAPTURED_FLAG_NEUTRAL"),param2);
      }
      
      private static function f3f7d3b2(param1:§5214231658231671123423632234§) : §5214231658231671123423632234§
      {
         return param1 == §5214231658231671123423632234§.§implements set implements§ ? §5214231658231671123423632234§.§521423107532310766123423632234§ : §5214231658231671123423632234§.§implements set implements§;
      }
      
      public function getRicochetTargetEvaluator() : §try var case§
      {
         var _loc1_:§if catch true§ = new §if catch true§();
         this.§set package class§.push(_loc1_);
         return _loc1_;
      }
      
      private function d3dc03df(param1:String, param2:String, param3:uint, param4:String, param5:uint) : void
      {
         var _loc7_:FlagMessage = new FlagMessage(§5214236363236376123423632234§.getText(param2),param3);
         var _loc6_:FlagMessage = new FlagMessage(§5214236363236376123423632234§.getText(param4),param5);
         this.§5214238484238497123423632234§[param1] = new FlagActionMessages(_loc7_,_loc6_);
      }
      
      private function c1177c82() : void
      {
         this.§else for include§ = new Dictionary();
         var _loc1_:§5214238635238648123423632234§ = §switch var switch§();
         this.a4fdcbe5(§5214231658231671123423632234§.§521423107532310766123423632234§,_loc1_.§521423133272313340123423632234§,_loc1_.§false catch super§.data,_loc1_.§get use use§);
         this.a4fdcbe5(§5214231658231671123423632234§.§implements set implements§,_loc1_.§for catch throw§,_loc1_.§521423111232311136123423632234§.data,_loc1_.§5214235793235806123423632234§);
      }
      
      public function onFlagTouch(param1:CTFFlag) : void
      {
         this.eebfaba(param1);
         this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function a75b81c4(param1:CTFFlag) : void
      {
         if(this.§implements package while§ != null && this.§implements package while§.§implements catch catch§ == §get catch§.§52142350323516123423632234§ && §52142380523818123423632234§.isBattleActive())
         {
            §52142380523818123423632234§.getBattleRunner().addTrigger(param1);
         }
      }
      
      public function onLeaveFlagBaseZone() : void
      {
         this.§5214232242232255123423632234§.lockItem(5,2,false);
      }
      
      private function f6aeaf4d(param1:§5214231658231671123423632234§) : CTFFlag
      {
         return this.§else for include§[BattleUtils.getOtherTeam(param1)];
      }
      
      private function eaa3ba3(param1:CTFFlag) : void
      {
         if(param1.carrier == null)
         {
            return;
         }
         var _loc2_:FlagMessage = this.c5ffac3e(param1.teamType);
         if(_loc2_ != null)
         {
            this.d52129f8(_loc2_,param1.carrier.§do for final§.userName);
            this.§if switch finally§.showUserBattleLogMessage(param1.carrier.§do for final§.userName,_loc2_.text,null);
            §52142380523818123423632234§.soundManager.playSound(this.§5214231777231790123423632234§);
         }
      }
      
      private function b161bd11(param1:String, param2:§5214231658231671123423632234§) : FlagMessage
      {
         var _loc3_:Object = param2 == §5214231658231671123423632234§.§implements set implements§ ? this.§override super§ : this.§for set switch§;
         return _loc3_[param1];
      }
      
      private function c1e62da5(param1:CTFFlag, param2:§5214239411239424123423632234§) : void
      {
         if(param2 != null && this.§implements package while§ != null && this.§implements package while§.§try for const§(param1.teamType))
         {
            this.c218e4da(param2.§break switch catch§());
         }
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:§5214231867231880123423632234§ = §switch var switch§().§5214235405235418123423632234§;
         this.§5214231777231790123423632234§ = _loc1_.§5214231777231790123423632234§.§set const switch§;
         this.§set throw§ = _loc1_.§set throw§.§set const switch§;
         this.§5214231320231333123423632234§ = _loc1_.§5214231320231333123423632234§.§set const switch§;
         this.§5214234542234555123423632234§ = _loc1_.§5214234542234555123423632234§.§set const switch§;
         this.§5214239755239768123423632234§ = new Dictionary();
         this.§const use if§ = new Vector.<FlagBaseTrigger>();
         this.a172bed6();
         this.§5214232242232255123423632234§ = §5214234586234599123423632234§(modelRegistry.getModel(Long.getLong(-1967712540,-458647807)));
         this.§if switch finally§ = BattlefieldGUI(OSGi.getInstance().getService(BattlefieldGUI));
         this.§with var include§ = §dynamic const§(modelRegistry.getModel(Long.getLong(-1367246999,1092854311)));
         display.stage.addEventListener("keyDown",this.onKeyDown);
         this.§5214238269238282123423632234§.activateHandlers();
         this.c6ac4396();
         this.c1177c82();
      }
      
      private function c38acba3() : void
      {
         this.d3dc03df("taken","CTF_GOT_ENEMY_FLAG",65280,"CTF_GOT_OUR_FLAG",16776960);
         this.d3dc03df("lost","CTF_LOST_OUR_FLAG",65280,"CTF_LOST_ENEMY_FLAG",16776960);
         this.d3dc03df("returned","CTF_RETURNED_OUR_FLAG",65280,"CTF_RETURNED_ENEMY_FLAG",16776960);
         this.d3dc03df("captured","CTF_CAPTURED_ENEMY_FLAG",65280,"CTF_CAPTURED_OUR_FLAG",16776960);
      }
      
      private function d52129f8(param1:FlagMessage, param2:String) : void
      {
         var _loc3_:String = param2 != null ? §while for package§.getUserName(param2) : null;
         if(_loc3_)
         {
            this.§if switch finally§.showBattleMessage(param1.color,_loc3_ + " " + param1.text);
         }
      }
      
      private function c1da9bd6(param1:CTFFlag) : void
      {
         var _loc2_:CTFFlag = null;
         if(this.§implements package while§ == null)
         {
            return;
         }
         if(param1.carrier == null)
         {
            return;
         }
         if(this.§implements package while§.§try for const§(param1.teamType))
         {
            this.c218e4da(null);
         }
         if(param1.carrier == this.§implements package while§)
         {
            if(this.§5214231017231030123423632234§)
            {
               this.§5214231017231030123423632234§ = false;
               §52142380523818123423632234§.getBattleRunner().addLogicUnit(new FlagPickupTimeoutTask(this,getTimer() + 5000));
            }
            _loc2_ = this.f6aeaf4d(param1.teamType);
            if(_loc2_.state == CTFFlagState.AT_BASE)
            {
               this.eebfaba(_loc2_);
            }
         }
         else
         {
            this.a75b81c4(param1);
         }
      }
      
      private function c155a41c() : void
      {
         var _loc1_:CTFFlag = null;
         if(§52142380523818123423632234§.isBattleActive() && !§5214236492236505123423632234§.isInputLocked() && this.§implements package while§ != null && !this.§5214231017231030123423632234§)
         {
            _loc1_ = this.f6aeaf4d(this.§implements package while§.§5214238124238137123423632234§);
            if(_loc1_.carrier == this.§implements package while§)
            {
               this.§5214231017231030123423632234§ = true;
               this.§5214238269238282123423632234§.dispatchEvent(StateCorrectionEvent.§use var with§);
               §521423120492312062123423632234§.§5214232882232895123423632234§();
            }
         }
      }
      
      private function c629987c(param1:Object) : void
      {
         var _loc2_:CTFFlag = null;
         this.§5214231017231030123423632234§ = false;
         for each(_loc2_ in this.§else for include§)
         {
            this.eebfaba(_loc2_);
         }
      }
      
      private function f1196fd5(param1:TankDeadEvent) : void
      {
         var _loc2_:CTFFlag = null;
         if(this.§implements package while§ != null && this.§implements package while§ == param1.§52142366723680123423632234§)
         {
            for each(_loc2_ in this.§else for include§)
            {
               this.eebfaba(_loc2_);
            }
         }
      }
      
      private function a76dfc37(param1:CTFFlag, param2:String, param3:§5214239411239424123423632234§) : void
      {
         param1.setRemoteCarrier(param2,param3);
         this.c1e62da5(param1,param3);
      }
      
      private function d13f3e1e(param1:String, param2:Boolean) : FlagMessage
      {
         var _loc3_:FlagActionMessages = this.§5214238484238497123423632234§[param1];
         return param2 ? _loc3_.§5214234718234731123423632234§ : _loc3_.§5214237486237499123423632234§;
      }
      
      private function f375436(param1:String, param2:§5214231658231671123423632234§) : void
      {
         var _loc3_:FlagMessage = null;
         var _loc4_:Boolean = false;
         if(§return set get§.isSpectatorMode())
         {
            _loc3_ = this.b161bd11("taken",f3f7d3b2(param2));
         }
         else if(this.§implements package while§.§5214238124238137123423632234§ != null)
         {
            _loc4_ = this.§implements package while§.§5214238124238137123423632234§ != param2;
            _loc3_ = this.d13f3e1e("taken",_loc4_);
         }
         if(_loc3_ != null)
         {
            this.d52129f8(_loc3_,param1);
            this.§if switch finally§.showUserBattleLogMessage(param1,_loc3_.text,null);
         }
      }
      
      public function getBattleType() : BattleType
      {
         return BattleType.CTF;
      }
      
      public function onPickupTimeoutPassed() : void
      {
         var _loc1_:CTFFlag = this.f6aeaf4d(this.§implements package while§.§5214238124238137123423632234§);
         if(_loc1_.state != CTFFlagState.CARRIED)
         {
            this.a75b81c4(_loc1_);
         }
      }
      
      private function b5983d13(param1:§5214231658231671123423632234§) : void
      {
         var _loc2_:CTFFlag = null;
         this.§5214231017231030123423632234§ = false;
         var _loc3_:CTFFlag = this.d5ca7909(param1);
         _loc3_.returnToBase();
         if(Boolean(this.§implements package while§) && Boolean(this.§implements package while§.§5214238124238137123423632234§))
         {
            if(this.§implements package while§.§try for const§(param1))
            {
               this.c218e4da(null);
               _loc2_ = this.f6aeaf4d(param1);
               if(_loc2_.carrier == this.§implements package while§)
               {
                  this.a75b81c4(_loc3_);
               }
               else
               {
                  this.eebfaba(_loc3_);
               }
            }
            else
            {
               this.a75b81c4(_loc3_);
            }
         }
         this.§if switch finally§.ctfShowFlagAtBase(param1);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function e6ad72fd(param1:CTFFlag, param2:String, param3:§5214239411239424123423632234§) : void
      {
         param1.setLocalCarrier(param2,param3);
         this.c1e62da5(param1,param3);
      }
      
      private function a172bed6() : void
      {
         this.§5214238484238497123423632234§ = {};
         this.§override super§ = {};
         this.§for set switch§ = {};
         this.c38acba3();
         a6b4e7ea(this.§override super§,4691967);
         a6b4e7ea(this.§for set switch§,15741974);
         this.§if package native§ = §5214236363236376123423632234§.getText("CTF_OUR_FLAG_RETURNED");
         this.§5214235705235718123423632234§ = §5214236363236376123423632234§.getText("CTF_ENEMY_FLAG_RETURNED");
         this.§switch package true§ = new FlagMessage(§5214236363236376123423632234§.getText("CTF_BLUE_FLAG_RETURNED"),4691967);
         this.§521423116972311710123423632234§ = new FlagMessage(§5214236363236376123423632234§.getText("CTF_RED_FLAG_RETURNED"),15741974);
      }
      
      public function flagTaken(param1:String, param2:§5214231658231671123423632234§) : void
      {
         var _loc4_:CTFFlag = null;
         var _loc5_:CTFFlag = this.d5ca7909(param2);
         var _loc3_:§5214239411239424123423632234§ = this.§5214239755239768123423632234§[param1];
         if(this.§implements package while§ != null && this.§implements package while§ == _loc3_)
         {
            this.e6ad72fd(_loc5_,param1,_loc3_);
         }
         else
         {
            this.a76dfc37(_loc5_,param1,_loc3_);
         }
         if(this.§implements package while§ != null || §return set get§.isSpectatorMode())
         {
            this.eebfaba(_loc5_);
            if(_loc3_ == this.§implements package while§ && this.§implements package while§ != null)
            {
               _loc4_ = this.d5ca7909(this.§implements package while§.§5214238124238137123423632234§);
               if(_loc4_.carrier == null)
               {
                  this.a75b81c4(_loc4_);
               }
            }
            this.f375436(param1,param2);
            §52142380523818123423632234§.soundManager.playSound(this.§5214231320231333123423632234§);
         }
         this.§if switch finally§.ctfShowFlagCarried(param2);
      }
      
      public function onEnterFlagBaseZone() : void
      {
         this.§5214232242232255123423632234§.lockItem(5,2,true);
      }
      
      private function b20430e(param1:§5214231658231671123423632234§, param2:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:Boolean = this.§implements package while§.§5214238124238137123423632234§ == param1;
         var _loc3_:FlagMessage = this.d13f3e1e("returned",_loc5_);
         if(param2)
         {
            this.d52129f8(_loc3_,param2);
            this.§if switch finally§.showUserBattleLogMessage(param2,_loc3_.text,null);
         }
         else
         {
            _loc4_ = _loc5_ ? this.§if package native§ : this.§5214235705235718123423632234§;
            this.§if switch finally§.showBattleMessage(_loc3_.color,_loc4_);
         }
      }
      
      private function d3b9261b(param1:Object) : void
      {
         var _loc2_:§521423111742311187123423632234§ = null;
         var _loc3_:CTFFlag = this.d5ca7909(this.§implements package while§.§5214238124238137123423632234§);
         if(_loc3_.state == CTFFlagState.DROPPED)
         {
            this.a75b81c4(_loc3_);
         }
         var _loc4_:CTFFlag = this.f6aeaf4d(this.§implements package while§.§5214238124238137123423632234§);
         if(_loc4_.state != CTFFlagState.CARRIED)
         {
            this.a75b81c4(_loc4_);
         }
         for each(_loc2_ in this.§set package class§)
         {
            _loc2_.setLocalTeamType(this.§implements package while§.§5214238124238137123423632234§);
         }
      }
      
      private function b58c4318(param1:§5214231658231671123423632234§, param2:String) : void
      {
         var _loc3_:FlagMessage = null;
         var _loc4_:FlagMessage = null;
         if(param2)
         {
            _loc3_ = this.b161bd11("returned",param1);
            this.d52129f8(_loc3_,param2);
            this.§if switch finally§.showUserBattleLogMessage(param2,_loc3_.text,null);
         }
         else
         {
            _loc4_ = param1 == §5214231658231671123423632234§.§implements set implements§ ? this.§switch package true§ : this.§521423116972311710123423632234§;
            this.§if switch finally§.showBattleMessage(_loc4_.color,_loc4_.text);
         }
      }
      
      private function a47915e9(param1:TankUnloadedEvent) : void
      {
         var _loc2_:§const throw§ = null;
         var _loc5_:§catch for in§ = null;
         var _loc6_:Vector3 = null;
         var _loc3_:§5214239411239424123423632234§ = param1.tank;
         var _loc4_:CTFFlag = this.f6aeaf4d(_loc3_.§5214238124238137123423632234§);
         if(_loc4_.carrier == _loc3_)
         {
            _loc2_ = _loc3_.§break switch catch§();
            _loc5_ = _loc2_.§implements catch catch§;
            _loc6_ = _loc5_.§dynamic final§;
            this.dropFlag(BattleUtils.getVector3d(_loc6_),_loc4_.teamType);
         }
         delete this.§5214239755239768123423632234§[_loc3_.§do for final§.userName];
      }
      
      private function c5ffac3e(param1:§5214231658231671123423632234§) : FlagMessage
      {
         var _loc2_:Boolean = false;
         if(§return set get§.isSpectatorMode())
         {
            return this.b161bd11("lost",f3f7d3b2(param1));
         }
         if(Boolean(this.§implements package while§) && Boolean(this.§implements package while§.§5214238124238137123423632234§))
         {
            _loc2_ = this.§implements package while§.§try for const§(param1);
            return this.d13f3e1e("lost",_loc2_);
         }
         return null;
      }
      
      private function d7540478(param1:§5214233863233876123423632234§, param2:§native var override§) : void
      {
         var _loc5_:Object3D = c551a4e2(param1);
         var _loc6_:Vector3 = BattleUtils.getVector3(param2.§throw use else§);
         _loc6_.z = _loc6_.z - 80;
         _loc5_.x = _loc6_.x;
         _loc5_.y = _loc6_.y;
         _loc5_.z = _loc6_.z;
         §52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(_loc5_);
         var _loc3_:§static set true§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         var _loc4_:FlagBaseTrigger = new FlagBaseTrigger(_loc6_,this.§with var include§.§extends set override§(),this,_loc3_);
         this.§const use if§.push(_loc4_);
         §52142380523818123423632234§.getBattleRunner().addTrigger(_loc4_);
      }
      
      private function onTankLoaded(param1:TankLoadedEvent) : void
      {
         this.§5214239755239768123423632234§[param1.tank.§do for final§.userName] = param1.tank;
         if(param1.isLocal)
         {
            this.§implements package while§ = param1.tank;
         }
      }
      
      private function d5ca7909(param1:§5214231658231671123423632234§) : CTFFlag
      {
         return this.§else for include§[param1];
      }
      
      public function dropFlag(param1:§52142320823221123423632234§, param2:§5214231658231671123423632234§) : void
      {
         var _loc3_:CTFFlag = this.d5ca7909(param2);
         this.eaa3ba3(_loc3_);
         this.§if switch finally§.ctfShowFlagDropped(_loc3_.teamType);
         this.c1da9bd6(_loc3_);
         _loc3_.dropAt(new Vector3(param1.x,param1.y,param1.§continue package false§));
      }
      
      public function flagDelivered(param1:§5214231658231671123423632234§, param2:String) : void
      {
         var _loc3_:§5214239411239424123423632234§ = null;
         var _loc4_:FlagMessage = null;
         this.b5983d13(BattleUtils.getOtherTeam(param1));
         if(this.§implements package while§ != null || §return set get§.isSpectatorMode())
         {
            _loc3_ = this.§5214239755239768123423632234§[param2];
            if(_loc3_ != null)
            {
               if(§return set get§.isSpectatorMode())
               {
                  _loc4_ = this.b161bd11("captured",param1);
               }
               else
               {
                  _loc4_ = this.d13f3e1e("captured",this.§implements package while§.§5214238124238137123423632234§ == param1);
               }
               this.d52129f8(_loc4_,param2);
               this.§if switch finally§.showUserBattleLogMessage(param2,_loc4_.text,null);
               §52142380523818123423632234§.soundManager.playSound(this.§5214234542234555123423632234§);
            }
         }
      }
      
      private function c6ac4396() : void
      {
         this.§set package class§ = new Vector.<§521423111742311187123423632234§>(4);
         var _loc4_:CTFCommonTargetEvaluator = new CTFCommonTargetEvaluator();
         §52142380523818123423632234§.setCommonTargetEvaluator(_loc4_);
         this.§set package class§[0] = _loc4_;
         var _loc2_:TDMHealingGunTargetEvaluator = new TDMHealingGunTargetEvaluator();
         §52142380523818123423632234§.setHealingGunTargetEvaluator(_loc2_);
         this.§set package class§[1] = _loc2_;
         var _loc3_:CTFRailgunTargetEvaluator = new CTFRailgunTargetEvaluator();
         §52142380523818123423632234§.setRailgunTargetEvaluator(_loc3_);
         this.§set package class§[2] = _loc3_;
         var _loc1_:§if catch true§ = new §if catch true§();
         §52142380523818123423632234§.setRicochetTargetEvaluator(_loc1_);
         this.§set package class§[3] = _loc1_;
      }
      
      private function a4fdcbe5(param1:§5214231658231671123423632234§, param2:§native var override§, param3:BitmapData, param4:§5214233863233876123423632234§) : void
      {
         var _loc8_:CTFFlag = null;
         var _loc9_:Vector3 = null;
         if(param3 == null)
         {
            param3 = new BitmapData(128,256,false,param1 == §5214231658231671123423632234§.§521423107532310766123423632234§ ? 11141120 : 170);
         }
         var _loc6_:TextureAnimation = §true use package§.§5214231046231059123423632234§(§5214235868235881123423632234§,param3,128,param3.height,0,false);
         var _loc7_:Vector3 = new Vector3(param2.§throw use else§.x,param2.§throw use else§.y,param2.§throw use else§.§continue package false§);
         var _loc5_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc8_ = new CTFFlag(param1,_loc7_,128,256,_loc6_,§52142380523818123423632234§.getBattleRunner().getCollisionDetector(),this);
         this.§else for include§[param1] = _loc8_;
         _loc8_.addToScene();
         if(param2.§each for switch§ != null)
         {
            this.a76dfc37(_loc8_,param2.§each for switch§,this.§5214239755239768123423632234§[param2.§each for switch§]);
            this.§if switch finally§.ctfShowFlagCarried(param1);
         }
         else if(param2.final != null)
         {
            _loc9_ = new Vector3();
            _loc9_.x = param2.final.x;
            _loc9_.y = param2.final.y;
            _loc9_.z = param2.final.§continue package false§;
            _loc8_.dropAt(_loc9_);
            this.§if switch finally§.ctfShowFlagDropped(param1);
         }
         _loc5_.§5214231991232004123423632234§(_loc8_,1);
         _loc5_.§5214233808233821123423632234§.add(_loc8_);
         this.d7540478(param4,param2);
      }
      
      public function returnFlagToBase(param1:§5214231658231671123423632234§, param2:String) : void
      {
         this.b5983d13(param1);
         if(§return set get§.isSpectatorMode())
         {
            this.b58c4318(param1,param2);
         }
         else if(Boolean(this.§implements package while§) && Boolean(this.§implements package while§.§5214238124238137123423632234§))
         {
            this.b20430e(param1,param2);
         }
         §52142380523818123423632234§.soundManager.playSound(this.§set throw§);
      }
      
      private function b50281ca(param1:Object) : void
      {
         var _loc2_:FlagBaseTrigger = null;
         this.b5983d13(§5214231658231671123423632234§.§implements set implements§);
         this.b5983d13(§5214231658231671123423632234§.§521423107532310766123423632234§);
         for each(_loc2_ in this.§const use if§)
         {
            _loc2_.reset();
         }
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:GameActionEnum = §extends package override§.getBindingAction(param1.keyCode,param1.ctrlKey);
         var _loc3_:GameActionEnum = _loc2_;
         if(GameActionEnum.DROP_FLAG === _loc3_)
         {
            this.c155a41c();
         }
      }
      
      private function c218e4da(param1:§const throw§) : void
      {
         var _loc2_:§521423111742311187123423632234§ = null;
         for each(_loc2_ in this.§set package class§)
         {
            _loc2_.setFlagCarrier(param1);
         }
      }
      
      private function eebfaba(param1:CTFFlag) : void
      {
         §52142380523818123423632234§.getBattleRunner().removeTrigger(param1);
      }
      
      private function b3b06d40(param1:TankAddedToBattleEvent) : void
      {
         var _loc2_:CTFFlag = null;
         for each(_loc2_ in this.§else for include§)
         {
            if(_loc2_.state == CTFFlagState.CARRIED && _loc2_.carrierid == param1.tank.§do for final§.userName)
            {
               this.a76dfc37(_loc2_,_loc2_.carrierid,param1.tank);
               this.eebfaba(_loc2_);
               break;
            }
         }
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:CTFFlag = null;
         display.stage.removeEventListener("keyDown",this.onKeyDown);
         for each(_loc1_ in this.§else for include§)
         {
            _loc1_.dispose();
         }
         this.§else for include§ = null;
         this.§if switch finally§ = null;
         this.§implements package while§ = null;
         this.§5214239755239768123423632234§ = null;
         this.§const use if§ = null;
         this.§5214238269238282123423632234§.deactivateHandlers();
         this.§set package class§ = null;
         §52142380523818123423632234§.setCommonTargetEvaluator(null);
         §52142380523818123423632234§.setHealingGunTargetEvaluator(null);
         §52142380523818123423632234§.setRailgunTargetEvaluator(null);
         §52142380523818123423632234§.setRicochetTargetEvaluator(null);
      }
   }
}

