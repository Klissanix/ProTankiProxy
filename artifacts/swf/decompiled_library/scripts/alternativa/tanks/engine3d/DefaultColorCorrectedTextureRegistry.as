package alternativa.tanks.engine3d
{
   import §5214236145236158123423632234§.Signal;
   import alternativa.tanks.services.colortransform.§false use do§;
   import alternativa.utils.clearDictionary;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   
   public class DefaultColorCorrectedTextureRegistry implements §implements for finally§
   {
      
      private static const §with if§:ColorTransform = new ColorTransform();
      
      private const §5214234535234548123423632234§:Signal = new Signal();
      
      private const textures:Dictionary = new Dictionary();
      
      private var colorTransform:ColorTransform;
      
      public function DefaultColorCorrectedTextureRegistry()
      {
         super();
      }
      
      private function f4fcc36f() : void
      {
         var _loc1_:BitmapData = null;
         var _loc3_:int = 0;
         for(var _loc2_ in this.textures)
         {
            _loc1_ = this.textures[_loc2_];
            if(_loc1_ != _loc2_)
            {
               _loc1_.dispose();
               _loc3_++;
            }
            this.textures[_loc2_] = this.f1e2517b(_loc2_);
         }
      }
      
      public function releaseTexture(param1:BitmapData) : void
      {
      }
      
      public function getTexture(param1:BitmapData, param2:Boolean = true) : BitmapData
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture is null");
         }
         var _loc3_:BitmapData = this.textures[param1];
         if(_loc3_ == null)
         {
            _loc3_ = this.f1e2517b(param1,param2);
            this.textures[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      private function f1e2517b(param1:BitmapData, param2:Boolean = true) : BitmapData
      {
         if(this.colorTransform == null)
         {
            return param1;
         }
         if(param2)
         {
            return §false use do§.transformBitmap(param1,this.colorTransform);
         }
         return param1.clone();
      }
      
      public function clear() : void
      {
         var _loc2_:int = 0;
         var _loc1_:BitmapData = null;
         if(this.colorTransform == null)
         {
            clearDictionary(this.textures);
         }
         else
         {
            _loc2_ = 0;
            for(var _loc3_ in this.textures)
            {
               _loc1_ = this.textures[_loc3_];
               _loc1_.dispose();
               delete this.textures[_loc3_];
               _loc2_++;
            }
         }
      }
      
      public function addTextureChangeHandler(param1:Function) : void
      {
         this.§5214234535234548123423632234§.add(param1);
      }
      
      public function setColorTransform(param1:ColorTransform) : void
      {
         var _loc2_:ColorTransform = this.f6f7a264(param1);
         if(!§false use do§.equal(this.colorTransform,_loc2_))
         {
            this.colorTransform = _loc2_;
            this.f4fcc36f();
            this.§5214234535234548123423632234§.§do for get§();
         }
      }
      
      private function f6f7a264(param1:ColorTransform) : ColorTransform
      {
         var _loc2_:ColorTransform = §false use do§.clone(param1);
         if(§false use do§.equal(_loc2_,§with if§))
         {
            return null;
         }
         return _loc2_;
      }
   }
}

