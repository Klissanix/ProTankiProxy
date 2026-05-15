package §in switch throw§
{
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§class for continue§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423129512312964123423632234§.§try for class§;
   import §5214237837237850123423632234§.§set set implements§;
   import §5214237837237850123423632234§.§true const default§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ResourceRegistry;
   
   public class ResourceRegistryImpl implements ResourceRegistry, §set set implements§
   {
      
      private var §5214233595233608123423632234§:§try for class§;
      
      private var §5214237935237948123423632234§:int;
      
      private var §with catch true§:Dictionary = new Dictionary();
      
      private var §5214231043231056123423632234§:Vector.<§include catch each§> = new Vector.<§include catch each§>();
      
      private var §5214231147231160123423632234§:ProgressListeners = new ProgressListeners();
      
      private var §const set§:Vector.<§class for continue§> = new Vector.<§class for continue§>();
      
      private var §get set with§:§dynamic use try§;
      
      private var §521423101932310206123423632234§:Vector.<Class> = new Vector.<Class>(24,true);
      
      public function ResourceRegistryImpl(param1:OSGi)
      {
         super();
         var _loc2_:LogService = LogService(param1.getService(LogService));
         this.§get set with§ = _loc2_.getLogger("resource");
         this.§5214233595233608123423632234§ = §try for class§(param1.getService(§try for class§));
      }
      
      public function registerResource(param1:§include catch each§) : void
      {
         this.§with catch true§[param1.§5214239618239631123423632234§.id] = param1;
         this.§5214231043231056123423632234§[§5214231043231056123423632234§.length] = param1;
      }
      
      public function removePacketListener(param1:§true const default§) : void
      {
         this.§5214231147231160123423632234§.removeListener(param1);
      }
      
      public function addLockedResource(param1:§class for continue§) : void
      {
         this.§const set§[§const set§.length] = param1;
      }
      
      public function getResource(param1:Long) : §include catch each§
      {
         return this.§with catch true§[param1];
      }
      
      public function loadLazyResource(param1:§include catch each§, param2:§5214238033238046123423632234§) : void
      {
         var _loc3_:§include catch each§ = param1;
         if((_loc3_.§else for include§ & 1) == 0)
         {
            §5214233595233608123423632234§.§break catch return§(param1,param2,0);
         }
      }
      
      public function getResourceClass(param1:int) : Class
      {
         return this.§521423101932310206123423632234§[param1];
      }
      
      public function unregisterResource(param1:Long) : void
      {
         var _loc2_:§include catch each§ = this.§with catch true§[param1];
         if(_loc2_ == null)
         {
            return;
         }
         delete this.§with catch true§[param1];
         this.§5214231043231056123423632234§.removeAt(this.§5214231043231056123423632234§.indexOf(_loc2_));
      }
      
      public function removeLazyListener(param1:§include catch each§, param2:§5214238033238046123423632234§) : void
      {
         §5214233595233608123423632234§.§class for for§(param1,param2);
      }
      
      public function isLocked() : Boolean
      {
         return this.§5214237935237948123423632234§ > 0;
      }
      
      public function isRegistered(param1:Long) : Boolean
      {
         return this.§with catch true§[param1] != null;
      }
      
      public function continueLoadingResources() : void
      {
         if(this.§5214237935237948123423632234§)
         {
         }
         --this.§5214237935237948123423632234§;
         if(this.§5214237935237948123423632234§ == 0)
         {
            for each(var _loc1_ in this.§const set§)
            {
               _loc1_.§5214234452234465123423632234§();
            }
            this.§const set§.length = 0;
         }
      }
      
      public function onPacketLoadingStop() : void
      {
         this.§5214231147231160123423632234§.onLoadingStop();
      }
      
      public function isTypeClassRegistered(param1:int) : Boolean
      {
         return this.§521423101932310206123423632234§[param1] != null;
      }
      
      public function stopLoadingResources() : void
      {
         ++this.§5214237935237948123423632234§;
      }
      
      public function onPacketLoadingStart() : void
      {
         this.§5214231147231160123423632234§.onLoadingStart();
      }
      
      public function addPacketListener(param1:§true const default§) : void
      {
         this.§5214231147231160123423632234§.addListener(param1);
      }
      
      public function addLazyListener(param1:§include catch each§, param2:§5214238033238046123423632234§) : void
      {
         §5214233595233608123423632234§.§native set implements§(param1,param2);
      }
      
      public function get resources() : Vector.<§include catch each§>
      {
         return this.§5214231043231056123423632234§;
      }
      
      public function registerTypeClasses(param1:int, param2:Class) : void
      {
         this.§521423101932310206123423632234§[param1] = param2;
      }
   }
}

