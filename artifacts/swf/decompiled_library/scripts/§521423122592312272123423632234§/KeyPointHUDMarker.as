package §521423122592312272123423632234§
{
   import §521423120812312094123423632234§.§5214234120234133123423632234§;
   import alternativa.math.Vector3;
   import alternativa.tanks.models.controlpoints.hud.KeyPoint;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import §null catch catch§.§while finally use§;
   
   public class KeyPointHUDMarker extends Sprite
   {
      
      private var §521423124362312449123423632234§:KeyPoint;
      
      private var §5214237619237632123423632234§:Bitmap;
      
      private var §5214235784235797123423632234§:Bitmap;
      
      private var §class set for§:§while finally use§;
      
      private var score:Number = 0;
      
      private var container:Sprite = new Sprite();
      
      public function KeyPointHUDMarker(param1:KeyPoint, param2:Boolean)
      {
         super();
         this.§521423124362312449123423632234§ = param1;
         this.e5ad8d73(param2);
      }
      
      private static function b63c6ae1(param1:§5214234120234133123423632234§) : Bitmap
      {
         return new Bitmap(MarkerBitmaps.getMarkerBitmapData(param1),"auto",true);
      }
      
      private function b3e1c8ce(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(param2.parent == null)
         {
            if(param1.parent != null)
            {
               this.container.removeChild(param1);
            }
            this.container.addChild(param2);
         }
      }
      
      private function e74c5946() : void
      {
         this.container.visible = true;
         this.b3e1c8ce(this.§5214237619237632123423632234§,this.§5214235784235797123423632234§);
         this.container.mask = this.§class set for§;
      }
      
      public function readPosition3D(param1:Vector3) : void
      {
         this.§521423124362312449123423632234§.readPosition(param1);
      }
      
      public function getKeyPoint() : KeyPoint
      {
         return this.§521423124362312449123423632234§;
      }
      
      private function b259457a() : void
      {
         this.container.visible = false;
      }
      
      private function a2ad9754() : void
      {
         this.container.visible = true;
         this.b3e1c8ce(this.§5214235784235797123423632234§,this.§5214237619237632123423632234§);
         this.container.mask = this.§class set for§;
      }
      
      public function update() : void
      {
         this.setScore(this.§521423124362312449123423632234§.getClientProgress());
      }
      
      private function e5ad8d73(param1:Boolean) : void
      {
         this.§5214237619237632123423632234§ = b63c6ae1(§5214234120234133123423632234§.§implements set implements§);
         this.§5214235784235797123423632234§ = b63c6ae1(§5214234120234133123423632234§.§521423107532310766123423632234§);
         addChild(b63c6ae1(§5214234120234133123423632234§.§const use while§));
         addChild(this.container);
         this.§class set for§ = new §while finally use§(this.§5214237619237632123423632234§.width,false,param1);
         this.container.addChild(this.§class set for§);
         addChild(new Bitmap(MarkerBitmaps.getLetterImage(this.§521423124362312449123423632234§.getName().charAt(0))));
         this.b259457a();
      }
      
      private function setScore(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 < -100)
         {
            param1 = -100;
         }
         else if(param1 > 100)
         {
            param1 = 100;
         }
         if(this.score != param1)
         {
            if(param1 == 0)
            {
               this.b259457a();
            }
            else
            {
               _loc2_ = (param1 > 0 ? param1 : -param1) / 100;
               this.§class set for§.§if use finally§(1 - _loc2_,1);
               if(param1 < 0)
               {
                  this.e74c5946();
               }
               else if(param1 > 0)
               {
                  this.a2ad9754();
               }
            }
            this.score = param1;
         }
      }
   }
}

