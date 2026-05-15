package projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck
{
   import §5214233511233524123423632234§.§final null§;
   import §5214233511233524123423632234§.§set var const§;
   import §5214235638235651123423632234§.§52142313623149123423632234§;
   import alternativa.osgi.OSGi;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   
   public class UidCheckModel extends §final null§ implements §set var const§, §do set function§, §throw catch var§, UidCheckService
   {
      
      private var §521423140282314041123423632234§:Function;
      
      public function UidCheckModel()
      {
         super();
      }
      
      public function getMaxLength() : int
      {
         return 20;
      }
      
      public function objectUnloaded() : void
      {
         OSGi.getInstance().unregisterService(UidCheckService);
      }
      
      public function objectLoaded() : void
      {
         OSGi.getInstance().registerService(UidCheckService,this);
      }
      
      public function validateResult(param1:§52142313623149123423632234§) : void
      {
         if(Boolean(this.§521423140282314041123423632234§))
         {
            this.§521423140282314041123423632234§(param1);
         }
         this.§521423140282314041123423632234§ = null;
      }
      
      public function validate(param1:String, param2:Function) : void
      {
         this.§521423140282314041123423632234§ = param2;
         §521423120492312062123423632234§.§return package continue§(param1);
      }
      
      public function exist(param1:String, param2:Function) : void
      {
         var uid:String = param1;
         var callback:Function = param2;
         this.validate(uid,function(param1:§52142313623149123423632234§):void
         {
            callback(param1 == §52142313623149123423632234§.§true var extends§);
         });
      }
   }
}

