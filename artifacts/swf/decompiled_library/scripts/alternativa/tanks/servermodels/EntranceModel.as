package alternativa.tanks.servermodels
{
   import §521423126022312615123423632234§.§5214232674232687123423632234§;
   import §521423126022312615123423632234§.EntranceModelBase;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.service.IEntranceClientFacade;
   import alternativa.tanks.service.IEntranceServerFacade;
   import flash.events.Event;
   import §get package override§.§521423138332313846123423632234§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§import use const§;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class EntranceModel extends EntranceModelBase implements §5214232674232687123423632234§, §do set function§, §5214234168234181123423632234§, §throw catch var§, §import use const§
   {
      
      public static var §dynamic use case§:IEntranceServerFacade;
      
      public static var §5214239171239184123423632234§:IEntranceClientFacade;
      
      public static var display:IDisplay;
      
      public function EntranceModel()
      {
         super();
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:§521423138332313846123423632234§ = §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136)));
         _loc1_.unbindFacade();
      }
      
      public function objectLoaded() : void
      {
         display.stage.dispatchEvent(new Event("EntranceModel.objectLoaded",true));
      }
      
      public function objectLoadedPost() : void
      {
         §5214239171239184123423632234§.entranceObject = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         var _loc1_:§521423138332313846123423632234§ = §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136)));
         _loc1_.bindFacade(§5214239171239184123423632234§);
      }
      
      public function objectUnloadedPost() : void
      {
         §5214239171239184123423632234§.hideView();
      }
   }
}

