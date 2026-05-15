package §do var function§
{
   import §521423122732312286123423632234§.§521423120142312027123423632234§;
   import §521423122732312286123423632234§.§5214234584234597123423632234§;
   import §521423122732312286123423632234§.§5214235798235811123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class PasswordChangeModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function PasswordChangeModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function changePasswordAndEmail(param1:String, param2:String) : void
      {
         §521423140132314026123423632234§.send(new §521423120142312027123423632234§(param1,param2));
      }
      
      public function sendUsersRestorePasswordLink(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §5214234584234597123423632234§(param1));
      }
      
      public function checkPasswordChangeHash(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §5214235798235811123423632234§(param1));
      }
   }
}

