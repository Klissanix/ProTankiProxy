package §5214231817231830123423632234§
{
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§dynamic use override§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423129512312964123423632234§.§throw switch if§;
   import §5214232916232929123423632234§.§521423108032310816123423632234§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ResourceRegistry;
   
   public class §static switch var§ extends §include catch each§
   {
      
      public static var §for continue§:ResourceRegistry;
      
      public static const §5214236756236769123423632234§:int = 7;
      
      private static const §with var each§:int = 0;
      
      private static const §null switch const§:int = 1;
      
      private static const §5214235136235149123423632234§:int = 2;
      
      private static const §set for true§:int = 3;
      
      private static const §5214236171236184123423632234§:String = "proplibs.xml";
      
      private static const §class const true§:String = "map.xml";
      
      private static const §5214236206236219123423632234§:Vector.<int> = new <int>[77,65,80,1];
      
      public var §function switch if§:§521423108032310816123423632234§;
      
      public var §5214232124232137123423632234§:ByteArray;
      
      public var §each set catch§:ByteArray;
      
      public var §each catch override§:Vector.<Long>;
      
      private var §include catch false§:§dynamic use override§;
      
      private var §521423123612312374123423632234§:int = -1;
      
      public function §static switch var§(param1:§52142373423747123423632234§)
      {
         super(param1);
      }
      
      private function §5214236965236978123423632234§() : void
      {
         try
         {
            this.§5214234587234600123423632234§(XML(this.§5214232124232137123423632234§.toString()));
         }
         catch(e:Error)
         {
            §5214234460234473123423632234§.onResourceLoadingFatalError(this,e.message + " " + e.getStackTrace());
         }
      }
      
      private function §5214231329231342123423632234§(param1:Event) : void
      {
         §implements use super§();
      }
      
      private function §use const const§() : void
      {
         this.§521423121142312127123423632234§(this.§521423134692313482123423632234§,this.§5214234622234635123423632234§);
         this.§include catch false§.load(new URLRequest(§super switch switch§ + "map.xml"));
         this.§521423123612312374123423632234§ = 3;
         §5214237993238006123423632234§();
      }
      
      private function §521423121142312127123423632234§(param1:Function, param2:Function) : void
      {
         this.§include catch false§ = new §dynamic use override§();
         this.§include catch false§.dataFormat = "binary";
         this.§include catch false§.addEventListener("open",param1);
         this.§include catch false§.addEventListener("complete",param2);
         this.§include catch false§.addEventListener("ioError",this.§in switch extends§);
         this.§include catch false§.addEventListener("securityError",this.§in switch extends§);
      }
      
      private function §52142394523958123423632234§() : void
      {
         this.§521423121142312127123423632234§(this.§5214231329231342123423632234§,this.§switch for set§);
         this.§include catch false§.load(new URLRequest(§super switch switch§ + "proplibs.xml"));
         this.§521423123612312374123423632234§ = 2;
         §521423127412312754123423632234§ = "Data requested";
         §5214237993238006123423632234§();
      }
      
      private function §in switch extends§(param1:ErrorEvent) : void
      {
         §5214234460234473123423632234§.onResourceLoadingFatalError(this,param1.text);
      }
      
      private function §true switch set§() : void
      {
         if(this.§include catch false§ == null)
         {
            return;
         }
         this.§include catch false§.removeEventListener("open",this.§5214231329231342123423632234§);
         this.§include catch false§.removeEventListener("complete",this.§switch for set§);
         this.§include catch false§.removeEventListener("ioError",this.§in switch extends§);
         this.§include catch false§.removeEventListener("securityError",this.§in switch extends§);
         this.§include catch false§ = null;
      }
      
      override public function §521423132912313304123423632234§(param1:§throw switch if§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         while(_loc3_ < §5214236206236219123423632234§.length)
         {
            _loc2_.writeByte(§5214236206236219123423632234§[_loc3_]);
            _loc3_++;
         }
         _loc2_.writeInt(this.§5214232124232137123423632234§.length);
         _loc2_.writeBytes(this.§5214232124232137123423632234§);
         _loc2_.writeInt(this.§each set catch§.length);
         _loc2_.writeBytes(this.§each set catch§);
         param1.§do use each§(this,_loc2_);
      }
      
      override public function get §var catch import§() : String
      {
         return "Map";
      }
      
      override public function close() : void
      {
         if(this.§521423123612312374123423632234§ != 0)
         {
            this.§include catch false§.close();
         }
         this.§true switch set§();
         this.§5214232124232137123423632234§ = null;
         this.§each set catch§ = null;
      }
      
      override protected function §function switch try§() : void
      {
         this.§include catch false§.close();
         this.§true switch set§();
         switch(this.§521423123612312374123423632234§ - 2)
         {
            case 0:
               this.§52142394523958123423632234§();
               break;
            case 1:
               this.§use const const§();
         }
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§52142394523958123423632234§();
      }
      
      private function §5214234587234600123423632234§(param1:XML) : void
      {
         var _loc5_:int = 0;
         var _loc4_:Long = null;
         var _loc2_:§default with§ = null;
         this.§function switch if§ = new §521423108032310816123423632234§();
         this.§each catch override§ = new Vector.<Long>();
         for each(var _loc3_ in param1.library)
         {
            _loc5_ = int("0x" + _loc3_.attribute("resource-id").toString());
            _loc4_ = Long.getLong(0,_loc5_);
            this.§each catch override§[§each catch override§.length] = _loc4_;
            _loc2_ = §default with§(§for continue§.getResource(_loc4_));
            if(_loc2_ == null)
            {
               throw new Error("Prop library resource [id=" + _loc4_ + "] not found");
            }
            this.§function switch if§.§include for include§(_loc2_.§5214232816232829123423632234§);
         }
      }
      
      private function §521423134692313482123423632234§(param1:Event) : void
      {
         §implements use super§();
      }
      
      private function §switch for set§(param1:Event) : void
      {
         this.§5214232124232137123423632234§ = this.§include catch false§.data;
         this.§true switch set§();
         this.§use const const§();
      }
      
      private function §5214234622234635123423632234§(param1:Event) : void
      {
         this.§each set catch§ = this.§include catch false§.data;
         this.§true switch set§();
         this.§5214236965236978123423632234§();
         §else catch class§();
      }
      
      override public function §5214236682236695123423632234§(param1:ByteArray, param2:§5214238033238046123423632234§) : Boolean
      {
         var _loc4_:int = 0;
         this.§5214234460234473123423632234§ = param2;
         if(param1 == null || param1.length < §5214236206236219123423632234§.length)
         {
            return false;
         }
         while(_loc4_ < §5214236206236219123423632234§.length)
         {
            if(param1.readUnsignedByte() != §5214236206236219123423632234§[_loc4_])
            {
               return false;
            }
            _loc4_++;
         }
         var _loc3_:int = param1.readInt();
         this.§5214232124232137123423632234§ = new ByteArray();
         param1.readBytes(this.§5214232124232137123423632234§,0,_loc3_);
         _loc3_ = param1.readInt();
         this.§each set catch§ = new ByteArray();
         param1.readBytes(this.§each set catch§,0,_loc3_);
         this.§5214236965236978123423632234§();
         setTimeout(§else catch class§,0);
         return true;
      }
   }
}

