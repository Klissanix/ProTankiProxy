package §set var finally§
{
   import utils.tweener.TweenLite;
   
   public class TweenCore
   {
      
      public static const version:Number = 1.693;
      
      private static var §5214234229234242123423632234§:Boolean;
      
      private var §5214231767231780123423632234§:Number;
      
      protected var §import package throw§:Boolean;
      
      protected var §in var throw§:Number = -1;
      
      public var vars:Object;
      
      public var active:Boolean;
      
      public var gc:Boolean;
      
      public var §try for package§:Boolean;
      
      public var timeline:SimpleTimeline;
      
      public var §521423127512312764123423632234§:Number;
      
      public var §5214237607237620123423632234§:Number;
      
      public var §5214236331236344123423632234§:Number;
      
      public var §5214233192233205123423632234§:Number;
      
      public var §5214236941236954123423632234§:Number;
      
      public var §final break§:Number;
      
      public var §5214234153234166123423632234§:Number;
      
      public var §switch package try§:Boolean;
      
      public var §set switch catch§:TweenCore;
      
      public var §override var function§:TweenCore;
      
      public var §5214237106237119123423632234§:Boolean;
      
      public var §with use throw§:Boolean;
      
      public var §case package super§:Boolean;
      
      public var data:*;
      
      public function TweenCore(param1:Number = 0, param2:Object = null)
      {
         super();
         this.vars = param2 != null ? param2 : {};
         if(this.vars.isGSVars)
         {
            this.vars = this.vars.vars;
         }
         this.§5214233192233205123423632234§ = this.§5214236941236954123423632234§ = param1;
         this.§5214231767231780123423632234§ = this.vars.delay ? Number(this.vars.delay) : 0;
         this.§final break§ = this.vars.timeScale ? Number(this.vars.timeScale) : 1;
         this.active = param1 == 0 && this.§5214231767231780123423632234§ == 0 && this.vars.immediateRender != false;
         this.§5214236331236344123423632234§ = this.§5214237607237620123423632234§ = 0;
         this.data = this.vars.data;
         if(!§5214234229234242123423632234§)
         {
            if(!isNaN(TweenLite.§class catch include§))
            {
               return;
            }
            TweenLite.initClass();
            §5214234229234242123423632234§ = true;
         }
         var _loc3_:SimpleTimeline = this.vars.timeline is SimpleTimeline ? this.vars.timeline : (this.vars.useFrames ? TweenLite.§5214237224237237123423632234§ : TweenLite.§catch set each§);
         _loc3_.insert(this,_loc3_.§5214236331236344123423632234§);
         if(this.vars.reversed)
         {
            this.§switch package try§ = true;
         }
         if(this.vars.paused)
         {
            this.paused = true;
         }
      }
      
      public function set duration(param1:Number) : void
      {
         var _loc2_:Number = param1 / this.§5214233192233205123423632234§;
         this.§5214233192233205123423632234§ = this.§5214236941236954123423632234§ = param1;
         this.a2eae0d(true);
         if(this.active && !this.§case package super§ && param1 != 0)
         {
            this.b6ccb883(this.§5214236331236344123423632234§ * _loc2_,true);
         }
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!param1)
         {
            this.renderTime(this.totalDuration,param2,false);
            return;
         }
         if(this.timeline.§continue for return§)
         {
            this.setEnabled(false,false);
         }
         else
         {
            this.active = false;
         }
         if(!param2)
         {
            if(this.vars.onComplete && this.§5214236331236344123423632234§ >= this.§5214236941236954123423632234§ && !this.§switch package try§)
            {
               this.vars.onComplete.apply(null,this.vars.onCompleteParams);
            }
            else if(this.§switch package try§ && this.§5214236331236344123423632234§ == 0 && Boolean(this.vars.onReverseComplete))
            {
               this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
            }
         }
      }
      
      public function resume() : void
      {
         this.paused = false;
      }
      
      public function get duration() : Number
      {
         return this.§5214233192233205123423632234§;
      }
      
      public function kill() : void
      {
         this.setEnabled(false,false);
      }
      
      public function set delay(param1:Number) : void
      {
         this.startTime += param1 - this.§5214231767231780123423632234§;
         this.§5214231767231780123423632234§ = param1;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.§switch package try§)
         {
            this.§switch package try§ = param1;
            this.b6ccb883(this.§5214236331236344123423632234§,true);
         }
      }
      
      public function invalidate() : void
      {
      }
      
      public function get currentTime() : Number
      {
         return this.§5214237607237620123423632234§;
      }
      
      private function b6ccb883(param1:Number, param2:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.timeline)
         {
            _loc4_ = this.§case package super§ ? this.§5214234153234166123423632234§ : this.timeline.§5214236331236344123423632234§;
            if(this.§switch package try§)
            {
               _loc3_ = this.§with use throw§ ? this.totalDuration : this.§5214236941236954123423632234§;
               this.§521423127512312764123423632234§ = _loc4_ - (_loc3_ - param1) / this.§final break§;
            }
            else
            {
               this.§521423127512312764123423632234§ = _loc4_ - param1 / this.§final break§;
            }
            if(!this.timeline.§with use throw§)
            {
               this.a2eae0d(false);
            }
            if(this.§5214236331236344123423632234§ != param1)
            {
               this.renderTime(param1,param2,false);
            }
         }
      }
      
      public function set totalDuration(param1:Number) : void
      {
         this.duration = param1;
      }
      
      public function set startTime(param1:Number) : void
      {
         if(this.timeline != null && (param1 != this.§521423127512312764123423632234§ || this.gc))
         {
            this.timeline.insert(this,param1 - this.§5214231767231780123423632234§);
         }
         else
         {
            this.§521423127512312764123423632234§ = param1;
         }
      }
      
      public function get paused() : Boolean
      {
         return this.§case package super§;
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         this.gc = !param1;
         if(param1)
         {
            this.active = !this.§case package super§ && this.§5214236331236344123423632234§ > 0 && this.§5214236331236344123423632234§ < this.§5214236941236954123423632234§;
            if(!param2 && this.§5214237106237119123423632234§)
            {
               this.timeline.insert(this,this.§521423127512312764123423632234§ - this.§5214231767231780123423632234§);
            }
         }
         else
         {
            this.active = false;
            if(!param2 && !this.§5214237106237119123423632234§)
            {
               this.timeline.remove(this,true);
            }
         }
         return false;
      }
      
      private function a2eae0d(param1:Boolean = true) : void
      {
         var _loc2_:TweenCore = param1 ? this : this.timeline;
         while(_loc2_)
         {
            _loc2_.§with use throw§ = true;
            _loc2_ = _loc2_.timeline;
         }
      }
      
      public function set currentTime(param1:Number) : void
      {
         this.b6ccb883(param1,false);
      }
      
      public function restart(param1:Boolean = false, param2:Boolean = true) : void
      {
         this.reversed = false;
         this.paused = false;
         this.b6ccb883(param1 ? -this.§5214231767231780123423632234§ : 0,param2);
      }
      
      public function get totalDuration() : Number
      {
         return this.§5214236941236954123423632234§;
      }
      
      public function set totalTime(param1:Number) : void
      {
         this.b6ccb883(param1,false);
      }
      
      public function get reversed() : Boolean
      {
         return this.§switch package try§;
      }
      
      public function play() : void
      {
         this.reversed = false;
         this.paused = false;
      }
      
      public function reverse(param1:Boolean = true) : void
      {
         this.reversed = true;
         if(param1)
         {
            this.paused = false;
         }
         else if(this.gc)
         {
            this.setEnabled(true,false);
         }
      }
      
      public function get totalTime() : Number
      {
         return this.§5214236331236344123423632234§;
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.§case package super§ && Boolean(this.timeline))
         {
            if(param1)
            {
               this.§5214234153234166123423632234§ = this.timeline.rawTime;
            }
            else
            {
               this.§521423127512312764123423632234§ += this.timeline.rawTime - this.§5214234153234166123423632234§;
               this.§5214234153234166123423632234§ = NaN;
               this.a2eae0d(false);
            }
            this.§case package super§ = param1;
            this.active = !this.§case package super§ && this.§5214236331236344123423632234§ > 0 && this.§5214236331236344123423632234§ < this.§5214236941236954123423632234§;
         }
         if(!param1 && this.gc)
         {
            this.setEnabled(true,false);
         }
      }
      
      public function pause() : void
      {
         this.paused = true;
      }
      
      public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function get startTime() : Number
      {
         return this.§521423127512312764123423632234§;
      }
      
      public function get delay() : Number
      {
         return this.§5214231767231780123423632234§;
      }
   }
}

