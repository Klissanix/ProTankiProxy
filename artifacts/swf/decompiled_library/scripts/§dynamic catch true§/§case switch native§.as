package §dynamic catch true§
{
   import §5214238735238748123423632234§.ErrorNotification;
   import alternativa.osgi.OSGi;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   
   public class §case switch native§ implements §for switch class§
   {
      
      private var §52142388923902123423632234§:String;
      
      private var §5214233617233630123423632234§:int;
      
      public function §case switch native§(param1:LoaderInfo)
      {
         super();
         this.§52142388923902123423632234§ = "http://45.12.71.8:19402/clientLog2";
      }
      
      private function §5214234919234932123423632234§(param1:Event) : void
      {
      }
      
      public function §switch set package§(param1:ByteArray) : void
      {
         if(Capabilities.language.length > 3)
         {
            return;
         }
         var _loc2_:URLRequest = new URLRequest(this.§52142388923902123423632234§ + "S");
         _loc2_.method = "POST";
         _loc2_.contentType = "application/octet-stream";
         _loc2_.data = param1;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener("ioError",this.§5214234919234932123423632234§,false,0,true);
         _loc3_.addEventListener("securityError",this.§5214234919234932123423632234§,false,0,true);
         _loc3_.load(_loc2_);
      }
      
      public function §5214231352231365123423632234§(param1:String) : void
      {
         var _loc2_:URLRequest = null;
         var _loc3_:URLLoader = null;
         if(Capabilities.language.length > 3)
         {
            return;
         }
         if(IBattleInfoService(OSGi.getInstance().getService(IBattleInfoService)).isSpectatorMode())
         {
            return;
         }
         if(§5214233617233630123423632234§ < 30)
         {
            _loc2_ = new URLRequest(this.§52142388923902123423632234§);
            _loc2_.method = "POST";
            _loc2_.data = param1.replace(/=/g,"~");
            _loc3_ = new URLLoader();
            _loc3_.addEventListener("ioError",this.§5214234919234932123423632234§,false,0,true);
            _loc3_.addEventListener("securityError",this.§5214234919234932123423632234§,false,0,true);
            _loc3_.load(_loc2_);
         }
         if(++§5214233617233630123423632234§ > 23)
         {
            INotificationService(OSGi.getInstance().getService(INotificationService)).addNotification(new ErrorNotification());
         }
      }
   }
}

