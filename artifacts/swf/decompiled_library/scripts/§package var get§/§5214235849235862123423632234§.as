package §package var get§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.§break use null§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §5214235849235862123423632234§ extends §final switch return§ implements §break use null§
   {
      
      private static const §return set native§:int = 99999;
      
      private var §continue switch throw§:Sound3D;
      
      private var §break package do§:Sound3D;
      
      private var §5214232667232680123423632234§:Sound3D;
      
      private var §if catch else§:Sound3D;
      
      private var §dynamic final§:Vector3 = new Vector3();
      
      private var alive:Boolean;
      
      public function §5214235849235862123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function init(param1:Sound3D, param2:Sound3D) : void
      {
         this.§break package do§ = param1;
         this.§continue switch throw§ = param2;
         this.alive = true;
         this.§5214232667232680123423632234§ = param1;
      }
      
      public function destroy() : void
      {
         this.§521423130612313074123423632234§();
         this.§break package do§ = null;
         this.§continue switch throw§ = null;
         this.§5214232667232680123423632234§ = null;
         this.§if catch else§ = null;
         §521423117092311722123423632234§();
      }
      
      public function §do const get§(param1:Vector3, param2:Boolean) : void
      {
         this.§dynamic final§.copy(param1);
         this.§if catch else§ = this.§5214232667232680123423632234§;
         this.§5214232667232680123423632234§ = param2 ? this.§continue switch throw§ : this.§break package do§;
         if(this.§if catch else§ != this.§5214232667232680123423632234§)
         {
            this.§521423130612313074123423632234§();
         }
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : void
      {
         if(!this.§5214232667232680123423632234§.isPlaying())
         {
            this.§5214232667232680123423632234§.play(0,99999);
         }
         this.§5214232667232680123423632234§.checkVolume(param2.§dynamic final§,this.§dynamic final§,param2.§case set null§);
      }
      
      public function get numSounds() : int
      {
         return this.alive ? 1 : 0;
      }
      
      private function §521423130612313074123423632234§() : void
      {
         this.§break package do§.stop();
         this.§continue switch throw§.stop();
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§521423130612313074123423632234§();
         }
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.copy(this.§dynamic final§);
      }
   }
}

