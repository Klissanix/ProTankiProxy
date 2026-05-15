package §521423129512312964123423632234§
{
   import §521423129502312963123423632234§.ResourceError;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §521423119282311941123423632234§ implements §5214238033238046123423632234§, §521423117662311779123423632234§
   {
      
      public static var §5214234621234634123423632234§:LogService;
      
      private static var §get set with§:§dynamic use try§;
      
      public static var §5214239012239025123423632234§:IErrorMessageService;
      
      private static var §5214236886236899123423632234§:§try for class§;
      
      private var §set const break§:Function;
      
      private var §false set null§:int;
      
      private var §throw switch try§:int;
      
      public function §521423119282311941123423632234§(param1:Function)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("Parameter listener is null");
         }
         this.§set const break§ = param1;
         if(§5214236886236899123423632234§ == null)
         {
            §5214236886236899123423632234§ = §try for class§(OSGi.getInstance().getService(§try for class§));
         }
      }
      
      private static function §override package for§() : §dynamic use try§
      {
         return §get set with§ || (§get set with§ = §5214234621234634123423632234§.getLogger("resource"));
      }
      
      public function close() : void
      {
         this.§throw switch try§ = -1;
         this.§set const break§ = null;
      }
      
      public function onResourceLoadingError(param1:§include catch each§, param2:String) : void
      {
         §override package for§().error("resource: %1, error: %2",[param1,param2]);
         this.onResourceLoadingComplete(param1);
      }
      
      private function §521423138072313820123423632234§() : void
      {
         this.§throw switch try§ = 0;
         this.§set const break§.call();
      }
      
      public function §break catch return§(param1:§include catch each§) : void
      {
         ++this.§throw switch try§;
         §5214236886236899123423632234§.§break catch return§(param1,this,1);
      }
      
      public function onResourceLoadingStart(param1:§include catch each§) : void
      {
      }
      
      public function §5214236465236478123423632234§(param1:Vector.<§include catch each§>) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter resources is null");
         }
         if(param1.length == 0)
         {
            throw new ArgumentError("Number of resources is zero");
         }
         ++this.§throw switch try§;
         for each(var _loc2_ in param1)
         {
            if(_loc2_.§extends var try§())
            {
               _loc2_.§5214238641238654123423632234§(this);
            }
            else
            {
               this.§break catch return§(_loc2_);
            }
         }
         this.onResourceLoadingComplete(null);
      }
      
      public function onResourceLoadingComplete(param1:§include catch each§) : void
      {
         ++this.§false set null§;
         if(this.§false set null§ == this.§throw switch try§)
         {
            this.§521423138072313820123423632234§();
         }
      }
      
      public function onResourceLoadingFatalError(param1:§include catch each§, param2:String) : void
      {
         var _loc3_:ResourceError = new ResourceError(param1,param2);
         §override package for§().error(_loc3_.getMessage());
         §5214239012239025123423632234§.showMessage(_loc3_);
      }
   }
}

