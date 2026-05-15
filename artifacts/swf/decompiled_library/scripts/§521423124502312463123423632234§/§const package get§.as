package §521423124502312463123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.network.INetworkService;
   import scpacker.networking.Network;
   
   public class §const package get§
   {
      
      public static var §5214234412234425123423632234§:INetworkService;
      
      private var §5214238296238309123423632234§:Network;
      
      public function §const package get§()
      {
         super();
      }
      
      public function §521423117492311762123423632234§() : void
      {
         this.§5214238296238309123423632234§ = Network(OSGi.getInstance().getService(Network));
         §5214234412234425123423632234§ = OSGi.getInstance().getService(INetworkService) as INetworkService;
         var _loc1_:Vector.<String> = §5214234412234425123423632234§.controlServerAddress;
         var _loc2_:Vector.<int> = §5214234412234425123423632234§.controlServerPorts;
         OSGi.§try set return§.log("net","Connecting to server");
         if(_loc1_.length > 1)
         {
            this.§5214238296238309123423632234§.setExtraHost(_loc1_[1],_loc2_[1]);
         }
         this.§5214238296238309123423632234§.connect(_loc1_[0],_loc2_[0]);
         OSGi.§try set return§.log("net","Connected to server");
      }
   }
}

