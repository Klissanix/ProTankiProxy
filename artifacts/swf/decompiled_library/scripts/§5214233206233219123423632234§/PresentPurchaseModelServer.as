package §5214233206233219123423632234§
{
   import §521423114382311451123423632234§.§5214231387231400123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§while for try§;
   import scpacker.networking.Network;
   
   public class PresentPurchaseModelServer
   {
      
      private var §521423140132314026123423632234§:Network = Network(OSGi.getInstance().getService(Network));
      
      public function PresentPurchaseModelServer(param1:§while for try§)
      {
         super();
      }
      
      public function purchasePresent(param1:String, param2:String, param3:String, param4:int) : void
      {
         §521423140132314026123423632234§.send(new §5214231387231400123423632234§(param1,param2,param3,param4));
      }
   }
}

