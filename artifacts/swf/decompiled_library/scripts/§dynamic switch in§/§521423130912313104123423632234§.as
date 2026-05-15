package §dynamic switch in§
{
   import §521423129512312964123423632234§.§function switch const§;
   import §5214235095235108123423632234§.ImagePair;
   import §5214235095235108123423632234§.LocalizedFileFormat;
   import §5214235095235108123423632234§.StringPair;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import §with set static§.§import catch else§;
   
   public class §521423130912313104123423632234§
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private var §implements package class§:LocalizedFileFormat;
      
      private var §521423104362310449123423632234§:§function switch const§;
      
      private var §5214231839231852123423632234§:Function;
      
      public function §521423130912313104123423632234§()
      {
         super();
         §5214236363236376123423632234§ = ILocaleService(OSGi.getInstance().getService(ILocaleService));
      }
      
      public function §native switch override§(param1:String, param2:Function) : void
      {
         this.§5214231839231852123423632234§ = param2;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.dataFormat = "binary";
         _loc3_.addEventListener("complete",this.§5214236418236431123423632234§);
         _loc3_.load(new URLRequest(param1));
      }
      
      private function §class const super§() : void
      {
         var _loc1_:Vector.<ByteArray> = new Vector.<ByteArray>();
         for each(var _loc2_ in this.§implements package class§.images)
         {
            _loc1_[_loc1_.length] = _loc2_.value;
         }
         this.§521423104362310449123423632234§ = new §function switch const§();
         this.§521423104362310449123423632234§.addEventListener("complete",this.§implements for in§);
         this.§521423104362310449123423632234§.§5214235194235207123423632234§(_loc1_,5);
      }
      
      private function §5214236418236431123423632234§(param1:Event) : void
      {
         var _loc2_:§import catch else§ = §import catch else§(OSGi.getInstance().getService(§import catch else§));
         var _loc3_:ByteArray = URLLoader(param1.target).data;
         _loc3_.uncompress();
         this.§implements package class§ = LocalizedFileFormat(_loc2_.§with const if§("scpacker.networking.protocol.codec.custom.Codecp2729f5").decode(_loc3_));
         this.§5214238273238286123423632234§();
      }
      
      private function §5214238273238286123423632234§() : void
      {
         var _loc1_:StringPair = null;
         if(this.§implements package class§.§5214239495239508123423632234§ != null)
         {
            for each(_loc1_ in this.§implements package class§.§5214239495239508123423632234§)
            {
               §5214236363236376123423632234§.setText(_loc1_.key,_loc1_.value);
            }
         }
         if(this.§implements package class§.images != null && this.§implements package class§.images.length > 0)
         {
            this.§class const super§();
         }
         this.§5214231839231852123423632234§();
      }
      
      private function §implements for in§(param1:Event) : void
      {
         var _loc2_:Vector.<BitmapData> = this.§521423104362310449123423632234§.§package use each§;
         this.§521423104362310449123423632234§ = null;
         var _loc3_:Vector.<ImagePair> = this.§implements package class§.images;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            §5214236363236376123423632234§.setImage(_loc3_[_loc4_].key,_loc2_[_loc4_]);
            _loc4_++;
         }
      }
   }
}

