package alternativa.tanks.display
{
   import flash.display.Sprite;
   import §null catch catch§.§while finally use§;
   
   public class SquareSectorIndicator extends Sprite
   {
      
      private var size:Number;
      
      private var §for const override§:Number;
      
      private var §class set for§:§while finally use§;
      
      public function SquareSectorIndicator(param1:int, param2:Number, param3:uint, param4:Number, param5:Boolean)
      {
         super();
         this.size = param1;
         this.§for const override§ = param2;
         this.f4c86ae4(param3,param4);
         this.§class set for§ = new §while finally use§(param1,false,param5);
         addChild(this.§class set for§);
         mask = this.§class set for§;
      }
      
      public function setProgress(param1:Number) : void
      {
         this.§class set for§.§if use finally§(1 - param1,1);
      }
      
      private function f4c86ae4(param1:uint, param2:Number) : void
      {
         graphics.clear();
         graphics.beginFill(param1,param2);
         graphics.drawRoundRect(0,0,this.size,this.size,this.§for const override§);
         graphics.endFill();
      }
      
      public function setColor(param1:uint, param2:Number) : void
      {
         this.f4c86ae4(param1,param2);
      }
   }
}

