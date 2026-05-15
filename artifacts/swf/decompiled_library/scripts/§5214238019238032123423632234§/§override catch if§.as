package §5214238019238032123423632234§
{
   import §5214233465233478123423632234§.§521423108302310843123423632234§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.§break use null§;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §override catch if§ extends §final switch return§ implements §break use null§
   {
      
      private static const §5214239084239097123423632234§:int = 100000;
      
      private static const §5214235160235173123423632234§:Number = 1000;
      
      private static const §5214237554237567123423632234§:Number = 2000;
      
      private static const §extends for do§:Number = 2;
      
      private static const §5214231643231656123423632234§:Number = 1;
      
      private static const §else use null§:int = 200;
      
      private static const §dynamic final§:Vector3 = new Vector3();
      
      private var §override set else§:§5214235514235527123423632234§;
      
      private var §throw use true§:Object3D;
      
      private var §true const return§:§521423108302310843123423632234§;
      
      private var §dynamic catch break§:Boolean;
      
      private var §for const final§:Boolean;
      
      private var §5214233135233148123423632234§:Sound3D;
      
      private var §true package catch§:SoundChannel;
      
      public function §override catch if§(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function kill() : void
      {
         this.§for const final§ = true;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : void
      {
         if(!this.§for const final§)
         {
            if(this.§true package catch§ == null)
            {
               this.§true package catch§ = this.§5214233135233148123423632234§.play(200,100000);
            }
            §dynamic final§.x = this.§throw use true§.x;
            §dynamic final§.y = this.§throw use true§.y;
            §dynamic final§.z = this.§throw use true§.z;
            this.§5214233135233148123423632234§.checkVolume(param2.§dynamic final§,§dynamic final§,param2.§case set null§);
         }
      }
      
      private function §5214238725238738123423632234§() : Sound
      {
         switch(this.§true const return§)
         {
            case §521423108302310843123423632234§.§5214231982231995123423632234§:
               return this.§override set else§.§set const class§;
            case §521423108302310843123423632234§.§521423108162310829123423632234§:
               return this.§override set else§.§5214236499236512123423632234§;
            case §521423108302310843123423632234§.§5214231754231767123423632234§:
               return this.§override set else§.§5214232480232493123423632234§;
            default:
               throw new Error();
         }
      }
      
      private function §throw const class§() : void
      {
         var _loc1_:SoundTransform = null;
         if(this.§true package catch§ != null)
         {
            _loc1_ = this.§true package catch§.soundTransform;
            this.§true package catch§ = null;
         }
         if(this.§5214233135233148123423632234§ != null)
         {
            Sound3D.destroy(this.§5214233135233148123423632234§);
         }
         var _loc2_:Sound = this.§5214238725238738123423632234§();
         this.§5214233135233148123423632234§ = Sound3D.create(_loc2_,1,1000,2000,2);
         if(_loc1_ != null)
         {
            this.§true package catch§ = this.§5214233135233148123423632234§.play(200,100000);
            if(this.§true package catch§ != null)
            {
               this.§true package catch§.soundTransform = _loc1_;
            }
         }
      }
      
      public function init(param1:§5214235514235527123423632234§, param2:Object3D) : void
      {
         this.§override set else§ = param1;
         this.§throw use true§ = param2;
         this.§true const return§ = §521423108302310843123423632234§.§const set use§;
         this.§for const final§ = false;
         this.§dynamic catch break§ = false;
      }
      
      public function get numSounds() : int
      {
         return this.§for const final§ ? 0 : 1;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this.§dynamic catch break§ != param1)
         {
            this.§dynamic catch break§ = param1;
            if(!this.§dynamic catch break§)
            {
               this.§5214233135233148123423632234§.stop();
               this.§true package catch§ = null;
            }
         }
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.§throw use true§.x;
         param1.y = this.§throw use true§.y;
         param1.z = this.§throw use true§.z;
      }
      
      public function set type(param1:§521423108302310843123423632234§) : void
      {
         if(this.§true const return§ != param1)
         {
            this.§true const return§ = param1;
            this.§throw const class§();
         }
      }
      
      public function destroy() : void
      {
         if(this.§5214233135233148123423632234§ != null)
         {
            Sound3D.destroy(this.§5214233135233148123423632234§);
            this.§5214233135233148123423632234§ = null;
            this.§true package catch§ = null;
         }
         this.§override set else§ = null;
         this.§throw use true§ = null;
         §521423117092311722123423632234§();
      }
   }
}

