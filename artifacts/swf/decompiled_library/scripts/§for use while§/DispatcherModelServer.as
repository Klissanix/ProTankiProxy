package §for use while§
{
   import §521423113572311370123423632234§.§get for const§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class DispatcherModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function DispatcherModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function dependenciesLoaded(param1:int) : void
      {
         §521423140132314026123423632234§.send(new §get for const§(param1));
      }
   }
}

