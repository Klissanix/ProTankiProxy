package §5214234825234838123423632234§
{
   public class ConnectionCloseStatus
   {
      
      public static const CLOSED_BY_SERVER:ConnectionCloseStatus = new ConnectionCloseStatus("CLOSED_BY_SERVER","Connection closed by server");
      
      public static const CONNECTION_ERROR:ConnectionCloseStatus = new ConnectionCloseStatus("CONNECTION_ERROR","Connection error");
      
      public static const DATA_PROCESSING_ERROR:ConnectionCloseStatus = new ConnectionCloseStatus("DATA_PROCESSING_ERROR","Data processing error");
      
      public static const SPACE_CLOSED:ConnectionCloseStatus = new ConnectionCloseStatus("SPACE_CLOSED","Space closed");
      
      public static const CLOSED_BY_CLIENT:ConnectionCloseStatus = new ConnectionCloseStatus("CLOSED_BY_CLIENT","Connection closed by client");
      
      private var §521423125632312576123423632234§:String;
      
      private var §5214232593232606123423632234§:String;
      
      public function ConnectionCloseStatus(param1:String, param2:String)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
         this.§5214232593232606123423632234§ = param2;
      }
      
      public function toString() : String
      {
         return "";
      }
      
      public function get defaultMessage() : String
      {
         return this.§5214232593232606123423632234§;
      }
   }
}

