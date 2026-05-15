package alternativa.tanks.sfx
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import flash.events.Event;
   import flash.media.SoundChannel;
   import §var set var§.§521423132492313262123423632234§;
   
   public class Sound3DEffect extends §final switch return§ implements §break use null§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var position:Vector3 = new Vector3();
      
      private var sound:Sound3D;
      
      private var §5214231682231695123423632234§:int;
      
      private var startTime:int;
      
      private var channel:SoundChannel;
      
      private var §dynamic catch break§:Boolean = false;
      
      private var §extends var§:Boolean = false;
      
      private var listener:§var implements§;
      
      public function Sound3DEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public static function create(param1:Vector3, param2:Sound3D, param3:int = 0, param4:int = 0, param5:§var implements§ = null) : Sound3DEffect
      {
         var _loc6_:Sound3DEffect = Sound3DEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(Sound3DEffect));
         _loc6_.init(param1,param2,param3,param4,param5);
         return _loc6_;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : void
      {
         this.§5214231682231695123423632234§ -= param1;
         if(this.§5214231682231695123423632234§ > 0)
         {
            return;
         }
         if(!this.§extends var§)
         {
            this.§extends var§ = true;
            this.channel = this.sound.play(this.startTime,1);
            if(this.channel == null)
            {
               return;
            }
            this.channel.addEventListener("soundComplete",this.d4539d27);
         }
         this.sound.checkVolume(param2.§dynamic final§,this.position,param2.§case set null§);
      }
      
      public function destroy() : void
      {
         Sound3D.destroy(this.sound);
         this.sound = null;
         this.d4539d27(null);
         if(this.listener != null)
         {
            this.listener.onSoundEffectDestroyed(this);
            this.listener = null;
         }
         §521423117092311722123423632234§();
      }
      
      public function get numSounds() : int
      {
         return this.§dynamic catch break§ ? 1 : 0;
      }
      
      private function d4539d27(param1:Event) : void
      {
         if(this.channel != null)
         {
            this.channel.removeEventListener("soundComplete",this.d4539d27);
         }
         this.§dynamic catch break§ = false;
         this.channel = null;
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.position.x;
         param1.y = this.position.y;
         param1.z = this.position.z;
      }
      
      public function init(param1:Vector3, param2:Sound3D, param3:int = 0, param4:int = 0, param5:§var implements§ = null) : void
      {
         this.position.copy(param1);
         this.sound = param2;
         this.§5214231682231695123423632234§ = param3;
         this.startTime = param4;
         this.listener = param5;
         this.§dynamic catch break§ = false;
         this.§extends var§ = false;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this.§dynamic catch break§ == param1)
         {
            return;
         }
         if(!(this.§dynamic catch break§ = param1))
         {
            this.d4539d27(null);
         }
      }
      
      public function kill() : void
      {
         this.§dynamic catch break§ = false;
      }
   }
}

