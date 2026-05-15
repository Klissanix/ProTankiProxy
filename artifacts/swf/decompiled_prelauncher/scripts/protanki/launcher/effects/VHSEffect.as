package protanki.launcher.effects
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Rectangle;
   
   public class VHSEffect extends Sprite
   {
      
      private var widthStage:int;
      
      private var heightStage:int;
      
      private var noiseBitmap:Bitmap;
      
      private var noiseData:BitmapData;
      
      private var scanlines:Sprite;
      
      private var distortion:BitmapData;
      
      private var distortionBitmap:Bitmap;
      
      private var offset:int = 0;
      
      public function VHSEffect(param1:int, param2:int)
      {
         super();
         this.widthStage = param1;
         this.heightStage = param2;
         this.createScanlines();
         this.createNoise();
         this.createDistortion();
         addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      private function createScanlines() : void
      {
         this.scanlines = new Sprite();
         var _loc1_:int = 0;
         while(_loc1_ < this.heightStage)
         {
            this.scanlines.graphics.beginFill(0,0.15);
            this.scanlines.graphics.drawRect(0,_loc1_,this.widthStage,1);
            this.scanlines.graphics.endFill();
            _loc1_ += 3;
         }
         this.scanlines.blendMode = BlendMode.MULTIPLY;
         addChild(this.scanlines);
      }
      
      private function createNoise() : void
      {
         this.noiseData = new BitmapData(this.widthStage,this.heightStage,false,0);
         this.noiseBitmap = new Bitmap(this.noiseData);
         this.noiseBitmap.alpha = 0.05;
         this.noiseBitmap.blendMode = BlendMode.OVERLAY;
         addChild(this.noiseBitmap);
      }
      
      private function createDistortion() : void
      {
         this.distortion = new BitmapData(this.widthStage,this.heightStage,true,0);
         this.distortionBitmap = new Bitmap(this.distortion);
         this.distortionBitmap.blendMode = BlendMode.ADD;
         addChild(this.distortionBitmap);
      }
      
      private function update(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.noiseData.noise(Math.random() * int.MAX_VALUE);
         ++this.offset;
         this.scanlines.y = this.offset % 3;
         var _loc2_:Array = [1,0,0,0,Math.random() * 6 - 3,0,1,0,0,Math.random() * 6 - 3,0,0,1,0,Math.random() * 6 - 3,0,0,0,1,0];
         this.filters = [new ColorMatrixFilter(_loc2_)];
         this.distortion.fillRect(new Rectangle(0,0,this.widthStage,this.heightStage),0);
         if(Math.random() < 0.04)
         {
            _loc3_ = Math.random() * this.heightStage;
            _loc4_ = 2 + Math.random() * 4;
            this.distortion.fillRect(new Rectangle(0,_loc3_,this.widthStage,_loc4_),822083583);
         }
         if(Math.random() < 0.02)
         {
            _loc5_ = Math.random() * this.heightStage;
            this.distortion.fillRect(new Rectangle(0,_loc5_,this.widthStage,6),1627389951);
         }
         this.x = Math.random() * 2 - 1;
         this.y = Math.random() * 2 - 1;
      }
   }
}

