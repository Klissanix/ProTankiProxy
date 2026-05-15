package alternativa.tanks.service.settings
{
   import flash.events.Event;
   
   public class SettingsServiceEvent extends Event
   {
      
      public static const SETTINGS_CHANGED:String = "SettingsServiceEvent.SETTINGS_CHANGED";
      
      private var §each for use§:SettingEnum;
      
      public function SettingsServiceEvent(param1:String, param2:SettingEnum)
      {
         super(param1,true,false);
         this.§each for use§ = param2;
      }
      
      public function getSetting() : SettingEnum
      {
         return this.§each for use§;
      }
   }
}

