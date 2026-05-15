package §5214232638232651123423632234§
{
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   
   public class TeamBattleInfoCC
   {
      
      public var autoBalance:Boolean;
      
      public var friendlyFire:Boolean;
      
      public var scoreBlue:int;
      
      public var scoreRed:int;
      
      public var usersBlue:Vector.<BattleInfoUser>;
      
      public var usersRed:Vector.<BattleInfoUser>;
      
      public function TeamBattleInfoCC(param1:Boolean = false, param2:Boolean = false, param3:int = 0, param4:int = 0, param5:Vector.<BattleInfoUser> = null, param6:Vector.<BattleInfoUser> = null)
      {
         super();
         this.autoBalance = param1;
         this.friendlyFire = param2;
         this.scoreBlue = param3;
         this.scoreRed = param4;
         this.usersBlue = param5;
         this.usersRed = param6;
      }
   }
}

