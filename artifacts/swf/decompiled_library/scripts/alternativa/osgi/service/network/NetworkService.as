package alternativa.osgi.service.network
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.startup.ConnectionParameters;
   
   public class NetworkService implements INetworkService
   {
      
      private static const §set switch true§:String = "connection";
      
      private var §5214234621234634123423632234§:LogService;
      
      private var §finally for§:Vector.<String>;
      
      private var §try set do§:Vector.<int>;
      
      private var §with switch static§:String;
      
      public function NetworkService(param1:ConnectionParameters)
      {
         super();
         this.§finally for§ = param1.§521423118322311845123423632234§;
         this.§try set do§ = param1.§5214234076234089123423632234§;
         this.§with switch static§ = param1.§521423121032312116123423632234§;
         this.§5214234621234634123423632234§ = LogService(OSGi.getInstance().getService(LogService));
      }
      
      public function get controlServerAddress() : Vector.<String>
      {
         return this.§finally for§;
      }
      
      public function get resourcesRootUrl() : String
      {
         return this.§with switch static§;
      }
      
      public function get controlServerPorts() : Vector.<int>
      {
         return this.§try set do§;
      }
   }
}

