package §5214233059233072123423632234§
{
   public class ItemGarageProperty
   {
      
      public static const HULL_ARMOR:ItemGarageProperty = new ItemGarageProperty(0,"HULL_ARMOR");
      
      public static const HULL_SPEED:ItemGarageProperty = new ItemGarageProperty(1,"HULL_SPEED");
      
      public static const HULL_TURN_SPEED:ItemGarageProperty = new ItemGarageProperty(2,"HULL_TURN_SPEED");
      
      public static const HULL_POWER:ItemGarageProperty = new ItemGarageProperty(3,"HULL_POWER");
      
      public static const HULL_MASS:ItemGarageProperty = new ItemGarageProperty(4,"HULL_MASS");
      
      public static const ALL_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(5,"ALL_RESISTANCE");
      
      public static const FIREBIRD_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(6,"FIREBIRD_RESISTANCE");
      
      public static const SMOKY_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(7,"SMOKY_RESISTANCE");
      
      public static const TWINS_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(8,"TWINS_RESISTANCE");
      
      public static const RAILGUN_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(9,"RAILGUN_RESISTANCE");
      
      public static const ISIS_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(10,"ISIS_RESISTANCE");
      
      public static const MINE_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(11,"MINE_RESISTANCE");
      
      public static const THUNDER_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(12,"THUNDER_RESISTANCE");
      
      public static const FREEZE_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(13,"FREEZE_RESISTANCE");
      
      public static const RICOCHET_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(14,"RICOCHET_RESISTANCE");
      
      public static const SHAFT_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(15,"SHAFT_RESISTANCE");
      
      public static const SHOTGUN_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(16,"SHOTGUN_RESISTANCE");
      
      public static const MACHINE_GUN_RESISTANCE:ItemGarageProperty = new ItemGarageProperty(17,"MACHINE_GUN_RESISTANCE");
      
      public static const DAMAGE:ItemGarageProperty = new ItemGarageProperty(18,"DAMAGE");
      
      public static const DAMAGE_PER_SECOND:ItemGarageProperty = new ItemGarageProperty(19,"DAMAGE_PER_SECOND");
      
      public static const WEAPON_COOLDOWN_TIME:ItemGarageProperty = new ItemGarageProperty(20,"WEAPON_COOLDOWN_TIME");
      
      public static const AIMING_MODE_COOLDOWN_TIME:ItemGarageProperty = new ItemGarageProperty(21,"AIMING_MODE_COOLDOWN_TIME");
      
      public static const CRITICAL_HIT_CHANCE:ItemGarageProperty = new ItemGarageProperty(22,"CRITICAL_HIT_CHANCE");
      
      public static const CRITICAL_HIT_DAMAGE:ItemGarageProperty = new ItemGarageProperty(23,"CRITICAL_HIT_DAMAGE");
      
      public static const SHOT_RANGE:ItemGarageProperty = new ItemGarageProperty(24,"SHOT_RANGE");
      
      public static const TURRET_TURN_SPEED:ItemGarageProperty = new ItemGarageProperty(25,"TURRET_TURN_SPEED");
      
      public static const AIMING_ERROR:ItemGarageProperty = new ItemGarageProperty(26,"AIMING_ERROR");
      
      public static const SHOT_AREA:ItemGarageProperty = new ItemGarageProperty(27,"SHOT_AREA");
      
      public static const CONE_ANGLE:ItemGarageProperty = new ItemGarageProperty(28,"CONE_ANGLE");
      
      public static const CHARGING_TIME:ItemGarageProperty = new ItemGarageProperty(29,"CHARGING_TIME");
      
      public static const FIRE_DAMAGE:ItemGarageProperty = new ItemGarageProperty(30,"FIRE_DAMAGE");
      
      public static const WEAPON_WEAKENING_COEFF:ItemGarageProperty = new ItemGarageProperty(31,"WEAPON_WEAKENING_COEFF");
      
      public static const ISIS_RADIUS:ItemGarageProperty = new ItemGarageProperty(32,"ISIS_RADIUS");
      
      public static const ISIS_DAMAGE:ItemGarageProperty = new ItemGarageProperty(33,"ISIS_DAMAGE");
      
      public static const ISIS_HEALING_PER_SECOND:ItemGarageProperty = new ItemGarageProperty(34,"ISIS_HEALING_PER_SECOND");
      
      public static const ISIS_SELF_HEALING_PERCENT:ItemGarageProperty = new ItemGarageProperty(35,"ISIS_SELF_HEALING_PERCENT");
      
      public static const AIMING_MODE_DAMAGE:ItemGarageProperty = new ItemGarageProperty(36,"AIMING_MODE_DAMAGE");
      
      public static const AIMING_WEAPON_DISCHARGE_RATE:ItemGarageProperty = new ItemGarageProperty(37,"AIMING_WEAPON_DISCHARGE_RATE");
      
      public static const SHAFT_AIMED_SHOT_IMPACT:ItemGarageProperty = new ItemGarageProperty(38,"SHAFT_AIMED_SHOT_IMPACT");
      
      public static const SHAFT_TARGETING_SPEED:ItemGarageProperty = new ItemGarageProperty(39,"SHAFT_TARGETING_SPEED");
      
      public static const SHAFT_ARCADE_DAMAGE:ItemGarageProperty = new ItemGarageProperty(40,"SHAFT_ARCADE_DAMAGE");
      
      public static const IMPACT_FORCE:ItemGarageProperty = new ItemGarageProperty(41,"IMPACT_FORCE");
      
      public static const WEAPON_KICKBACK:ItemGarageProperty = new ItemGarageProperty(42,"WEAPON_KICKBACK");
      
      public static const WEAPON_RETICLE_SPEED:ItemGarageProperty = new ItemGarageProperty(43,"WEAPON_RETICLE_SPEED");
      
      public static const WEAPON_CHARGE_RATE:ItemGarageProperty = new ItemGarageProperty(44,"WEAPON_CHARGE_RATE");
      
      public static const WEAPON_MIN_DAMAGE_PERCENT:ItemGarageProperty = new ItemGarageProperty(45,"WEAPON_MIN_DAMAGE_PERCENT");
      
      public static const THUNDER_MIN_SPLASH_DAMAGE_PERCENT:ItemGarageProperty = new ItemGarageProperty(46,"THUNDER_MIN_SPLASH_DAMAGE_PERCENT");
      
      private var §521423125632312576123423632234§:int;
      
      private var §5214235906235919123423632234§:String;
      
      public function ItemGarageProperty(param1:int, param2:String)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
         this.§5214235906235919123423632234§ = param2;
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
      
      public function toString() : String
      {
         return "ItemGarageProperty [" + this.§5214235906235919123423632234§ + "]";
      }
      
      public function get name() : String
      {
         return this.§5214235906235919123423632234§;
      }
   }
}

