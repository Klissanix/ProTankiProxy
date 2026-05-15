package alternativa.tanks.sfx
{
   import alternativa.math.Vector3;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class Sound3D
   {
      
      private static const §5214235970235983123423632234§:Number = 1000;
      
      private static const §52142331223325123423632234§:Number = 5000;
      
      private static const §use use throw§:Number = 5;
      
      private static var §super switch return§:Sound3D;
      
      private var §for package implements§:Sound3D;
      
      private var §throw use finally§:Number;
      
      private var §5214231474231487123423632234§:Number;
      
      private var sound:Sound;
      
      private var §521423110242311037123423632234§:SoundChannel;
      
      private var transform:SoundTransform = new SoundTransform(0);
      
      private var §var const break§:Number = 1;
      
      private var §521423106062310619123423632234§:Number = 1;
      
      private var §return package implements§:Number = 1;
      
      public function Sound3D(param1:Sound, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.init(param1,param2,param3,param4,param5);
      }
      
      public static function destroy(param1:Sound3D) : void
      {
         param1.clear();
         if(§super switch return§ == null)
         {
            §super switch return§ = param1;
         }
         else
         {
            param1.§for package implements§ = §super switch return§;
            §super switch return§ = param1;
         }
      }
      
      public static function create(param1:Sound, param2:Number = 1, param3:Number = 1000, param4:Number = 5000, param5:Number = 5) : Sound3D
      {
         var _loc6_:Sound3D = null;
         if(§super switch return§ == null)
         {
            return new Sound3D(param1,param3,param4,param5,param2);
         }
         _loc6_ = §super switch return§;
         _loc6_.init(param1,param3,param4,param5,param2);
         §super switch return§ = _loc6_.§for package implements§;
         _loc6_.§for package implements§ = null;
         return _loc6_;
      }
      
      public function get volume() : Number
      {
         return this.§var const break§;
      }
      
      public function get channel() : SoundChannel
      {
         return this.§521423110242311037123423632234§;
      }
      
      public function set baseVolume(param1:Number) : void
      {
         this.§521423106062310619123423632234§ = param1;
         this.f6e8e34();
      }
      
      public function stop() : void
      {
         if(this.§521423110242311037123423632234§ != null)
         {
            this.§521423110242311037123423632234§.stop();
            this.§521423110242311037123423632234§ = null;
         }
      }
      
      public function play(param1:int, param2:int) : SoundChannel
      {
         if(this.§521423110242311037123423632234§ != null)
         {
            this.§521423110242311037123423632234§.stop();
         }
         return this.§521423110242311037123423632234§ = this.sound.play(param1,param2);
      }
      
      public function isPlaying() : Boolean
      {
         return this.§521423110242311037123423632234§ != null;
      }
      
      public function clear() : void
      {
         this.stop();
         this.sound = null;
      }
      
      public function checkVolume(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         if(this.§521423110242311037123423632234§ != null)
         {
            this.calculateSoundProperties(param1,param2,param3,this.transform);
            this.transform.volume *= this.§return package implements§;
            this.§521423110242311037123423632234§.soundTransform = this.transform;
         }
      }
      
      public function init(param1:Sound, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this.sound = param1;
         this.§throw use finally§ = param2;
         this.§521423106062310619123423632234§ = param5;
         this.§5214231474231487123423632234§ = (Math.sqrt(param4) - 1) / (param3 - param2);
         this.volume = 1;
      }
      
      public function get position() : Number
      {
         return this.§521423110242311037123423632234§ == null ? 0 : this.§521423110242311037123423632234§.position;
      }
      
      public function calculateSoundProperties(param1:Vector3, param2:Vector3, param3:Vector3, param4:SoundTransform) : void
      {
         var _loc9_:Number = NaN;
         var _loc6_:Number = param2.x - param1.x;
         var _loc7_:Number = param2.y - param1.y;
         var _loc8_:Number = param2.z - param1.z;
         var _loc5_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         if(_loc5_ < this.§throw use finally§)
         {
            param4.volume = 1;
            param4.pan = 0;
         }
         else
         {
            _loc9_ = 1 + this.§5214231474231487123423632234§ * (_loc5_ - this.§throw use finally§);
            _loc9_ = 1 / (_loc9_ * _loc9_);
            param4.volume = _loc9_;
            _loc5_ = 1 / _loc5_;
            _loc6_ *= _loc5_;
            _loc7_ *= _loc5_;
            _loc8_ *= _loc5_;
            param4.pan = (_loc6_ * param3.x + _loc7_ * param3.y + _loc8_ * param3.z) * (1 - _loc9_);
         }
      }
      
      public function set volume(param1:Number) : void
      {
         this.§var const break§ = param1;
         this.f6e8e34();
      }
      
      private function f6e8e34() : void
      {
         this.§return package implements§ = this.§521423106062310619123423632234§ * this.§var const break§;
      }
      
      public function get baseVolume() : Number
      {
         return this.§521423106062310619123423632234§;
      }
   }
}

