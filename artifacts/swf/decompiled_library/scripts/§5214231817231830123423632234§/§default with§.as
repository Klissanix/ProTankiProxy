package §5214231817231830123423632234§
{
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§dynamic use override§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423129512312964123423632234§.§throw switch if§;
   import §5214232916232929123423632234§.§5214232415232428123423632234§;
   import §5214233635233648123423632234§.§override set case§;
   import §5214237502237515123423632234§.§521423109012310914123423632234§;
   import alternativa.engine3d.objects.Mesh;
   import §catch catch§.§521423132262313239123423632234§;
   import §finally package catch§.§5214234227234240123423632234§;
   import §finally package catch§.§5214234253234266123423632234§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class §default with§ extends §include catch each§
   {
      
      public static var §5214239595239608123423632234§:IResourceLocalStorage;
      
      private static const §var use dynamic§:String = "library.tara";
      
      public static const §5214236756236769123423632234§:int = 8;
      
      private var §include catch false§:§dynamic use override§;
      
      public var override:ByteArray;
      
      public var §5214232816232829123423632234§:§5214232415232428123423632234§;
      
      public function §default with§(param1:§52142373423747123423632234§)
      {
         super(param1);
      }
      
      private static function §5214237733237746123423632234§(param1:§5214234253234266123423632234§) : void
      {
         var _loc3_:§521423132262313239123423632234§ = null;
         if(param1.§5214232349232362123423632234§ != null)
         {
            for each(var _loc4_ in param1.§5214232349232362123423632234§)
            {
               §5214237733237746123423632234§(_loc4_);
            }
         }
         if(param1.§null set get§ != null)
         {
            for each(var _loc2_ in param1.§null set get§)
            {
               _loc3_ = _loc2_.§521423100502310063123423632234§().§5214234943234956123423632234§();
               if(_loc3_.§throw use true§ is Mesh)
               {
                  Mesh(_loc3_.§throw use true§).calculateVerticesNormalsByAngle(1.1344640137963142,0.01);
               }
            }
         }
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§5214238728238741123423632234§();
      }
      
      private function §5214237731237744123423632234§(param1:ProgressEvent) : void
      {
         §implements use super§();
      }
      
      override public function close() : void
      {
         this.§include catch false§.close();
         this.§true switch set§();
      }
      
      private function §catch use break§(param1:ByteArray) : void
      {
         try
         {
            this.§5214232816232829123423632234§ = new §5214232415232428123423632234§(new §override set case§(new §521423109012310914123423632234§(param1).data));
            §5214237733237746123423632234§(this.§5214232816232829123423632234§.§super package throw§);
         }
         catch(e:Error)
         {
            throw new Error("PropLibResource: not parsed id:" + this.§5214239618239631123423632234§.id + " baseUrl:" + §super switch switch§ + " error: " + e.getStackTrace());
         }
      }
      
      override protected function §function switch try§() : void
      {
         this.§include catch false§.close();
         this.§true switch set§();
         this.§5214238728238741123423632234§();
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         §52142375423767123423632234§();
         §5214234460234473123423632234§.onResourceLoadingFatalError(this,param1.toString());
      }
      
      override public function §521423132912313304123423632234§(param1:§throw switch if§) : void
      {
         var _loc2_:ByteArray = null;
         if(this.override != null)
         {
            _loc2_ = new ByteArray();
            _loc2_.writeBytes(this.override);
            param1.§do use each§(this,_loc2_);
            this.override = null;
         }
      }
      
      private function §set switch function§(param1:Event) : void
      {
         §implements use super§();
         §5214234460234473123423632234§.onResourceLoadingStart(this);
      }
      
      private function §true switch set§() : void
      {
         this.§include catch false§.removeEventListener("open",this.§set switch function§);
         this.§include catch false§.removeEventListener("progress",this.§5214237731237744123423632234§);
         this.§include catch false§.removeEventListener("complete",this.§5214236418236431123423632234§);
         this.§include catch false§.removeEventListener("ioError",this.§in switch extends§);
         this.§include catch false§.removeEventListener("securityError",this.§in switch extends§);
         this.§include catch false§ = null;
      }
      
      override public function get §var catch import§() : String
      {
         return "Props library";
      }
      
      private function §5214238728238741123423632234§() : void
      {
         this.§include catch false§ = new §dynamic use override§();
         this.§include catch false§.dataFormat = "binary";
         this.§include catch false§.addEventListener("open",this.§set switch function§);
         this.§include catch false§.addEventListener("progress",this.§5214237731237744123423632234§);
         this.§include catch false§.addEventListener("ioError",this.§in switch extends§);
         this.§include catch false§.addEventListener("securityError",this.§in switch extends§);
         this.§include catch false§.addEventListener("complete",this.§5214236418236431123423632234§);
         this.§include catch false§.load(new URLRequest(§super switch switch§ + "library.tara"));
         §521423127412312754123423632234§ = "Data requested";
         §5214237993238006123423632234§();
      }
      
      override public function §5214236682236695123423632234§(param1:ByteArray, param2:§5214238033238046123423632234§) : Boolean
      {
         this.§5214234460234473123423632234§ = param2;
         this.§catch use break§(param1);
         setTimeout(§else catch class§,0);
         return true;
      }
      
      private function §5214236418236431123423632234§(param1:Event) : void
      {
         §52142375423767123423632234§();
         this.override = this.§include catch false§.data;
         this.§true switch set§();
         this.§catch use break§(this.override);
         §else catch class§();
      }
   }
}

