package §5214237353237366123423632234§
{
   import §521423134842313497123423632234§.§5214236395236408123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class InviteEntranceModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function InviteEntranceModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function activateInvite(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §5214236395236408123423632234§(param1));
      }
   }
}

