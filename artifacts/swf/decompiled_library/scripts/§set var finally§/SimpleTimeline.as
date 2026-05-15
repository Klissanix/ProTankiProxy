package §set var finally§
{
   public class SimpleTimeline extends TweenCore
   {
      
      private var §5214236429236442123423632234§:TweenCore;
      
      private var §521423123642312377123423632234§:TweenCore;
      
      public var §continue for return§:Boolean;
      
      public function SimpleTimeline(param1:Object = null)
      {
         super(0,param1);
      }
      
      public function insert(param1:TweenCore, param2:* = 0) : TweenCore
      {
         var _loc3_:SimpleTimeline = param1.timeline;
         if(!param1.§5214237106237119123423632234§ && Boolean(_loc3_))
         {
            _loc3_.remove(param1,true);
         }
         param1.timeline = this;
         param1.§521423127512312764123423632234§ = Number(param2) + param1.delay;
         if(param1.gc)
         {
            param1.setEnabled(true,true);
         }
         if(param1.§case package super§ && _loc3_ != this)
         {
            param1.§5214234153234166123423632234§ = param1.§521423127512312764123423632234§ + (this.rawTime - param1.§521423127512312764123423632234§) / param1.§final break§;
         }
         if(this.§521423123642312377123423632234§)
         {
            this.§521423123642312377123423632234§.§set switch catch§ = param1;
         }
         else
         {
            this.§5214236429236442123423632234§ = param1;
         }
         param1.§override var function§ = this.§521423123642312377123423632234§;
         this.§521423123642312377123423632234§ = param1;
         param1.§set switch catch§ = null;
         param1.§5214237106237119123423632234§ = false;
         return param1;
      }
      
      public function remove(param1:TweenCore, param2:Boolean = false) : void
      {
         if(param1.§5214237106237119123423632234§)
         {
            return;
         }
         if(!param2)
         {
            param1.setEnabled(false,true);
         }
         if(param1.§set switch catch§)
         {
            param1.§set switch catch§.§override var function§ = param1.§override var function§;
         }
         else if(this.§521423123642312377123423632234§ == param1)
         {
            this.§521423123642312377123423632234§ = param1.§override var function§;
         }
         if(param1.§override var function§)
         {
            param1.§override var function§.§set switch catch§ = param1.§set switch catch§;
         }
         else if(this.§5214236429236442123423632234§ == param1)
         {
            this.§5214236429236442123423632234§ = param1.§set switch catch§;
         }
         param1.§5214237106237119123423632234§ = true;
      }
      
      public function get rawTime() : Number
      {
         return this.§5214236331236344123423632234§;
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:TweenCore = null;
         var _loc5_:Number = NaN;
         var _loc6_:TweenCore = this.§5214236429236442123423632234§;
         this.§5214236331236344123423632234§ = param1;
         this.§5214237607237620123423632234§ = param1;
         while(_loc6_)
         {
            _loc4_ = _loc6_.§set switch catch§;
            if(_loc6_.active || param1 >= _loc6_.§521423127512312764123423632234§ && !_loc6_.§case package super§ && !_loc6_.gc)
            {
               if(!_loc6_.§switch package try§)
               {
                  _loc6_.renderTime((param1 - _loc6_.§521423127512312764123423632234§) * _loc6_.§final break§,param2,false);
               }
               else
               {
                  _loc5_ = _loc6_.§with use throw§ ? _loc6_.totalDuration : _loc6_.§5214236941236954123423632234§;
                  _loc6_.renderTime(_loc5_ - (param1 - _loc6_.§521423127512312764123423632234§) * _loc6_.§final break§,param2,false);
               }
            }
            _loc6_ = _loc4_;
         }
      }
   }
}

