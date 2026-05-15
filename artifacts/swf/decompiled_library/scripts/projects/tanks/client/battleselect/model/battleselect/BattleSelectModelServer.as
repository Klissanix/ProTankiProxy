package projects.tanks.client.battleselect.model.battleselect
{
   import alternativa.osgi.OSGi;
   import §false catch native§.§5214237104237117123423632234§;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class BattleSelectModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function BattleSelectModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function select(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §5214237104237117123423632234§(param1));
      }
   }
}

