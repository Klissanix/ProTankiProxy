package platform.client.fp10.core.registry
{
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§class for continue§;
   import §521423129512312964123423632234§.§include catch each§;
   import §override catch default§.Long;
   
   public interface ResourceRegistry
   {
      
      function isLocked() : Boolean;
      
      function continueLoadingResources() : void;
      
      function isTypeClassRegistered(param1:int) : Boolean;
      
      function stopLoadingResources() : void;
      
      function getResource(param1:Long) : §include catch each§;
      
      function registerResource(param1:§include catch each§) : void;
      
      function addLockedResource(param1:§class for continue§) : void;
      
      function registerTypeClasses(param1:int, param2:Class) : void;
      
      function getResourceClass(param1:int) : Class;
      
      function onPacketLoadingStop() : void;
      
      function onPacketLoadingStart() : void;
      
      function loadLazyResource(param1:§include catch each§, param2:§5214238033238046123423632234§) : void;
      
      function removeLazyListener(param1:§include catch each§, param2:§5214238033238046123423632234§) : void;
      
      function get resources() : Vector.<§include catch each§>;
      
      function unregisterResource(param1:Long) : void;
      
      function isRegistered(param1:Long) : Boolean;
      
      function addLazyListener(param1:§include catch each§, param2:§5214238033238046123423632234§) : void;
   }
}

