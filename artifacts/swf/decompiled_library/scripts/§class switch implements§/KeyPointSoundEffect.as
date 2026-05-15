package §class switch implements§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.§break use null§;
   import flash.media.Sound;
   import §var set var§.§521423132492313262123423632234§;
   
   public class KeyPointSoundEffect extends §final switch return§ implements §break use null§
   {
      
      private static const §5214235160235173123423632234§:Number = 1500;
      
      private static const §5214237554237567123423632234§:Number = 5000;
      
      private static const §extends for do§:Number = 10;
      
      private static const §5214231643231656123423632234§:Number = 1.3;
      
      private var §5214239368239381123423632234§:Sound3D;
      
      private var position:Vector3 = new Vector3();
      
      private var alive:Boolean;
      
      public function KeyPointSoundEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function get numSounds() : int
      {
         return this.alive ? 1 : 0;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : void
      {
         if(!this.§5214239368239381123423632234§.isPlaying())
         {
            this.§5214239368239381123423632234§.play(0,99999);
         }
         this.§5214239368239381123423632234§.checkVolume(param2.§dynamic final§,this.position,param2.§case set null§);
      }
      
      public function init(param1:Sound, param2:Vector3) : void
      {
         this.§5214239368239381123423632234§ = Sound3D.create(param1,1.3,1500,5000,10);
         this.position.copy(param2);
         this.alive = true;
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.copy(this.position);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§5214239368239381123423632234§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§5214239368239381123423632234§.stop();
         Sound3D.destroy(this.§5214239368239381123423632234§);
         this.§5214239368239381123423632234§ = null;
         §521423117092311722123423632234§();
      }
   }
}

