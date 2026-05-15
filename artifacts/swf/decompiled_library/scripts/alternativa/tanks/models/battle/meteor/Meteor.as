package alternativa.tanks.models.battle.meteor
{
   import §521423130632313076123423632234§.NuclearBangEffect;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214237930237943123423632234§.§throw var§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Quaternion;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleRunner;
   import alternativa.tanks.battle.§dynamic switch break§;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.ExternalObject3DPositionProvider;
   import alternativa.utils.TextureMaterialRegistry;
   import §else switch default§.§5214235140235153123423632234§;
   import §else switch default§.§override for default§;
   import flash.display.BitmapData;
   import §var set var§.§521423132492313262123423632234§;
   
   public class Meteor implements §override for default§, §dynamic switch break§
   {
      
      private const §521423112872311300123423632234§:Number = 20;
      
      private const §super set set§:Number = 24;
      
      private const §5214236739236752123423632234§:Number = 5000;
      
      private const §try package class§:Number = 2;
      
      private const §function try§:Number = 0.006283185307179587;
      
      private const §do var§:Number = 850;
      
      private var §521423124922312505123423632234§:§throw var§;
      
      private var §5214235683235696123423632234§:Vector3;
      
      private var §521423104342310447123423632234§:Vector3;
      
      private var §while for in§:Vector3;
      
      private var §5214236548236561123423632234§:int;
      
      private var §override set else§:MeteorSFXData;
      
      private var §5214235717235730123423632234§:TextureMaterialRegistry;
      
      private var §finally catch static§:Quaternion = new Quaternion();
      
      private var rotation:Matrix3 = new Matrix3();
      
      private var §52142374123754123423632234§:Vector3 = new Vector3();
      
      private var §get true§:Matrix3 = new Matrix3();
      
      private var §5214231610231623123423632234§:Vector3 = new Vector3();
      
      private var §set var§:Vector3;
      
      private var §5214236882236895123423632234§:Number;
      
      private var §521423106912310704123423632234§:Vector3;
      
      private var §throw const if§:int;
      
      private var §521423109602310973123423632234§:int;
      
      private var §throw switch else§:Number = 0;
      
      private var §5214234114234127123423632234§:int;
      
      private var §521423107712310784123423632234§:Boolean = false;
      
      private var state:MeteorState = MeteorState.INIT;
      
      private var §null switch for§:Vector3 = new Vector3();
      
      private var §in const final§:MeteorFlame;
      
      private var §native set use§:AnimatedLightEffect;
      
      private var §5214236917236930123423632234§:Mesh;
      
      private var §5214232390232403123423632234§:NuclearBangEffect;
      
      private var §include override§:§5214235140235153123423632234§;
      
      private var §with package continue§:BattleRunner;
      
      private var §with var null§:§521423132492313262123423632234§;
      
      private var §5214236367236380123423632234§:Function;
      
      private var §try for default§:ExternalObject3DPositionProvider;
      
      public function Meteor(param1:§throw var§, param2:TextureMaterialRegistry, param3:Vector3, param4:Vector3, param5:Vector3, param6:int, param7:MeteorSFXData)
      {
         super();
         this.§521423124922312505123423632234§ = param1;
         this.§5214235683235696123423632234§ = param3;
         this.§521423104342310447123423632234§ = param4;
         this.§while for in§ = param5;
         this.§5214236548236561123423632234§ = param6;
         this.§override set else§ = param7;
         this.§5214235717235730123423632234§ = param2;
         this.§in const final§ = new MeteorFlame(this.§override set else§.tailFlame,this);
         this.§try for default§ = ExternalObject3DPositionProvider(param1.§52142349423507123423632234§(ExternalObject3DPositionProvider));
         this.§native set use§ = AnimatedLightEffect(param1.§52142349423507123423632234§(AnimatedLightEffect));
         this.§native set use§.init(this.§try for default§,this.§override set else§.tailLight,99999,true);
         this.§5214236917236930123423632234§ = this.c504b366(this.§override set else§.meteorResource);
         this.§521423109602310973123423632234§ = param6;
         this.§set var§ = param4.clone().subtract(param3);
         var _loc8_:Number = this.§set var§.length();
         this.§5214236882236895123423632234§ = _loc8_ / this.§521423109602310973123423632234§;
         this.§set var§.normalize();
         this.§521423106912310704123423632234§ = this.§set var§.clone().scale(this.§5214236882236895123423632234§);
         this.§throw const if§ = Math.max(this.§521423109602310973123423632234§ - this.§override set else§.impactSoundTimerLabel,0);
         this.§5214234114234127123423632234§ = 0;
         this.§521423107712310784123423632234§ = false;
      }
      
      private function b64eefbc(param1:Mesh, param2:Vector3) : void
      {
         param1.rotationX = param2.x;
         param1.rotationY = param2.y;
         param1.rotationZ = param2.z;
      }
      
      private function c39d07ce() : void
      {
         this.§override set else§.nuclearBangSound.checkVolume(this.§with var null§.§dynamic final§,this.§521423104342310447123423632234§,this.§with var null§.§case set null§);
         this.§override set else§.nuclearBangSound.volume = 2;
         this.§override set else§.nuclearBangSound.play(0,1);
         this.§5214232390232403123423632234§.play(this.§while for in§,this.§include override§);
         var _loc1_:Vector3 = this.§521423104342310447123423632234§.clone().add(Vector3.§521423109692310982123423632234§.clone().scale(5));
         this.§include override§.§override finally use§(this.§521423104342310447123423632234§,_loc1_,850,this.§override set else§.craterDecal);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.cab5f26(this.§5214236917236930123423632234§,this.§null switch for§);
         this.§finally catch static§.setFromAxisAngle(Vector3.§521423109692310982123423632234§,param1 * 0.006283185307179587).toMatrix3(this.rotation);
         this.rotation.append(this.§get true§).getEulerAngles(this.§52142374123754123423632234§);
         this.b64eefbc(this.§5214236917236930123423632234§,this.§52142374123754123423632234§);
      }
      
      private function cab5f26(param1:Mesh, param2:Vector3) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
         param1.z = param2.z;
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         var _loc3_:Vector3 = null;
         var _loc4_:int = 0;
         this.§5214234114234127123423632234§ += param2;
         if(this.state == MeteorState.INIT)
         {
            this.state = MeteorState.§521423113482311361123423632234§;
         }
         if(this.state == MeteorState.§521423113482311361123423632234§)
         {
            this.§try for default§.setPosition(this.§null switch for§);
            if(this.§5214234114234127123423632234§ < this.§521423109602310973123423632234§)
            {
               _loc3_ = this.§set var§.clone().scale(this.§5214234114234127123423632234§ * this.§5214236882236895123423632234§);
               this.§null switch for§.copy(this.§5214235683235696123423632234§).add(_loc3_);
               if(this.§5214234114234127123423632234§ >= this.§throw const if§)
               {
                  if(!this.§521423107712310784123423632234§)
                  {
                     this.§521423107712310784123423632234§ = true;
                     this.§override set else§.meteorDistantSound.stop();
                     this.§override set else§.meteorArrivingSound.play(0,1);
                  }
                  this.§override set else§.meteorArrivingSound.checkVolume(this.§with var null§.§dynamic final§,this.§null switch for§,this.§with var null§.§case set null§);
               }
               else
               {
                  this.§override set else§.meteorDistantSound.checkVolume(this.§with var null§.§dynamic final§,this.§null switch for§,this.§with var null§.§case set null§);
               }
               this.§throw switch else§ += param2;
               if(this.§throw switch else§ > 24)
               {
                  this.§throw switch else§ = 0;
                  this.f7577030();
               }
            }
            else
            {
               this.§null switch for§.copy(this.§521423104342310447123423632234§);
               this.§override set else§.meteorArrivingSound.stop();
               this.state = MeteorState.§set set if§;
               this.§in const final§.fadeOut();
               this.c39d07ce();
            }
         }
         else if(this.state == MeteorState.§set set if§)
         {
            _loc4_ = this.§5214234114234127123423632234§ - this.§521423109602310973123423632234§;
            if(_loc4_ < 20)
            {
               this.§5214236917236930123423632234§.alpha = (20 - _loc4_) / 20;
            }
            else
            {
               this.§5214236917236930123423632234§.visible = false;
               this.state = MeteorState.§5214237942237955123423632234§;
               if(this.§5214236367236380123423632234§ != null)
               {
                  this.§5214236367236380123423632234§.call(this,this);
                  this.§5214236367236380123423632234§ = null;
               }
            }
         }
         else if(this.state == MeteorState.§5214237942237955123423632234§)
         {
            if(this.§5214234114234127123423632234§ > 20 + this.§521423109602310973123423632234§ + 5000)
            {
               this.removeFromBattle();
            }
         }
      }
      
      internal function addToBattle(param1:§5214235140235153123423632234§, param2:BattleRunner, param3:Function) : void
      {
         this.§5214236367236380123423632234§ = param3;
         this.§null switch for§.copy(this.§5214235683235696123423632234§);
         Vector3.§521423109692310982123423632234§.clone().scale(-1).rotationTo(this.§set var§).toMatrix3(this.§get true§);
         this.cab5f26(this.§5214236917236930123423632234§,this.§null switch for§);
         this.b37c4ea0(this.§5214236917236930123423632234§,this.§get true§);
         this.state = MeteorState.INIT;
         this.§include override§ = param1;
         this.§with package continue§ = param2;
         this.§with var null§ = param1.§while set for§();
         param1.§each var use§(this.§in const final§);
         param1.§each var use§(this.§native set use§);
         param1.§5214231991232004123423632234§(this);
         param1.§5214231095231108123423632234§(this.§5214236917236930123423632234§);
         param2.addLogicUnit(this);
         this.§5214232390232403123423632234§ = new NuclearBangEffect(this.§521423124922312505123423632234§,this.§override set else§.nuclearBangLight,this.§override set else§.nuclearBangWave,this.§override set else§.nuclearBangSmoke,this.§override set else§.nuclearBangFlame);
      }
      
      private function b37c4ea0(param1:Mesh, param2:Matrix3) : void
      {
         param2.getEulerAngles(this.§5214231610231623123423632234§);
         this.b64eefbc(param1,this.§5214231610231623123423632234§);
      }
      
      private function c504b366(param1:§5214233863233876123423632234§) : Mesh
      {
         var _loc2_:Mesh = param1.§5214237990238003123423632234§[0].clone() as Mesh;
         var _loc3_:BitmapData = param1.§finally for break§(0);
         if(_loc3_ == null)
         {
            throw Error("Texture not found");
         }
         var _loc4_:TextureMaterial = this.§5214235717235730123423632234§.getMaterial(_loc3_);
         _loc2_.setMaterialToAllFaces(_loc4_);
         return _loc2_;
      }
      
      public function mute() : void
      {
         this.§override set else§.meteorDistantSound.stop();
         this.§override set else§.nuclearBangSound.stop();
         this.§override set else§.meteorArrivingSound.stop();
      }
      
      public function setTime(param1:int) : void
      {
         this.§5214234114234127123423632234§ = param1;
      }
      
      public function readPositionAndRotation(param1:Vector3, param2:Vector3) : void
      {
         param1.copy(this.§null switch for§);
         param2.copy(this.§set var§);
      }
      
      private function f7577030() : void
      {
         var _loc1_:MeteorSmoke = MeteorSmoke(this.§521423124922312505123423632234§.§52142349423507123423632234§(MeteorSmoke));
         _loc1_.init(this.§null switch for§,this.§set var§,this.§override set else§.tailSmoke);
         this.§include override§.§each var use§(_loc1_);
      }
      
      public function removeFromBattle() : void
      {
         this.§in const final§.kill();
         this.§native set use§.kill();
         this.mute();
         this.§include override§.§5214233649233662123423632234§(this.§5214236917236930123423632234§);
         this.§include override§.§521423129322312945123423632234§(this);
         this.§with package continue§.removeLogicUnit(this);
         this.§include override§ = null;
         this.§with package continue§ = null;
      }
   }
}

