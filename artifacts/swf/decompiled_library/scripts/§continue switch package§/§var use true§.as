package §continue switch package§
{
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214235574235587123423632234§.BackgroundHeader;
   import §5214236944236957123423632234§.DiscreteSprite;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class §var use true§ extends DiscreteSprite
   {
      
      public static var §5214236363236376123423632234§:ILocaleService;
      
      private static const §true for return§:int = 25;
      
      private static const §5214239862239875123423632234§:int = 22;
      
      private const §do switch null§:int = 11;
      
      private var §521423108472310860123423632234§:§native for dynamic§;
      
      private var §else switch use§:Bitmap;
      
      private var §5214232547232560123423632234§:Bitmap;
      
      public function §var use true§(param1:BitmapData = null, param2:String = null)
      {
         super();
         this.§521423108472310860123423632234§ = new §native for dynamic§();
         addChild(this.§521423108472310860123423632234§);
         if(param1 != null)
         {
            this.§5214231918231931123423632234§(param1);
         }
      }
      
      public static function §set for static§(param1:String, param2:int = -1, param3:int = -1) : §var use true§
      {
         var _loc4_:§var use true§ = new §var use true§(§5214236363236376123423632234§.getImage(param1),param1);
         _loc4_.width = param2;
         _loc4_.height = param3;
         return _loc4_;
      }
      
      override public function get height() : Number
      {
         return this.§521423108472310860123423632234§.height;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§521423108472310860123423632234§.width = param1;
         this.resize();
      }
      
      private function resize() : void
      {
         if(this.§5214232547232560123423632234§ != null)
         {
            if(this.§else switch use§.width > this.§else switch use§.height)
            {
               this.§5214232547232560123423632234§.x = this.§521423108472310860123423632234§.width - this.§5214232547232560123423632234§.width >> 1;
               this.§5214232547232560123423632234§.y = -25;
               this.§else switch use§.x = this.§521423108472310860123423632234§.width - this.§else switch use§.width >> 1;
               this.§else switch use§.y = 5 - (22 + this.§else switch use§.height >> 1);
            }
            else
            {
               this.§5214232547232560123423632234§.x = -25;
               this.§5214232547232560123423632234§.y = this.§521423108472310860123423632234§.height - this.§5214232547232560123423632234§.height >> 1;
               this.§else switch use§.x = 5 - (22 + this.§else switch use§.width >> 1);
               this.§else switch use§.y = this.§521423108472310860123423632234§.height - this.§else switch use§.height >> 1;
            }
         }
      }
      
      public function §finally set native§(param1:String) : void
      {
         this.§5214231918231931123423632234§(§5214236363236376123423632234§.getImage(param1));
      }
      
      override public function set height(param1:Number) : void
      {
         this.§521423108472310860123423632234§.height = param1;
         this.resize();
      }
      
      override public function get width() : Number
      {
         return this.§521423108472310860123423632234§.width;
      }
      
      public function §5214231918231931123423632234§(param1:BitmapData) : void
      {
         this.§else switch use§ = new Bitmap(param1);
         if(this.§else switch use§.width + 2 * 11 < BackgroundHeader.§do use return§.width)
         {
            this.§5214232547232560123423632234§ = new Bitmap(BackgroundHeader.§do use return§);
         }
         else
         {
            this.§5214232547232560123423632234§ = new Bitmap(BackgroundHeader.§521423135882313601123423632234§);
         }
         addChild(this.§5214232547232560123423632234§);
         addChild(this.§else switch use§);
         this.resize();
      }
   }
}

