package §in switch implements§
{
   import alternativa.utils.BitmapUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class TextureConstructor
   {
      
      private var §dynamic set while§:BitmapData;
      
      private var listener:§set catch static§;
      
      private var loader:Loader;
      
      private var §for var if§:TextureByteData;
      
      private var §5214233355233368123423632234§:Boolean;
      
      public function TextureConstructor()
      {
         super();
      }
      
      private function edee4a1(param1:Event) : void
      {
         var _loc2_:BitmapData = null;
         if(this.§5214233355233368123423632234§)
         {
            Bitmap(this.loader.content).bitmapData.dispose();
            this.loader.unload();
            this.loader = null;
         }
         else
         {
            _loc2_ = Bitmap(this.loader.content).bitmapData;
            this.loader.contentLoaderInfo.removeEventListener("complete",this.edee4a1);
            this.loader.unload();
            this.§dynamic set while§ = BitmapUtils.mergeBitmapAlpha(this.§dynamic set while§,_loc2_,true);
            this.complete();
         }
      }
      
      private function fb076f8(param1:Event) : void
      {
         if(this.§5214233355233368123423632234§)
         {
            Bitmap(this.loader.content).bitmapData.dispose();
            this.loader.unload();
            this.loader = null;
         }
         else
         {
            this.§dynamic set while§ = Bitmap(this.loader.content).bitmapData;
            this.loader.contentLoaderInfo.removeEventListener("complete",this.fb076f8);
            this.loader.unload();
            if(this.§for var if§.§return switch override§ != null)
            {
               this.loadBytes(this.§for var if§.§return switch override§,this.edee4a1);
            }
            else
            {
               this.complete();
            }
         }
      }
      
      private function complete() : void
      {
         this.loader = null;
         this.§for var if§ = null;
         var _loc1_:§set catch static§ = this.listener;
         this.listener = null;
         _loc1_.onTextureReady(this);
      }
      
      public function get texture() : BitmapData
      {
         return this.§dynamic set while§;
      }
      
      private function loadBytes(param1:ByteArray, param2:Function) : void
      {
         param1.position = 0;
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener("complete",param2);
         this.loader.loadBytes(param1);
      }
      
      public function cancel() : void
      {
         this.§5214233355233368123423632234§ = true;
      }
      
      public function createTexture(param1:TextureByteData, param2:§set catch static§) : void
      {
         if(this.loader != null)
         {
            throw new Error("Construction in progress");
         }
         if(param1 == null)
         {
            throw new ArgumentError("Parameter textureData is null");
         }
         if(param1.§while for native§ == null)
         {
            throw new ArgumentError("Diffuse data is null");
         }
         this.§5214233355233368123423632234§ = false;
         this.§for var if§ = param1;
         this.listener = param2;
         this.loadBytes(param1.§while for native§,this.fb076f8);
      }
   }
}

