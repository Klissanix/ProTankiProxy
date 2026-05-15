package §5214235774235787123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   
   public class §try var in§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214234439234452123423632234§:BattleReadinessService;
      
      private var §set var if§:Boolean = true;
      
      public function §try var in§(param1:Boolean)
      {
         super();
         this.§set var if§ = param1;
      }
      
      public function §function for implements§(param1:§52142320823221123423632234§, param2:§52142320823221123423632234§) : void
      {
         var _loc4_:Vector3 = new Vector3(param1.x,param1.y,param1.§continue package false§);
         var _loc3_:Vector3 = new Vector3(-Math.sin(param2.§continue package false§),Math.cos(param2.§continue package false§),0);
         if(this.§set var if§)
         {
            this.§set var if§ = false;
            §52142380523818123423632234§.activateFollowCamera();
            §52142380523818123423632234§.lockFollowCamera();
            §52142380523818123423632234§.setFollowCameraTargetParams(_loc4_,_loc3_);
            §5214234439234452123423632234§.unlockUser();
         }
         else
         {
            §52142380523818123423632234§.activateFlyCamera(_loc4_,_loc3_);
         }
      }
   }
}

