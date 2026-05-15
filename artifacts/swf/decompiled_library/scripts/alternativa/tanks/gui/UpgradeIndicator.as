package alternativa.tanks.gui
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class UpgradeIndicator extends Sprite
   {
      
      private static const §5214236542236555123423632234§:Class = §c167505_png$043b367cae3864e39b61f4c79926bc92-2138878127§;
      
      private static const §5214233721233734123423632234§:Class = f684089_png$223f20bfe32438a7580af52badc177dc103690075;
      
      private static const §include for for§:Class = e1ada05_png$859e475c3d6ec7d5ebda2809aaf3f0fd1966252133;
      
      private static const §each use for§:Class = §S1gdge9_png$e8955f38729c62abae84668b01ca6454-1685123234§;
      
      private static const §for set false§:Vector.<BitmapData> = new Vector.<BitmapData>(4);
      
      §for set false§[0] = new §5214236542236555123423632234§().bitmapData;
      §for set false§[1] = new §5214233721233734123423632234§().bitmapData;
      §for set false§[2] = new §include for for§().bitmapData;
      §for set false§[3] = new §each use for§().bitmapData;
      
      public function UpgradeIndicator(param1:int)
      {
         super();
         var _loc2_:Bitmap = new Bitmap(§for set false§[param1]);
         addChild(_loc2_);
      }
   }
}

