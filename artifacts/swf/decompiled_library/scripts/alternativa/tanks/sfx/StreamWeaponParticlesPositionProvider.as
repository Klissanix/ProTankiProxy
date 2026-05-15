package alternativa.tanks.sfx
{
   import §5214234283234296123423632234§.§5214235676235689123423632234§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import §5214237976237989123423632234§.§else package var§;
   import alternativa.engine3d.core.Object3D;
   import §var set var§.§521423132492313262123423632234§;
   
   public class StreamWeaponParticlesPositionProvider extends §final switch return§ implements §class use return§
   {
      
      private var §while throw§:§5214235676235689123423632234§;
      
      private var §5214235392235405123423632234§:CollisionObject3DPositionProvider;
      
      private var §521423132142313227123423632234§:Vector.<Number> = new <Number>[0.1,0.3,0.5,0.8,0.9,1];
      
      private var §else finally finally§:Vector.<Number> = new <Number>[0.5,0.8,1,0.5,0.3,0.05];
      
      public function StreamWeaponParticlesPositionProvider(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function destroy() : void
      {
         this.§while throw§ = null;
         this.§5214235392235405123423632234§ = null;
      }
      
      private function b21cf737(param1:Number) : Number
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         _loc2_ = 0;
         while(_loc2_ < 6)
         {
            _loc3_ = this.§521423132142313227123423632234§[_loc2_];
            if(_loc3_ >= param1)
            {
               return this.§else finally finally§[_loc2_];
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function init(param1:§5214235676235689123423632234§, param2:CollisionObject3DPositionProvider) : void
      {
         this.§while throw§ = param1;
         this.§5214235392235405123423632234§ = param2;
      }
      
      public function initPosition(param1:Object3D) : void
      {
         var _loc10_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:int = 0;
         var _loc9_:§else package var§ = null;
         var _loc11_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = this.§while throw§.§5214237957237970123423632234§;
         if(_loc2_ == 0)
         {
            this.§5214235392235405123423632234§.initPosition(param1);
         }
         else
         {
            _loc10_ = this.§while throw§.§switch package null§;
            _loc4_ = 0;
            _loc5_ = 0;
            _loc8_ = 0;
            _loc3_ = 0;
            _loc6_ = 0;
            while(_loc6_ < _loc2_)
            {
               _loc9_ = _loc10_[_loc6_];
               _loc11_ = _loc9_.§5214237830237843123423632234§ / this.§while throw§.§false catch continue§;
               _loc7_ = this.b21cf737(_loc11_);
               _loc3_ += _loc7_;
               _loc4_ += _loc9_.x * _loc7_;
               _loc5_ += _loc9_.y * _loc7_;
               _loc8_ += _loc9_.z * _loc7_;
               _loc6_++;
            }
            _loc4_ /= _loc3_;
            _loc5_ /= _loc3_;
            _loc8_ /= _loc3_;
            param1.x = _loc4_;
            param1.y = _loc5_;
            param1.z = _loc8_;
         }
      }
      
      public function updateObjectPosition(param1:Object3D, param2:§521423132492313262123423632234§, param3:int) : void
      {
         this.initPosition(param1);
      }
   }
}

