package alternativa.tanks.sfx
{
   import alternativa.math.Vector3;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class EngineSounds
   {
      
      public static const §52142343723450123423632234§:int = 0;
      
      public static const IDLE:int = 1;
      
      public static const §5214233776233789123423632234§:int = 2;
      
      public static const §52142373823751123423632234§:int = 3;
      
      public static const §5214234006234019123423632234§:int = 4;
      
      private static const §5214239982239995123423632234§:Number = 0.001;
      
      private static const §else use null§:int = 80;
      
      private var mode:int = 0;
      
      private var §5214233135233148123423632234§:Sound3D;
      
      private var §break var implements§:Sound3D;
      
      private var §get else§:Sound3D;
      
      private var §case set extends§:Sound3D;
      
      private var channel:SoundChannel;
      
      private var §dynamic package for§:Boolean;
      
      private var §implements package true§:Number = 1;
      
      public function EngineSounds(param1:Sound, param2:Sound, param3:Sound)
      {
         super();
         var _loc4_:Number = 1;
         this.§break var implements§ = Sound3D.create(param1,2);
         this.§get else§ = Sound3D.create(param2,_loc4_);
         this.§case set extends§ = Sound3D.create(param3,_loc4_);
         this.§5214233135233148123423632234§ = this.§break var implements§;
      }
      
      public function stop() : void
      {
         if(this.channel != null)
         {
            this.channel.removeEventListener("soundComplete",this.c4a514a6);
            this.channel = null;
         }
         this.§5214233135233148123423632234§.stop();
      }
      
      public function setTurningMode() : void
      {
         if(this.mode != 4)
         {
            if(this.mode == 1)
            {
               if(!this.§dynamic package for§)
               {
                  this.§5214233135233148123423632234§.volume = 3;
               }
            }
            else
            {
               this.§dynamic package for§ = true;
            }
            this.§implements package true§ = 0.6;
            this.mode = 4;
         }
      }
      
      public function update(param1:int, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         if(this.mode != 0)
         {
            if(this.§dynamic package for§)
            {
               this.§5214233135233148123423632234§.volume -= 0.001 * param1;
               if(this.§5214233135233148123423632234§.volume < this.§implements package true§)
               {
                  this.§dynamic package for§ = false;
                  this.stop();
                  this.§5214233135233148123423632234§ = this.§break var implements§;
                  this.§5214233135233148123423632234§.volume = this.mode == 1 ? 2 : 3;
                  this.§5214233135233148123423632234§.play(80,10000);
               }
            }
            this.§5214233135233148123423632234§.checkVolume(param2,param3,param4);
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         Sound3D.destroy(this.§break var implements§);
         this.§break var implements§ = null;
         Sound3D.destroy(this.§get else§);
         this.§get else§ = null;
         Sound3D.destroy(this.§case set extends§);
         this.§case set extends§ = null;
      }
      
      public function setAccelerationMode() : void
      {
         if(this.mode == 2 || this.mode == 3)
         {
            return;
         }
         this.§dynamic package for§ = false;
         this.mode = 2;
         this.§5214233135233148123423632234§.stop();
         this.§5214233135233148123423632234§ = this.§get else§;
         this.§5214233135233148123423632234§.volume = 1;
         this.channel = this.§5214233135233148123423632234§.play(0,0);
         if(this.channel != null)
         {
            this.channel.addEventListener("soundComplete",this.c4a514a6);
         }
      }
      
      private function c4a514a6(param1:Event) : void
      {
         if(this.channel == null || this.mode != 2)
         {
            return;
         }
         this.channel.removeEventListener("soundComplete",this.c4a514a6);
         this.mode = 3;
         this.§case set extends§.volume = this.§get else§.volume;
         this.§5214233135233148123423632234§ = this.§case set extends§;
         this.§5214233135233148123423632234§.play(80,1000);
      }
      
      public function setIdleMode() : void
      {
         if(this.mode != 1)
         {
            if(this.mode == 0)
            {
               this.§5214233135233148123423632234§ = this.§break var implements§;
               this.§5214233135233148123423632234§.volume = 1;
               this.§5214233135233148123423632234§.play(80,1000);
            }
            else if(this.§5214233135233148123423632234§ != this.§break var implements§)
            {
               this.§dynamic package for§ = true;
               this.§implements package true§ = 0.2;
            }
            this.mode = 1;
         }
      }
      
      public function setSilentMode() : void
      {
         if(this.mode != 0)
         {
            this.mode = 0;
            this.stop();
         }
      }
   }
}

