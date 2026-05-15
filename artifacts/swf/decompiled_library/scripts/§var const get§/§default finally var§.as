package §var const get§
{
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import §else switch default§.§5214235140235153123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.events.KeyboardEvent;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import services.contextmenu.ContextMenuServiceEvent;
   import services.contextmenu.IContextMenuService;
   import §set package in§.ClientObject;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §default finally var§ implements §5214234182234195123423632234§, §if use default§, §521423117662311779123423632234§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §do switch var§:TankUsersRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §52142335623369123423632234§:IContextMenuService;
      
      private var §5214236207236220123423632234§:§5214239411239424123423632234§;
      
      private var §521423107252310738123423632234§:§each const set§;
      
      public function §default finally var§(param1:§each const set§)
      {
         super();
         this.§521423107252310738123423632234§ = param1;
         §with set include§.addBattleEventListener(TankUnloadedEvent,this);
         §52142335623369123423632234§.addEventListener("ContextMenuServiceEvent.FOCUS_ON_USER",this.§521423126532312666123423632234§);
      }
      
      private function §for finally finally§() : void
      {
         this.§case set set§(this.§class var function§(1));
      }
      
      public function §5214235108235121123423632234§() : void
      {
         if(this.§5214236207236220123423632234§)
         {
            this.§5214236845236858123423632234§();
            this.§5214236207236220123423632234§ = null;
            this.§521423107252310738123423632234§.§extends for include§();
            this.§521423107252310738123423632234§.§5214231520231533123423632234§();
         }
      }
      
      private function §5214236845236858123423632234§() : void
      {
      }
      
      public function §5214233954233967123423632234§(param1:KeyboardEvent) : void
      {
         this.§each const break§(param1);
      }
      
      private function §521423110872311100123423632234§(param1:ClientObject) : §5214239411239424123423632234§
      {
         var _loc2_:§super var dynamic§ = §super var dynamic§(OSGi.getInstance().getService(LocalTankInfoService));
         return _loc2_.getTankData(param1).§521423122212312234123423632234§;
      }
      
      private function §class var function§(param1:int) : §5214239411239424123423632234§
      {
         var _loc2_:§5214239411239424123423632234§ = null;
         var _loc4_:Vector.<ClientObject> = §do switch var§.getUsers();
         var _loc5_:int = _loc4_.indexOf(this.§5214236207236220123423632234§.§5214233939233952123423632234§());
         if(_loc5_ == -1)
         {
            return null;
         }
         var _loc3_:int = _loc5_;
         while(true)
         {
            _loc3_ += param1;
            if(_loc3_ == -1)
            {
               _loc3_ = _loc4_.length - 1;
            }
            else if(_loc3_ == _loc4_.length)
            {
               _loc3_ = 0;
            }
            _loc2_ = this.§521423110872311100123423632234§(_loc4_[_loc3_]);
            if(_loc2_.§5214238124238137123423632234§ == this.§5214236207236220123423632234§.§5214238124238137123423632234§ && _loc2_.§implements catch catch§ == §get catch§.§52142350323516123423632234§)
            {
               break;
            }
            if(_loc5_ == _loc3_)
            {
               return null;
            }
         }
         return _loc2_;
      }
      
      private function §switch switch try§(param1:§5214231658231671123423632234§) : §5214239411239424123423632234§
      {
         var _loc8_:Number = NaN;
         var _loc2_:ClientObject = null;
         var _loc7_:§5214239411239424123423632234§ = null;
         var _loc5_:§5214239411239424123423632234§ = null;
         var _loc6_:Number = 100000000000000000000;
         var _loc3_:§521423132492313262123423632234§ = this.§set switch override§().§while set for§();
         var _loc4_:Vector3 = new Vector3(_loc3_.x,_loc3_.y,_loc3_.z);
         for each(_loc2_ in §do switch var§.getUsers())
         {
            _loc7_ = this.§521423110872311100123423632234§(_loc2_);
            if(_loc7_.§5214238124238137123423632234§ != param1 && _loc7_.§implements catch catch§ == §get catch§.§52142350323516123423632234§)
            {
               _loc8_ = _loc7_.§break switch catch§().§implements catch catch§.§dynamic final§.distanceTo(_loc4_);
               if(_loc8_ < _loc6_)
               {
                  _loc6_ = _loc8_;
                  _loc5_ = _loc7_;
               }
            }
         }
         return _loc5_;
      }
      
      private function §set switch override§() : §5214235140235153123423632234§
      {
         return §52142380523818123423632234§.getBattleScene3D();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§5214239411239424123423632234§ = TankUnloadedEvent(param1).tank;
         if(this.§5214236207236220123423632234§ == _loc2_)
         {
            this.§5214235108235121123423632234§();
         }
      }
      
      private function §final var do§() : void
      {
         this.§case set set§(this.§class var function§(-1));
      }
      
      public function close() : void
      {
         §with set include§.removeBattleEventListener(TankUnloadedEvent,this);
         §52142335623369123423632234§.removeEventListener("ContextMenuServiceEvent.FOCUS_ON_USER",this.§521423126532312666123423632234§);
      }
      
      private function §case set set§(param1:§5214239411239424123423632234§) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.§implements catch catch§ != §get catch§.§52142350323516123423632234§)
         {
            return;
         }
         if(this.§5214236207236220123423632234§ == null)
         {
            §52142380523818123423632234§.activateFollowCamera();
         }
         else
         {
            this.§5214236845236858123423632234§();
         }
         this.§5214236207236220123423632234§ = param1;
         §52142380523818123423632234§.setCameraTarget(param1);
      }
      
      private function §each const break§(param1:KeyboardEvent) : void
      {
         var _loc2_:§5214239411239424123423632234§ = null;
         if(param1.ctrlKey)
         {
            switch(param1.keyCode)
            {
               case 70:
                  _loc2_ = this.§switch switch try§(null);
                  break;
               case 82:
                  _loc2_ = this.§switch switch try§(§5214231658231671123423632234§.§implements set implements§);
                  break;
               case 66:
                  _loc2_ = this.§switch switch try§(§5214231658231671123423632234§.§521423107532310766123423632234§);
                  break;
               case 85:
                  this.§5214235108235121123423632234§();
            }
            if(_loc2_)
            {
               this.§case set set§(_loc2_);
            }
         }
         else if(this.§5214236207236220123423632234§)
         {
            switch(int(param1.keyCode) - 37)
            {
               case 0:
                  this.§final var do§();
                  break;
               case 2:
                  this.§for finally finally§();
            }
         }
      }
      
      private function §521423126532312666123423632234§(param1:ContextMenuServiceEvent) : void
      {
         var _loc2_:ClientObject = §do switch var§.getUser(param1.userId);
         this.§case set set§(this.§521423110872311100123423632234§(_loc2_));
      }
      
      public function §set catch each§(param1:KeyboardEvent) : void
      {
      }
   }
}

