package §5214232683232696123423632234§
{
   import flash.events.Event;
   
   public class §5214233756233769123423632234§ extends Event
   {
      
      public static const §5214233412233425123423632234§:String = "sendMessage";
      
      private var §get set while§:String;
      
      private var §super package get§:Boolean;
      
      public function §5214233756233769123423632234§(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         this.§get set while§ = param2;
         this.§super package get§ = param3;
      }
      
      override public function toString() : String
      {
         return "";
      }
      
      override public function clone() : Event
      {
         return new §5214233756233769123423632234§(type,this.§get set while§,this.§super package get§);
      }
      
      public function get message() : String
      {
         return this.§get set while§;
      }
      
      public function get §52142396323976123423632234§() : Boolean
      {
         return this.§super package get§;
      }
   }
}

