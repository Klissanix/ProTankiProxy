package alternativa.tanks.service.itempropertyparams
{
   import §5214233059233072123423632234§.ItemProperty;
   import alternativa.tanks.gui.ItemPropertyIcon;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class ItemPropertyParams
   {
      
      private var §function package var§:int;
      
      private var §5214235530235543123423632234§:BitmapData;
      
      private var §5214231331231344123423632234§:String;
      
      private var properties:Vector.<ItemProperty>;
      
      private var §5214235580235593123423632234§:UpgradeAggregationMode;
      
      private var _icon:ItemPropertyIcon;
      
      private var §extends while§:Number;
      
      public function ItemPropertyParams(param1:int, param2:BitmapData, param3:String, param4:Vector.<ItemProperty>, param5:UpgradeAggregationMode, param6:Number)
      {
         super();
         this.§function package var§ = param1;
         this.§5214235530235543123423632234§ = param2;
         this.§5214231331231344123423632234§ = param3;
         this.properties = param4;
         this.§5214235580235593123423632234§ = param5;
         this.§extends while§ = param6;
         this._icon = new ItemPropertyIcon(param2);
      }
      
      public function getMultiplier() : Number
      {
         return this.§extends while§;
      }
      
      public function get icon() : ItemPropertyIcon
      {
         return this._icon;
      }
      
      public function createBitmap() : Bitmap
      {
         return new Bitmap(this.bitmapData);
      }
      
      public function get name() : String
      {
         return this.§5214231331231344123423632234§;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§5214235530235543123423632234§;
      }
      
      public function get method_2073() : int
      {
         return this.§function package var§;
      }
      
      public function getAggregationMode() : UpgradeAggregationMode
      {
         return this.§5214235580235593123423632234§;
      }
      
      public function getProperties() : Vector.<ItemProperty>
      {
         return this.properties;
      }
   }
}

