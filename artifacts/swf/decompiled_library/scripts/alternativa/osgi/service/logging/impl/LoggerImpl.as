package alternativa.osgi.service.logging.impl
{
   import alternativa.osgi.service.logging.LogLevel;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.osgi.service.logging.§else use override§;
   
   public class LoggerImpl implements §dynamic use try§
   {
      
      private var §521423105512310564123423632234§:§else use override§;
      
      private var object:Object;
      
      public function LoggerImpl(param1:Object, param2:§else use override§)
      {
         super();
         this.object = param1;
         this.§521423105512310564123423632234§ = param2;
      }
      
      public function trace(param1:String, param2:Array = null) : void
      {
         this.§521423105512310564123423632234§.log(this.object,LogLevel.TRACE,param1,param2);
      }
      
      public function error(param1:String, param2:Array = null) : void
      {
         this.§521423105512310564123423632234§.log(this.object,LogLevel.ERROR,param1,param2);
      }
      
      public function debug(param1:String, param2:Array = null) : void
      {
      }
      
      public function warning(param1:String, param2:Array = null) : void
      {
         this.§521423105512310564123423632234§.log(this.object,LogLevel.WARNING,param1,param2);
      }
      
      public function info(param1:String, param2:Array = null) : void
      {
         this.§521423105512310564123423632234§.log(this.object,LogLevel.INFO,param1,param2);
      }
   }
}

