package §dynamic const static§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§break use null§;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   import §var set var§.§521423132492313262123423632234§;
   
   public class SoundManager implements §521423107902310803123423632234§
   {
      
      private static const §5214238324238337123423632234§:int = 10;
      
      private static const §5214232319232332123423632234§:int = 21;
      
      private static const _position:Vector3 = new Vector3();
      
      private var effects:Vector.<SoundEffectData> = new Vector.<SoundEffectData>();
      
      private var §else use try§:int;
      
      private var §5214235405235418123423632234§:Dictionary = new Dictionary();
      
      private var numSounds:int;
      
      private var mute:Boolean;
      
      public function SoundManager()
      {
         super();
      }
      
      public static function createSoundManager(param1:Sound) : §521423107902310803123423632234§
      {
         var _loc2_:SoundChannel = param1.play(0,1,new SoundTransform(0));
         if(_loc2_ != null)
         {
            _loc2_.stop();
            return new SoundManager();
         }
         return new DummySoundManager();
      }
      
      public function stopAllSounds() : void
      {
         for(var _loc1_ in this.§5214235405235418123423632234§)
         {
            this.f52d302a(_loc1_ as SoundChannel);
         }
      }
      
      public function setMute(param1:Boolean) : void
      {
         this.mute = param1;
      }
      
      private function a67cdae5(param1:SoundEffectData, param2:SoundEffectData) : Number
      {
         return param1.§return else§ - param2.§return else§;
      }
      
      private function a6a0aa60(param1:int, param2:§521423132492313262123423632234§) : int
      {
         var _loc5_:int = 0;
         var _loc3_:SoundEffectData = null;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         while(_loc5_ < this.§else use try§)
         {
            _loc3_ = this.effects[_loc5_];
            _loc4_ = _loc3_.§if true§.numSounds;
            if(_loc4_ == 0)
            {
               _loc3_.§if true§.destroy();
               SoundEffectData.destroy(_loc3_);
               this.effects.removeAt(_loc5_);
               --this.§else use try§;
               _loc5_--;
            }
            else if(_loc6_ + _loc4_ > 21)
            {
               if(_loc6_ == 21)
               {
                  break;
               }
               _loc3_.§if true§.enabled = false;
            }
            else
            {
               _loc3_.§if true§.enabled = true;
               _loc3_.§if true§.play(param1,param2);
               _loc6_ += _loc4_;
            }
            _loc5_++;
         }
         return _loc5_;
      }
      
      public function removeAllEffects() : void
      {
         var _loc1_:SoundEffectData = null;
         while(this.effects.length > 0)
         {
            _loc1_ = this.effects.pop();
            _loc1_.§if true§.destroy();
            SoundEffectData.destroy(_loc1_);
         }
         this.§else use try§ = 0;
      }
      
      private function b3cab96(param1:SoundChannel) : void
      {
         param1.addEventListener("soundComplete",this.d4539d27);
         this.§5214235405235418123423632234§[param1] = true;
         ++this.numSounds;
      }
      
      public function updateSoundEffects(param1:int, param2:§521423132492313262123423632234§) : void
      {
         var _loc3_:int = 0;
         if(this.§else use try§ > 0)
         {
            this.b36b8ff4(param2.§dynamic final§);
            _loc3_ = this.a6a0aa60(param1,param2);
            this.c6275627(_loc3_);
         }
      }
      
      private function e690927b(param1:§break use null§) : int
      {
         var _loc2_:int = 0;
         var _loc3_:SoundEffectData = null;
         while(_loc2_ < this.§else use try§)
         {
            _loc3_ = this.effects[_loc2_];
            if(_loc3_.§if true§ == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private function b36b8ff4(param1:Vector3) : void
      {
         var _loc6_:int = 0;
         var _loc2_:SoundEffectData = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         while(_loc6_ < this.§else use try§)
         {
            _loc2_ = this.effects[_loc6_];
            _loc2_.§if true§.readPosition(_position);
            _loc3_ = param1.x - _position.x;
            _loc4_ = param1.y - _position.y;
            _loc5_ = param1.z - _position.z;
            _loc2_.§return else§ = _loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
            _loc6_++;
         }
         this.effects.sort(this.a67cdae5);
      }
      
      private function b2cb3a90(param1:§break use null§) : Boolean
      {
         return !this.mute && param1 != null && this.e690927b(param1) < 0;
      }
      
      public function removeEffect(param1:§break use null§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:SoundEffectData = null;
         while(_loc3_ < this.§else use try§)
         {
            _loc2_ = this.effects[_loc3_];
            if(_loc2_.§if true§ == param1)
            {
               param1.destroy();
               SoundEffectData.destroy(_loc2_);
               this.effects.removeAt(_loc3_);
               --this.§else use try§;
               return;
            }
            _loc3_++;
         }
      }
      
      private function f1a7c3b6(param1:Sound) : Boolean
      {
         return !this.mute && this.numSounds < 10 && param1 != null;
      }
      
      public function addEffect(param1:§break use null§) : void
      {
         if(this.b2cb3a90(param1))
         {
            param1.enabled = true;
            this.effects[§else use try§] = SoundEffectData.create(0,param1);
            ++this.§else use try§;
         }
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:int = 0, param4:SoundTransform = null) : SoundChannel
      {
         var _loc5_:SoundChannel = null;
         if(this.f1a7c3b6(param1))
         {
            _loc5_ = param1.play(param2,param3,param4);
            if(_loc5_ != null)
            {
               this.b3cab96(_loc5_);
            }
            return _loc5_;
         }
         return null;
      }
      
      private function d4539d27(param1:Event) : void
      {
         this.stopSound(param1.target as SoundChannel);
      }
      
      public function stopSound(param1:SoundChannel) : void
      {
         if(param1 != null && this.§5214235405235418123423632234§[param1] != null)
         {
            this.f52d302a(param1);
         }
      }
      
      private function c6275627(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:SoundEffectData = null;
         _loc3_ = param1;
         while(_loc3_ < this.§else use try§)
         {
            _loc2_ = this.effects[_loc3_];
            _loc2_.§if true§.enabled = false;
            if(_loc2_.§if true§.numSounds == 0)
            {
               _loc2_.§if true§.destroy();
               SoundEffectData.destroy(_loc2_);
               this.effects.removeAt(_loc3_);
               --this.§else use try§;
               _loc3_--;
            }
            _loc3_++;
         }
      }
      
      private function f52d302a(param1:SoundChannel) : void
      {
         param1.stop();
         param1.removeEventListener("soundComplete",this.d4539d27);
         delete this.§5214235405235418123423632234§[param1];
         --this.numSounds;
      }
   }
}

