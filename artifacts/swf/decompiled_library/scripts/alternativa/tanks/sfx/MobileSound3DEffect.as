package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import flash.events.Event;
   import flash.media.SoundChannel;
   import §var set var§.§521423132492313262123423632234§;
   
   public class MobileSound3DEffect extends §final switch return§ implements §break use null§
   {
      
      private static const §521423111572311170123423632234§:Vector3 = new Vector3();
      
      private var sound:Sound3D;
      
      private var §else switch override§:int;
      
      private var startTime:int;
      
      private var §521423139342313947123423632234§:int;
      
      private var object:Object3D;
      
      private var channel:SoundChannel;
      
      private var alive:Boolean;
      
      private var time:int;
      
      private var §5214233943233956123423632234§:Number;
      
      private var §get for each§:Number;
      
      private var listener:§var implements§;
      
      public function MobileSound3DEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : void
      {
         if(!this.alive)
         {
            return;
         }
         if(this.time < this.§else switch override§)
         {
            this.time += param1;
            return;
         }
         if(!this.sound.isPlaying())
         {
            this.channel = this.sound.play(this.startTime,this.§521423139342313947123423632234§);
            if(this.channel != null)
            {
               this.channel.addEventListener("soundComplete",this.d4539d27);
            }
         }
         §521423111572311170123423632234§.x = this.object.x;
         §521423111572311170123423632234§.y = this.object.y;
         §521423111572311170123423632234§.z = this.object.z;
         if(this.§get for each§ > 0)
         {
            this.§5214233943233956123423632234§ -= this.§get for each§ * param1;
            if(this.§5214233943233956123423632234§ <= 0)
            {
               this.§get for each§ = 0;
               this.§5214233943233956123423632234§ = 0;
            }
            this.sound.volume = this.§5214233943233956123423632234§;
         }
         this.sound.checkVolume(param2.§dynamic final§,§521423111572311170123423632234§,param2.§case set null§);
      }
      
      private function dacac65() : void
      {
         if(this.channel != null)
         {
            this.channel.removeEventListener("soundComplete",this.d4539d27);
            this.channel = null;
         }
         this.sound.stop();
         if(this.§521423139342313947123423632234§ <= 1)
         {
            this.alive = false;
         }
      }
      
      public function destroy() : void
      {
         this.dacac65();
         Sound3D.destroy(this.sound);
         this.object = null;
         this.sound = null;
         if(this.listener != null)
         {
            this.listener.onSoundEffectDestroyed(this);
            this.listener = null;
         }
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Sound3D, param2:Object3D, param3:int = 0, param4:int = 1, param5:int = 0, param6:§var implements§ = null) : void
      {
         this.sound = param1;
         this.object = param2;
         this.§else switch override§ = param3;
         this.§521423139342313947123423632234§ = param4;
         this.startTime = param5;
         this.listener = param6;
         this.alive = true;
         this.time = 0;
         this.§5214233943233956123423632234§ = param1.volume;
         this.§get for each§ = 0;
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function fade(param1:int) : void
      {
         this.§get for each§ = this.§5214233943233956123423632234§ / param1;
      }
      
      private function d4539d27(param1:Event) : void
      {
         this.dacac65();
         this.alive = false;
      }
      
      public function shortInit(param1:Sound3D, param2:Object3D, param3:§var implements§ = null) : void
      {
         this.init(param1,param2,0,1,0,param3);
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.object.x;
         param1.y = this.object.y;
         param1.z = this.object.z;
      }
      
      public function get numSounds() : int
      {
         return this.alive ? 1 : 0;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(!param1)
         {
            this.dacac65();
         }
      }
   }
}

