package alternativa.osgi.service.clientlog
{
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   
   public class ClientLog implements IClientLog
   {
      
      private var §5214234621234634123423632234§:LogService;
      
      public function ClientLog(param1:LogService)
      {
         super();
         this.§5214234621234634123423632234§ = param1;
      }
      
      public function logInternal(param1:String, param2:String, param3:Array = null) : void
      {
         this.getLogger(param1).info(param2,param3);
      }
      
      public function getChannelNames() : Vector.<String>
      {
         return null;
      }
      
      public function logError(param1:String, param2:String, ... rest) : void
      {
         this.getLogger(param1).error(param2,rest);
      }
      
      public function removeLogListener(param1:§5214234005234018123423632234§) : void
      {
      }
      
      public function log(param1:String, param2:String, ... rest) : void
      {
         this.getLogger(param1).debug(param2,rest);
      }
      
      private function getLogger(param1:String) : §dynamic use try§
      {
         return this.§5214234621234634123423632234§.getLogger(param1);
      }
      
      public function getChannelStrings(param1:String) : Vector.<String>
      {
         return null;
      }
      
      public function addLogChannelListener(param1:String, param2:§5214234005234018123423632234§) : void
      {
      }
      
      public function removeLogChannelListener(param1:String, param2:§5214234005234018123423632234§) : void
      {
      }
      
      public function addLogListener(param1:§5214234005234018123423632234§) : void
      {
      }
   }
}

