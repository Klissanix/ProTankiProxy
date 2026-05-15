package §5214231307231320123423632234§
{
   import flash.filters.BitmapFilter;
   import §for use if§.§521423112452311258123423632234§;
   import §override for continue§.BCSHFilter;
   
   public class BCSHData
   {
      
      private var brightness:Number;
      
      private var contrast:Number;
      
      private var saturation:Number;
      
      private var hue:Number;
      
      public function BCSHData(param1:§521423112452311258123423632234§)
      {
         super();
         this.brightness = param1.§5214238249238262123423632234§;
         this.contrast = param1.§implements for false§;
         this.saturation = param1.§break package true§;
         this.hue = param1.§5214236764236777123423632234§;
      }
      
      public function createFilter() : BitmapFilter
      {
         return BCSHFilter.createFilter(this.brightness,this.contrast,this.saturation,this.hue);
      }
   }
}

