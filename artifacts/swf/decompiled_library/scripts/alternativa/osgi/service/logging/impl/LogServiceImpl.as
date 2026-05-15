package alternativa.osgi.service.logging.impl
{
   import alternativa.osgi.service.logging.LogLevel;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.osgi.service.logging.§else use override§;
   
   public class LogServiceImpl implements LogService, §else use override§
   {
      
      private var §null const finally§:Vector.<§else use override§>;
      
      public function LogServiceImpl()
      {
         super();
         this.§null const finally§ = new Vector.<§else use override§>();
      }
      
      public function getLogger(param1:Object) : §dynamic use try§
      {
         return new LoggerImpl(param1,this);
      }
      
      public function log(param1:Object, param2:LogLevel, param3:String, param4:Array = null) : void
      {
         for each(var _loc5_ in this.§null const finally§)
         {
            try
            {
               _loc5_.log(param1,param2,param3,param4);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function removeLogTarget(param1:§else use override§) : void
      {
         var _loc2_:int = this.§null const finally§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§null const finally§ = this.§null const finally§.splice(_loc2_,1);
         }
      }
      
      public function addLogTarget(param1:§else use override§) : void
      {
         if(this.§null const finally§.indexOf(param1) < 0)
         {
            this.§null const finally§[§null const finally§.length] = param1;
         }
      }
   }
}

