package §521423114202311433123423632234§
{
   import §521423114382311451123423632234§.§52142367123684123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class ItemFittingModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function ItemFittingModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function fit(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §52142367123684123423632234§(param1));
      }
   }
}

