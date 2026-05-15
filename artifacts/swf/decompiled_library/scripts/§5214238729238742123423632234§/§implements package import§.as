package §5214238729238742123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.loader.ILoaderWindowService;
   import §break use catch§.§extends package import§;
   import §default catch do§.§521423139952314008123423632234§;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import §include use native§.LatencyModel;
   import §override catch default§.Long;
   import scpacker.networking.Network;
   
   public class §implements package import§ extends §521423139952314008123423632234§
   {
      
      private var §521423103482310361123423632234§:uint;
      
      private var §use const include§:uint;
      
      private var §5214232675232688123423632234§:uint;
      
      private var §52142386423877123423632234§:LatencyModel;
      
      public function §implements package import§()
      {
         super();
         this.§throw var override§ = 45;
         this.§52142386423877123423632234§ = LatencyModel(§native switch include§.getModel(Long.getLong(-1906836320,787793473)));
      }
      
      private function §switch const true§() : void
      {
         var _loc2_:Network = null;
         var _loc1_:ILoaderWindowService = ILoaderWindowService(OSGi.getInstance().getService(ILoaderWindowService));
         if(!_loc1_.isInProgress())
         {
            clearInterval(§5214232675232688123423632234§);
            return;
         }
         if(§use const include§ == §521423103482310361123423632234§)
         {
            _loc2_ = Network(OSGi.getInstance().getService(Network));
            _loc2_.reconnectToExtraHost();
            clearInterval(§5214232675232688123423632234§);
         }
         §use const include§ = §521423103482310361123423632234§;
      }
      
      private function §5214231333231346123423632234§() : void
      {
         this.§52142386423877123423632234§.ping();
         if(§521423103482310361123423632234§ == 0)
         {
            §5214232675232688123423632234§ = setInterval(§switch const true§,5000);
         }
         §521423103482310361123423632234§ = §521423103482310361123423632234§ + 1;
      }
      
      override public function §static package return§(param1:§extends package import§) : void
      {
         switch(param1.§else try§() - -555602629)
         {
            case 0:
               this.§5214231333231346123423632234§();
         }
      }
   }
}

