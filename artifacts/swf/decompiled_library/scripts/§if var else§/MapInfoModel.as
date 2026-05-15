package §if var else§
{
   import §5214231605231618123423632234§.MapInfoModelBase;
   import §5214231605231618123423632234§.§catch const null§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214236611236624123423632234§.§521423139592313972123423632234§;
   import §const use implements§.§dynamic include§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class MapInfoModel extends MapInfoModelBase implements §catch const null§, §521423117842311797123423632234§, §5214235049235062123423632234§
   {
      
      private var §52142382623839123423632234§:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
      
      public function MapInfoModel()
      {
         super();
      }
      
      public function getName() : String
      {
         return getInitParam().mapName;
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function getSupportedBattleModes() : Vector.<§dynamic include§>
      {
         return getInitParam().supportedModes;
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:int = this.§52142382623839123423632234§.lastIndexOf(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         if(_loc1_ != -1)
         {
            this.§52142382623839123423632234§.removeAt(_loc1_);
         }
      }
      
      public function objectLoaded() : void
      {
         this.§52142382623839123423632234§[§52142382623839123423632234§.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
      }
      
      public function getMaxRank() : int
      {
         return getInitParam().§5214235931235944123423632234§.§5214232042232055123423632234§;
      }
      
      public function getMaxPeople() : int
      {
         return getInitParam().maxPeople;
      }
      
      public function getThemeName() : String
      {
         return getInitParam().theme.toString();
      }
      
      public function getMinRank() : int
      {
         return getInitParam().§5214235931235944123423632234§.§5214239002239015123423632234§;
      }
      
      public function getPreviewResource() : §include catch with§
      {
         return getInitParam().preview;
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function getTheme() : §521423139592313972123423632234§
      {
         return getInitParam().theme;
      }
      
      public function isEnabled() : Boolean
      {
         return getInitParam().enabled;
      }
      
      public function getMaps() : Vector.<§521423120252312038123423632234§>
      {
         return this.§52142382623839123423632234§;
      }
      
      public function getAdditionalCrystalsPercent() : int
      {
         return getInitParam().additionalCrystalsPercent;
      }
      
      public function getMapId() : String
      {
         return getInitParam().mapId;
      }
   }
}

