package alternativa.tanks.gui
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class PreviewBonusItem extends Sprite implements §5214235988236001123423632234§
   {
      
      private var §5214236870236883123423632234§:§include catch with§;
      
      private var §super use switch§:Bitmap;
      
      private var §5214235501235514123423632234§:Number;
      
      private var §52142387023883123423632234§:Number;
      
      public function PreviewBonusItem(param1:§include catch with§, param2:Number, param3:Number)
      {
         super();
         this.§5214236870236883123423632234§ = param1;
         this.§5214235501235514123423632234§ = param2;
         this.§52142387023883123423632234§ = param3;
         this.init();
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         var _loc2_:§include catch with§ = this.§5214236870236883123423632234§;
         if(_loc2_.§5214239618239631123423632234§.id == param1.§5214239618239631123423632234§.id)
         {
            this.setPreview(this.§5214236870236883123423632234§.data);
         }
      }
      
      private function setPreview(param1:BitmapData) : void
      {
         if(this.§super use switch§ != null && this.contains(this.§super use switch§))
         {
            removeChild(this.§super use switch§);
         }
         this.§super use switch§ = new Bitmap(param1);
         addChild(this.§super use switch§);
         this.§super use switch§.x = this.§5214235501235514123423632234§ - this.§super use switch§.width >> 1;
         this.§super use switch§.y = this.§52142387023883123423632234§ - this.§super use switch§.height >> 1;
      }
      
      private function init() : void
      {
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,this.§5214235501235514123423632234§,this.§52142387023883123423632234§);
         graphics.endFill();
         var _loc1_:§include catch with§ = this.§5214236870236883123423632234§;
         if(_loc1_.§5214239618239631123423632234§.§521423137152313728123423632234§ && (_loc2_.§else for include§ & 1) == 0)
         {
            this.§5214236870236883123423632234§.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
         }
         else
         {
            this.setPreview(this.§5214236870236883123423632234§.data);
         }
      }
   }
}

