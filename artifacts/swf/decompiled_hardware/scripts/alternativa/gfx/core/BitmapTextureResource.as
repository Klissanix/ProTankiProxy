package alternativa.gfx.core
{
   import alternativa.engine3d.materials.TextureResourcesRegistry;
   import alternativa.gfx.alternativagfx;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.Texture;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   use namespace alternativagfx;
   
   public class BitmapTextureResource extends TextureResource
   {
      
      private static var abb5c7e:Texture;
      
      private static var f7424ee:Context3D;
      
      private static const point:Point = new Point();
      
      private static const b29c0d81:Rectangle = new Rectangle();
      
      private static const matrix:Matrix = new Matrix();
      
      private var d41b5055:int = 1;
      
      private var b532a39e:BitmapData;
      
      private var _mipMapping:Boolean;
      
      private var c33cb615:Boolean;
      
      private var a3922492:Boolean;
      
      private var f5a1070c:Number = 1;
      
      private var b528dbdd:Number = 1;
      
      private var f312866c:int;
      
      private var d3a1f687:int;
      
      public function BitmapTextureResource(param1:BitmapData, param2:Boolean, param3:Boolean = false, param4:Boolean = false)
      {
         super();
         this.b532a39e = param1;
         this._mipMapping = param2;
         this.c33cb615 = param3;
         this.a3922492 = param4;
         this.f312866c = Math.pow(2,Math.ceil(Math.log(this.b532a39e.width) / 0.6931471805599453));
         this.d3a1f687 = Math.pow(2,Math.ceil(Math.log(this.b532a39e.height) / 0.6931471805599453));
         if(this.f312866c > 2048)
         {
            this.f312866c = 2048;
         }
         if(this.d3a1f687 > 2048)
         {
            this.d3a1f687 = 2048;
         }
         if((this.b532a39e.width != this.f312866c || this.b532a39e.height != this.d3a1f687) && !this.c33cb615 && this.b532a39e.width <= 2048 && this.b532a39e.height <= 2048)
         {
            this.f5a1070c = this.b532a39e.width / this.f312866c;
            this.b528dbdd = this.b532a39e.height / this.d3a1f687;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.b532a39e;
      }
      
      public function get mipMapping() : Boolean
      {
         return this._mipMapping;
      }
      
      public function get stretchNotPowerOf2Textures() : Boolean
      {
         return this.c33cb615;
      }
      
      public function get correctionU() : Number
      {
         return this.f5a1070c;
      }
      
      public function get correctionV() : Number
      {
         return this.b528dbdd;
      }
      
      public function get calculateMipMapsUsingGPU() : Boolean
      {
         return this.a3922492;
      }
      
      public function set calculateMipMapsUsingGPU(param1:Boolean) : void
      {
         this.a3922492 = param1;
      }
      
      public function forceDispose() : void
      {
         this.d41b5055 = 1;
         this.dispose();
         this.b532a39e = null;
      }
      
      override public function dispose() : void
      {
         if(this.d41b5055 == 0)
         {
            return;
         }
         this.d41b5055--;
         if(this.d41b5055 == 0)
         {
            TextureResourcesRegistry.release(this.b532a39e);
            this.b532a39e = null;
            super.dispose();
         }
      }
      
      override public function get available() : Boolean
      {
         return this.b532a39e != null;
      }
      
      override protected function getNullTexture() : Texture
      {
         return abb5c7e;
      }
      
      private function a1f13e38() : void
      {
         useNullTexture = true;
         this._mipMapping = false;
         this.forceDispose();
      }
      
      override alternativagfx function create(param1:Context3D) : void
      {
         super.alternativagfx::create(param1);
         if(abb5c7e == null || f7424ee != param1)
         {
            abb5c7e = param1.createTexture(1,1,"bgra",false);
            abb5c7e.uploadFromBitmapData(new BitmapData(1,1,true,1439485132));
            f7424ee = param1;
         }
         if(!useNullTexture)
         {
            try
            {
               texture = param1.createTexture(this.f312866c,this.d3a1f687,"bgra",false);
            }
            catch(e:Error)
            {
               a1f13e38();
            }
         }
      }
      
      override alternativagfx function upload() : void
      {
         var _loc4_:BitmapData = null;
         var _loc1_:BitmapData = null;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:BitmapData = null;
         if(useNullTexture)
         {
            return;
         }
         if(this.b532a39e.width == this.f312866c && this.b532a39e.height == this.d3a1f687)
         {
            _loc4_ = this.b532a39e;
         }
         else
         {
            _loc4_ = new BitmapData(this.f312866c,this.d3a1f687,this.b532a39e.transparent,0);
            if(this.b532a39e.width <= 2048 && this.b532a39e.height <= 2048 && !this.c33cb615)
            {
               _loc4_.copyPixels(this.b532a39e,this.b532a39e.rect,point);
               if(this.b532a39e.width < _loc4_.width)
               {
                  _loc1_ = new BitmapData(1,this.b532a39e.height,this.b532a39e.transparent,0);
                  b29c0d81.setTo(this.b532a39e.width - 1,0,1,this.b532a39e.height);
                  _loc1_.copyPixels(this.b532a39e,b29c0d81,point);
                  matrix.setTo(_loc4_.width - this.b532a39e.width,0,0,1,this.b532a39e.width,0);
                  _loc4_.draw(_loc1_,matrix,null,null,null,false);
                  _loc1_.dispose();
               }
               if(this.b532a39e.height < _loc4_.height)
               {
                  _loc1_ = new BitmapData(this.b532a39e.width,1,this.b532a39e.transparent,0);
                  b29c0d81.setTo(0,this.b532a39e.height - 1,this.b532a39e.width,1);
                  _loc1_.copyPixels(this.b532a39e,b29c0d81,point);
                  matrix.setTo(1,0,0,_loc4_.height - this.b532a39e.height,0,this.b532a39e.height);
                  _loc4_.draw(_loc1_,matrix,null,null,null,false);
                  _loc1_.dispose();
               }
               if(this.b532a39e.width < _loc4_.width && this.b532a39e.height < _loc4_.height)
               {
                  _loc1_ = new BitmapData(1,1,this.b532a39e.transparent,0);
                  b29c0d81.setTo(this.b532a39e.width - 1,this.b532a39e.height - 1,1,1);
                  _loc1_.copyPixels(this.b532a39e,b29c0d81,point);
                  matrix.setTo(_loc4_.width - this.b532a39e.width,0,0,_loc4_.height - this.b532a39e.height,this.b532a39e.width,this.b532a39e.height);
                  _loc4_.draw(_loc1_,matrix,null,null,null,false);
                  _loc1_.dispose();
               }
            }
            else
            {
               matrix.setTo(this.f312866c / this.b532a39e.width,0,0,this.d3a1f687 / this.b532a39e.height,0,0);
               _loc4_.draw(this.b532a39e,matrix,null,null,null,true);
            }
         }
         if(this._mipMapping > 0)
         {
            this.uploadTexture(_loc4_,0);
            matrix.identity();
            _loc3_ = 1;
            _loc5_ = _loc4_.width;
            _loc6_ = _loc4_.height;
            while((_loc5_ & 1) == 0 || (_loc6_ & 1) == 0)
            {
               _loc5_ >>= 1;
               _loc6_ >>= 1;
               if(_loc5_ == 0)
               {
                  _loc5_ = 1;
               }
               if(_loc6_ == 0)
               {
                  _loc6_ = 1;
               }
               _loc2_ = new BitmapData(_loc5_,_loc6_,_loc4_.transparent,0);
               matrix.a = _loc5_ / _loc4_.width;
               matrix.d = _loc6_ / _loc4_.height;
               _loc2_.draw(_loc4_,matrix,null,null,null,false);
               this.uploadTexture(_loc2_,_loc3_++);
               _loc2_.dispose();
            }
         }
         else
         {
            this.uploadTexture(_loc4_,0);
         }
         if(_loc4_ != this.b532a39e)
         {
            _loc4_.dispose();
         }
      }
      
      protected function uploadTexture(param1:BitmapData, param2:uint) : void
      {
         try
         {
            if(texture != abb5c7e)
            {
               texture.uploadFromBitmapData(param1,param2);
            }
         }
         catch(e:Error)
         {
            a1f13e38();
         }
      }
      
      public function increaseReferencesCount() : void
      {
         this.d41b5055++;
      }
   }
}

