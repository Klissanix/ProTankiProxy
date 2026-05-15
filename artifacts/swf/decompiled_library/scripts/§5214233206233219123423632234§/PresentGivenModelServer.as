package §5214233206233219123423632234§
{
   import §521423114382311451123423632234§.§521423126822312695123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class PresentGivenModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function PresentGivenModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function removePresent(param1:int) : void
      {
         §521423140132314026123423632234§.send(new §521423126822312695123423632234§(param1));
      }
   }
}

