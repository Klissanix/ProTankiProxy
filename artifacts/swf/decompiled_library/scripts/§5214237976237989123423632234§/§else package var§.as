package §5214237976237989123423632234§
{
   import §5214235677235690123423632234§.ColorTransformEntry;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import flash.geom.ColorTransform;
   
   public class §else package var§ extends AnimatedSprite3D
   {
      
      private static var §else const var§:int = -1;
      
      private static var §super switch return§:Vector.<§else package var§> = new Vector.<§else package var§>(20);
      
      public var §native use function§:Vector3 = new Vector3();
      
      public var §5214237830237843123423632234§:Number = 0;
      
      public var §521423114522311465123423632234§:Number;
      
      public var §521423134792313492123423632234§:int;
      
      public function §else package var§()
      {
         super(100,100);
         softAttenuation = 130;
         colorTransform = new ColorTransform();
      }
      
      public static function §5214232838232851123423632234§() : §else package var§
      {
         if(§else const var§ == -1)
         {
            return new §else package var§();
         }
         var _loc1_:§else package var§ = §super switch return§[§else const var§];
         §super switch return§[§else const var§--] = null;
         _loc1_.reset();
         return _loc1_;
      }
      
      private static function §each catch throw§(param1:ColorTransformEntry, param2:ColorTransformEntry, param3:Number, param4:ColorTransform) : void
      {
         param4.alphaMultiplier = param1.alphaMultiplier + param3 * (param2.alphaMultiplier - param1.alphaMultiplier);
         param4.alphaOffset = param1.alphaOffset + param3 * (param2.alphaOffset - param1.alphaOffset);
         param4.redMultiplier = param1.redMultiplier + param3 * (param2.redMultiplier - param1.redMultiplier);
         param4.redOffset = param1.redOffset + param3 * (param2.redOffset - param1.redOffset);
         param4.greenMultiplier = param1.greenMultiplier + param3 * (param2.greenMultiplier - param1.greenMultiplier);
         param4.greenOffset = param1.greenOffset + param3 * (param2.greenOffset - param1.greenOffset);
         param4.blueMultiplier = param1.blueMultiplier + param3 * (param2.blueMultiplier - param1.blueMultiplier);
         param4.blueOffset = param1.blueOffset + param3 * (param2.blueOffset - param1.blueOffset);
      }
      
      private static function §52142395223965123423632234§(param1:ColorTransformEntry, param2:ColorTransform) : void
      {
         param2.alphaMultiplier = param1.alphaMultiplier;
         param2.alphaOffset = param1.alphaOffset;
         param2.redMultiplier = param1.redMultiplier;
         param2.redOffset = param1.redOffset;
         param2.greenMultiplier = param1.greenMultiplier;
         param2.greenOffset = param1.greenOffset;
         param2.blueMultiplier = param1.blueMultiplier;
         param2.blueOffset = param1.blueOffset;
      }
      
      public function reset() : void
      {
         var _loc1_:ColorTransform = colorTransform;
         if(_loc1_ != null)
         {
            _loc1_.redMultiplier = 1;
            _loc1_.greenMultiplier = 1;
            _loc1_.blueMultiplier = 1;
            _loc1_.alphaMultiplier = 1;
            _loc1_.redOffset = 0;
            _loc1_.greenOffset = 0;
            _loc1_.blueOffset = 0;
            _loc1_.alphaOffset = 0;
         }
         alpha = 1;
      }
      
      public function §521423115242311537123423632234§(param1:Number, param2:Vector.<ColorTransformEntry>) : void
      {
         var _loc3_:Number = NaN;
         var _loc5_:ColorTransformEntry = null;
         var _loc4_:int = 0;
         var _loc6_:ColorTransformEntry = null;
         if(param2 != null)
         {
            _loc3_ = this.§5214237830237843123423632234§ / param1;
            if(_loc3_ <= 0)
            {
               _loc5_ = param2[0];
               §52142395223965123423632234§(_loc5_,colorTransform);
            }
            else if(_loc3_ >= 1)
            {
               _loc5_ = param2[param2.length - 1];
               §52142395223965123423632234§(_loc5_,colorTransform);
            }
            else
            {
               _loc4_ = 1;
               _loc5_ = param2[0];
               _loc6_ = param2[1];
               while(_loc6_.t < _loc3_)
               {
                  _loc4_++;
                  _loc5_ = _loc6_;
                  _loc6_ = param2[_loc4_];
               }
               _loc3_ = (_loc3_ - _loc5_.t) / (_loc6_.t - _loc5_.t);
               §each catch throw§(_loc5_,_loc6_,_loc3_,colorTransform);
            }
            alpha = colorTransform.alphaMultiplier;
         }
      }
      
      public function §5214238823101123423632234§() : void
      {
         clear();
         §super switch return§[++§else const var§] = this;
      }
   }
}

