package §5214235774235787123423632234§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.§5214232465232478123423632234§;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import §finally catch with§.§throw for continue§;
   
   public class §5214238104238117123423632234§ extends BattleRunnerProvider implements §5214232465232478123423632234§
   {
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private static const §521423134742313487123423632234§:Number = 0.5235987755982988;
      
      private static const §5214239497239510123423632234§:§native switch false§ = new §5214235507235520123423632234§(2000);
      
      private var §521423122212312234123423632234§:§5214239411239424123423632234§;
      
      private var §5214232928232941123423632234§:int;
      
      private var §521423106582310671123423632234§:Number;
      
      public function §5214238104238117123423632234§(param1:§5214239411239424123423632234§)
      {
         super();
         this.§521423122212312234123423632234§ = param1;
      }
      
      public function runAfterPhysicsUpdate(param1:Number) : void
      {
         if(this.§else use else§())
         {
            this.§break set package§(false);
         }
         else if(this.§521423132382313251123423632234§())
         {
            this.§break set package§(true);
         }
      }
      
      private function §else switch super§() : Boolean
      {
         return getBattleRunner().getPhysicsTime() - this.§5214232928232941123423632234§ > §5214239497239510123423632234§.§521423128592312872123423632234§();
      }
      
      private function §super for var§() : Boolean
      {
         var _loc1_:Number = Math.abs(§throw for continue§.§package use extends§(this.§521423122212312234123423632234§.§521423137502313763123423632234§() - this.§521423106582310671123423632234§));
         return _loc1_ > 0.5235987755982988;
      }
      
      private function §break set package§(param1:Boolean) : void
      {
         this.reset();
         var _loc2_:§super var dynamic§ = §super var dynamic§(§5214237923237936123423632234§);
         _loc2_.§521423126672312680123423632234§(param1);
      }
      
      public function reset() : void
      {
         this.§5214232928232941123423632234§ = getBattleRunner().getPhysicsTime();
         this.§521423106582310671123423632234§ = this.§521423122212312234123423632234§.§521423137502313763123423632234§();
      }
      
      private function §else use else§() : Boolean
      {
         return this.§else switch super§();
      }
      
      private function §521423132382313251123423632234§() : Boolean
      {
         return this.§super for var§();
      }
   }
}

