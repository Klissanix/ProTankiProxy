package §521423121922312205123423632234§
{
   public class ClientOnlineNotifierData
   {
      
      private var §5214234339234352123423632234§:String;
      
      private var §return switch include§:Boolean;
      
      private var §5214236573236586123423632234§:int;
      
      public function ClientOnlineNotifierData(param1:String, param2:Boolean, param3:int)
      {
         super();
         this.§5214234339234352123423632234§ = param1;
         this.§return switch include§ = param2;
         this.§5214236573236586123423632234§ = param3;
      }
      
      public function get online() : Boolean
      {
         return this.§return switch include§;
      }
      
      public function get serverNumber() : int
      {
         return this.§5214236573236586123423632234§;
      }
      
      public function get userId() : String
      {
         return this.§5214234339234352123423632234§;
      }
   }
}

