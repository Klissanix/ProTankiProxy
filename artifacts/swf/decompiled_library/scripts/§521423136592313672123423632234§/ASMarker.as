package §521423136592313672123423632234§
{
   import §521423120812312094123423632234§.§5214234120234133123423632234§;
   import §521423122592312272123423632234§.MarkerBitmaps;
   import alternativa.math.Vector3;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class ASMarker extends Sprite
   {
      
      private static const §var var class§:Class = e4b6f5h_png$b10704f32c0315c8c7e258f6905d0d051417936026;
      
      private static const §implements package implements§:BitmapData = Bitmap(new §var var class§()).bitmapData;
      
      private var container:Sprite = new Sprite();
      
      private var §5214237619237632123423632234§:Bitmap;
      
      private var position:Vector3;
      
      public function ASMarker(param1:Vector3)
      {
         super();
         this.position = param1;
         this.c532e65();
      }
      
      private static function db290e4(param1:§5214234120234133123423632234§) : Bitmap
      {
         return new Bitmap(MarkerBitmaps.getMarkerBitmapData(param1),"auto",true);
      }
      
      private function c532e65() : void
      {
         this.§5214237619237632123423632234§ = db290e4(§5214234120234133123423632234§.§implements set implements§);
         addChild(this.container);
         var _loc1_:Bitmap = new Bitmap(§implements package implements§);
         _loc1_.x = 3;
         _loc1_.y = 1;
         addChild(_loc1_);
         this.container.addChild(this.§5214237619237632123423632234§);
         this.visible = true;
      }
      
      public function readPosition3D(param1:Vector3) : void
      {
         param1.copy(this.position);
         param1.z += 350;
      }
   }
}

