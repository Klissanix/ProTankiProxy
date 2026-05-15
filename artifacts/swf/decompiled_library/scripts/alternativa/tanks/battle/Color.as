package alternativa.tanks.battle
{
   public class Color
   {
      
      public var §with var false§:int;
      
      public var g:int;
      
      public var b:int;
      
      public function Color(param1:int)
      {
         super();
         this.setColor(param1);
      }
      
      private static function f436b68c(param1:int) : int
      {
         return param1 & 0xFF;
      }
      
      private static function clamp(param1:int) : int
      {
         return param1 < 0 ? 0 : param1;
      }
      
      public function getColor() : int
      {
         return this.§with var false§ << 16 | this.g << 8 | this.b;
      }
      
      public function subtract(param1:Color) : void
      {
         this.§with var false§ = clamp(this.§with var false§ - param1.§with var false§);
         this.g = clamp(this.g - param1.g);
         this.b = clamp(this.b - param1.b);
      }
      
      public function setColor(param1:int) : void
      {
         this.§with var false§ = f436b68c(param1 >> 16);
         this.g = f436b68c(param1 >> 8);
         this.b = f436b68c(param1);
      }
   }
}

