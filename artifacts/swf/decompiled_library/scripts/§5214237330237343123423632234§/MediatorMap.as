package §5214237330237343123423632234§
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import §null package if§.§5214238210238223123423632234§;
   import §null package if§.§each const§;
   import §null package if§.§try finally catch§;
   import §null package if§.§try use finally§;
   
   public class MediatorMap extends §while const var§ implements §5214238210238223123423632234§
   {
      
      protected static const §521423125702312583123423632234§:Sprite = new Sprite();
      
      protected var §521423109512310964123423632234§:Dictionary;
      
      protected var §import catch return§:Dictionary;
      
      protected var §finally const package§:Dictionary;
      
      protected var §dynamic package get§:Dictionary;
      
      protected var §5214238482238495123423632234§:Boolean;
      
      protected var §5214232030232043123423632234§:§each const§;
      
      public function MediatorMap(param1:DisplayObjectContainer, param2:§try finally catch§, param3:§each const§)
      {
         super(param1,param2);
         this.§5214232030232043123423632234§ = param3;
         this.§521423109512310964123423632234§ = new Dictionary(true);
         this.§import catch return§ = new Dictionary(true);
         this.§finally const package§ = new Dictionary(false);
         this.§dynamic package get§ = new Dictionary(false);
      }
      
      public function §521423109332310946123423632234§(param1:*, param2:Class, param3:* = null, param4:Boolean = true, param5:Boolean = true) : void
      {
         var _loc6_:String = this.§5214232030232043123423632234§.§521423105072310520123423632234§(param1);
         if(this.§finally const package§[_loc6_] != null)
         {
            throw new §5214233041233054123423632234§(§5214233041233054123423632234§.§5214231555231568123423632234§ + " - " + param2);
         }
         if(this.§5214232030232043123423632234§.§521423121412312154123423632234§(param2,§try use finally§) == false)
         {
            throw new §5214233041233054123423632234§(§5214233041233054123423632234§.§switch finally catch§ + " - " + param2);
         }
         var _loc7_:MappingConfig = new MappingConfig();
         _loc7_.mediatorClass = param2;
         _loc7_.autoCreate = param4;
         _loc7_.autoRemove = param5;
         if(param3)
         {
            if(param3 is Array)
            {
               _loc7_.typedViewClasses = (param3 as Array).concat();
            }
            else if(param3 is Class)
            {
               _loc7_.typedViewClasses = [param3];
            }
         }
         else if(param1 is Class)
         {
            _loc7_.typedViewClasses = [param1];
         }
         this.§finally const package§[_loc6_] = _loc7_;
         if(param4 || param5)
         {
            ++§extends const else§;
            if(§extends const else§ == 1)
            {
               this.addListeners();
            }
         }
         if(Boolean(param4) && Boolean(contextView) && _loc6_ == getQualifiedClassName(contextView))
         {
            this.§52142348423497123423632234§(contextView,_loc6_,_loc7_);
         }
      }
      
      public function §5214236160236173123423632234§(param1:*) : void
      {
         var _loc2_:String = this.§5214232030232043123423632234§.§521423105072310520123423632234§(param1);
         var _loc3_:MappingConfig = this.§finally const package§[_loc2_];
         if(Boolean(_loc3_) && (_loc3_.autoCreate || _loc3_.autoRemove))
         {
            --§extends const else§;
            if(§extends const else§ == 0)
            {
               this.removeListeners();
            }
         }
         delete this.§finally const package§[_loc2_];
      }
      
      public function §super use if§(param1:Object) : §try use finally§
      {
         return this.§52142348423497123423632234§(param1);
      }
      
      public function §521423122962312309123423632234§(param1:Object, param2:§try use finally§) : void
      {
         var _loc3_:Class = this.§5214232030232043123423632234§.getClass(param2);
         injector.§false catch include§(_loc3_) && injector.§5214232846232859123423632234§(_loc3_);
         injector.§for var while§(_loc3_,param2);
         this.§521423109512310964123423632234§[param1] = param2;
         this.§import catch return§[param1] = this.§finally const package§[getQualifiedClassName(param1)];
         param2.§5214236222236235123423632234§(param1);
         param2.§finally catch var§();
      }
      
      public function §521423129772312990123423632234§(param1:§try use finally§) : §try use finally§
      {
         var _loc2_:Object = null;
         var _loc3_:Class = null;
         if(param1)
         {
            _loc2_ = param1.§5214235117235130123423632234§();
            _loc3_ = this.§5214232030232043123423632234§.getClass(param1);
            delete this.§521423109512310964123423632234§[_loc2_];
            delete this.§import catch return§[_loc2_];
            param1.§5214237173237186123423632234§();
            param1.§5214236222236235123423632234§(null);
            injector.§false catch include§(_loc3_) && injector.§5214232846232859123423632234§(_loc3_);
         }
         return param1;
      }
      
      public function §super break§(param1:Object) : §try use finally§
      {
         return this.§521423129772312990123423632234§(this.§5214239917239930123423632234§(param1));
      }
      
      public function §5214239917239930123423632234§(param1:Object) : §try use finally§
      {
         return this.§521423109512310964123423632234§[param1];
      }
      
      public function §false catch include§(param1:*) : Boolean
      {
         var _loc2_:String = this.§5214232030232043123423632234§.§521423105072310520123423632234§(param1);
         return this.§finally const package§[_loc2_] != null;
      }
      
      public function §throw const use§(param1:Object) : Boolean
      {
         return this.§521423109512310964123423632234§[param1] != null;
      }
      
      public function §for switch false§(param1:§try use finally§) : Boolean
      {
         var _loc2_:§try use finally§ = null;
         for each(_loc2_ in this.§521423109512310964123423632234§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function addListeners() : void
      {
         if(Boolean(contextView) && enabled)
         {
            contextView.addEventListener(Event.ADDED_TO_STAGE,this.§5214236366236379123423632234§,useCapture,0,true);
            contextView.addEventListener(Event.REMOVED_FROM_STAGE,this.§break use default§,useCapture,0,true);
         }
      }
      
      override protected function removeListeners() : void
      {
         if(contextView)
         {
            contextView.removeEventListener(Event.ADDED_TO_STAGE,this.§5214236366236379123423632234§,useCapture);
            contextView.removeEventListener(Event.REMOVED_FROM_STAGE,this.§break use default§,useCapture);
         }
      }
      
      override protected function §5214236366236379123423632234§(param1:Event) : void
      {
         if(this.§dynamic package get§[param1.target])
         {
            delete this.§dynamic package get§[param1.target];
            return;
         }
         var _loc2_:String = getQualifiedClassName(param1.target);
         var _loc3_:MappingConfig = this.§finally const package§[_loc2_];
         if(Boolean(_loc3_) && _loc3_.autoCreate)
         {
            this.§52142348423497123423632234§(param1.target,_loc2_,_loc3_);
         }
      }
      
      protected function §52142348423497123423632234§(param1:Object, param2:String = "", param3:MappingConfig = null) : §try use finally§
      {
         var _loc5_:Class = null;
         var _loc6_:Class = null;
         var _loc4_:§try use finally§ = this.§521423109512310964123423632234§[param1];
         if(_loc4_ == null)
         {
            param2 ||= getQualifiedClassName(param1);
            param3 ||= this.§finally const package§[param2];
            if(param3)
            {
               for each(_loc5_ in param3.typedViewClasses)
               {
                  injector.§for var while§(_loc5_,param1);
               }
               _loc4_ = injector.§5214231940231953123423632234§(param3.mediatorClass);
               for each(_loc6_ in param3.typedViewClasses)
               {
                  injector.§5214232846232859123423632234§(_loc6_);
               }
               this.§521423122962312309123423632234§(param1,_loc4_);
            }
         }
         return _loc4_;
      }
      
      protected function §break use default§(param1:Event) : void
      {
         var _loc2_:MappingConfig = this.§import catch return§[param1.target];
         if(Boolean(_loc2_) && _loc2_.autoRemove)
         {
            this.§dynamic package get§[param1.target] = param1.target;
            if(!this.§5214238482238495123423632234§)
            {
               this.§5214238482238495123423632234§ = true;
               §521423125702312583123423632234§.addEventListener(Event.ENTER_FRAME,this.§false switch get§);
            }
         }
      }
      
      protected function §false switch get§(param1:Event) : void
      {
         var _loc2_:DisplayObject = null;
         §521423125702312583123423632234§.removeEventListener(Event.ENTER_FRAME,this.§false switch get§);
         for each(_loc2_ in this.§dynamic package get§)
         {
            if(!_loc2_.stage)
            {
               this.§super break§(_loc2_);
            }
            delete this.§dynamic package get§[_loc2_];
         }
         this.§5214238482238495123423632234§ = false;
      }
   }
}

class MappingConfig
{
   
   public var mediatorClass:Class;
   
   public var typedViewClasses:Array;
   
   public var autoCreate:Boolean;
   
   public var autoRemove:Boolean;
   
   public function MappingConfig()
   {
      super();
   }
}
