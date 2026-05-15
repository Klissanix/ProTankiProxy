package alternativa.tanks.loader
{
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class LoaderClipLoaderAsset extends Sprite
   {
      
      private static var §521423124632312476123423632234§:Class = bullets_swf$2b2c96106c9b0cedd8f80972446d0953735721579;
      
      private var loader:Loader;
      
      public function LoaderClipLoaderAsset()
      {
         super();
         var _loc1_:LoaderContext = new LoaderContext();
         _loc1_.applicationDomain = ApplicationDomain.currentDomain;
         _loc1_.allowCodeImport = true;
         loader = new Loader();
         loader.loadBytes(new §521423124632312476123423632234§(),_loc1_);
         addChild(loader);
      }
   }
}

