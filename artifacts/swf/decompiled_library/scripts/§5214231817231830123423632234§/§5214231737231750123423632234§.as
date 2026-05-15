package §5214231817231830123423632234§
{
   import §521423125832312596123423632234§.ResourceImageFrameParams;
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§dynamic use override§;
   import §521423129512312964123423632234§.§include catch each§;
   import §5214237502237515123423632234§.§521423109012310914123423632234§;
   import alternativa.osgi.OSGi;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import §with set static§.§import catch else§;
   
   public class §5214231737231750123423632234§ extends §include catch each§
   {
      
      public static const §5214236756236769123423632234§:int = 21;
      
      private static const §5214239336239349123423632234§:String = "data.tara";
      
      private static const §521423113952311408123423632234§:String = "p";
      
      private static const §true catch package§:String = "a";
      
      private var §521423138572313870123423632234§:ResourceImageFrameParams;
      
      private var §include catch false§:§dynamic use override§;
      
      private var §52142311823131123423632234§:int;
      
      private var §native catch default§:ByteArray;
      
      private var §import const do§:int;
      
      public function §5214231737231750123423632234§(param1:§52142373423747123423632234§)
      {
         super(param1);
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         this.§include catch false§ = null;
         §5214234460234473123423632234§.onResourceLoadingError(this,param1.text);
      }
      
      public function get §const var case§() : int
      {
         return this.§import const do§;
      }
      
      override protected function §function switch try§() : void
      {
         this.§include catch false§.close();
         this.§5214238728238741123423632234§();
      }
      
      override protected function §else catch class§() : void
      {
         super.§else catch class§();
      }
      
      override public function toString() : String
      {
         return "[MultiframeRawDataResource id=" + this.§5214239618239631123423632234§.id + "]";
      }
      
      public function get §5214233118233131123423632234§() : int
      {
         return this.§521423138572313870123423632234§.frameWidth;
      }
      
      private function §5214237731237744123423632234§(param1:ProgressEvent) : void
      {
         §implements use super§();
      }
      
      private function §set switch function§(param1:Event) : void
      {
         §implements use super§();
         §5214234460234473123423632234§.onResourceLoadingStart(this);
      }
      
      public function get §5214231432231445123423632234§() : int
      {
         return this.§521423138572313870123423632234§.frameHeight;
      }
      
      private function §5214238728238741123423632234§() : void
      {
         this.§include catch false§ = new §dynamic use override§();
         this.§include catch false§.dataFormat = "binary";
         this.§include catch false§.addEventListener("open",this.§set switch function§);
         this.§include catch false§.addEventListener("complete",this.§5214236418236431123423632234§);
         this.§include catch false§.addEventListener("ioError",this.§in switch extends§);
         this.§include catch false§.addEventListener("securityError",this.§in switch extends§);
         this.§include catch false§.addEventListener("progress",this.§5214237731237744123423632234§);
         this.§include catch false§.load(new URLRequest(§super switch switch§ + "data.tara"));
         §5214237993238006123423632234§();
         §521423127412312754123423632234§ = "Data requested";
      }
      
      override public function get §var catch import§() : String
      {
         return "Multiframe raw";
      }
      
      public function get §get set var§() : int
      {
         return this.§521423138572313870123423632234§.numFrames;
      }
      
      public function get data() : ByteArray
      {
         return this.§native catch default§;
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§5214238728238741123423632234§();
      }
      
      public function get §in for in§() : Number
      {
         return this.§521423138572313870123423632234§.fps;
      }
      
      public function get §5214231887231900123423632234§() : int
      {
         return this.§52142311823131123423632234§;
      }
      
      private function §5214236418236431123423632234§(param1:Event) : void
      {
         §52142375423767123423632234§();
         var _loc2_:§521423109012310914123423632234§ = new §521423109012310914123423632234§(this.§include catch false§.data);
         var _loc3_:§import catch else§ = §import catch else§(OSGi.getInstance().getService(§import catch else§));
         this.§521423138572313870123423632234§ = _loc3_.§with const if§("scpacker.networking.protocol.codec.custom.ResourceImageFrameParams").decode(_loc2_.§5214234869234882123423632234§("p")) as ResourceImageFrameParams;
         this.§native catch default§ = _loc2_.§5214234869234882123423632234§("a");
         this.§native catch default§.position = 7;
         this.§import const do§ = 1 << this.§native catch default§.readByte();
         this.§52142311823131123423632234§ = 1 << this.§native catch default§.readByte();
         this.§native catch default§.position = 0;
         this.§include catch false§ = null;
      }
   }
}

