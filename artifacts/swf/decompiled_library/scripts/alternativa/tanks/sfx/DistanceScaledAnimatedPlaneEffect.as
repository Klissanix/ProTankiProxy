package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import alternativa.math.Vector3;
   import §var set var§.§521423132492313262123423632234§;
   
   public class DistanceScaledAnimatedPlaneEffect extends AnimatedPlaneEffect
   {
      
      private static const §throw set dynamic§:Number = 3000;
      
      private static const §default var class§:Number = 0.0002;
      
      private static const v:Vector3 = new Vector3();
      
      public function DistanceScaledAnimatedPlaneEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      override public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = super.play(param1,param2);
         if(_loc4_)
         {
            v.reset(§5214238195238208123423632234§.x,§5214238195238208123423632234§.y,§5214238195238208123423632234§.z);
            _loc3_ = param2.§dynamic final§.distanceTo(v);
            if(_loc3_ > 3000)
            {
               scale += _loc3_ * 0.0002;
            }
            return true;
         }
         return false;
      }
   }
}

