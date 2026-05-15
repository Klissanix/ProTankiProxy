package §5214234069234082123423632234§
{
   import §5214233087233100123423632234§.§super var switch§;
   import §5214238511238524123423632234§.TipItemModelBase;
   import §5214238511238524123423632234§.§set package get§;
   import alternativa.tanks.loader.ILoaderWindowService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import platform.client.fp10.core.model.§do set function§;
   
   public class TipItemModel extends TipItemModelBase implements §set package get§, §do set function§
   {
      
      public static var loader:ILoaderWindowService;
      
      public function TipItemModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:BitmapData = null;
         var _loc2_:§super var switch§ = getInitParam().preview;
         var _loc3_:§super var switch§ = _loc2_;
         if((_loc3_.§else for include§ & 1) != 0)
         {
            _loc1_ = _loc2_.data;
            loader.showTip(new Bitmap(_loc1_));
         }
      }
   }
}

