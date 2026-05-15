package §finally set implements§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class §5214236161236174123423632234§ extends ErrorEvent
   {
      
      public static const §implements package§:String = "loaderError";
      
      private var §5214234222234235123423632234§:String;
      
      public function §5214236161236174123423632234§(param1:String, param2:String, param3:String)
      {
         super(param1);
         this.text = param3;
         this.§5214234222234235123423632234§ = param2;
      }
      
      public function get §5214238852238865123423632234§() : String
      {
         return this.§5214234222234235123423632234§;
      }
      
      override public function toString() : String
      {
         return "";
      }
      
      override public function clone() : Event
      {
         return new §5214236161236174123423632234§(type,this.§5214234222234235123423632234§,text);
      }
   }
}

