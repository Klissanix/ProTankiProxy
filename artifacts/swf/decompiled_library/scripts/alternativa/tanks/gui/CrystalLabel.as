package alternativa.tanks.gui
{
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214237509237522123423632234§.CrystalIcon;
   import flash.display.Bitmap;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §in set var§.§521423106942310707123423632234§;
   
   public class CrystalLabel extends Sprite
   {
      
      private var §default for final§:Bitmap;
      
      private var label:§521423106942310707123423632234§;
      
      private var color:uint = 16777215;
      
      private var §if finally switch§:uint = 11645361;
      
      private var line:Shape = new Shape();
      
      private var §final switch implements§:Boolean = false;
      
      public function CrystalLabel(param1:int = 0)
      {
         super();
         mouseEnabled = false;
         this.label = new §521423106942310707123423632234§();
         this.§default for final§ = CrystalIcon.createSmallInstance();
         addChild(this.label);
         addChild(this.§default for final§);
         this.§default for final§.y = 4;
         this.setCost(param1);
      }
      
      public function setCost(param1:int) : void
      {
         this.label.text = §521423133302313343123423632234§.§get catch catch§(param1,false);
         this.§default for final§.x = this.label.x + this.label.textWidth + 5;
         this.setStrike(false);
      }
      
      public function setSharpness(param1:int) : void
      {
         this.label.sharpness = param1;
      }
      
      public function setStrikeColor(param1:int) : void
      {
         this.§if finally switch§ = param1;
      }
      
      public function setColor(param1:int) : void
      {
         this.color = param1;
         if(!this.§final switch implements§)
         {
            this.label.textColor = param1;
         }
      }
      
      public function setText(param1:String) : void
      {
         this.label.text = param1;
         this.§default for final§.x = this.label.x + this.label.textWidth + 5;
      }
      
      public function setStrike(param1:Boolean) : void
      {
         var _loc2_:Graphics = null;
         var _loc3_:int = 0;
         this.§final switch implements§ = param1;
         if(param1)
         {
            this.label.textColor = this.§if finally switch§;
            _loc2_ = this.line.graphics;
            _loc2_.clear();
            _loc2_.lineStyle(1,this.§if finally switch§);
            _loc3_ = int(this.label.y + this.label.height * 0.5) + 1;
            _loc2_.moveTo(0,_loc3_);
            _loc2_.lineTo(0 + width + 2,_loc3_);
            if(!contains(this.line))
            {
               addChild(this.line);
            }
         }
         else
         {
            this.label.textColor = this.color;
            if(contains(this.line))
            {
               removeChild(this.line);
            }
         }
      }
      
      public function setThickness(param1:int) : void
      {
         this.label.thickness = param1;
      }
   }
}

