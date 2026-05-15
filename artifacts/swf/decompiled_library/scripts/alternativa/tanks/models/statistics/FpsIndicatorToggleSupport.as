package alternativa.tanks.models.statistics
{
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingEnum;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.utils.removeDisplayObject;
   import filters.Filters;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §super package else§.§52142354123554123423632234§;
   
   public class FpsIndicatorToggleSupport implements §521423117662311779123423632234§
   {
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      public static var §case const default§:BattleGUIService;
      
      private var §5214238501238514123423632234§:§52142354123554123423632234§;
      
      public function FpsIndicatorToggleSupport(param1:§52142354123554123423632234§)
      {
         super();
         this.§5214238501238514123423632234§ = param1;
         §521423998231011123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.c142f3cb,false,1);
      }
      
      public function close() : void
      {
         this.§5214238501238514123423632234§ = null;
         §521423998231011123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.c142f3cb);
      }
      
      private function c142f3cb(param1:SettingsServiceEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.getSetting() == SettingEnum.§521423126132312626123423632234§)
         {
            _loc2_ = §521423998231011123423632234§.uiScale2x ? 2 : 1;
            Filters.§5214238170238183123423632234§.blurX = Filters.§5214238170238183123423632234§.blurY = 4 * _loc2_;
            §5214238501238514123423632234§.filters = Filters.§include set each§;
         }
         else if(param1.getSetting() == SettingEnum.§5214235542235555123423632234§)
         {
            this.§5214238501238514123423632234§.§import try§(§521423998231011123423632234§.refreshRate);
         }
         else if(param1.getSetting() != SettingEnum.§var use function§)
         {
            return;
         }
         if(§521423998231011123423632234§.showFPS)
         {
            this.§5214238501238514123423632234§.§import try§(§521423998231011123423632234§.refreshRate);
            §case const default§.getGuiContainer().addChild(this.§5214238501238514123423632234§);
         }
         else
         {
            removeDisplayObject(this.§5214238501238514123423632234§);
         }
      }
   }
}

