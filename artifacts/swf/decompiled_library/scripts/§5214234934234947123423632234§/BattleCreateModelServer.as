package §5214234934234947123423632234§
{
   import §5214238160238173123423632234§.§521423140192314032123423632234§;
   import §5214238160238173123423632234§.§5214234580234593123423632234§;
   import alternativa.osgi.OSGi;
   import §const use implements§.§default const while§;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class BattleCreateModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function BattleCreateModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function createBattle(param1:§default const while§) : void
      {
         §521423140132314026123423632234§.send(new §5214234580234593123423632234§(param1));
      }
      
      public function checkBattleNameForForbiddenWords(param1:String) : void
      {
         §521423140132314026123423632234§.send(new §521423140192314032123423632234§(param1));
      }
   }
}

