package §5214237330237343123423632234§
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import §null package if§.§52142351923532123423632234§;
   import §null package if§.§try finally catch§;
   
   public class ViewMap extends §while const var§ implements §52142351923532123423632234§
   {
      
      protected var §continue for with§:Array;
      
      protected var §for finally const§:Dictionary;
      
      protected var §import override§:Dictionary;
      
      public function ViewMap(param1:DisplayObjectContainer, param2:§try finally catch§)
      {
         super(param1,param2);
         this.§continue for with§ = new Array();
         this.§for finally const§ = new Dictionary(false);
         this.§import override§ = new Dictionary(true);
      }
      
      public function §case for§(param1:String) : void
      {
         if(this.§continue for with§.indexOf(param1) == -1)
         {
            this.§continue for with§.push(param1);
            ++§extends const else§;
            if(§extends const else§ == 1)
            {
               this.addListeners();
            }
         }
      }
      
      public function §class package break§(param1:String) : void
      {
         var _loc2_:int = this.§continue for with§.indexOf(param1);
         if(_loc2_ > -1)
         {
            this.§continue for with§.splice(_loc2_,1);
            --§extends const else§;
            if(§extends const else§ == 0)
            {
               this.removeListeners();
            }
         }
      }
      
      public function §super function§(param1:Class) : void
      {
         if(this.§for finally const§[param1])
         {
            return;
         }
         this.§for finally const§[param1] = param1;
         ++§extends const else§;
         if(§extends const else§ == 1)
         {
            this.addListeners();
         }
         if(Boolean(contextView) && contextView is param1)
         {
            this.§521423132622313275123423632234§(contextView);
         }
      }
      
      public function §5214234968234981123423632234§(param1:Class) : void
      {
         var _loc2_:Class = this.§for finally const§[param1];
         delete this.§for finally const§[param1];
         if(_loc2_)
         {
            --§extends const else§;
            if(§extends const else§ == 0)
            {
               this.removeListeners();
            }
         }
      }
      
      public function §true set switch§(param1:Class) : Boolean
      {
         return this.§for finally const§[param1] != null;
      }
      
      public function §5214237402237415123423632234§(param1:String) : Boolean
      {
         return this.§continue for with§.indexOf(param1) > -1;
      }
      
      override protected function addListeners() : void
      {
         if(Boolean(contextView) && enabled)
         {
            contextView.addEventListener(Event.ADDED_TO_STAGE,this.§5214236366236379123423632234§,useCapture,0,true);
         }
      }
      
      override protected function removeListeners() : void
      {
         if(contextView)
         {
            contextView.removeEventListener(Event.ADDED_TO_STAGE,this.§5214236366236379123423632234§,useCapture);
         }
      }
      
      override protected function §5214236366236379123423632234§(param1:Event) : void
      {
         var _loc3_:Class = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc2_:DisplayObject = DisplayObject(param1.target);
         if(this.§import override§[_loc2_])
         {
            return;
         }
         for each(_loc3_ in this.§for finally const§)
         {
            if(_loc2_ is _loc3_)
            {
               this.§521423132622313275123423632234§(_loc2_);
               return;
            }
         }
         _loc4_ = int(this.§continue for with§.length);
         if(_loc4_ > 0)
         {
            _loc5_ = getQualifiedClassName(_loc2_);
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = this.§continue for with§[_loc6_];
               if(_loc5_.indexOf(_loc7_) == 0)
               {
                  this.§521423132622313275123423632234§(_loc2_);
                  return;
               }
               _loc6_++;
            }
         }
      }
      
      protected function §521423132622313275123423632234§(param1:DisplayObject) : void
      {
         injector.§521423132622313275123423632234§(param1);
         this.§import override§[param1] = true;
      }
   }
}

