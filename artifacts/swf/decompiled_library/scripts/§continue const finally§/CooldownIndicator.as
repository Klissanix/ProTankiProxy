package §continue const finally§
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class CooldownIndicator extends Sprite
   {
      
      private static const §5214233581233594123423632234§:Number = 0.7853981633974483;
      
      private static const §5214234404234417123423632234§:Number = 2.356194490192345;
      
      private static const §521423125712312584123423632234§:Number = 3.9269908169872414;
      
      private static const §import package with§:Number = 5.497787143782138;
      
      private static var §do catch const§:Vector.<Point> = new <Point>[new Point(1,0),new Point(1,1),new Point(0,1),new Point(0,0),new Point(0.5,0),new Point(0.5,0.5)];
      
      private var size:Number;
      
      private var §5214239711239724123423632234§:Shape;
      
      private var §final catch include§:Number = -1;
      
      public function CooldownIndicator(param1:int, param2:int)
      {
         super();
         this.size = param1;
         graphics.beginFill(0,0.7);
         graphics.drawRoundRect(0,0,param1,param1,param2);
         graphics.endFill();
         addChild(this.§5214239711239724123423632234§ = new Shape());
      }
      
      public function draw(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(§final catch include§ == param1)
         {
            return;
         }
         §final catch include§ = param1;
         var _loc5_:Number = 2 * 3.141592653589793 * param1;
         if(_loc5_ < 0.7853981633974483)
         {
            _loc7_ = 0;
            _loc4_ = 0.5 * size * (1 + Math.tan(_loc5_));
            _loc6_ = 0;
         }
         else if(_loc5_ < 2.356194490192345)
         {
            _loc7_ = 1;
            _loc4_ = size;
            _loc6_ = 0.5 * size * (1 - 1 / Math.tan(_loc5_));
         }
         else if(_loc5_ < 3.9269908169872414)
         {
            _loc7_ = 2;
            _loc4_ = 0.5 * size * (1 - Math.tan(_loc5_));
            _loc6_ = size;
         }
         else if(_loc5_ < 5.497787143782138)
         {
            _loc7_ = 3;
            _loc4_ = 0;
            _loc6_ = 0.5 * size * (1 + 1 / Math.tan(_loc5_));
         }
         else
         {
            _loc7_ = 4;
            _loc4_ = 0.5 * size * (1 + Math.tan(_loc5_));
            _loc6_ = 0;
         }
         var _loc3_:Graphics = §5214239711239724123423632234§.graphics;
         _loc3_.clear();
         var _loc2_:Point = §do catch const§[5];
         _loc3_.beginFill(16711680);
         _loc3_.moveTo(_loc4_,_loc6_);
         while(_loc7_ < 6)
         {
            _loc2_ = §do catch const§[_loc7_];
            _loc3_.lineTo(size * _loc2_.x,size * _loc2_.y);
            _loc7_++;
         }
         _loc3_.lineTo(_loc4_,_loc6_);
         _loc3_.endFill();
         mask = §5214239711239724123423632234§;
      }
   }
}

