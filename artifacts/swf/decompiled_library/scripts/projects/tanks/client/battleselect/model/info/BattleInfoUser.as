package projects.tanks.client.battleselect.model.info
{
   public class BattleInfoUser
   {
      
      public var kills:int;
      
      public var score:int;
      
      public var suspicious:Boolean;
      
      public var user:String;
      
      public function BattleInfoUser(param1:int = 0, param2:int = 0, param3:Boolean = false, param4:String = null)
      {
         super();
         this.kills = param1;
         this.score = param2;
         this.suspicious = param3;
         this.user = param4;
      }
   }
}

