package §5214233087233100123423632234§
{
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§function switch const§;
   import §521423129512312964123423632234§.§include catch each§;
   import §5214235095235108123423632234§.ImagePair;
   import §5214235095235108123423632234§.LocalizedFileFormat;
   import §5214235095235108123423632234§.StringPair;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.startup.CacheURLLoader;
   import flash.display.BitmapData;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import §with set static§.§import catch else§;
   
   public class §function catch package§ extends §include catch each§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §implements package class§:LocalizedFileFormat;
      
      private var §521423104362310449123423632234§:§function switch const§;
      
      public function §function catch package§(param1:§52142373423747123423632234§)
      {
         super(param1);
      }
      
      private function §implements for in§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<BitmapData> = this.§521423104362310449123423632234§.§package use each§;
         this.§521423104362310449123423632234§ = null;
         var _loc4_:Vector.<ImagePair> = this.§implements package class§.images;
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            §5214236363236376123423632234§.setImage(_loc4_[_loc3_].key,_loc2_[_loc3_]);
            _loc3_++;
         }
         this.§else catch class§();
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         this.§super switch switch§ = param1;
         this.§5214234460234473123423632234§ = param2;
         var _loc3_:CacheURLLoader = new CacheURLLoader();
         _loc3_.dataFormat = "binary";
         _loc3_.addEventListener("open",this.§set switch function§);
         _loc3_.addEventListener("complete",this.§5214236418236431123423632234§);
         _loc3_.addEventListener("ioError",this.§in switch extends§);
         _loc3_.addEventListener("securityError",this.§in switch extends§);
         _loc3_.load(new URLRequest(param1 + this.§5214233007233020123423632234§()));
      }
      
      protected function §in switch extends§(param1:ErrorEvent) : void
      {
         §5214234460234473123423632234§.onResourceLoadingFatalError(this,param1.toString());
      }
      
      private function §5214238273238286123423632234§() : void
      {
         if(this.§implements package class§.§5214239495239508123423632234§ != null)
         {
            for each(var _loc1_ in this.§implements package class§.§5214239495239508123423632234§)
            {
               §5214236363236376123423632234§.setText(_loc1_.key,_loc1_.value);
            }
         }
         if(this.§implements package class§.images != null && this.§implements package class§.images.length > 0)
         {
            this.§class const super§();
         }
         else
         {
            this.§else catch class§();
         }
      }
      
      private function §set switch function§(param1:Event) : void
      {
         §5214234460234473123423632234§.onResourceLoadingStart(this);
      }
      
      protected function §5214236418236431123423632234§(param1:Event) : void
      {
         var _loc2_:§import catch else§ = §import catch else§(OSGi.getInstance().getService(§import catch else§));
         var _loc3_:ByteArray = URLLoader(param1.target).data;
         _loc3_.uncompress();
         this.§implements package class§ = LocalizedFileFormat(_loc2_.§with const if§("scpacker.networking.protocol.codec.custom.CodecLocaleStruct").decode(_loc3_));
         this.§5214238273238286123423632234§();
      }
      
      override public function toString() : String
      {
         return "[LocalizationResource id=" + this.§5214239618239631123423632234§.id + ", version: " + this.§5214239618239631123423632234§.§5214231514231527123423632234§.b34eb168 + ", status: " + §521423127412312754123423632234§ + "]";
      }
      
      private function §class const super§() : void
      {
         §521423127412312754123423632234§ = "Building images";
         var _loc2_:Vector.<ByteArray> = new Vector.<ByteArray>();
         for each(var _loc1_ in this.§implements package class§.images)
         {
            _loc2_[_loc2_.length] = _loc1_.value;
         }
         this.§521423104362310449123423632234§ = new §function switch const§();
         this.§521423104362310449123423632234§.addEventListener("complete",this.§implements for in§);
         this.§521423104362310449123423632234§.§5214235194235207123423632234§(_loc2_,5);
      }
      
      private function §5214233007233020123423632234§() : String
      {
         return "localized.data_" + §5214236363236376123423632234§.language;
      }
   }
}

