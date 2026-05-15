package alternativa.tanks.model
{
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingEnum;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   
   public class ChatSettingsTracker
   {
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      private var chat:§5214234569234582123423632234§;
      
      public function ChatSettingsTracker(param1:§5214234569234582123423632234§)
      {
         super();
         this.chat = param1;
         param1.setShowChat(§521423998231011123423632234§.showChat);
         §521423998231011123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.c142f3cb);
      }
      
      public function close() : void
      {
         this.chat = null;
         §521423998231011123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.c142f3cb);
      }
      
      private function c142f3cb(param1:SettingsServiceEvent) : void
      {
         if(param1.getSetting() == SettingEnum.§5214238844238857123423632234§)
         {
            this.chat.setShowChat(§521423998231011123423632234§.showChat);
         }
      }
   }
}

