package alternativa.osgi.service.network
{
   public interface INetworkService
   {
      
      function get controlServerPorts() : Vector.<int>;
      
      function get controlServerAddress() : Vector.<String>;
      
      function get resourcesRootUrl() : String;
   }
}

