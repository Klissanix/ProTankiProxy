package §default use final§
{
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import §null package if§.§5214238210238223123423632234§;
   import §null package if§.§override finally for§;
   import §null package if§.§try finally catch§;
   
   public class Command
   {
      
      [Inject]
      public var contextView:DisplayObjectContainer;
      
      [Inject]
      public var §5214233488233501123423632234§:§override finally for§;
      
      [Inject]
      public var eventDispatcher:IEventDispatcher;
      
      [Inject]
      public var injector:§try finally catch§;
      
      [Inject]
      public var §5214231877231890123423632234§:§5214238210238223123423632234§;
      
      public function Command()
      {
         super();
      }
      
      public function execute() : void
      {
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

