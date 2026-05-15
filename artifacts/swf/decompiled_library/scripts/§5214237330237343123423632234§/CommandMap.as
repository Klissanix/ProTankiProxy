package §5214237330237343123423632234§
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import §null package if§.§each const§;
   import §null package if§.§override finally for§;
   import §null package if§.§try finally catch§;
   
   public class CommandMap implements §override finally for§
   {
      
      protected var eventDispatcher:IEventDispatcher;
      
      protected var injector:§try finally catch§;
      
      protected var §5214232030232043123423632234§:§each const§;
      
      protected var §5214237186237199123423632234§:Dictionary;
      
      protected var §finally const static§:Dictionary;
      
      protected var §5214236530236543123423632234§:Dictionary;
      
      public function CommandMap(param1:IEventDispatcher, param2:§try finally catch§, param3:§each const§)
      {
         super();
         this.eventDispatcher = param1;
         this.injector = param2;
         this.§5214232030232043123423632234§ = param3;
         this.§5214237186237199123423632234§ = new Dictionary(false);
         this.§finally const static§ = new Dictionary(false);
         this.§5214236530236543123423632234§ = new Dictionary(false);
      }
      
      public function §5214231786231799123423632234§(param1:String, param2:Class, param3:Class = null, param4:Boolean = false) : void
      {
         var eventClassMap:Dictionary;
         var callbacksByCommandClass:Dictionary;
         var callback:Function;
         var eventType:String = param1;
         var commandClass:Class = param2;
         var eventClass:Class = param3;
         var oneshot:Boolean = param4;
         this.§521423112762311289123423632234§(commandClass);
         eventClass ||= Event;
         eventClassMap = this.§5214237186237199123423632234§[eventType] = this.§5214237186237199123423632234§[eventType] || new Dictionary(false);
         callbacksByCommandClass = eventClassMap[eventClass] = eventClassMap[eventClass] || new Dictionary(false);
         if(callbacksByCommandClass[commandClass] != null)
         {
            throw new §5214233041233054123423632234§(§5214233041233054123423632234§.§break const use§ + " - eventType (" + eventType + ") and Command (" + commandClass + ")");
         }
         callback = function(param1:Event):void
         {
            routeEventToCommand(param1,commandClass,oneshot,eventClass);
         };
         this.eventDispatcher.addEventListener(eventType,callback,false,0,true);
         callbacksByCommandClass[commandClass] = callback;
      }
      
      public function §5214234481234494123423632234§(param1:String, param2:Class, param3:Class = null) : void
      {
         var _loc4_:Dictionary = this.§5214237186237199123423632234§[param1];
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:Dictionary = _loc4_[param3 || Event];
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:Function = _loc5_[param2];
         if(_loc6_ == null)
         {
            return;
         }
         this.eventDispatcher.removeEventListener(param1,_loc6_,false);
         delete _loc5_[param2];
      }
      
      public function §521423136792313692123423632234§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Dictionary = null;
         var _loc3_:Dictionary = null;
         var _loc4_:Function = null;
         for(_loc1_ in this.§5214237186237199123423632234§)
         {
            _loc2_ = this.§5214237186237199123423632234§[_loc1_];
            for each(_loc3_ in _loc2_)
            {
               for each(_loc4_ in _loc3_)
               {
                  this.eventDispatcher.removeEventListener(_loc1_,_loc4_,false);
               }
            }
         }
         this.§5214237186237199123423632234§ = new Dictionary(false);
      }
      
      public function §package catch continue§(param1:String, param2:Class, param3:Class = null) : Boolean
      {
         var _loc4_:Dictionary = this.§5214237186237199123423632234§[param1];
         if(_loc4_ == null)
         {
            return false;
         }
         var _loc5_:Dictionary = _loc4_[param3 || Event];
         if(_loc5_ == null)
         {
            return false;
         }
         return _loc5_[param2] != null;
      }
      
      public function execute(param1:Class, param2:Object = null, param3:Class = null, param4:String = "") : void
      {
         this.§521423112762311289123423632234§(param1);
         if(param2 != null || param3 != null)
         {
            param3 ||= this.§5214232030232043123423632234§.getClass(param2);
            if(param2 is Event && param3 != Event)
            {
               this.injector.§for var while§(Event,param2);
            }
            this.injector.§for var while§(param3,param2,param4);
         }
         var _loc5_:Object = this.injector.§5214231940231953123423632234§(param1);
         if(param2 !== null || param3 != null)
         {
            if(param2 is Event && param3 != Event)
            {
               this.injector.§5214232846232859123423632234§(Event);
            }
            this.injector.§5214232846232859123423632234§(param3,param4);
         }
         _loc5_.execute();
      }
      
      public function §5214231745231758123423632234§(param1:Object) : void
      {
         this.§5214236530236543123423632234§[param1] = true;
      }
      
      public function release(param1:Object) : void
      {
         if(this.§5214236530236543123423632234§[param1])
         {
            delete this.§5214236530236543123423632234§[param1];
         }
      }
      
      protected function §521423112762311289123423632234§(param1:Class) : void
      {
         var commandClass:Class = param1;
         if(!this.§finally const static§[commandClass])
         {
            this.§finally const static§[commandClass] = describeType(commandClass).factory.method.(@name == "execute").length();
            if(!this.§finally const static§[commandClass])
            {
               throw new §5214233041233054123423632234§(§5214233041233054123423632234§.§implements for use§ + " - " + commandClass);
            }
         }
      }
      
      protected function routeEventToCommand(param1:Event, param2:Class, param3:Boolean, param4:Class) : Boolean
      {
         if(!(param1 is param4))
         {
            return false;
         }
         this.execute(param2,param1);
         if(param3)
         {
            this.§5214234481234494123423632234§(param1.type,param2,param4);
         }
         return true;
      }
   }
}

