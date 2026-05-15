package §5214234043234056123423632234§
{
   import alternativa.math.Vector3;
   import §else switch default§.§override for default§;
   
   public class HidableGraphicObjects implements §override for default§
   {
      
      private static const §get const package§:Vector3 = new Vector3();
      
      private var §521423129422312955123423632234§:Number;
      
      private const center:Vector3 = new Vector3();
      
      private const objects:Vector.<§if use dynamic§> = new Vector.<§if use dynamic§>();
      
      private var §521423105922310605123423632234§:int;
      
      public function HidableGraphicObjects()
      {
         super();
      }
      
      public function remove(param1:§if use dynamic§) : void
      {
         var _loc2_:int = this.objects.indexOf(param1);
         if(_loc2_ >= 0)
         {
            param1.setAlphaMultiplier(1);
            --this.§521423105922310605123423632234§;
            this.objects[_loc2_] = this.objects[this.§521423105922310605123423632234§];
            this.objects[this.§521423105922310605123423632234§] = null;
         }
      }
      
      public function restore() : void
      {
         var _loc1_:§if use dynamic§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§521423105922310605123423632234§)
         {
            _loc1_ = this.objects[_loc2_];
            _loc1_.setAlphaMultiplier(1);
            _loc2_++;
         }
      }
      
      public function clear() : void
      {
         this.objects.length = 0;
         this.§521423105922310605123423632234§ = 0;
      }
      
      private function getAlphaMultiplier(param1:Vector3) : Number
      {
         var _loc2_:Number = param1.x - this.center.x;
         var _loc4_:Number = param1.y - this.center.y;
         var _loc5_:Number = param1.z - this.center.z;
         var _loc3_:Number = _loc2_ * _loc2_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
         if(_loc3_ < this.§521423129422312955123423632234§)
         {
            return Math.sqrt(_loc3_ / this.§521423129422312955123423632234§);
         }
         return 1;
      }
      
      public function setCenterAndRadius(param1:Vector3, param2:Number) : void
      {
         this.center.copy(param1);
         this.§521423129422312955123423632234§ = param2 * param2;
      }
      
      public function add(param1:§if use dynamic§) : void
      {
         var _loc2_:* = undefined;
         if(this.objects.indexOf(param1) < 0)
         {
            _loc2_ = this.§521423105922310605123423632234§++;
            this.objects[_loc2_] = param1;
         }
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:§if use dynamic§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.§521423105922310605123423632234§)
         {
            _loc3_ = this.objects[_loc4_];
            _loc3_.readPosition(§get const package§);
            _loc3_.setAlphaMultiplier(this.getAlphaMultiplier(§get const package§));
            _loc4_++;
         }
      }
   }
}

