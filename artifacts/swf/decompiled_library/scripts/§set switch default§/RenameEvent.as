package §set switch default§
{
   import flash.events.Event;
   
   public class RenameEvent extends Event
   {
      
      public static const §5214235420235433123423632234§:String = "REANAME_EVENT";
      
      private var §if use catch§:String;
      
      public function RenameEvent(param1:String)
      {
         super("REANAME_EVENT");
         this.§if use catch§ = param1;
      }
      
      public function getNickname() : String
      {
         return this.§if use catch§;
      }
   }
}

