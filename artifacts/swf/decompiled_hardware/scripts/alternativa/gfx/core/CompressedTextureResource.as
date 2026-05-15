package alternativa.gfx.core
{
   import alternativa.gfx.alternativagfx;
   import flash.display3D.Context3D;
   import flash.utils.ByteArray;
   
   use namespace alternativagfx;
   
   public class CompressedTextureResource extends TextureResource
   {
      
      private var f14bf514:ByteArray;
      
      private var _width:int;
      
      private var _height:int;
      
      private var e118aacb:String;
      
      public function CompressedTextureResource(param1:ByteArray)
      {
         super();
         this.f14bf514 = param1;
         this.f14bf514.endian = "littleEndian";
         this.f14bf514.position = 6;
         var _loc2_:uint = uint(this.f14bf514.readByte());
         switch(_loc2_ & 0x7F)
         {
            case 0:
            case 1:
               this.e118aacb = "bgra";
               break;
            case 2:
            case 3:
               this.e118aacb = "compressed";
               break;
            case 4:
            case 5:
               this.e118aacb = "compressedAlpha";
         }
         this._width = 1 << this.f14bf514.readByte();
         this._height = 1 << this.f14bf514.readByte();
         this.f14bf514.position = 0;
      }
      
      public function get byteArray() : ByteArray
      {
         return this.f14bf514;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get format() : String
      {
         return this.e118aacb;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.f14bf514 = null;
         this._width = 0;
         this._height = 0;
         this.e118aacb = null;
      }
      
      override public function get available() : Boolean
      {
         return this.f14bf514 != null;
      }
      
      override alternativagfx function create(param1:Context3D) : void
      {
         super.alternativagfx::create(param1);
         texture = param1.createTexture(this._width,this._height,this.e118aacb,false);
      }
      
      override alternativagfx function upload() : void
      {
         super.alternativagfx::upload();
         texture.uploadCompressedTextureFromByteArray(this.f14bf514,0,this._width < 1024);
      }
   }
}

