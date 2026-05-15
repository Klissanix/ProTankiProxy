package §default use final§
{
   import §5214237330237343123423632234§.EventMap;
   import §5214237330237343123423632234§.MediatorBase;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import §null package if§.§5214238210238223123423632234§;
   import §null package if§.§finally catch try§;
   
   public class §5214232760232773123423632234§ extends MediatorBase
   {
      
      [Inject]
      public var contextView:DisplayObjectContainer;
      
      [Inject]
      public var §5214231877231890123423632234§:§5214238210238223123423632234§;
      
      protected var §dynamic use return§:IEventDispatcher;
      
      protected var §default var continue§:§finally catch try§;
      
      public function §5214232760232773123423632234§()
      {
         super();
      }
      
      override public function §5214237173237186123423632234§() : void
      {
         if(this.§default var continue§)
         {
            this.§default var continue§.§const switch with§();
         }
         super.§5214237173237186123423632234§();
      }
      
      public function get eventDispatcher() : IEventDispatcher
      {
         return this.§dynamic use return§;
      }
      
      [Inject]
      public function set eventDispatcher(param1:IEventDispatcher) : void
      {
         this.§dynamic use return§ = param1;
      }
      
      protected function get §521423129522312965123423632234§() : §finally catch try§
      {
         return this.§default var continue§ || (this.§default var continue§ = new EventMap(this.eventDispatcher));
      }
      
      protected function §do for get§(param1:Event) : Boolean
      {
         if(this.eventDispatcher.hasEventListener(param1.type))
         {
            return this.eventDispatcher.dispatchEvent(param1);
         }
         return false;
      }
      
      protected function §5214234594234607123423632234§(param1:String, param2:Function, param3:Class = null, param4:Boolean = false, param5:int = 0, param6:Boolean = true) : void
      {
         this.§521423129522312965123423632234§.§for var for§(IEventDispatcher(§dynamic const return§),param1,param2,param3,param4,param5,param6);
      }
      
      protected function §5214236112236125123423632234§(param1:String, param2:Function, param3:Class = null, param4:Boolean = false) : void
      {
         this.§521423129522312965123423632234§.§default switch catch§(IEventDispatcher(§dynamic const return§),param1,param2,param3,param4);
      }
      
      protected function §521423128342312847123423632234§(param1:String, param2:Function, param3:Class = null, param4:Boolean = false, param5:int = 0, param6:Boolean = true) : void
      {
         this.§521423129522312965123423632234§.§for var for§(this.eventDispatcher,param1,param2,param3,param4,param5,param6);
      }
      
      protected function §5214235532235545123423632234§(param1:String, param2:Function, param3:Class = null, param4:Boolean = false) : void
      {
         this.§521423129522312965123423632234§.§default switch catch§(this.eventDispatcher,param1,param2,param3,param4);
      }
   }
}

