package projects.tanks.client.commons.models.layout
{
   import §521423110712311084123423632234§.§case switch in§;
   import §521423110712311084123423632234§.§for const§;
   import §521423110712311084123423632234§.§use for override§;
   import §521423110712311084123423632234§.§with use final§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class LobbyLayoutModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function LobbyLayoutModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function exitFromBattle(param1:LayoutState) : void
      {
         §521423140132314026123423632234§.send(new §use for override§(param1));
      }
      
      public function switchBattleSelect() : void
      {
         §521423140132314026123423632234§.send(new §for const§());
      }
      
      public function switchGarage() : void
      {
         §521423140132314026123423632234§.send(new §case switch in§());
      }
      
      public function switchPayment() : void
      {
         §521423140132314026123423632234§.send(new §with use final§());
      }
   }
}

