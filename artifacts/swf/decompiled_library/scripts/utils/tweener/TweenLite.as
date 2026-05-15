package utils.tweener
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §set var finally§.PropTween;
   import §set var finally§.SimpleTimeline;
   import §set var finally§.TweenCore;
   
   public class TweenLite extends TweenCore
   {
      
      public static var §extends package if§:Function;
      
      public static var §521423138482313861123423632234§:Object;
      
      public static var §class catch include§:Number;
      
      public static var §catch set each§:SimpleTimeline;
      
      public static var §5214237224237237123423632234§:SimpleTimeline;
      
      public static var §521423123162312329123423632234§:Object = {};
      
      public static var §implements catch for§:Function = TweenLite.easeOut;
      
      public static var §continue do§:Dictionary = new Dictionary(false);
      
      private static var §5214239536239549123423632234§:Shape = new Shape();
      
      protected static var §5214232459232472123423632234§:Object = {
         "ease":1,
         "delay":1,
         "overwrite":1,
         "onComplete":1,
         "onCompleteParams":1,
         "useFrames":1,
         "runBackwards":1,
         "startAt":1,
         "onUpdate":1,
         "onUpdateParams":1,
         "onStart":1,
         "onStartParams":1,
         "onInit":1,
         "onInitParams":1,
         "onReverseComplete":1,
         "onReverseCompleteParams":1,
         "onRepeat":1,
         "onRepeatParams":1,
         "proxiedEase":1,
         "easeParams":1,
         "yoyo":1,
         "onCompleteListener":1,
         "onUpdateListener":1,
         "onStartListener":1,
         "onReverseCompleteListener":1,
         "onRepeatListener":1,
         "orientToBezier":1,
         "timeScale":1,
         "immediateRender":1,
         "repeat":1,
         "repeatDelay":1,
         "timeline":1,
         "data":1,
         "paused":1,
         "reversed":1
      };
      
      public var target:Object;
      
      public var §get try§:Object;
      
      public var ratio:Number = 0;
      
      public var §var package continue§:PropTween;
      
      protected var §final use switch§:Function;
      
      protected var §5214233005233018123423632234§:int;
      
      protected var §5214234019234032123423632234§:Object;
      
      protected var §static const try§:Boolean;
      
      protected var §5214236009236022123423632234§:Boolean;
      
      public function TweenLite(param1:Object, param2:Number, param3:Object)
      {
         super(param2,param3);
         if(param1 == null)
         {
            throw new Error("Cannot tween a null object.");
         }
         this.target = param1;
         if(this.target is TweenCore && Boolean(this.vars.timeScale))
         {
            this.§final break§ = 1;
         }
         this.§get try§ = {};
         this.§final use switch§ = §implements catch for§;
         this.§5214233005233018123423632234§ = Number(param3.overwrite) <= -1 || !§521423138482313861123423632234§.enabled && param3.overwrite > 1 ? int(§521423138482313861123423632234§.mode) : int(param3.overwrite);
         var _loc4_:Array = §continue do§[param1];
         if(!_loc4_)
         {
            §continue do§[param1] = [this];
         }
         else if(this.§5214233005233018123423632234§ == 1)
         {
            for each(var _loc5_ in _loc4_)
            {
               if(!_loc5_.gc)
               {
                  _loc5_.setEnabled(false,false);
               }
            }
            §continue do§[param1] = [this];
         }
         else
         {
            _loc4_[_loc4_.length] = this;
         }
         if(this.active || Boolean(this.vars.immediateRender))
         {
            this.renderTime(0,false,true);
         }
      }
      
      public static function initClass() : void
      {
         §class catch include§ = 0;
         §catch set each§ = new SimpleTimeline(null);
         §5214237224237237123423632234§ = new SimpleTimeline(null);
         §catch set each§.§521423127512312764123423632234§ = getTimer() * 0.001;
         §5214237224237237123423632234§.§521423127512312764123423632234§ = §class catch include§;
         §catch set each§.§continue for return§ = true;
         §5214237224237237123423632234§.§continue for return§ = true;
         §5214239536239549123423632234§.addEventListener("enterFrame",f4f91813,false,0,true);
         if(§521423138482313861123423632234§ == null)
         {
            §521423138482313861123423632234§ = {
               "mode":1,
               "enabled":false
            };
         }
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         return new TweenLite(param1,param2,param3);
      }
      
      private static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return 1 - (param1 = 1 - param1 / param4) * param1;
      }
      
      private static function f4f91813(param1:Event = null) : void
      {
         var _loc5_:Dictionary = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         §catch set each§.renderTime((getTimer() * 0.001 - §catch set each§.§521423127512312764123423632234§) * §catch set each§.§final break§,false,false);
         §class catch include§ += 1;
         §5214237224237237123423632234§.renderTime((§class catch include§ - §5214237224237237123423632234§.§521423127512312764123423632234§) * §5214237224237237123423632234§.§final break§,false,false);
         if(!(§class catch include§ % 60))
         {
            _loc5_ = §continue do§;
            for(var _loc2_ in _loc5_)
            {
               _loc3_ = _loc5_[_loc2_];
               _loc4_ = int(_loc3_.length);
               while(--_loc4_ > -1)
               {
                  if(TweenLite(_loc3_[_loc4_]).gc)
                  {
                     _loc3_.removeAt(_loc4_);
                  }
               }
               if(_loc3_.length == 0)
               {
                  delete _loc5_[_loc2_];
               }
            }
         }
      }
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         if(param3.isGSVars)
         {
            param3 = param3.vars;
         }
         param3.runBackwards = true;
         if(!("immediateRender" in param3))
         {
            param3.immediateRender = true;
         }
         return new TweenLite(param1,param2,param3);
      }
      
      public static function killTweensOf(param1:Object, param2:Boolean = false, param3:Object = null) : void
      {
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc4_:TweenLite = null;
         if(param1 in §continue do§)
         {
            _loc5_ = §continue do§[param1];
            _loc6_ = int(_loc5_.length);
            while(--_loc6_ > -1)
            {
               _loc4_ = _loc5_[_loc6_];
               if(!_loc4_.gc)
               {
                  if(param2)
                  {
                     _loc4_.complete(false,false);
                  }
                  if(param3 != null)
                  {
                     _loc4_.killVars(param3);
                  }
                  if(param3 == null || _loc4_.§var package continue§ == null && _loc4_.§try for package§)
                  {
                     _loc4_.setEnabled(false,false);
                  }
               }
            }
            if(param3 == null)
            {
               delete §continue do§[param1];
            }
         }
      }
      
      private function e5a038ef(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return this.vars.proxiedEase.apply(null,arguments.concat(this.vars.easeParams));
      }
      
      override public function invalidate() : void
      {
         if(this.§5214236009236022123423632234§ && Boolean(this.§var package continue§))
         {
            §extends package if§("onDisable",this);
         }
         this.§var package continue§ = null;
         this.§5214234019234032123423632234§ = null;
         §import package throw§ = this.§try for package§ = this.active = this.§5214236009236022123423632234§ = false;
         this.§get try§ = {};
      }
      
      public function killVars(param1:Object, param2:Boolean = true) : Boolean
      {
         var _loc4_:PropTween = null;
         var _loc5_:Boolean = false;
         if(this.§5214234019234032123423632234§ == null)
         {
            this.§5214234019234032123423632234§ = {};
         }
         for(var _loc3_ in param1)
         {
            if(_loc3_ in this.§get try§)
            {
               _loc4_ = this.§get try§[_loc3_];
               if(_loc4_.§521423103812310394123423632234§ && _loc4_.name == "_MULTIPLE_")
               {
                  _loc4_.target.killProps(param1);
                  if(_loc4_.target.overwriteProps.length == 0)
                  {
                     _loc4_.name = "";
                  }
                  if(_loc3_ != _loc4_.target.propName || _loc4_.name == "")
                  {
                     delete this.§get try§[_loc3_];
                  }
               }
               if(_loc4_.name != "_MULTIPLE_")
               {
                  if(_loc4_.§set switch catch§)
                  {
                     _loc4_.§set switch catch§.§override var function§ = _loc4_.§override var function§;
                  }
                  if(_loc4_.§override var function§)
                  {
                     _loc4_.§override var function§.§set switch catch§ = _loc4_.§set switch catch§;
                  }
                  else if(this.§var package continue§ == _loc4_)
                  {
                     this.§var package continue§ = _loc4_.§set switch catch§;
                  }
                  if(_loc4_.§521423103812310394123423632234§ && Boolean(_loc4_.target.onDisable))
                  {
                     _loc4_.target.onDisable();
                     if(_loc4_.target.activeDisable)
                     {
                        _loc5_ = true;
                     }
                  }
                  delete this.§get try§[_loc3_];
               }
            }
            if(param2 && param1 != this.§5214234019234032123423632234§)
            {
               this.§5214234019234032123423632234§[_loc3_] = 1;
            }
         }
         return _loc5_;
      }
      
      private function init() : void
      {
         var _loc5_:int = 0;
         var _loc4_:PropTween = null;
         var _loc3_:* = undefined;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         if(this.vars.onInit)
         {
            this.vars.onInit.apply(null,this.vars.onInitParams);
         }
         if(typeof this.vars.ease == "function")
         {
            this.§final use switch§ = this.vars.ease;
         }
         if(this.vars.easeParams)
         {
            this.vars.proxiedEase = this.§final use switch§;
            this.§final use switch§ = this.e5a038ef;
         }
         this.§var package continue§ = null;
         this.§get try§ = {};
         for(var _loc1_ in this.vars)
         {
            if(!(_loc1_ in §5214232459232472123423632234§ && !(_loc1_ == "timeScale" && this.target is TweenCore)))
            {
               if(_loc1_ in §521423123162312329123423632234§ && Boolean((_loc3_ = new (§521423123162312329123423632234§[_loc1_] as Class)()).onInitTween(this.target,this.vars[_loc1_],this)))
               {
                  this.§var package continue§ = new PropTween(_loc3_,"changeFactor",0,1,_loc3_.overwriteProps.length == 1 ? String(_loc3_.overwriteProps[0]) : "_MULTIPLE_",true,this.§var package continue§);
                  if(this.§var package continue§.name == "_MULTIPLE_")
                  {
                     _loc5_ = int(_loc3_.overwriteProps.length);
                     while(--_loc5_ > -1)
                     {
                        this.§get try§[_loc3_.overwriteProps[_loc5_]] = this.§var package continue§;
                     }
                  }
                  else
                  {
                     this.§get try§[this.§var package continue§.name] = this.§var package continue§;
                  }
                  if(_loc3_.priority)
                  {
                     this.§var package continue§.priority = _loc3_.priority;
                     _loc6_ = true;
                  }
                  if(Boolean(_loc3_.onDisable) || Boolean(_loc3_.onEnable))
                  {
                     this.§5214236009236022123423632234§ = true;
                  }
                  this.§static const try§ = true;
               }
               else
               {
                  this.§var package continue§ = new PropTween(this.target,_loc1_,Number(this.target[_loc1_]),typeof this.vars[_loc1_] == "number" ? Number(this.vars[_loc1_]) - this.target[_loc1_] : Number(this.vars[_loc1_]),_loc1_,false,this.§var package continue§);
                  this.§get try§[_loc1_] = this.§var package continue§;
               }
            }
         }
         if(_loc6_)
         {
            §extends package if§("onInitAllProps",this);
         }
         if(this.vars.runBackwards)
         {
            _loc4_ = this.§var package continue§;
            while(_loc4_)
            {
               _loc4_.start += _loc4_.change;
               _loc4_.change = -_loc4_.change;
               _loc4_ = _loc4_.§set switch catch§;
            }
         }
         §import package throw§ = this.vars.onUpdate != null;
         if(this.§5214234019234032123423632234§)
         {
            this.killVars(this.§5214234019234032123423632234§);
            if(this.§var package continue§ == null)
            {
               this.setEnabled(false,false);
            }
         }
         if(this.§5214233005233018123423632234§ > 1 && this.§var package continue§ && (Boolean(_loc2_ = §continue do§[this.target])) && _loc2_.length > 1)
         {
            if(§521423138482313861123423632234§.manageOverwrites(this,this.§get try§,_loc2_,this.§5214233005233018123423632234§))
            {
               this.init();
            }
         }
         this.§try for package§ = true;
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc3_:Array = null;
         if(param1)
         {
            _loc3_ = TweenLite.§continue do§[this.target];
            if(!_loc3_)
            {
               TweenLite.§continue do§[this.target] = [this];
            }
            else if(_loc3_.indexOf(this) == -1)
            {
               _loc3_[_loc3_.length] = this;
            }
         }
         super.setEnabled(param1,param2);
         if(this.§5214236009236022123423632234§ && Boolean(this.§var package continue§))
         {
            return §extends package if§(param1 ? "onEnable" : "onDisable",this);
         }
         return false;
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc5_:Number = this.§5214237607237620123423632234§;
         if(param1 >= this.§5214233192233205123423632234§)
         {
            this.§5214236331236344123423632234§ = this.§5214237607237620123423632234§ = this.§5214233192233205123423632234§;
            this.ratio = 1;
            _loc6_ = !this.§switch package try§;
            if(this.§5214233192233205123423632234§ == 0)
            {
               if((param1 == 0 || §in var throw§ < 0) && §in var throw§ != param1)
               {
                  param3 = true;
               }
               §in var throw§ = param1;
            }
         }
         else if(param1 <= 0)
         {
            this.§5214236331236344123423632234§ = this.§5214237607237620123423632234§ = this.ratio = 0;
            if(param1 < 0)
            {
               this.active = false;
               if(this.§5214233192233205123423632234§ == 0)
               {
                  if(§in var throw§ >= 0)
                  {
                     param3 = true;
                     _loc6_ = §in var throw§ > 0;
                  }
                  §in var throw§ = param1;
               }
            }
            if(this.§switch package try§ && _loc5_ != 0)
            {
               _loc6_ = true;
            }
         }
         else
         {
            this.§5214236331236344123423632234§ = this.§5214237607237620123423632234§ = param1;
            this.ratio = this.§final use switch§(param1,0,1,this.§5214233192233205123423632234§);
         }
         if(this.§5214237607237620123423632234§ == _loc5_ && !param3)
         {
            return;
         }
         if(!this.§try for package§)
         {
            this.init();
            if(!_loc6_ && Boolean(this.§5214237607237620123423632234§))
            {
               this.ratio = this.§final use switch§(this.§5214237607237620123423632234§,0,1,this.§5214233192233205123423632234§);
            }
         }
         if(!this.active && !this.§case package super§)
         {
            this.active = true;
         }
         if(_loc5_ == 0 && this.vars.onStart && (this.§5214237607237620123423632234§ != 0 || this.§5214233192233205123423632234§ == 0) && !param2)
         {
            this.vars.onStart.apply(null,this.vars.onStartParams);
         }
         var _loc4_:PropTween = this.§var package continue§;
         while(_loc4_)
         {
            _loc4_.target[_loc4_.property] = _loc4_.start + this.ratio * _loc4_.change;
            _loc4_ = _loc4_.§set switch catch§;
         }
         if(§import package throw§ && !param2)
         {
            this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
         }
         if(_loc6_ && !this.gc)
         {
            if(this.§static const try§ && Boolean(this.§var package continue§))
            {
               §extends package if§("onComplete",this);
            }
            complete(true,param2);
         }
      }
   }
}

