package §52142362623639123423632234§
{
   import §5214236034236047123423632234§.§5214233668233681123423632234§;
   import §5214236034236047123423632234§.§const case§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.gui.BattlefieldGUI;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §set package in§.ClientObject;
   
   public class BattleGoldBonusesModel extends §5214233668233681123423632234§ implements §const case§, §do set function§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §while for package§:BattleUserInfoService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public function BattleGoldBonusesModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
      }
      
      private function c49f74e2(param1:ClientObject, param2:String) : void
      {
         var _loc5_:§52142376523778123423632234§ = null;
         var _loc6_:§521423120252312038123423632234§ = null;
         var _loc4_:BattlefieldGUI = null;
         var _loc3_:String = §while for package§.getUserName(param1.id);
         if(_loc3_ != null)
         {
            _loc4_ = BattlefieldGUI(OSGi.getInstance().getService(BattlefieldGUI));
            _loc4_.showBattleMessage(16750081,_loc3_ + " " + §5214236363236376123423632234§.getText(param2));
            _loc4_.showUserBattleLogMessage(param1.id,§5214236363236376123423632234§.getText(param2),null);
         }
      }
      
      public function goldTaken(param1:ClientObject) : void
      {
         if(param1 != null)
         {
            this.c49f74e2(param1,"BATTLE_GOLD_TAKEN");
         }
      }
   }
}

