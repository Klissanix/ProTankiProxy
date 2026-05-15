package §use catch super§
{
   import flash.events.Event;
   
   public class SwitchLayoutEvent extends Event
   {
      
      public static const SWITCH_STARTED:String = "SWITCH_STARTED";
      
      public static const SWITCH_FROM_BATTLE:String = "SWITCH_FROM_BATTLE";
      
      public function SwitchLayoutEvent(param1:String)
      {
         super(param1);
      }
   }
}

