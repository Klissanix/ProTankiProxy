package alternativa.tanks.service.itempropertyparams
{
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214233059233072123423632234§.ItemProperty;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.gui.ItemInfoPanelBitmaps;
   import flash.display.BitmapData;
   
   public class ItemPropertyParamsServiceImpl implements ItemPropertyParamsService
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      public static var §get set with§:IClientLog;
      
      private static const §52142345023463123423632234§:Number = 57.29577951308232;
      
      private var §while for super§:Object;
      
      public function ItemPropertyParamsServiceImpl()
      {
         super();
      }
      
      private function b3d2c497(param1:ItemGarageProperty, param2:int, param3:BitmapData, param4:String, param5:Vector.<ItemProperty>, param6:UpgradeAggregationMode, param7:Number = 1) : void
      {
         this.§while for super§[param1] = new ItemPropertyParams(param2,param3,param4,param5,param6,param7);
      }
      
      public function getParams(param1:ItemGarageProperty) : ItemPropertyParams
      {
         var _loc2_:Error = null;
         if(this.§while for super§ == null)
         {
            this.initPropertyParamsMap();
         }
         var _loc3_:ItemPropertyParams = this.§while for super§[param1];
         if(_loc3_ == null)
         {
            _loc2_ = new Error("Not found params for property " + param1);
            §get set with§.logError("error",_loc2_.message);
            throw _loc2_;
         }
         return _loc3_;
      }
      
      private function a385013(param1:ItemGarageProperty, param2:int, param3:BitmapData, param4:String, param5:ItemProperty, param6:Number = 1) : void
      {
         var _loc7_:Vector.<ItemProperty> = new Vector.<ItemProperty>();
         _loc7_.push(param5);
         this.b3d2c497(param1,param2,param3,§5214236363236376123423632234§.getText(param4),_loc7_,UpgradeAggregationMode.§null catch true§,param6);
      }
      
      public function initPropertyParamsMap() : void
      {
         this.§while for super§ = {};
         this.a385013(ItemGarageProperty.HULL_ARMOR,1,ItemInfoPanelBitmaps.armor,"GARAGE_PROTECTION_PROPERTY",ItemProperty.HULL_ARMOR);
         this.a385013(ItemGarageProperty.HULL_SPEED,2,ItemInfoPanelBitmaps.speed,"GARAGE_MAX_SPEED_PROPERTY",ItemProperty.HULL_SPEED);
         this.a385013(ItemGarageProperty.HULL_TURN_SPEED,3,ItemInfoPanelBitmaps.§extends var use§,"GARAGE_TURN_PROPERTY",ItemProperty.HULL_TURN_SPEED);
         this.a385013(ItemGarageProperty.HULL_MASS,4,ItemInfoPanelBitmaps.§in package get§,"GARAGE_WEIGHT_PROPERTY",ItemProperty.HULL_MASS);
         this.a385013(ItemGarageProperty.HULL_POWER,5,ItemInfoPanelBitmaps.§extends set include§,"GARAGE_POWER_PROPERTY",ItemProperty.HULL_ACCELERATION,100);
         this.d3051cbb(ItemGarageProperty.DAMAGE,3,ItemInfoPanelBitmaps.§5214235682235695123423632234§,"GARAGE_DAMAGE_PROPERTY",ItemProperty.DAMAGE_FROM,ItemProperty.DAMAGE_TO,1,UpgradeAggregationMode.§switch set return§);
         this.a385013(ItemGarageProperty.ISIS_HEALING_PER_SECOND,1,ItemInfoPanelBitmaps.§5214238986238999123423632234§,"GARAGE_HEAL_PROPERTY",ItemProperty.ISIS_HEALING_PER_PERIOD);
         this.a385013(ItemGarageProperty.ISIS_DAMAGE,2,ItemInfoPanelBitmaps.§521423119742311987123423632234§,"GARAGE_DAMAGE_PROPERTY",ItemProperty.DAMAGE_PER_PERIOD);
         this.a385013(ItemGarageProperty.ISIS_SELF_HEALING_PERCENT,3,ItemInfoPanelBitmaps.§static switch true§,"GARAGE_SELF_HEAL_PROPERTY",ItemProperty.ISIS_SELF_HEALING_PERCENT);
         this.a385013(ItemGarageProperty.ISIS_RADIUS,22,ItemInfoPanelBitmaps.§for package const§,"GARAGE_RANGE_PROPERTY",ItemProperty.ISIS_RADIUS);
         this.a385013(ItemGarageProperty.DAMAGE_PER_SECOND,3,ItemInfoPanelBitmaps.§5214235682235695123423632234§,"GARAGE_DAMAGE_PROPERTY",ItemProperty.DAMAGE_PER_PERIOD);
         this.d3051cbb(ItemGarageProperty.WEAPON_COOLDOWN_TIME,5,ItemInfoPanelBitmaps.§switch finally package§,"GARAGE_RELOAD_PROPERTY",ItemProperty.WEAPON_RELOAD_TIME,ItemProperty.WEAPON_CHARGING_TIME,0.001);
         this.a385013(ItemGarageProperty.WEAPON_CHARGE_RATE,4,ItemInfoPanelBitmaps.§switch finally package§,"GARAGE_RELOAD_PROPERTY",ItemProperty.WEAPON_RELOAD_TIME,1);
         this.a385013(ItemGarageProperty.AIMING_MODE_DAMAGE,1,ItemInfoPanelBitmaps.§try set default§,"GARAGE_SNIPING_DAMAGE_PROPERTY",ItemProperty.SHAFT_AIMING_MODE_MAX_DAMAGE);
         this.a385013(ItemGarageProperty.SHAFT_AIMED_SHOT_IMPACT,2,ItemInfoPanelBitmaps.§set catch while§,"GARAGE_SNIPING_IMPACT_PROPERTY",ItemProperty.SHAFT_AIMED_SHOT_IMPACT);
         this.d3051cbb(ItemGarageProperty.SHAFT_ARCADE_DAMAGE,3,ItemInfoPanelBitmaps.§5214235682235695123423632234§,"GARAGE_ARCADE_DAMAGE_PROPERTY",ItemProperty.DAMAGE_FROM,ItemProperty.DAMAGE_TO,1,UpgradeAggregationMode.§switch set return§);
         this.a385013(ItemGarageProperty.TURRET_TURN_SPEED,7,ItemInfoPanelBitmaps.§5214236981236994123423632234§,"GARAGE_ROTATION_PROPERTY",ItemProperty.TURRET_TURN_SPEED);
         this.a385013(ItemGarageProperty.SHOT_RANGE,9,ItemInfoPanelBitmaps.range,"GARAGE_RANGE_PROPERTY",ItemProperty.WEAPON_MIN_DAMAGE_RADIUS);
         this.a385013(ItemGarageProperty.WEAPON_MIN_DAMAGE_PERCENT,30,ItemInfoPanelBitmaps.§use catch in§,"GARAGE_DISTANT_DAMAGE_PROPERTY",ItemProperty.WEAPON_MIN_DAMAGE_PERCENT);
         this.a385013(ItemGarageProperty.SMOKY_RESISTANCE,13,ItemInfoPanelBitmaps.§52142379023803123423632234§,"GARAGE_SMOKY_PROTECTION_PROPERTY",ItemProperty.SMOKY_RESISTANCE);
         this.a385013(ItemGarageProperty.FIREBIRD_RESISTANCE,14,ItemInfoPanelBitmaps.§5214239190239203123423632234§,"GARAGE_FIREBIRD_PROTECTION_PROPERTY",ItemProperty.FIREBIRD_RESISTANCE);
         this.a385013(ItemGarageProperty.TWINS_RESISTANCE,15,ItemInfoPanelBitmaps.§class const throw§,"GARAGE_TWINS_PROTECTION_PROPERTY",ItemProperty.TWINS_RESISTANCE);
         this.a385013(ItemGarageProperty.RAILGUN_RESISTANCE,16,ItemInfoPanelBitmaps.§while use function§,"GARAGE_RAILGUN_PROTECTION_PROPERTY",ItemProperty.RAILGUN_RESISTANCE);
         this.a385013(ItemGarageProperty.ISIS_RESISTANCE,17,ItemInfoPanelBitmaps.§throw for for§,"GARAGE_ISIDA_PROTECTION_PROPERTY",ItemProperty.ISIS_RESISTANCE);
         this.a385013(ItemGarageProperty.THUNDER_RESISTANCE,18,ItemInfoPanelBitmaps.§extends const var§,"GARAGE_THUNDER_PROTECTION_PROPERTY",ItemProperty.THUNDER_RESISTANCE);
         this.a385013(ItemGarageProperty.FREEZE_RESISTANCE,19,ItemInfoPanelBitmaps.§true for const§,"GARAGE_FREEZE_PROTECTION_PROPERTY",ItemProperty.FREEZE_RESISTANCE);
         this.a385013(ItemGarageProperty.RICOCHET_RESISTANCE,20,ItemInfoPanelBitmaps.§521423137902313803123423632234§,"GARAGE_RICOCHET_PROTECTION_PROPERTY",ItemProperty.RICOCHET_RESISTANCE);
         this.a385013(ItemGarageProperty.SHAFT_RESISTANCE,21,ItemInfoPanelBitmaps.§catch finally finally§,"GARAGE_SHAFT_PROTECTION_PROPERTY",ItemProperty.SHAFT_RESISTANCE);
         this.a385013(ItemGarageProperty.MINE_RESISTANCE,22,ItemInfoPanelBitmaps.§default for do§,"GARAGE_MINE_PROTECTION_PROPERTY",ItemProperty.MINE_RESISTANCE);
         this.a385013(ItemGarageProperty.SHOTGUN_RESISTANCE,23,ItemInfoPanelBitmaps.§521423115942311607123423632234§,"GARAGE_SHOTGUN_PROTECTION_PROPERTY",ItemProperty.SHOTGUN_RESISTANCE);
         this.a385013(ItemGarageProperty.MACHINE_GUN_RESISTANCE,24,ItemInfoPanelBitmaps.§521423107002310713123423632234§,"GARAGE_MACHINE_GUN_PROTECTION_PROPERTY",ItemProperty.MACHINE_GUN_RESISTANCE);
         this.a385013(ItemGarageProperty.ALL_RESISTANCE,25,ItemInfoPanelBitmaps.armor,"GARAGE_ALL_PROTECTION_PROPERTY",ItemProperty.ALL_RESISTANCE);
         this.a385013(ItemGarageProperty.IMPACT_FORCE,4,ItemInfoPanelBitmaps.impactForce,"GARAGE_IMPACT_PROPERTY",ItemProperty.IMPACT_FORCE);
         this.a385013(ItemGarageProperty.WEAPON_WEAKENING_COEFF,28,ItemInfoPanelBitmaps.§else const§,"GARAGE_PENETRATING_PROPERTY",ItemProperty.WEAPON_WEAKENING_COEFF);
         this.a385013(ItemGarageProperty.CRITICAL_HIT_CHANCE,23,ItemInfoPanelBitmaps.percent,"GARAGE_CRITICAL_CHANCE_PROPERTY",ItemProperty.CRITICAL_HIT_CHANCE);
         this.a385013(ItemGarageProperty.CRITICAL_HIT_DAMAGE,24,ItemInfoPanelBitmaps.§return use class§,"GARAGE_CRITICAL_DAMAGE_PROPERTY",ItemProperty.CRITICAL_HIT_DAMAGE);
         this.a385013(ItemGarageProperty.FIRE_DAMAGE,25,ItemInfoPanelBitmaps.§52142357223585123423632234§,"GARAGE_BURN_PROPERTY",ItemProperty.FLAME_TEMPERATURE_LIMIT);
         this.a385013(ItemGarageProperty.WEAPON_RETICLE_SPEED,26,ItemInfoPanelBitmaps.§521423137902313803123423632234§,"GARAGE_RICOCHET_PROTECTION_PROPERTY",ItemProperty.WEAPON_RETICLE_SPEED);
      }
      
      private function d3051cbb(param1:ItemGarageProperty, param2:int, param3:BitmapData, param4:String, param5:ItemProperty, param6:ItemProperty, param7:Number = 1, param8:UpgradeAggregationMode = null) : void
      {
         if(param8 == null)
         {
            param8 = UpgradeAggregationMode.§null catch true§;
         }
         var _loc9_:Vector.<ItemProperty> = new Vector.<ItemProperty>();
         _loc9_.push(param5);
         _loc9_.push(param6);
         this.b3d2c497(param1,param2,param3,§5214236363236376123423632234§.getText(param4),_loc9_,param8,param7);
      }
   }
}

