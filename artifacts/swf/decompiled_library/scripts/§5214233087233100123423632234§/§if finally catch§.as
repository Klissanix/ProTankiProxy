package §5214233087233100123423632234§
{
   import §521423125832312596123423632234§.ResourceImageFrameParams;
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§dynamic use override§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423129512312964123423632234§.§throw switch if§;
   import §5214237502237515123423632234§.§521423109012310914123423632234§;
   import flash.display.BitmapData;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class §if finally catch§ extends §include catch each§
   {
      
      public static var §5214239595239608123423632234§:IResourceLocalStorage;
      
      private static const §5214239336239349123423632234§:String = "image.tara";
      
      private static const §521423112362311249123423632234§:String = "i";
      
      private static const §5214233218233231123423632234§:String = "a";
      
      private static const §dynamic var throw§:int = 70;
      
      private static const §dynamic set native§:int = 82;
      
      private static const §5214238457238470123423632234§:int = 77;
      
      private static const §5214232976232989123423632234§:int = 1;
      
      private var §521423138572313870123423632234§:ResourceImageFrameParams;
      
      private var §include catch false§:§dynamic use override§;
      
      private var override:ByteArray;
      
      private var §native catch default§:BitmapData;
      
      public function §if finally catch§(param1:§52142373423747123423632234§, param2:ResourceImageFrameParams)
      {
         super(param1);
         if(param2 == null)
         {
            throw new Error("Parameter b97b407 is null");
         }
         this.§521423138572313870123423632234§ = param2;
      }
      
      public function get §5214233118233131123423632234§() : int
      {
         return this.§521423138572313870123423632234§.frameWidth;
      }
      
      public function get §get set var§() : int
      {
         return this.§521423138572313870123423632234§.numFrames;
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         this.§native catch default§ = new §throw for true§(16711935,this.§5214233118233131123423632234§,this.§5214231432231445123423632234§);
         §5214234460234473123423632234§.onResourceLoadingError(this,param1.text);
      }
      
      private function §5214239883239896123423632234§(param1:ByteArray) : void
      {
         var _loc3_:§521423109012310914123423632234§ = new §521423109012310914123423632234§(param1);
         var _loc2_:§5214239702239715123423632234§ = new §5214239702239715123423632234§();
         _loc2_.§while for native§ = _loc3_.§5214234869234882123423632234§("i");
         _loc2_.§return switch override§ = _loc3_.§5214234869234882123423632234§("a");
         var _loc4_:§521423123782312391123423632234§ = new §521423123782312391123423632234§();
         _loc4_.§521423105162310529123423632234§(_loc2_,§implements package for§);
      }
      
      private function §5214236418236431123423632234§(param1:Event) : void
      {
         §52142375423767123423632234§();
         this.override = this.§include catch false§.data;
         this.§include catch false§ = null;
         this.§5214239883239896123423632234§(this.override);
      }
      
      override public function toString() : String
      {
         return "";
      }
      
      override public function §5214236682236695123423632234§(param1:ByteArray, param2:§5214238033238046123423632234§) : Boolean
      {
         if(param1.bytesAvailable < 4 || param1.readByte() != 70 || param1.readByte() != 82 || param1.readByte() != 77 || param1.readByte() != 1)
         {
            return false;
         }
         this.§5214234460234473123423632234§ = param2;
         var _loc3_:int = param1.readInt();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,_loc3_);
         this.§5214239883239896123423632234§(_loc4_);
         return true;
      }
      
      override protected function §function switch try§() : void
      {
         this.§include catch false§.close();
         this.§5214238728238741123423632234§();
      }
      
      public function get §5214231432231445123423632234§() : int
      {
         return this.§521423138572313870123423632234§.frameHeight;
      }
      
      private function §implements package for§(param1:§521423123782312391123423632234§) : void
      {
         this.§native catch default§ = param1.§5214233309233322123423632234§;
         this.§else catch class§();
      }
      
      private function §set switch function§(param1:Event) : void
      {
         §implements use super§();
         §5214234460234473123423632234§.onResourceLoadingStart(this);
      }
      
      public function get data() : BitmapData
      {
         return this.§native catch default§;
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§5214238728238741123423632234§();
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
         this.§include catch false§.load(new URLRequest(§super switch switch§ + "image.tara"));
         §5214237993238006123423632234§();
         §521423127412312754123423632234§ = "Data requested";
      }
      
      private function §5214237731237744123423632234§(param1:ProgressEvent) : void
      {
         §implements use super§();
      }
      
      override protected function §else catch class§() : void
      {
         super.§else catch class§();
         if(§extends for each§(2) || !§5214239595239608123423632234§.enabled)
         {
            this.override = null;
         }
      }
      
      override public function §521423132912313304123423632234§(param1:§throw switch if§) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeByte(70);
         _loc2_.writeByte(82);
         _loc2_.writeByte(77);
         _loc2_.writeByte(1);
         _loc2_.writeInt(this.override.length);
         _loc2_.writeBytes(this.override);
         this.override = null;
         param1.§do use each§(this,_loc2_);
      }
      
      override public function get §var catch import§() : String
      {
         return "Multiframe image";
      }
      
      public function get §in for in§() : Number
      {
         return this.§521423138572313870123423632234§.fps;
      }
   }
}

