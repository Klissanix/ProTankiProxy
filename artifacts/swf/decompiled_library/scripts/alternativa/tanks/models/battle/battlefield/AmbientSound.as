package alternativa.tanks.models.battle.battlefield
{
   import §dynamic const static§.§521423107902310803123423632234§;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class AmbientSound
   {
      
      private var sound:Sound;
      
      private var soundManager:§521423107902310803123423632234§;
      
      private var §true package catch§:SoundChannel;
      
      public function AmbientSound(param1:Sound, param2:§521423107902310803123423632234§)
      {
         super();
         this.sound = param1;
         this.soundManager = param2;
      }
      
      public function play(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.§true package catch§ == null)
            {
               this.§true package catch§ = this.soundManager.playSound(this.sound,0,100000,new SoundTransform(0.5));
            }
         }
         else if(this.§true package catch§ != null)
         {
            this.soundManager.stopSound(this.§true package catch§);
            this.§true package catch§ = null;
         }
      }
   }
}

