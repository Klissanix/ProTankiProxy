package §5214234069234082123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.loader.§5214232604232617123423632234§;
   import alternativa.tanks.loader.ILoaderWindowService;
   import flash.utils.setTimeout;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.client.commons.models.tips.§5214238948238961123423632234§;
   import projects.tanks.client.commons.models.tips.TipsModelBase;
   import scpacker.networking.Network;
   
   public class TipsModel extends TipsModelBase implements §5214238948238961123423632234§, §do set function§, §throw catch var§, §5214232604232617123423632234§
   {
      
      public static var loader:ILoaderWindowService;
      
      private var §5214237575237588123423632234§:int = 0;
      
      public function TipsModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         OSGi.getInstance().registerService(§5214232604232617123423632234§,this);
      }
      
      public function objectUnloaded() : void
      {
         OSGi.getInstance().unregisterService(§5214232604232617123423632234§);
      }
      
      public function getTip() : void
      {
         if(§5214237575237588123423632234§ == 1)
         {
            setTimeout(f4f67aab,800);
         }
         server.nextTip();
         §5214237575237588123423632234§ = §5214237575237588123423632234§ + 1;
      }
      
      private function f4f67aab() : void
      {
         var _loc1_:Network = null;
         if(!loader.anyTipLoaded())
         {
            _loc1_ = Network(OSGi.getInstance().getService(Network));
            _loc1_.reconnectToExtraHost();
         }
      }
   }
}

