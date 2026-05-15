package alternativa.tanks.models.statistics
{
   import alternativa.osgi.service.display.Display;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.ControlMiniHelpCloseEvent;
   import alternativa.tanks.battle.events.TargetingModeChangedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingEnum;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import flash.events.Event;
   import flash.net.SharedObject;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §return catch implements§.ControlsMiniHelp;
   
   public class ControlsMiniHelpSupport implements §521423117662311779123423632234§, §if use default§
   {
      
      public static var §if catch include§:IStorageService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var display:IDisplay;
      
      public static var §case const default§:BattleGUIService;
      
      public static var §521423998231011123423632234§:ISettingsService;
      
      private static const §5214237130237143123423632234§:String = "disableControlsMiniHelp";
      
      private var §5214235458235471123423632234§:ControlsMiniHelp;
      
      public function ControlsMiniHelpSupport()
      {
         super();
         var _loc1_:SharedObject = §if catch include§.getStorage();
         if(!_loc1_.data["disableControlsMiniHelp"])
         {
            if(§52142329523308123423632234§.rank == 1)
            {
               _loc1_.data["disableControlsMiniHelp"] = 1;
               this.a55d1362();
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:TargetingModeChangedEvent = null;
         if(param1 is ControlMiniHelpCloseEvent)
         {
            this.close();
         }
         else if(param1 is TargetingModeChangedEvent)
         {
            _loc2_ = param1 as TargetingModeChangedEvent;
            this.§5214235458235471123423632234§.setTargetingMode(_loc2_.targetingMode);
         }
      }
      
      private function a55d1362() : void
      {
         this.§5214235458235471123423632234§ = new ControlsMiniHelp();
         §5214235458235471123423632234§.scaleX = §5214235458235471123423632234§.scaleY = 1 / Display.§521423132512313264123423632234§;
         §case const default§.getGuiContainer().addChild(this.§5214235458235471123423632234§);
         this.setPosition();
         §with set include§.addBattleEventListener(ControlMiniHelpCloseEvent,this);
         §with set include§.addBattleEventListener(TargetingModeChangedEvent,this);
         display.stage.addEventListener("resize",this.onResize);
         §521423998231011123423632234§.addEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.c142f3cb);
      }
      
      private function setPosition() : void
      {
         this.§5214235458235471123423632234§.x = display.stage.stageWidth / Display.§521423132512313264123423632234§ - this.§5214235458235471123423632234§.width >> 1;
         this.§5214235458235471123423632234§.y = display.stage.stageHeight / Display.§521423132512313264123423632234§ - this.§5214235458235471123423632234§.height - 10;
      }
      
      public function close() : void
      {
         if(this.§5214235458235471123423632234§ != null)
         {
            display.stage.removeEventListener("resize",this.onResize);
            §with set include§.removeBattleEventListener(ControlMiniHelpCloseEvent,this);
            §with set include§.removeBattleEventListener(TargetingModeChangedEvent,this);
            §521423998231011123423632234§.removeEventListener("SettingsServiceEvent.SETTINGS_CHANGED",this.c142f3cb);
            this.§5214235458235471123423632234§.parent.removeChild(this.§5214235458235471123423632234§);
            this.§5214235458235471123423632234§ = null;
         }
      }
      
      private function c142f3cb(param1:SettingsServiceEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.getSetting() == SettingEnum.§521423126132312626123423632234§)
         {
            _loc2_ = §521423998231011123423632234§.uiScale2x ? 2 : 1;
            §5214235458235471123423632234§.scaleX = §5214235458235471123423632234§.scaleY = 1 / _loc2_;
         }
      }
      
      private function onResize(param1:Event) : void
      {
         this.setPosition();
      }
   }
}

