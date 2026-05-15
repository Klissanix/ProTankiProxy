package §final for extends§
{
   import §5214233704233717123423632234§.§521423111272311140123423632234§;
   import §5214233704233717123423632234§.§5214232560232573123423632234§;
   import §5214233704233717123423632234§.§5214232806232819123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class §52142341823431123423632234§
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function §52142341823431123423632234§(param1:§while for try§)
      {
         super();
      }
      
      public function §5214238732238745123423632234§(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §521423111272311140123423632234§(param1));
      }
      
      public function §if switch class§(param1:String, param2:String) : void
      {
         §521423140132314026123423632234§.send(new §5214232560232573123423632234§(param1,param2));
      }
      
      public function §5214236144236157123423632234§(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §5214232806232819123423632234§(param1));
      }
   }
}

