package §5214231817231830123423632234§
{
   import §521423129512312964123423632234§.§52142373423747123423632234§;
   import §521423129512312964123423632234§.§5214238033238046123423632234§;
   import §521423129512312964123423632234§.§dynamic use override§;
   import §521423129512312964123423632234§.§include catch each§;
   import §521423129512312964123423632234§.§throw switch if§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.loaders.Parser3DS;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.startup.StartupSettings;
   import §finally set implements§.§5214236161236174123423632234§;
   import flash.display.BitmapData;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.setTimeout;
   import §import var finally§.§5214233384233397123423632234§;
   import §import var finally§.§super for else§;
   import §in switch implements§.TextureByteData;
   import platform.client.fp10.core.service.localstorage.IResourceLocalStorage;
   
   public class §5214233863233876123423632234§ extends §include catch each§
   {
      
      public static var §5214239595239608123423632234§:IResourceLocalStorage;
      
      public static const §5214236756236769123423632234§:int = 17;
      
      private static const §null switch const§:int = 1;
      
      private static const §521423129592312972123423632234§:int = 2;
      
      private static const §null set function§:int = 3;
      
      private static const §5214234157234170123423632234§:int = 4;
      
      protected static const §5214231425231438123423632234§:int = 4;
      
      protected static const §default switch if§:int = 8;
      
      private static const §5214236376236389123423632234§:String = "images.xml";
      
      private static const §throw for in§:String = "object.3ds";
      
      public var §5214238136238149123423632234§:Object;
      
      public var §5214237990238003123423632234§:Vector.<Object3D>;
      
      public var §while var throw§:Vector.<Object3D>;
      
      private var §static use static§:§dynamic use override§;
      
      private var §try switch implements§:§super for else§;
      
      private var §521423104742310487123423632234§:ResourceData = new ResourceData();
      
      private var §final set import§:ByteArray;
      
      private var §521423123612312374123423632234§:int = -1;
      
      public function §5214233863233876123423632234§(param1:§52142373423747123423632234§)
      {
         super(param1);
      }
      
      private function §const set switch§(param1:Event) : void
      {
         §implements use super§();
      }
      
      private function §null set with§(param1:Event) : void
      {
         this.§5214238136238149123423632234§ = this.§521423104742310487123423632234§.batchConstructor.textures;
         this.§5214236626236639123423632234§(true);
      }
      
      override public function §5214236465236478123423632234§(param1:String, param2:§5214238033238046123423632234§) : void
      {
         super.§5214236465236478123423632234§(param1,param2);
         this.§521423137622313775123423632234§();
      }
      
      private function §5214236626236639123423632234§(param1:Boolean) : void
      {
         if(§5214233843233856123423632234§(4 | 8) || !§5214239595239608123423632234§.enabled)
         {
            var _loc2_:StartupSettings = StartupSettings;
            if(flash.system.Capabilities.playerType == "Desktop" || flash.system.Capabilities.playerType == "External")
            {
               this.§521423104742310487123423632234§ = null;
            }
         }
         if(param1)
         {
            §else catch class§();
         }
         else
         {
            setTimeout(§else catch class§,0);
         }
      }
      
      override public function close() : void
      {
         switch(this.§521423123612312374123423632234§ - 2)
         {
            case 0:
               this.§static use static§.close();
               this.§finally finally dynamic§();
               break;
            case 1:
               this.§try switch implements§.close();
               break;
            case 2:
               this.§static use static§.close();
         }
         this.§5214238136238149123423632234§ = null;
         this.§try switch implements§ = null;
         this.§static use static§ = null;
      }
      
      private function §52142386723880123423632234§(param1:Event) : void
      {
         var _loc4_:XML = XML(this.§static use static§.data);
         this.§finally finally dynamic§();
         if(_loc4_.name() != "images")
         {
            var _loc6_:§5214233863233876123423632234§;
            throw new Error("Invalid map.xml contents. ResourceId=" + (_loc6_ = this).§5214239618239631123423632234§.id);
         }
         var _loc5_:Object = {};
         var _loc3_:int = 0;
         for each(var _loc2_ in _loc4_.image)
         {
            _loc3_++;
            _loc5_[_loc2_.@name] = new §5214233384233397123423632234§(_loc2_.attribute("new-name"),_loc2_.@alpha);
         }
         if(_loc3_ > 0)
         {
            this.§try switch implements§ = new §super for else§(_loc5_);
            this.§try switch implements§.addEventListener("open",this.§5214238580238593123423632234§);
            this.§try switch implements§.addEventListener("complete",this.§5214233496233509123423632234§);
            this.§try switch implements§.addEventListener("loaderError",this.§else package throw§);
            this.§try switch implements§.§5214236465236478123423632234§(§super switch switch§);
            this.§521423123612312374123423632234§ = 3;
            §5214237993238006123423632234§();
         }
         else
         {
            this.§5214233071233084123423632234§();
         }
      }
      
      public function §finally for break§(param1:int) : BitmapData
      {
         var _loc3_:Mesh = this.§5214237990238003123423632234§[param1] as Mesh;
         if(_loc3_ == null || _loc3_.faceList == null)
         {
            return null;
         }
         var _loc2_:TextureMaterial = _loc3_.faceList.material as TextureMaterial;
         if(_loc2_ == null)
         {
            return null;
         }
         return this.§5214238136238149123423632234§[_loc2_.diffuseMapURL];
      }
      
      override public function §5214236682236695123423632234§(param1:ByteArray, param2:§5214238033238046123423632234§) : Boolean
      {
         var _loc7_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc8_:ByteArray = null;
         var _loc9_:int = 0;
         var _loc3_:ByteArray = null;
         this.§5214234460234473123423632234§ = param2;
         var _loc10_:int = param1.readInt();
         this.§521423104742310487123423632234§.modelData = new ByteArray();
         param1.readBytes(this.§521423104742310487123423632234§.modelData,0,_loc10_);
         this.§final set import§ = this.§521423104742310487123423632234§.modelData;
         var _loc6_:int = param1.readInt();
         while(_loc7_ < _loc6_)
         {
            _loc4_ = param1.readUTF();
            _loc5_ = param1.readInt();
            _loc8_ = new ByteArray();
            param1.readBytes(_loc8_,0,_loc5_);
            _loc9_ = param1.readInt();
            _loc3_ = null;
            if(_loc9_ > 0)
            {
               _loc3_ = new ByteArray();
               param1.readBytes(_loc3_,0,_loc9_);
            }
            this.§521423104742310487123423632234§.imageData[§521423104742310487123423632234§.imageData.length] = new ImageData(_loc4_,new TextureByteData(_loc8_,_loc3_));
            _loc7_++;
         }
         this.§5214238351238364123423632234§();
         return true;
      }
      
      override public function get §var catch import§() : String
      {
         return "3DS";
      }
      
      private function §false package extends§() : void
      {
         if(this.§static use static§ != null)
         {
            this.§static use static§.removeEventListener("open",this.§const set switch§);
            this.§static use static§.removeEventListener("complete",this.§521423102372310250123423632234§);
            this.§static use static§.removeEventListener("ioError",this.§52142365123664123423632234§);
            this.§static use static§.removeEventListener("securityError",this.§52142365123664123423632234§);
            this.§static use static§ = null;
         }
      }
      
      override public function §521423132912313304123423632234§(param1:§throw switch if§) : void
      {
         var _loc5_:int = 0;
         var _loc2_:ImageData = null;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(this.§521423104742310487123423632234§.modelData.length);
         _loc3_.writeBytes(this.§521423104742310487123423632234§.modelData);
         var _loc4_:uint = this.§521423104742310487123423632234§.imageData.length;
         _loc3_.writeInt(_loc4_);
         while(_loc5_ < _loc4_)
         {
            _loc2_ = this.§521423104742310487123423632234§.imageData[_loc5_];
            _loc3_.writeUTF(_loc2_.name);
            _loc3_.writeInt(_loc2_.data.§while for native§.length);
            _loc3_.writeBytes(_loc2_.data.§while for native§);
            if(_loc2_.data.§return switch override§ == null)
            {
               _loc3_.writeInt(0);
            }
            else
            {
               _loc3_.writeInt(_loc2_.data.§return switch override§.length);
               _loc3_.writeBytes(_loc2_.data.§return switch override§);
            }
            _loc5_++;
         }
         this.§521423104742310487123423632234§ = null;
         param1.§do use each§(this,_loc3_);
      }
      
      private function §5214233496233509123423632234§(param1:Event) : void
      {
         var _loc2_:Object = this.§try switch implements§.§5214238136238149123423632234§.data;
         for(var _loc3_ in _loc2_)
         {
            this.§521423104742310487123423632234§.imageData.push(new ImageData(_loc3_,this.§try switch implements§.§5214238136238149123423632234§.§521423118062311819123423632234§(_loc3_)));
         }
         this.§return switch for§();
         this.§5214233071233084123423632234§();
      }
      
      override protected function §function switch try§() : void
      {
         switch(this.§521423123612312374123423632234§ - 2)
         {
            case 0:
               this.§static use static§.close();
               this.§finally finally dynamic§();
               this.§521423137622313775123423632234§();
               break;
            case 1:
               this.§try switch implements§.§else var package§();
               break;
            case 2:
               this.§static use static§.close();
               this.§false package extends§();
               this.§5214233071233084123423632234§();
         }
      }
      
      private function §5214238580238593123423632234§(param1:Event) : void
      {
         §implements use super§();
      }
      
      private function §521423102372310250123423632234§(param1:Event) : void
      {
         this.§521423104742310487123423632234§.modelData = this.§static use static§.data;
         this.§final set import§ = this.§521423104742310487123423632234§.modelData;
         this.§false package extends§();
         this.§5214238351238364123423632234§();
      }
      
      private function §5214238351238364123423632234§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Mesh = null;
         var _loc1_:Parser3DS = new Parser3DS();
         _loc1_.parse(this.§521423104742310487123423632234§.modelData);
         this.§5214237990238003123423632234§ = _loc1_.objects;
         this.§while var throw§ = _loc1_.parents;
         while(_loc2_ < this.§5214237990238003123423632234§.length)
         {
            _loc3_ = this.§5214237990238003123423632234§[_loc2_] as Mesh;
            if(_loc3_ != null)
            {
               this.§521423128902312903123423632234§(_loc3_);
            }
            _loc2_++;
         }
         if(this.§521423104742310487123423632234§.imageData.length > 0)
         {
            this.§521423104742310487123423632234§.batchConstructor.addEventListener("complete",this.§null set with§);
            this.§521423104742310487123423632234§.batchConstructor.run(4,this.§521423104742310487123423632234§.imageData);
         }
         else
         {
            this.§5214236626236639123423632234§(false);
         }
      }
      
      public function §function const with§(param1:RegExp) : Vector.<Object3D>
      {
         var _loc2_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:Object3D = null;
         var _loc3_:int = int(this.§5214237990238003123423632234§.length);
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§5214237990238003123423632234§[_loc4_];
            if(_loc5_.name != null && _loc5_.name.match(param1) != null)
            {
               if(_loc2_ == null)
               {
                  _loc2_ = new Vector.<Object3D>();
               }
               _loc2_[_loc2_.length] = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function §5214233071233084123423632234§() : void
      {
         this.§static use static§ = new §dynamic use override§();
         this.§static use static§.dataFormat = "binary";
         this.§static use static§.addEventListener("open",this.§const set switch§);
         this.§static use static§.addEventListener("complete",this.§521423102372310250123423632234§);
         this.§static use static§.addEventListener("ioError",this.§52142365123664123423632234§);
         this.§static use static§.addEventListener("securityError",this.§52142365123664123423632234§);
         this.§static use static§.load(new URLRequest(§super switch switch§ + "object.3ds"));
         this.§521423123612312374123423632234§ = 4;
         §5214237993238006123423632234§();
      }
      
      override public function §override switch package§() : void
      {
         if(this.§5214238136238149123423632234§ != null)
         {
            for each(var _loc1_ in this.§5214238136238149123423632234§)
            {
               _loc1_.dispose();
            }
         }
      }
      
      private function §52142365123664123423632234§(param1:ErrorEvent) : void
      {
         §5214234460234473123423632234§.onResourceLoadingFatalError(this,param1.text);
      }
      
      private function §finally finally dynamic§() : void
      {
         if(this.§static use static§ != null)
         {
            this.§static use static§.removeEventListener("open",this.§521423103962310409123423632234§);
            this.§static use static§.removeEventListener("complete",this.§52142386723880123423632234§);
            this.§static use static§.removeEventListener("ioError",this.§52142365123664123423632234§);
            this.§static use static§.removeEventListener("securityError",this.§52142365123664123423632234§);
            this.§static use static§ = null;
         }
      }
      
      private function §521423103962310409123423632234§(param1:Event) : void
      {
         §implements use super§();
      }
      
      private function §521423128902312903123423632234§(param1:Mesh) : void
      {
         param1.weldVertices(0.001,0.0001);
         param1.weldFaces(0.01,0.001,0.01);
         param1.calculateVerticesNormalsByAngle(1.1344640137963142,0.01);
         param1.clipping = 2;
         param1.sorting = 1;
         param1.calculateBounds();
      }
      
      private function §else package throw§(param1:§5214236161236174123423632234§) : void
      {
         §521423117982311811123423632234§(4);
      }
      
      private function §521423137622313775123423632234§() : void
      {
         this.§static use static§ = new §dynamic use override§();
         this.§static use static§.addEventListener("open",this.§521423103962310409123423632234§);
         this.§static use static§.addEventListener("complete",this.§52142386723880123423632234§);
         this.§static use static§.addEventListener("ioError",this.§52142365123664123423632234§);
         this.§static use static§.addEventListener("securityError",this.§52142365123664123423632234§);
         this.§static use static§.load(new URLRequest(§super switch switch§ + "images.xml"));
         §5214237993238006123423632234§();
         this.§521423123612312374123423632234§ = 2;
      }
      
      private function §return switch for§() : void
      {
         if(this.§try switch implements§ != null)
         {
            this.§try switch implements§.removeEventListener("open",this.§5214238580238593123423632234§);
            this.§try switch implements§.removeEventListener("complete",this.§5214233496233509123423632234§);
            this.§try switch implements§.removeEventListener("loaderError",this.§else package throw§);
            this.§try switch implements§ = null;
         }
      }
   }
}

import alternativa.tanks.engine3d.IndexedTextureConstructor;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.utils.ByteArray;
import §in switch implements§.TextureByteData;
import §in switch implements§.TextureConstructor;
import §in switch implements§.§set catch static§;

class ResourceData
{
   
   public var modelData:ByteArray;
   
   public var imageData:Vector.<ImageData> = new Vector.<ImageData>();
   
   public var batchConstructor:BatchTextureConstructor = new BatchTextureConstructor();
   
   public function ResourceData()
   {
      super();
   }
}

class ImageData
{
   
   public var name:String;
   
   public var data:TextureByteData;
   
   public function ImageData(param1:String, param2:TextureByteData)
   {
      super();
      this.name = param1;
      this.data = param2;
   }
}

class BatchTextureConstructor extends EventDispatcher implements §set catch static§
{
   
   public var textures:Object;
   
   private var e1ecf083:Vector.<ImageData>;
   
   private var b76d5e40:int;
   
   private var d32bcde9:int;
   
   private var e2767836:int;
   
   private var e6229610:int;
   
   private var d5678ff6:int;
   
   private var f78b742:Vector.<IndexedTextureConstructor>;
   
   public function BatchTextureConstructor()
   {
      super();
   }
   
   public function run(param1:int, param2:Vector.<ImageData>) : void
   {
      var _loc3_:int = 0;
      this.b76d5e40 = param1;
      this.e1ecf083 = param2;
      this.textures = {};
      this.f78b742 = new Vector.<IndexedTextureConstructor>(param1);
      while(_loc3_ < param1)
      {
         this.f78b742[_loc3_] = new IndexedTextureConstructor();
         _loc3_++;
      }
      this.d5678ff6 = 0;
      this.e2767836 = 0;
      this.cc19aa0();
   }
   
   private function cc19aa0() : void
   {
      var _loc2_:int = 0;
      var _loc1_:IndexedTextureConstructor = null;
      this.e6229610 = 0;
      var _loc3_:int = this.e2767836 + this.b76d5e40;
      if(_loc3_ > this.e1ecf083.length)
      {
         _loc3_ = int(this.e1ecf083.length);
      }
      this.d32bcde9 = _loc3_ - this.e2767836;
      while(_loc2_ < this.d32bcde9)
      {
         _loc1_ = this.f78b742[_loc2_];
         _loc1_.index = this.e2767836 + _loc2_;
         _loc1_.createTexture(this.e1ecf083[_loc1_.index].data,this);
         _loc2_++;
      }
      this.e2767836 = _loc3_;
   }
   
   private function complete() : void
   {
      this.f78b742 = null;
      this.e1ecf083 = null;
      dispatchEvent(new Event("complete"));
   }
   
   public function onTextureReady(param1:TextureConstructor) : void
   {
      var _loc2_:IndexedTextureConstructor = IndexedTextureConstructor(param1);
      this.textures[this.e1ecf083[_loc2_.index].name] = _loc2_.texture;
      ++this.d5678ff6;
      ++this.e6229610;
      if(this.d5678ff6 == this.e1ecf083.length)
      {
         this.complete();
      }
      else if(this.e6229610 == this.d32bcde9)
      {
         this.cc19aa0();
      }
   }
}
