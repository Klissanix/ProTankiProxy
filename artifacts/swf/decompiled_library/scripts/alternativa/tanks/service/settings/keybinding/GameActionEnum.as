package alternativa.tanks.service.settings.keybinding
{
   import alternativa.tanks.AbstractEnum;
   
   public class GameActionEnum extends AbstractEnum
   {
      
      private static var §get for catch§:Vector.<GameActionEnum>;
      
      public static const ROTATE_TURRET_LEFT:GameActionEnum = new GameActionEnum(0,"ROTATE_TURRET_LEFT");
      
      public static const ROTATE_TURRET_RIGHT:GameActionEnum = new GameActionEnum(1,"ROTATE_TURRET_RIGHT");
      
      public static const CENTER_TURRET:GameActionEnum = new GameActionEnum(2,"CENTER_TURRET");
      
      public static const CHASSIS_LEFT_MOVEMENT:GameActionEnum = new GameActionEnum(3,"CHASSIS_LEFT_MOVEMENT");
      
      public static const CHASSIS_RIGHT_MOVEMENT:GameActionEnum = new GameActionEnum(4,"CHASSIS_RIGHT_MOVEMENT");
      
      public static const CHASSIS_FORWARD_MOVEMENT:GameActionEnum = new GameActionEnum(5,"CHASSIS_FORWARD_MOVEMENT");
      
      public static const CHASSIS_BACKWARD_MOVEMENT:GameActionEnum = new GameActionEnum(6,"CHASSIS_BACKWARD_MOVEMENT");
      
      public static const FOLLOW_CAMERA_UP:GameActionEnum = new GameActionEnum(7,"FOLLOW_CAMERA_UP");
      
      public static const FOLLOW_CAMERA_DOWN:GameActionEnum = new GameActionEnum(8,"FOLLOW_CAMERA_DOWN");
      
      public static const DROP_FLAG:GameActionEnum = new GameActionEnum(9,"DROP_FLAG");
      
      public static const BATTLE_PAUSE:GameActionEnum = new GameActionEnum(10,"BATTLE_PAUSE");
      
      public static const BATTLE_VIEW_INCREASE:GameActionEnum = new GameActionEnum(11,"BATTLE_VIEW_INCREASE");
      
      public static const BATTLE_VIEW_DECREASE:GameActionEnum = new GameActionEnum(12,"BATTLE_VIEW_DECREASE");
      
      public static const FULL_SCREEN:GameActionEnum = new GameActionEnum(13,"FULL_SCREEN");
      
      public static const SUICIDE:GameActionEnum = new GameActionEnum(14,"SUICIDE");
      
      public static const SHOW_TANK_PARAMETERS:GameActionEnum = new GameActionEnum(15,"SHOW_TANK_PARAMETERS");
      
      public static const USE_FIRS_AID:GameActionEnum = new GameActionEnum(16,"USE_FIRS_AID");
      
      public static const USE_DOUBLE_ARMOR:GameActionEnum = new GameActionEnum(17,"USE_DOUBLE_ARMOR");
      
      public static const USE_DOUBLE_DAMAGE:GameActionEnum = new GameActionEnum(18,"USE_DOUBLE_DAMAGE");
      
      public static const USE_NITRO:GameActionEnum = new GameActionEnum(19,"USE_NITRO");
      
      public static const USE_MINE:GameActionEnum = new GameActionEnum(20,"USE_MINE");
      
      public static const SHOT:GameActionEnum = new GameActionEnum(22,"SHOT");
      
      public static const OPEN_GARAGE:GameActionEnum = new GameActionEnum(24,"OPEN_GARAGE");
      
      public function GameActionEnum(param1:int, param2:String)
      {
         super(param1,param2);
      }
      
      public static function get values() : Vector.<GameActionEnum>
      {
         if(!§get for catch§)
         {
            §get for catch§ = new <GameActionEnum>[ROTATE_TURRET_LEFT,ROTATE_TURRET_RIGHT,CENTER_TURRET,CHASSIS_LEFT_MOVEMENT,CHASSIS_RIGHT_MOVEMENT,CHASSIS_FORWARD_MOVEMENT,CHASSIS_BACKWARD_MOVEMENT,FOLLOW_CAMERA_UP,FOLLOW_CAMERA_DOWN,DROP_FLAG,BATTLE_PAUSE,BATTLE_VIEW_INCREASE,BATTLE_VIEW_DECREASE,FULL_SCREEN,SUICIDE,SHOW_TANK_PARAMETERS,USE_FIRS_AID,USE_DOUBLE_ARMOR,USE_DOUBLE_DAMAGE,USE_NITRO,USE_MINE,SHOT,OPEN_GARAGE];
         }
         return §get for catch§;
      }
   }
}

