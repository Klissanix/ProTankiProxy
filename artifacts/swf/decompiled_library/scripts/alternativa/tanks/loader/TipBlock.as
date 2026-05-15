package alternativa.tanks.loader
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class TipBlock extends Sprite
   {
      
      private var §function break§:Sprite;
      
      public function TipBlock()
      {
         super();
         this.§function break§ = new Sprite();
         this.§function break§.x = 8;
         this.§function break§.y = 9;
         addChild(this.§function break§);
      }
      
      public function showTip(param1:DisplayObject) : void
      {
         if(this.§function break§.numChildren > 0)
         {
            this.§function break§.removeChildAt(0);
         }
         this.§function break§.addChild(param1);
      }
      
      public function hasAnyTip() : Boolean
      {
         return this.§function break§.numChildren > 0;
      }
   }
}

