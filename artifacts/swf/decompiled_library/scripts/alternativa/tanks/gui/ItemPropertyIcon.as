package alternativa.tanks.gui
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import §in set var§.§521423106942310707123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   
   public class ItemPropertyIcon extends Sprite
   {
      
      public var §with switch const§:Bitmap;
      
      private var label:§5214231141231154123423632234§;
      
      private const space:int = 2;
      
      public function ItemPropertyIcon(param1:BitmapData)
      {
         super();
         var _loc2_:BitmapData = ItemInfoPanelBitmaps.§super catch set§;
         var _loc3_:BitmapData = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         _loc3_.draw(_loc2_);
         _loc3_.draw(param1,new Matrix(1,0,0,1,1,1));
         this.§with switch const§ = new Bitmap(_loc3_);
         addChild(this.§with switch const§);
         this.label = new §521423106942310707123423632234§();
         this.label.§521423102842310297123423632234§ = 10;
         addChild(this.label);
         this.label.color = 59156;
         this.label.align = "center";
         this.label.sharpness = -100;
         this.label.thickness = 100;
         this.d49fccf4();
         this.label.y = this.§with switch const§.height + 2;
      }
      
      public function removeValue() : void
      {
         this.label.text = "";
      }
      
      private function d49fccf4() : void
      {
         if(this.§with switch const§.width > this.label.textWidth)
         {
            this.label.x = Math.round((this.§with switch const§.width - this.label.textWidth) * 0.5) - 3;
         }
         else if(this.label.textWidth > this.§with switch const§.width)
         {
            this.label.x = -Math.round((this.label.textWidth - this.§with switch const§.width) * 0.5) - 3;
         }
         else
         {
            this.label.x = -3;
         }
      }
      
      public function setValue(param1:String, param2:uint) : void
      {
         this.label.text = param1;
         this.label.color = param2;
         this.d49fccf4();
      }
      
      public function getLabel() : DisplayObject
      {
         return this.label;
      }
   }
}

