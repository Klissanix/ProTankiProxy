package §5214233087233100123423632234§
{
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§dynamic use override§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423129512312964123423632234§.§throw switch if§;
   import flash.display.BitmapData;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   import §return use throw§.ResourceImageParams;
   
   public class §include catch with§ extends §include catch each§
   {
      
      public static var §5214239595239608123423632234§:IResourceLocalStorage;
      
      private static const §521423124762312489123423632234§:String = "image.jpg";
      
      private static const §implements var import§:String = "alpha.jpg";
      
      private static const §52142311423127123423632234§:int = 0;
      
      private static const §5214233021233034123423632234§:int = 1;
      
      private static const §function var if§:int = 73;
      
      private static const §5214238457238470123423632234§:int = 77;
      
      private static const §each var default§:int = 71;
      
      private static const §5214232976232989123423632234§:int = 1;
      
      private var §implements catch catch§:int;
      
      private var §include catch false§:§dynamic use override§;
      
      private var §521423120122312025123423632234§:§5214239702239715123423632234§;
      
      private var §import use if§:§521423123782312391123423632234§;
      
      private var §native catch default§:BitmapData;
      
      private var §5214235782235795123423632234§:ResourceImageParams;
      
      public function §include catch with§(param1:§52142373423747123423632234§, param2:ResourceImageParams = null)
      {
         super(param1);
         this.§5214235782235795123423632234§ = param2;
      }
      
      private function §class finally set§(param1:ByteArray) : void
      {
         this.§521423120122312025123423632234§ = new §5214239702239715123423632234§();
         this.§521423120122312025123423632234§.§while for native§ = param1;
         if(this.§5214235782235795123423632234§.alpha)
         {
            this.§get use do§();
         }
         else
         {
            this.§static finally package§();
         }
      }
      
      override protected function §else catch class§() : void
      {
         super.§else catch class§();
         this.§import use if§ = null;
         §super switch switch§ = null;
      }
      
      private function §default set for§(param1:Boolean) : §dynamic use override§
      {
         var _loc2_:§dynamic use override§ = new §dynamic use override§();
         _loc2_.dataFormat = "binary";
         if(param1)
         {
            _loc2_.addEventListener("open",this.§set switch function§);
         }
         _loc2_.addEventListener("progress",this.§5214237731237744123423632234§);
         _loc2_.addEventListener("complete",this.§5214236418236431123423632234§);
         _loc2_.addEventListener("ioError",this.§in switch extends§);
         _loc2_.addEventListener("securityError",this.§in switch extends§);
         return _loc2_;
      }
      
      private function §5214237731237744123423632234§(param1:ProgressEvent) : void
      {
         §implements use super§();
      }
      
      override public function get §var catch import§() : String
      {
         return "Image";
      }
      
      override public function §5214236682236695123423632234§(param1:ByteArray, param2:§5214238033238046123423632234§) : Boolean
      {
         if(param1.bytesAvailable < 4 || param1.readByte() != 73 || param1.readByte() != 77 || param1.readByte() != 71 || param1.readByte() != 1)
         {
            return false;
         }
         this.§5214234460234473123423632234§ = param2;
         var _loc3_:§5214239702239715123423632234§ = new §5214239702239715123423632234§();
         var _loc5_:int = param1.readInt();
         _loc3_.§while for native§ = new ByteArray();
         param1.readBytes(_loc3_.§while for native§,0,_loc5_);
         var _loc4_:int = param1.readInt();
         if(_loc4_ > 0)
         {
            _loc3_.§return switch override§ = new ByteArray();
            param1.readBytes(_loc3_.§return switch override§,0,_loc4_);
         }
         this.§import use if§ = new §521423123782312391123423632234§();
         this.§import use if§.§521423105162310529123423632234§(_loc3_,this.§5214239461239474123423632234§);
         return true;
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§5214232594232607123423632234§();
      }
      
      private function §5214232594232607123423632234§() : void
      {
         this.§implements catch catch§ = 0;
         this.§include catch false§ = this.§default set for§(true);
         this.§include catch false§.load(new URLRequest(§super switch switch§ + "image.jpg"));
         §5214237993238006123423632234§();
         §521423127412312754123423632234§ = "Diffuse map requested";
      }
      
      private function §get use do§() : void
      {
         this.§implements catch catch§ = 1;
         this.§include catch false§ = this.§default set for§(false);
         this.§include catch false§.load(new URLRequest(§super switch switch§ + "alpha.jpg"));
         §521423127412312754123423632234§ = "Opacity map requested";
         §5214237993238006123423632234§();
      }
      
      private function §5214236418236431123423632234§(param1:Event) : void
      {
         §52142375423767123423632234§();
         switch(this.§implements catch catch§)
         {
            case 0:
               this.§class finally set§(this.§include catch false§.data);
               break;
            case 1:
               this.§5214239312239325123423632234§(this.§include catch false§.data);
         }
      }
      
      override protected function §function switch try§() : void
      {
         this.§include catch false§.close();
         switch(this.§implements catch catch§)
         {
            case 0:
               this.§5214232594232607123423632234§();
               break;
            case 1:
               this.§get use do§();
         }
      }
      
      public function get data() : BitmapData
      {
         return this.§native catch default§;
      }
      
      override public function §521423132912313304123423632234§(param1:§throw switch if§) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeByte(73);
         _loc2_.writeByte(77);
         _loc2_.writeByte(71);
         _loc2_.writeByte(1);
         _loc2_.writeInt(this.§521423120122312025123423632234§.§while for native§.length);
         _loc2_.writeBytes(this.§521423120122312025123423632234§.§while for native§);
         if(this.§521423120122312025123423632234§.§return switch override§ != null)
         {
            _loc2_.writeInt(this.§521423120122312025123423632234§.§return switch override§.length);
            _loc2_.writeBytes(this.§521423120122312025123423632234§.§return switch override§);
         }
         else
         {
            _loc2_.writeInt(0);
         }
         this.§521423120122312025123423632234§ = null;
         param1.§do use each§(this,_loc2_);
      }
      
      private function §5214239461239474123423632234§(param1:§521423123782312391123423632234§) : void
      {
         this.§native catch default§ = param1.§5214233309233322123423632234§;
         if(§extends for each§(2) || !§5214239595239608123423632234§.enabled)
         {
            this.§521423120122312025123423632234§ = null;
         }
         this.§else catch class§();
      }
      
      private function §static finally package§() : void
      {
         this.§include catch false§ = null;
         this.§import use if§ = new §521423123782312391123423632234§();
         this.§import use if§.§521423105162310529123423632234§(this.§521423120122312025123423632234§,this.§5214239461239474123423632234§);
      }
      
      private function §set switch function§(param1:Event) : void
      {
         §implements use super§();
         §5214234460234473123423632234§.onResourceLoadingStart(this);
      }
      
      private function §5214239312239325123423632234§(param1:ByteArray) : void
      {
         this.§521423120122312025123423632234§.§return switch override§ = param1;
         this.§static finally package§();
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         §52142375423767123423632234§();
         if(this.§implements catch catch§ == 0)
         {
            this.§native catch default§ = new §throw for true§(16711680);
            §521423117982311811123423632234§(1);
            §super switch switch§ = null;
            this.§521423120122312025123423632234§ = null;
            §5214234460234473123423632234§.onResourceLoadingError(this,param1.toString());
         }
         else
         {
            this.§static finally package§();
         }
      }
      
      override protected function §5214238932238945123423632234§() : Boolean
      {
         this.§native catch default§ = new §throw for true§(16711680);
         return true;
      }
   }
}

