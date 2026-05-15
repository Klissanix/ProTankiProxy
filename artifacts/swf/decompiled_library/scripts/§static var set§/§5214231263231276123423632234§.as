package §static var set§
{
   import §5214232446232459123423632234§.§5214234677234690123423632234§;
   import alternativa.tanks.service.settings.ISettingsService;
   import flash.events.Event;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §5214231263231276123423632234§ implements §521423117662311779123423632234§
   {
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      private var §5214238834238847123423632234§:§5214234677234690123423632234§;
      
      public function §5214231263231276123423632234§(param1:§5214234677234690123423632234§)
      {
         super();
         this.§5214238834238847123423632234§ = param1;
         §5214232551232564123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§5214238179238192123423632234§);
      }
      
      private function §5214238179238192123423632234§(param1:Event) : void
      {
         this.§5214238834238847123423632234§.§break set override§(§5214232551232564123423632234§.inverseBackDriving);
      }
      
      public function close() : void
      {
         this.§5214238834238847123423632234§ = null;
         §5214232551232564123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.§5214238179238192123423632234§);
      }
   }
}

