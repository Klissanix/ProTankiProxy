package §default use final§
{
   import §5214237330237343123423632234§.EventMap;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import §null package if§.§finally catch try§;
   
   public class §5214231093231106123423632234§
   {
      
      protected var §dynamic use return§:IEventDispatcher;
      
      protected var §default var continue§:§finally catch try§;
      
      public function §5214231093231106123423632234§()
      {
         super();
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
   }
}

