package alternativa.tanks.sfx
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.math.Vector3;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import §var set var§.§521423132492313262123423632234§;
   
   public class TankSoundEffects implements §break use null§
   {
      
      private static const §static const super§:Vector3 = new Vector3();
      
      private var §52142388023893123423632234§:§5214239411239424123423632234§;
      
      private var §set for in§:EngineSounds;
      
      private var §for package final§:Sound3D;
      
      private var §5214238158238171123423632234§:int = 1;
      
      private var §dynamic catch break§:Boolean = false;
      
      private var §super for extends§:Boolean;
      
      public function TankSoundEffects(param1:Sound, param2:Sound, param3:Sound, param4:Sound)
      {
         super();
         this.§set for in§ = new EngineSounds(param1,param2,param3);
         this.§for package final§ = Sound3D.create(param4,0.5,500,2000,5);
      }
      
      private function b2bc9f96() : void
      {
         if(this.§dynamic catch break§)
         {
            switch(this.§5214238158238171123423632234§ - 1)
            {
               case 0:
                  this.§set for in§.setIdleMode();
                  break;
               case 1:
                  this.§set for in§.setAccelerationMode();
                  break;
               case 3:
                  this.§set for in§.setTurningMode();
            }
         }
         else
         {
            this.§for package final§.stop();
            this.§set for in§.setSilentMode();
         }
      }
      
      public function setTank(param1:§5214239411239424123423632234§) : void
      {
         this.§52142388023893123423632234§ = param1;
      }
      
      public function setIdleMode() : void
      {
         this.§5214238158238171123423632234§ = 1;
         if(this.§dynamic catch break§)
         {
            this.§set for in§.setIdleMode();
         }
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : void
      {
         if(this.§52142388023893123423632234§ != null && this.§dynamic catch break§)
         {
            §static const super§.copy(this.§52142388023893123423632234§.§break switch catch§().§implements catch catch§.§dynamic final§);
            this.§set for in§.update(param1,param2.§dynamic final§,§static const super§,param2.§case set null§);
            this.§for package final§.checkVolume(param2.§dynamic final§,§static const super§,param2.§case set null§);
         }
      }
      
      public function playTurretSound(param1:Boolean) : void
      {
         var _loc2_:SoundChannel = null;
         if(this.§dynamic catch break§)
         {
            if(param1 && this.§super for extends§)
            {
               if(!this.§for package final§.isPlaying())
               {
                  _loc2_ = this.§for package final§.play(100,0);
                  if(_loc2_ != null)
                  {
                     _loc2_.addEventListener("soundComplete",this.c23a62da);
                  }
               }
            }
            else if(this.§for package final§.isPlaying())
            {
               this.§for package final§.stop();
            }
         }
      }
      
      public function set turretSoundEnabled(param1:Boolean) : void
      {
         if(this.§super for extends§ != param1)
         {
            this.§super for extends§ = param1;
            if(!this.§super for extends§)
            {
               this.§for package final§.stop();
            }
         }
      }
      
      public function kill() : void
      {
      }
      
      public function setAccelerationMode() : void
      {
         this.§5214238158238171123423632234§ = 2;
         if(this.§dynamic catch break§)
         {
            this.§set for in§.setAccelerationMode();
         }
      }
      
      public function destroy() : void
      {
         this.§set for in§.stop();
         this.§for package final§.stop();
      }
      
      public function get numSounds() : int
      {
         return 2;
      }
      
      public function setTurningMode() : void
      {
         this.§5214238158238171123423632234§ = 4;
         if(this.§dynamic catch break§)
         {
            this.§set for in§.setTurningMode();
         }
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.copy(this.§52142388023893123423632234§.§break switch catch§().§implements catch catch§.§dynamic final§);
      }
      
      private function c23a62da(param1:Event) : void
      {
         if(this.§super for extends§)
         {
            this.§for package final§.play(3000,9999);
         }
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this.§dynamic catch break§ != param1)
         {
            this.§dynamic catch break§ = param1;
            this.b2bc9f96();
         }
      }
   }
}

