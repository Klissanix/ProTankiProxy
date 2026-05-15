package projects.tanks.client.commons.models.tips
{
   import §521423130242313037123423632234§.§521423122512312264123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class TipsModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function TipsModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function nextTip() : void
      {
         §521423140132314026123423632234§.send(new §521423122512312264123423632234§());
      }
   }
}

