package projects.tanks.clients.fp10.libraries.tanksservices.service.helper
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   
   public class HelpService implements IHelpService
   {
      
      private var §override switch for§:SharedObject;
      
      private var stage:Stage;
      
      private var §521423134032313416123423632234§:DisplayObjectContainer;
      
      private var §continue var package§:Sprite;
      
      private var §switch set if§:Dictionary;
      
      private var §native var while§:Array;
      
      private var §include package if§:Boolean;
      
      private var §native set break§:Array;
      
      private var §for if§:Boolean;
      
      private var §52142364323656123423632234§:Dictionary;
      
      private var §catch catch const§:Dictionary;
      
      private var §if set set§:Vector.<ShowedHelperInfo>;
      
      private var hidedHelpers:Vector.<Object>;
      
      private var locked:Boolean;
      
      private const §get var do§:int = 86400000;
      
      private const §521423101232310136123423632234§:int = 5;
      
      public function HelpService()
      {
         super();
         this.§catch catch const§ = new Dictionary();
         this.§if set set§ = new Vector.<ShowedHelperInfo>();
         var _loc1_:OSGi = OSGi.getInstance();
         var _loc2_:IDisplay = IDisplay(_loc1_.getService(IDisplay));
         this.stage = _loc2_.stage;
         this.§521423134032313416123423632234§ = _loc2_.noticesLayer;
         this.§continue var package§ = new Sprite();
         this.§switch set if§ = new Dictionary();
         this.§native var while§ = [];
         this.§native set break§ = [];
         this.§override switch for§ = IStorageService(_loc1_.getService(IStorageService)).getStorage();
         if(!this.§override switch for§.data.helperShowNum)
         {
            this.§override switch for§.data.helperShowNum = new Vector.<Object>();
         }
         if(this.§override switch for§.data.hidedHelpers as Vector.<Object> == null)
         {
            this.§override switch for§.data.hidedHelpers = new Vector.<Object>();
         }
         this.hidedHelpers = this.§override switch for§.data.hidedHelpers as Vector.<Object>;
         this.§include package if§ = int(this.§override switch for§.data.userRank) >= 6;
         this.§52142364323656123423632234§ = new Dictionary();
         this.stage.addEventListener("resize",this.onStageResize);
      }
      
      private function d2c1fa25(param1:String, param2:int) : Helper
      {
         var _loc3_:Dictionary = this.§switch set if§[param1];
         if(_loc3_ == null)
         {
            return null;
         }
         return _loc3_[param2];
      }
      
      private function c44cd424(param1:String, param2:int) : Boolean
      {
         var _loc3_:Date = new Date();
         for each(var _loc4_ in this.hidedHelpers)
         {
            if(_loc4_.groupKey == param1 && _loc4_.helperId == param2)
            {
               return _loc3_.time - _loc4_.date.time < 86400000 || _loc4_.count >= 5;
            }
         }
         return false;
      }
      
      public function unregisterHelper(param1:String, param2:int) : void
      {
         var _loc3_:Dictionary = this.§switch set if§[param1];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Helper = _loc3_[param2];
         if(_loc4_ == null)
         {
            return;
         }
         this.c35dba66(_loc4_);
         delete _loc3_[param2];
         var _loc5_:int = this.§native var while§.indexOf(_loc4_);
         if(_loc5_ >= 0)
         {
            this.§native var while§.removeAt(_loc5_);
         }
      }
      
      public function manuallyShutDownHelper(param1:Helper) : void
      {
         this.hideHelper(param1.groupKey,param1.id);
         this.a1c68cca(param1);
      }
      
      private function f76808a8(param1:MouseEvent) : void
      {
         this.hideHelp();
         param1.stopPropagation();
      }
      
      public function pushState() : void
      {
         this.§catch catch const§ = new Dictionary();
         for(var _loc1_ in this.§52142364323656123423632234§)
         {
            this.§catch catch const§[_loc1_] = this.§52142364323656123423632234§[_loc1_];
         }
      }
      
      public function showHelperIfAble(param1:String, param2:int, param3:Boolean = false) : void
      {
         if(this.locked)
         {
            this.§if set set§[§if set set§.length] = new ShowedHelperInfo(param1,param2,param3);
         }
         else
         {
            this.showHelper(param1,param2,param3);
         }
      }
      
      public function hideHelp() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Helper = null;
         var _loc3_:int = 0;
         while(_loc2_ < this.§native var while§.length)
         {
            _loc1_ = this.§native var while§[_loc2_];
            _loc3_ = this.§native set break§.indexOf(_loc1_.timer);
            if(_loc3_ != -1)
            {
               (this.§native set break§[_loc3_] as HelperTimer).stop();
               this.§native set break§.removeAt(_loc3_);
            }
            if(this.§continue var package§.contains(_loc1_))
            {
               this.§continue var package§.removeChild(_loc1_);
            }
            if(this.§52142364323656123423632234§[_loc1_] != null)
            {
               delete this.§52142364323656123423632234§[_loc1_];
            }
            _loc2_++;
         }
         this.b686caad();
         if(this.§for if§)
         {
            this.§for if§ = false;
            this.stage.removeEventListener("click",this.f76808a8,true);
            this.stage.removeEventListener("keyUp",this.onKeyUp);
         }
      }
      
      public function unlock() : void
      {
         this.locked = false;
         for each(var _loc1_ in this.§if set set§)
         {
            this.showHelper(_loc1_.groupKey,_loc1_.helperId,_loc1_.force);
         }
         this.§if set set§ = new Vector.<ShowedHelperInfo>();
      }
      
      public function popState() : void
      {
         for(var _loc1_ in this.§catch catch const§)
         {
            this.showHelper(this.§catch catch const§[_loc1_].groupKey,this.§catch catch const§[_loc1_].helperId,this.§catch catch const§[_loc1_].force);
         }
         this.§catch catch const§ = new Dictionary();
      }
      
      public function hideHelper(param1:String, param2:int) : void
      {
         if(this.§52142364323656123423632234§[this.d2c1fa25(param1,param2)] != null)
         {
            delete this.§52142364323656123423632234§[this.d2c1fa25(param1,param2)];
         }
         this.c35dba66(this.d2c1fa25(param1,param2));
         this.b686caad();
      }
      
      private function onStageResize(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Helper = null;
         if(this.§521423134032313416123423632234§.contains(this.§continue var package§))
         {
            while(_loc3_ < this.§continue var package§.numChildren)
            {
               _loc2_ = this.§continue var package§.getChildAt(_loc3_) as Helper;
               if(_loc2_ != null)
               {
                  _loc2_.align(this.stage.stageWidth / Display.§521423132512313264123423632234§,this.stage.stageHeight / Display.§521423132512313264123423632234§);
               }
               _loc3_++;
            }
         }
      }
      
      private function d57c8908(param1:MouseEvent) : void
      {
         var _loc2_:Helper = null;
         if(param1.target is Helper)
         {
            _loc2_ = param1.target as Helper;
            this.hideHelper(_loc2_.groupKey,_loc2_.id);
            this.a1c68cca(_loc2_);
            param1.stopPropagation();
         }
      }
      
      public function hideAllHelpers() : void
      {
         var _loc1_:Helper = null;
         if(this.§continue var package§ != null)
         {
            while(this.§continue var package§.numChildren != 0)
            {
               _loc1_ = this.§continue var package§.getChildAt(0) as Helper;
               this.hideHelper(_loc1_.groupKey,_loc1_.id);
            }
            if(this.§continue var package§.numChildren == 0 && this.§521423134032313416123423632234§.contains(this.§continue var package§))
            {
               this.§521423134032313416123423632234§.removeChild(this.§continue var package§);
            }
         }
      }
      
      public function lock() : void
      {
         this.locked = true;
      }
      
      public function showHelp() : void
      {
         var _loc2_:int = 0;
         var _loc1_:Helper = null;
         var _loc3_:int = 0;
         if(!this.§521423134032313416123423632234§.contains(this.§continue var package§))
         {
            this.§521423134032313416123423632234§.addChild(this.§continue var package§);
         }
         while(_loc2_ < this.§native var while§.length)
         {
            _loc1_ = this.§native var while§[_loc2_] as Helper;
            if(!this.§continue var package§.contains(_loc1_))
            {
               this.§continue var package§.addChild(_loc1_);
               _loc1_.draw(_loc1_.size);
               _loc1_.align(this.stage.stageWidth / Display.§521423132512313264123423632234§,this.stage.stageHeight / Display.§521423132512313264123423632234§);
            }
            else
            {
               _loc3_ = this.§native set break§.indexOf(_loc1_.timer);
               if(_loc3_ != -1)
               {
                  HelperTimer(this.§native set break§[_loc3_]).stop();
                  this.§native set break§.removeAt(_loc3_);
               }
            }
            this.§52142364323656123423632234§[_loc1_] = new ShowedHelperInfo(_loc1_.groupKey,_loc1_.id,true);
            _loc2_++;
         }
         if(!this.§for if§)
         {
            this.§for if§ = true;
            this.stage.addEventListener("click",this.f76808a8,true);
            this.stage.addEventListener("keyUp",this.onKeyUp,false,-1);
         }
      }
      
      private function a1c68cca(param1:Helper) : void
      {
         var _loc4_:Date = new Date();
         var _loc3_:Boolean = false;
         for each(var _loc5_ in this.hidedHelpers)
         {
            if(_loc5_.groupKey == param1.groupKey && _loc5_.helperId == param1.id)
            {
               _loc5_.date = _loc4_;
               ++_loc5_.count;
               _loc3_ = true;
            }
         }
         if(!_loc3_)
         {
            this.hidedHelpers[hidedHelpers.length] = new HidedHelperInfo(param1.groupKey,param1.id,_loc4_,0);
         }
         for each(var _loc2_ in this.hidedHelpers)
         {
         }
      }
      
      private function c35dba66(param1:Helper) : void
      {
         var _loc3_:int = 0;
         if(param1 == null)
         {
            return;
         }
         if(this.§continue var package§.contains(param1))
         {
            this.§continue var package§.removeChild(param1);
         }
         param1.removeEventListener("mouseDown",this.d57c8908);
         var _loc2_:HelperTimer = param1.timer;
         if(_loc2_ != null)
         {
            _loc2_.stop();
            _loc3_ = this.§native set break§.indexOf(_loc2_);
            if(_loc3_ != -1)
            {
               this.§native set break§.removeAt(_loc3_);
            }
         }
      }
      
      private function b686caad() : void
      {
         if(this.§continue var package§.numChildren == 0 && this.§521423134032313416123423632234§.contains(this.§continue var package§))
         {
            this.§521423134032313416123423632234§.removeChild(this.§continue var package§);
         }
      }
      
      private function c359e9c6(param1:TimerEvent) : void
      {
         var _loc2_:HelperTimer = param1.target as HelperTimer;
         var _loc3_:Helper = _loc2_.helper;
         this.hideHelper(_loc3_.groupKey,_loc3_.id);
      }
      
      public function registerHelper(param1:String, param2:int, param3:Helper, param4:Boolean) : void
      {
         var _loc8_:int = 0;
         var _loc6_:Object = null;
         var _loc5_:Dictionary = this.§switch set if§[param1];
         if(_loc5_ == null)
         {
            _loc5_ = new Dictionary();
            this.§switch set if§[param1] = _loc5_;
         }
         _loc5_[param2] = param3;
         if(param4)
         {
            this.§native var while§[§native var while§.length] = param3;
         }
         var _loc9_:Vector.<Object> = this.§override switch for§.data.helperShowNum != null && this.§override switch for§.data.helperShowNum is Vector.<Object> ? this.§override switch for§.data.helperShowNum as Vector.<Object> : new Vector.<Object>();
         var _loc7_:int = -1;
         while(_loc8_ < _loc9_.length)
         {
            if(_loc9_[_loc8_].hasOwnProperty("groupKey") && _loc9_[_loc8_].groupKey == param1)
            {
               _loc7_ = _loc8_;
            }
            _loc8_++;
         }
         if(_loc7_ == -1)
         {
            _loc6_ = {};
            _loc6_.groupKey = param1;
            _loc6_.helper = [];
            _loc9_[_loc9_.length] = _loc6_;
            _loc7_ = _loc9_.length - 1;
         }
         if(_loc9_[_loc7_].helper == null)
         {
            _loc9_[_loc7_].helper = [];
         }
         if(_loc9_[_loc7_].helper[param2] == null)
         {
            _loc9_[_loc7_].helper[param2] = param3.§5214239532239545123423632234§;
         }
         else
         {
            param3.§5214239532239545123423632234§ = _loc9_[_loc7_].helper[param2];
         }
         this.§override switch for§.data.helperShowNum = _loc9_;
         param3.id = param2;
         param3.groupKey = param1;
      }
      
      public function showHelper(param1:String, param2:int, param3:Boolean = false) : void
      {
         var _loc9_:* = undefined;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc6_:Object = null;
         var _loc4_:HelperTimer = null;
         if(this.§include package if§ || this.c44cd424(param1,param2))
         {
            return;
         }
         var _loc5_:Helper = this.d2c1fa25(param1,param2);
         if(_loc5_ == null)
         {
            return;
         }
         if(!this.§521423134032313416123423632234§.contains(this.§continue var package§))
         {
            this.§521423134032313416123423632234§.addChild(this.§continue var package§);
         }
         if(param3 || _loc5_.showLimit == -1 || _loc5_.§5214239532239545123423632234§ < _loc5_.showLimit)
         {
            if(!this.§continue var package§.contains(_loc5_))
            {
               ++_loc5_.§5214239532239545123423632234§;
               this.§52142364323656123423632234§[_loc5_] = new ShowedHelperInfo(param1,param2,param3);
               _loc9_ = this.§override switch for§.data.helperShowNum != null && this.§override switch for§.data.helperShowNum is Vector.<Object> ? this.§override switch for§.data.helperShowNum as Vector.<Object> : new Vector.<Object>();
               _loc7_ = -1;
               while(_loc8_ < _loc9_.length)
               {
                  if(_loc9_[_loc8_].hasOwnProperty("groupKey") && _loc9_[_loc8_].groupKey == param1)
                  {
                     _loc7_ = _loc8_;
                  }
                  _loc8_++;
               }
               if(_loc7_ == -1)
               {
                  _loc6_ = {};
                  _loc6_.groupKey = param1;
                  _loc6_.helper = [];
                  _loc6_.helper[param2] = _loc5_.§5214239532239545123423632234§;
                  _loc9_[_loc9_.length] = _loc6_;
               }
               else
               {
                  _loc9_[_loc7_].helper[param2] = _loc5_.§5214239532239545123423632234§;
               }
               this.§override switch for§.data.helperShowNum = _loc9_;
               this.§continue var package§.addChild(_loc5_);
               _loc5_.draw(_loc5_.size);
               _loc5_.align(this.stage.stageWidth / Display.§521423132512313264123423632234§,this.stage.stageHeight / Display.§521423132512313264123423632234§);
               _loc5_.addEventListener("mouseDown",this.d57c8908);
               if(!param3)
               {
                  _loc4_ = new HelperTimer(_loc5_.§5214238801238814123423632234§,1);
                  _loc4_.helper = _loc5_;
                  _loc5_.timer = _loc4_;
                  _loc4_.addEventListener("timerComplete",this.c359e9c6);
                  this.§native set break§[§native set break§.length] = _loc4_;
                  _loc4_.start();
               }
            }
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            this.hideHelp();
         }
      }
   }
}

class ShowedHelperInfo
{
   
   public var groupKey:String;
   
   public var helperId:int;
   
   public var force:Boolean = false;
   
   public function ShowedHelperInfo(param1:String, param2:int, param3:Boolean)
   {
      super();
      this.groupKey = param1;
      this.helperId = param2;
      this.force = param3;
   }
}

class HidedHelperInfo
{
   
   public var groupKey:String;
   
   public var helperId:int;
   
   public var date:Date;
   
   public var count:int;
   
   public function HidedHelperInfo(param1:String, param2:int, param3:Date, param4:int)
   {
      super();
      this.groupKey = param1;
      this.helperId = param2;
      this.date = param3;
      this.count = param4;
   }
   
   public function toString() : String
   {
      return this.date.toString() + ", " + this.count.toString();
   }
}
