package alternativa.osgi.service.clientlog
{
   import alternativa.osgi.service.logging.LogService;
   
   public class DeprecatedClientLogWrapper implements §while false§
   {
      
      private var §5214234621234634123423632234§:LogService;
      
      public function DeprecatedClientLogWrapper(param1:LogService)
      {
         super();
         this.§5214234621234634123423632234§ = param1;
      }
      
      public function log(param1:String, param2:String, ... rest) : void
      {
         this.§5214234621234634123423632234§.getLogger(param1).info(param2,rest);
      }
   }
}

