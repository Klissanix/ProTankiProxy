package §finally if§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   
   public class §finally catch while§ extends Sprite
   {
      
      private const §for const for§:int = 45;
      
      private var §521423110492311062123423632234§:Shape = new Shape();
      
      private var value:Number;
      
      private var color:uint;
      
      private var §5214239969239982123423632234§:uint;
      
      private var §class null§:int;
      
      private var §use const break§:Number;
      
      private var §5214239565239578123423632234§:Boolean;
      
      public function §finally catch while§(param1:uint, param2:uint, param3:int, param4:Number, param5:Boolean = false)
      {
         super();
         this.color = param1;
         this.§5214239969239982123423632234§ = param2;
         this.§class null§ = param3;
         this.§use const break§ = param4;
         this.§5214239565239578123423632234§ = param5;
         this.§521423110492311062123423632234§.filters = [new GlowFilter(0,0.6,3,3,2,3)];
         addChild(this.§521423110492311062123423632234§);
      }
      
      public function §5214233910233923123423632234§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:Graphics = this.§521423110492311062123423632234§.graphics;
         _loc1_.clear();
         _loc1_.moveTo(0,0 - this.§class null§);
         var _loc2_:int = 45 * this.value;
         _loc1_.moveTo(0,0 - this.§class null§);
         _loc1_.lineStyle(this.§use const break§,this.§5214239969239982123423632234§);
         _loc3_ = 45;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc3_ * 2 * 3.141592653589793 / 180;
            if(_loc3_ == _loc2_ - 1)
            {
               _loc1_.lineStyle(this.§use const break§,this.color);
            }
            _loc1_.lineTo(0 - Math.cos(_loc4_) * this.§class null§ * (this.§5214239565239578123423632234§ ? -1 : 1),0 - Math.sin(_loc4_) * this.§class null§);
            _loc3_--;
         }
      }
      
      public function §break var const§(param1:Number) : void
      {
         this.value = Math.max(0,Math.min(1,param1));
         this.§5214233910233923123423632234§();
      }
   }
}

