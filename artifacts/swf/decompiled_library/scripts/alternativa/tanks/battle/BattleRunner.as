package alternativa.tanks.battle
{
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import §break switch§.Triggers;
   import §dynamic const static§.§521423107902310803123423632234§;
   import §dynamic const static§.SoundManager;
   import §each var null§.§const throw§;
   import §else set super§.AddPostPhysicsControllerAction;
   import §else set super§.LogicUnitDeferredAction;
   import §else set super§.PhysicsControllerDeferredAction;
   import §else set super§.RemovePostPhysicsController;
   import §else switch default§.§5214235140235153123423632234§;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import flash.media.Sound;
   import flash.utils.getTimer;
   import §for catch for§.§521423136582313671123423632234§;
   import §package package false§.§521423137282313741123423632234§;
   import §package package false§.§const use with§;
   import §package package false§.§default set override§;
   import §package package false§.§static set true§;
   
   public class BattleRunner
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static const §true set dynamic§:int = 33;
      
      public static const §521423117642311777123423632234§:Number = 0.033;
      
      private static const §in do§:§native switch false§ = new §5214235507235520123423632234§(1000);
      
      private var time:int;
      
      private var §521423125492312562123423632234§:int;
      
      private var §import var native§:Vector.<§dynamic switch break§> = new Vector.<§dynamic switch break§>();
      
      private var §finally for include§:Boolean;
      
      private var §while switch function§:Vector.<§521423117892311802123423632234§> = new Vector.<§521423117892311802123423632234§>();
      
      private var §class switch null§:Vector.<§5214232465232478123423632234§> = new Vector.<§5214232465232478123423632234§>();
      
      private var §5214232103232116123423632234§:Vector.<§5214235400235413123423632234§> = new Vector.<§5214235400235413123423632234§>();
      
      private var §5214235700235713123423632234§:Vector.<§5214233428233441123423632234§> = new Vector.<§5214233428233441123423632234§>();
      
      private var §521423102323123423632234§:§const throw§;
      
      private var §521423108482310861123423632234§:Boolean;
      
      private var soundManager:§521423107902310803123423632234§;
      
      private var §with set include§:BattleEventDispatcher;
      
      private const §5214235778235791123423632234§:Triggers = new Triggers();
      
      private var §5214234570234583123423632234§:§const use with§;
      
      public function BattleRunner(param1:Number, param2:Sound, param3:BattleEventDispatcher)
      {
         super();
         this.§with set include§ = param3;
         this.time = getTimer();
         this.§5214234570234583123423632234§ = new §const use with§(this.time,param1,param3);
         this.soundManager = SoundManager.createSoundManager(param2);
         this.§521423125492312562123423632234§ = this.time;
         §521423137282313741123423632234§.§5214233774233787123423632234§();
      }
      
      private function d4867570(param1:§5214233428233441123423632234§) : void
      {
         this.§5214235700235713123423632234§[§5214235700235713123423632234§.length] = param1;
      }
      
      public function getSoundManager() : §521423107902310803123423632234§
      {
         return this.soundManager;
      }
      
      public function removeLogicUnit(param1:§dynamic switch break§) : void
      {
         if(this.§finally for include§)
         {
            this.d4867570(new LogicUnitDeferredAction(param1,false));
         }
         else
         {
            this.a5992149(param1,this.§import var native§);
         }
      }
      
      public function addPhysicsInterpolator(param1:§5214235400235413123423632234§) : void
      {
         if(this.§5214232103232116123423632234§.indexOf(param1) < 0)
         {
            this.§5214232103232116123423632234§[§5214232103232116123423632234§.length] = param1;
         }
      }
      
      final private function f7dde7e(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§dynamic switch break§ = null;
         var _loc5_:int = param1 - this.§521423125492312562123423632234§;
         this.§521423125492312562123423632234§ = param1;
         this.§finally for include§ = true;
         var _loc2_:int = int(this.§import var native§.length);
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§import var native§[_loc3_];
            _loc4_.runLogic(param1,_loc5_);
            _loc3_++;
         }
         this.§finally for include§ = false;
         this.b547dd88();
      }
      
      public function setLocalBody(param1:§const throw§) : void
      {
         this.§521423102323123423632234§ = param1;
      }
      
      public function removeBodyWrapper(param1:§default set override§) : void
      {
         this.§5214234570234583123423632234§.§final switch package§(param1);
         if(this.§521423102323123423632234§ == param1.§5214232783232796123423632234§)
         {
            this.setLocalBody(null);
         }
      }
      
      final private function f40c1518(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc2_:§521423117892311802123423632234§ = null;
         var _loc3_:int = int(this.§while switch function§.length);
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.§while switch function§[_loc4_];
            _loc2_.runBeforePhysicsUpdate(param1);
            _loc4_++;
         }
      }
      
      public function shutdown() : void
      {
         this.soundManager.stopAllSounds();
         this.soundManager.removeAllEffects();
         this.§5214234570234583123423632234§.destroy();
      }
      
      public function removePhysicsInterpolator(param1:§5214235400235413123423632234§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(this.§5214232103232116123423632234§.length);
         if(_loc2_ > 0)
         {
            _loc3_ = this.§5214232103232116123423632234§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§5214232103232116123423632234§[_loc3_] = this.§5214232103232116123423632234§[--_loc2_];
               this.§5214232103232116123423632234§.length = _loc2_;
            }
         }
      }
      
      public function getGravity() : Number
      {
         return this.§5214234570234583123423632234§.§var package extends§();
      }
      
      final private function e15fa453() : void
      {
         var _loc1_:§5214236557236570123423632234§ = §5214236557236570123423632234§.§521423104062310419123423632234§;
         if(_loc1_ == null || _loc1_.§521423122212312234123423632234§ == null)
         {
            return;
         }
         _loc1_.§521423122212312234123423632234§.§each switch for§();
      }
      
      private function b547dd88() : void
      {
         var _loc1_:§5214233428233441123423632234§ = null;
         while(true)
         {
            _loc1_ = this.§5214235700235713123423632234§.pop();
            if(_loc1_ == null)
            {
               break;
            }
            _loc1_.execute();
         }
      }
      
      private function b6bbb5a0(param1:int) : void
      {
         while(this.§5214234570234583123423632234§.§5214238155238168123423632234§() < this.time)
         {
            this.e15fa453();
            this.f7dde7e(this.getPhysicsTime());
            this.§521423108482310861123423632234§ = true;
            this.f40c1518(param1 / §in do§.§521423128592312872123423632234§());
            this.§5214234570234583123423632234§.§521423120402312053123423632234§(param1);
            this.d318f216(param1 / §in do§.§521423128592312872123423632234§());
            this.§5214235778235791123423632234§.check(this.§521423102323123423632234§);
            this.§521423108482310861123423632234§ = false;
            this.b547dd88();
         }
         this.d715f57(param1);
      }
      
      public function tick(param1:int) : void
      {
         var _loc3_:int = param1 - this.time;
         if(_loc3_ < 0)
         {
            return;
         }
         this.time = param1;
         this.b6bbb5a0(33);
         var _loc2_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc2_.render(this.time,_loc3_);
         this.soundManager.updateSoundEffects(_loc3_,_loc2_.§while set for§());
      }
      
      public function removeTrigger(param1:§5214234639234652123423632234§) : void
      {
         this.§5214235778235791123423632234§.remove(param1);
      }
      
      private function a5992149(param1:§dynamic switch break§, param2:Vector.<§dynamic switch break§>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = param2.indexOf(param1);
         if(_loc3_ >= 0)
         {
            _loc4_ = param2.length - 1;
            param2[_loc3_] = param2[_loc4_];
            param2.length = _loc4_;
         }
      }
      
      final private function d318f216(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc2_:§5214232465232478123423632234§ = null;
         var _loc3_:int = int(this.§class switch null§.length);
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.§class switch null§[_loc4_];
            _loc2_.runAfterPhysicsUpdate(param1);
            _loc4_++;
         }
      }
      
      public function addPhysicsController(param1:§521423117892311802123423632234§) : void
      {
         if(this.§521423108482310861123423632234§)
         {
            this.d4867570(new PhysicsControllerDeferredAction(param1,true));
         }
         else if(this.§while switch function§.indexOf(param1) < 0)
         {
            this.§while switch function§[§while switch function§.length] = param1;
         }
      }
      
      public function removePostPhysicsController(param1:§5214232465232478123423632234§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§521423108482310861123423632234§)
         {
            this.d4867570(new RemovePostPhysicsController(param1));
         }
         else
         {
            _loc2_ = int(this.§class switch null§.length);
            if(_loc2_ > 0)
            {
               _loc3_ = this.§class switch null§.indexOf(param1);
               if(_loc3_ >= 0)
               {
                  this.§class switch null§.removeAt(_loc3_);
               }
            }
         }
      }
      
      public function initStaticGeometry(param1:Vector.<§521423136582313671123423632234§>) : void
      {
         this.§5214234570234583123423632234§.§null const continue§(param1);
      }
      
      public function addPostPhysicsController(param1:§5214232465232478123423632234§) : void
      {
         if(this.§521423108482310861123423632234§)
         {
            this.d4867570(new AddPostPhysicsControllerAction(param1));
         }
         else if(this.§class switch null§.indexOf(param1) < 0)
         {
            this.§class switch null§[§class switch null§.length] = param1;
         }
      }
      
      public function addBodyWrapper(param1:§default set override§) : void
      {
         this.§5214234570234583123423632234§.§521423138622313875123423632234§(param1);
      }
      
      public function getCollisionDetector() : §static set true§
      {
         return this.§5214234570234583123423632234§.§5214232596232609123423632234§();
      }
      
      public function removePhysicsController(param1:§521423117892311802123423632234§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§521423108482310861123423632234§)
         {
            this.d4867570(new PhysicsControllerDeferredAction(param1,false));
         }
         else
         {
            _loc2_ = int(this.§while switch function§.length);
            if(_loc2_ > 0)
            {
               _loc3_ = this.§while switch function§.indexOf(param1);
               if(_loc3_ >= 0)
               {
                  this.§while switch function§.removeAt(_loc3_);
               }
            }
         }
      }
      
      public function addTrigger(param1:§5214234639234652123423632234§) : void
      {
         this.§5214235778235791123423632234§.add(param1);
      }
      
      public function getPhysicsTime() : int
      {
         return this.§5214234570234583123423632234§.§5214238155238168123423632234§();
      }
      
      public function addLogicUnit(param1:§dynamic switch break§) : void
      {
         if(this.§finally for include§)
         {
            this.d4867570(new LogicUnitDeferredAction(param1,true));
         }
         else if(this.§import var native§.indexOf(param1) < 0)
         {
            this.§import var native§[§import var native§.length] = param1;
         }
      }
      
      private function d715f57(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:§5214235400235413123423632234§ = null;
         var _loc3_:Number = 1 + (this.time - this.§5214234570234583123423632234§.§5214238155238168123423632234§()) / 33;
         var _loc5_:int = int(this.§5214232103232116123423632234§.length);
         while(_loc4_ < _loc5_)
         {
            _loc2_ = this.§5214232103232116123423632234§[_loc4_];
            _loc2_.interpolatePhysicsState(_loc3_);
            _loc4_++;
         }
      }
   }
}

