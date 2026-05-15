package §function catch if§
{
   import flash.events.Event;
   
   public class CheckBattleNameEvent extends Event
   {
      
      public static const CHECK_NAME:String = "CheckBattleNameEvent.CHECK_NAME";
      
      public var §extends switch final§:String;
      
      public function CheckBattleNameEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§extends switch final§ = param2;
      }
   }
}

