package projects.tanks.client.garage.models.garage
{
   import §521423114382311451123423632234§.§5214231996232009123423632234§;
   import §521423114382311451123423632234§.§5214239417239430123423632234§;
   import §521423114382311451123423632234§.§catch import§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class GarageModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function GarageModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function kitBought(param1:String, param2:int) : void
      {
         §521423140132314026123423632234§.send(new §5214231996232009123423632234§(param1,param2));
      }
      
      public function itemMounted(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §catch import§(param1));
      }
      
      public function itemBought(param1:String, param2:int, param3:int) : void
      {
         §521423140132314026123423632234§.send(new §5214239417239430123423632234§(param1,param2,param3));
      }
   }
}

