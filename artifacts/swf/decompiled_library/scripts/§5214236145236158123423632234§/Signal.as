package §5214236145236158123423632234§
{
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   
   public class Signal implements §5214235390235403123423632234§, §521423140402314053123423632234§
   {
      
      protected var §class use package§:Dictionary;
      
      protected var §521423140622314075123423632234§:Array;
      
      protected var listeners:Array;
      
      public function Signal(... rest)
      {
         super();
         this.listeners = [];
         this.§class use package§ = new Dictionary();
         if(rest.length == 1 && rest[0] is Array)
         {
            rest = rest[0];
         }
         this.§52142395323966123423632234§(rest);
      }
      
      public function get §implements var each§() : uint
      {
         return this.listeners.length;
      }
      
      public function add(param1:Function) : void
      {
         if(this.§class use package§[param1])
         {
            throw new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first.");
         }
         this.§else const package§(param1);
      }
      
      public function §if set static§(param1:Function) : void
      {
         if(this.§class use package§[param1])
         {
            return;
         }
         if(this.listeners.indexOf(param1) >= 0 && !this.§class use package§[param1])
         {
            throw new IllegalOperationError("You cannot add() then addOnce() the same listener without removing the relationship first.");
         }
         this.§else const package§(param1);
         this.§class use package§[param1] = true;
      }
      
      public function get §52142335223365123423632234§() : Array
      {
         return this.§521423140622314075123423632234§;
      }
      
      public function remove(param1:Function) : void
      {
         if(this.listeners.indexOf(param1) == -1)
         {
            return;
         }
         this.listeners.splice(this.listeners.indexOf(param1),1);
         delete this.§class use package§[param1];
      }
      
      protected function §else const package§(param1:Function) : void
      {
         var _loc2_:String = null;
         if(param1.length < this.§521423140622314075123423632234§.length)
         {
            _loc2_ = param1.length == 1 ? "argument" : "arguments";
            throw new ArgumentError("Listener has " + param1.length + " " + _loc2_ + " but it needs at least " + this.§521423140622314075123423632234§.length + " to match the given value classes.");
         }
         if(!this.listeners.length)
         {
            this.listeners[0] = param1;
            return;
         }
         if(this.listeners.indexOf(param1) >= 0)
         {
            return;
         }
         this.listeners[this.listeners.length] = param1;
      }
      
      protected function §52142395323966123423632234§(param1:Array) : void
      {
         this.§521423140622314075123423632234§ = param1 || [];
         var _loc2_:* = int(this.§521423140622314075123423632234§.length);
         while(_loc2_--)
         {
            if(!(this.§521423140622314075123423632234§[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: item at index " + _loc2_ + " should be a Class but was:<" + this.§521423140622314075123423632234§[_loc2_] + ">.");
            }
         }
      }
      
      public function §do for get§(... rest) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Class = null;
         var _loc6_:Function = null;
         var _loc4_:int = int(this.§521423140622314075123423632234§.length);
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = rest[_loc5_];
            if(!(_loc2_ === null || _loc2_ is (_loc3_ = this.§521423140622314075123423632234§[_loc5_])))
            {
               throw new ArgumentError("Value object <" + _loc2_ + "> is not an instance of <" + _loc3_ + ">.");
            }
            _loc5_++;
         }
         if(!this.listeners.length)
         {
            return;
         }
         switch(rest.length)
         {
            case 0:
               for each(_loc6_ in this.listeners.slice())
               {
                  if(this.§class use package§[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_();
               }
               break;
            case 1:
               for each(_loc6_ in this.listeners.slice())
               {
                  if(this.§class use package§[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_(rest[0]);
               }
               break;
            default:
               for each(_loc6_ in this.listeners.slice())
               {
                  if(this.§class use package§[_loc6_])
                  {
                     this.remove(_loc6_);
                  }
                  _loc6_.apply(null,rest);
               }
         }
      }
      
      public function removeAll() : void
      {
         this.listeners.length = 0;
         this.§class use package§ = new Dictionary();
      }
   }
}

