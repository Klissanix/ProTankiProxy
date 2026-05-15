package §52142360623619123423632234§
{
   import §521423109112310924123423632234§.§52142320823221123423632234§;
   import §521423121002312113123423632234§.§5214233000233013123423632234§;
   import §521423121002312113123423632234§.§5214237036237049123423632234§;
   import §521423121002312113123423632234§.§return switch continue§;
   import §521423121002312113123423632234§.§throw var set§;
   import §5214231366231379123423632234§.§default catch native§;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214237930237943123423632234§.§throw var§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238868238881123423632234§.§5214231727231740123423632234§;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.LocalTankSpawnEvent;
   import alternativa.tanks.battle.events.StateCorrectionEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.TankLoadedEvent;
   import alternativa.tanks.battle.events.TankUnloadedEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.AnimatedSpriteEffect;
   import alternativa.tanks.sfx.LightAnimation;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   import alternativa.tanks.sfx.§default var for§;
   import alternativa.utils.TextureMaterialRegistry;
   import §const false§.TankDeadEvent;
   import §dynamic catch true§.§for switch class§;
   import §extends var import§.§5214231658231671123423632234§;
   import §finally catch with§.§true use package§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class §use for false§ extends §throw var set§ implements §return switch continue§, §do set function§, §throw catch var§, §if use default§, §5214231157231170123423632234§, §dynamic const§
   {
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §521423119962312009123423632234§:TextureMaterialRegistry;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §with set include§:BattleEventDispatcher;
      
      private static const §521423112442311257123423632234§:Number = 0.5;
      
      private static const §super for in§:Number = 0.772;
      
      private static const §5214239136239149123423632234§:Number = 0.5;
      
      private static const §finally include§:Number = 0.9;
      
      private static const §finally catch each§:Number = 3;
      
      private static const §final const implements§:Number = 3;
      
      private static const §521423138192313832123423632234§:Number = 0.3;
      
      private static const §do var§:Number = 200;
      
      private static const §5214238221238234123423632234§:int = 70;
      
      private static const §switch true§:Vector3 = new Vector3();
      
      private var §5214232571232584123423632234§:§5214234312234325123423632234§ = new §5214234312234325123423632234§();
      
      private var §52142352023533123423632234§:Dictionary = new Dictionary();
      
      private var §for default§:Dictionary = new Dictionary();
      
      private var §521423212334123423632234§:Number;
      
      private var §use set const§:Vector.<§5214233000233013123423632234§>;
      
      private var §default for dynamic§:TextureMaterial;
      
      private var §true catch true§:TextureMaterial;
      
      private var §false for in§:TextureMaterial;
      
      private var §continue catch§:TextureMaterial;
      
      private var §static catch const§:Mesh;
      
      private var §5214237195237208123423632234§:TextureAnimation;
      
      private var §521423112192311232123423632234§:§5214231384231397123423632234§ = new §5214231384231397123423632234§();
      
      private var §5214232541232554123423632234§:TextureAnimation;
      
      private var §each set override§:§5214231384231397123423632234§ = new §5214231384231397123423632234§();
      
      private var §5214234328234341123423632234§:TextureMaterial;
      
      private var §package var for§:Sound;
      
      private var §5214232585232598123423632234§:Sound;
      
      private var §5214231521231534123423632234§:Sound;
      
      private var §var for get§:Number;
      
      private var §else package switch§:§521423120252312038123423632234§;
      
      private var §5214238269238282123423632234§:BattleEventSupport;
      
      private var §5214239755239768123423632234§:Dictionary = new Dictionary();
      
      private var §implements package while§:§5214239411239424123423632234§;
      
      private var §continue catch implements§:Number;
      
      private var §static catch static§:LightAnimation;
      
      private var §set var if§:Boolean = true;
      
      private var §final switch set§:§5214231699231712123423632234§;
      
      private var §function var for§:Dictionary = new Dictionary();
      
      private var §include switch with§:Dictionary = new Dictionary();
      
      public function §use for false§()
      {
         super();
         this.§5214233213233226123423632234§();
      }
      
      private static function §extends package class§(param1:§if finally catch§, param2:int, param3:§5214231384231397123423632234§) : TextureAnimation
      {
         var _loc4_:TextureAnimation = §true use package§.§in for native§(§521423119962312009123423632234§,param1);
         _loc4_.material.resolution = param2;
         param3.height = param1.§5214231432231445123423632234§ * param2;
         param3.width = param1.§5214233118233131123423632234§ * param2;
         return _loc4_;
      }
      
      private static function §5214238764238777123423632234§(param1:§include catch with§) : TextureMaterial
      {
         return §521423119962312009123423632234§.getMaterial(param1.data);
      }
      
      private static function §52142315723170123423632234§(param1:Vector3, param2:String) : String
      {
         return param2 + param1.x.toFixed() + "+" + param1.y.toFixed() + "+" + param1.z.toFixed();
      }
      
      private static function §catch package super§(param1:Vector3, param2:TextureAnimation, param3:§5214231384231397123423632234§, param4:Number, param5:Number) : void
      {
         var _loc7_:int = 50;
         var _loc9_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         var _loc8_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(_loc9_.§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc8_.init(param1,_loc7_);
         var _loc6_:AnimatedSpriteEffect = AnimatedSpriteEffect(_loc9_.§52142349423507123423632234§(AnimatedSpriteEffect));
         _loc6_.init(param3.width,param3.height,param2,0,_loc8_,param4,param5);
         §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc6_);
      }
      
      private static function §static use continue§(param1:Sound, param2:Vector3, param3:Number) : void
      {
         var _loc4_:Sound3D = null;
         if(param1 != null)
         {
            _loc4_ = Sound3D.create(param1,param3);
            §52142380523818123423632234§.getBattleRunner().getSoundManager().addEffect(Sound3DEffect.create(param2,_loc4_,0));
         }
      }
      
      private function §return switch break§(param1:TankDeadEvent) : void
      {
         if(param1.§52142366723680123423632234§ == this.§implements package while§)
         {
            this.§final switch set§.§5214232322232335123423632234§();
         }
      }
      
      private function §521423100932310106123423632234§(param1:Vector3, param2:LightAnimation) : void
      {
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         var _loc4_:AnimatedLightEffect = AnimatedLightEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         _loc3_.init(param1,50);
         _loc4_.init(_loc3_,param2);
         §52142380523818123423632234§.addGraphicEffect(_loc4_);
      }
      
      private function §each for var§(param1:TankAddedToBattleEvent) : void
      {
         if(param1.tank == this.§implements package while§)
         {
            this.§var set return§();
         }
         else
         {
            this.§break finally catch§(param1.tank);
         }
      }
      
      public function §5214231553231566123423632234§(param1:String, param2:String) : void
      {
         var _loc5_:§for const case§ = null;
         var _loc6_:int = 0;
         var _loc7_:§5214239411239424123423632234§ = null;
         var _loc4_:int = 0;
         var _loc3_:§521423122642312277123423632234§ = this.§for default§[param1];
         if(_loc3_ != null)
         {
            _loc5_ = this.§52142352023533123423632234§[_loc3_.§5214236536236549123423632234§];
            if(_loc5_ != null)
            {
               _loc6_ = Math.min(_loc3_.§dynamic const null§,70);
               _loc7_ = this.§5214239755239768123423632234§[param2];
               while(_loc4_ < _loc6_)
               {
                  §catch package super§(_loc3_.§dynamic final§,this.§5214237195237208123423632234§,this.§521423112192311232123423632234§,0.5,0.772);
                  this.§521423100932310106123423632234§(_loc3_.§dynamic final§,this.§static catch static§);
                  this.§super finally finally§(_loc3_);
                  §static use continue§(this.§5214232585232598123423632234§,_loc3_.§dynamic final§,0.5);
                  if(_loc7_ != null)
                  {
                     _loc7_.§5214239340239353123423632234§(_loc3_.§dynamic final§,_loc3_.§521423123362312349123423632234§,§5214231727231740123423632234§.§5214233647233660123423632234§.§function const super§() * this.§var for get§);
                  }
                  _loc4_++;
               }
               this.§5214236500236513123423632234§(_loc3_,_loc5_);
            }
         }
         else
         {
            delete this.§function var for§[param1];
         }
      }
      
      public function §with finally finally§(param1:String, param2:Number, param3:Number, param4:Number, param5:String) : void
      {
         var _loc6_:§5214239411239424123423632234§ = this.§5214239755239768123423632234§[param5];
         if(_loc6_ == null)
         {
            if(this.§use set const§ == null)
            {
               this.§use set const§ = new Vector.<§5214233000233013123423632234§>();
            }
            this.§use set const§[§use set const§.length] = new §5214233000233013123423632234§(false,param1,param5,new §52142320823221123423632234§(param2,param3,param4));
         }
         else
         {
            this.§function switch each§(param1,this.§521423212334123423632234§,new Vector3(param2,param3,param4),param5,_loc6_.§5214238124238137123423632234§,this.§implements for package§(_loc6_),false);
         }
      }
      
      private function §521423107672310780123423632234§() : void
      {
         var _loc2_:* = undefined;
         var _loc1_:§521423122642312277123423632234§ = null;
         var _loc3_:§for const case§ = null;
         this.§final switch set§.§false const function§ = true;
         for(_loc2_ in this.§include switch with§)
         {
            delete this.§include switch with§[_loc2_];
         }
         for(_loc2_ in this.§function var for§)
         {
            delete this.§function var for§[_loc2_];
         }
         for(_loc2_ in this.§for default§)
         {
            _loc1_ = this.§for default§[_loc2_];
            _loc1_.§finally extends§();
            delete this.§for default§[_loc2_];
         }
         for(_loc2_ in this.§52142352023533123423632234§)
         {
            _loc3_ = this.§52142352023533123423632234§[_loc2_];
            _loc3_.§5214238029238042123423632234§();
            delete this.§52142352023533123423632234§[_loc2_];
         }
         this.§use set const§ = null;
         this.§final switch set§.destroy();
         this.§final switch set§.§false const function§ = false;
      }
      
      private function §521423115982311611123423632234§(param1:LocalTankSpawnEvent) : void
      {
         if(this.§set var if§)
         {
            this.§final switch set§.§521423128692312882123423632234§();
            this.§set var if§ = false;
         }
         this.§final switch set§.§native package const§();
      }
      
      private function §if switch§(param1:Vector.<§5214233000233013123423632234§>) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1.length != 0)
         {
            if(this.§use set const§ == null)
            {
               this.§use set const§ = new Vector.<§5214233000233013123423632234§>();
            }
            _loc4_ = int(§use set const§.length);
            _loc2_ = int(param1.length);
            while(_loc3_ < _loc2_)
            {
               this.§use set const§[_loc4_ + _loc3_] = param1[_loc3_];
               _loc3_++;
            }
         }
      }
      
      private function §5214233213233226123423632234§() : void
      {
         this.§5214238269238282123423632234§ = new BattleEventSupport(§with set include§,this);
         this.§5214238269238282123423632234§.addEventHandler(BattleFinishEvent,this.§null set§);
         this.§5214238269238282123423632234§.addEventHandler(TankLoadedEvent,this.§5214239224239237123423632234§);
         this.§5214238269238282123423632234§.addEventHandler(TankUnloadedEvent,this.§import catch break§);
         this.§5214238269238282123423632234§.addEventHandler(TankAddedToBattleEvent,this.§each for var§);
         this.§5214238269238282123423632234§.addEventHandler(TankDeadEvent,this.§return switch break§);
         this.§5214238269238282123423632234§.addEventHandler(LocalTankSpawnEvent,this.§521423115982311611123423632234§);
         this.§5214238269238282123423632234§.activateHandlers();
      }
      
      private function §implements for package§(param1:§5214239411239424123423632234§) : Material
      {
         var _loc2_:§for switch class§ = null;
         switch(param1.§5214238124238137123423632234§)
         {
            case §5214231658231671123423632234§.§dynamic use false§:
               return param1 == this.§implements package while§ ? this.§false for in§ : this.§continue catch§;
            case §5214231658231671123423632234§.§implements set implements§:
               return this.§true catch true§;
            case §5214231658231671123423632234§.§521423107532310766123423632234§:
               return this.§default for dynamic§;
            default:
               _loc2_ = §for switch class§(OSGi.getInstance().getService(§for switch class§));
               _loc2_.§5214231352231365123423632234§("[Mine]\nuser:" + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).userName + " " + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).rank + "\n" + "Minutes-" + int(getTimer() / 1000 / 60) + "\n" + "ownerN: " + param1.§do for final§.userName + "\n" + "ownerI: " + param1.§native catch class§ + "\n" + "\n\n");
               setTimeout(this.§try catch try§,1000,param1);
               return this.§continue catch§;
         }
      }
      
      private function §import catch break§(param1:TankUnloadedEvent) : void
      {
         delete this.§5214239755239768123423632234§[param1.tank.§5214233939233952123423632234§().id];
      }
      
      private function §null set§(param1:BattleFinishEvent) : void
      {
         this.§521423107672310780123423632234§();
      }
      
      public function §extends set override§() : Number
      {
         return this.§continue catch implements§;
      }
      
      private function §function switch each§(param1:String, param2:Number, param3:Vector3, param4:String, param5:§5214231658231671123423632234§, param6:Material, param7:Boolean) : void
      {
         var _loc11_:§for const case§ = null;
         var _loc10_:String = null;
         var _loc8_:§521423122642312277123423632234§ = null;
         var _loc9_:§default catch native§ = new §default catch native§();
         if(§52142380523818123423632234§.getBattleRunner().getCollisionDetector().§set use for§(param3,Vector3.DOWN,16,10000000000,null,_loc9_))
         {
            _loc11_ = this.§52142352023533123423632234§[param4];
            if(_loc11_ == null)
            {
               _loc11_ = new §for const case§();
               this.§52142352023533123423632234§[param4] = _loc11_;
            }
            _loc10_ = §52142315723170123423632234§(_loc9_.§dynamic final§,param4);
            _loc8_ = §include switch with§[_loc10_];
            if(_loc8_ != null)
            {
               _loc8_.§dynamic const null§++;
               this.§function var for§[param1] = _loc8_;
            }
            else
            {
               §§push(§521423122642312277123423632234§);
               §§push(param1);
               §§push(param4);
               §§push(param2);
               §§push(this.§static catch const§);
               §§push(param6);
               §§push(param5);
               §§push(this.§5214232571232584123423632234§);
               §§push(this);
               var _loc12_:GPUCapabilities = GPUCapabilities;
               _loc8_ = §§pop().§52142342923442123423632234§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ ? this.§final switch set§ : null);
               _loc8_.§implements package while§ = this.§implements package while§;
               _loc8_.§5214233236233249123423632234§(_loc9_.§dynamic final§,_loc9_.§5214233761233774123423632234§);
               if(param7)
               {
                  _loc8_.§extends switch override§(true);
               }
               _loc11_.§function switch each§(_loc8_);
               §include switch with§[_loc10_] = _loc8_;
               this.§for default§[param1] = _loc8_;
               _loc8_.§5214237205237218123423632234§();
            }
         }
      }
      
      public function objectLoaded() : void
      {
         this.§else package switch§ = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         this.§5214232571232584123423632234§.§5214231130231143123423632234§ = 100;
         this.§5214232571232584123423632234§.§5214236625236638123423632234§ = 300;
         this.§5214232571232584123423632234§.§5214238375238388123423632234§ = 204;
         var _loc1_:§5214237036237049123423632234§ = §switch var switch§();
         this.§5214232571232584123423632234§.§5214235719235732123423632234§ = BattleUtils.toClientScale(_loc1_.§if var throw§);
         this.§5214232571232584123423632234§.§throw use finally§ = BattleUtils.toClientScale(_loc1_.§implements catch do§);
         this.§521423212334123423632234§ = BattleUtils.toClientScale(_loc1_.§super use package§);
         this.§var for get§ = _loc1_.§var for get§;
         this.§package var for§ = _loc1_.§in switch var§.§set const switch§;
         this.§5214232585232598123423632234§ = _loc1_.§5214232585232598123423632234§.§set const switch§;
         this.§5214231521231534123423632234§ = _loc1_.§else const continue§.§set const switch§;
         this.§continue catch implements§ = BattleUtils.toClientScale(_loc1_.§continue catch implements§);
         this.§var const default§(§5214233863233876123423632234§(_loc1_.§false package implements§));
         this.§5214237195237208123423632234§ = §extends package class§(_loc1_.§521423126832312696123423632234§,3,this.§521423112192311232123423632234§);
         this.§5214232541232554123423632234§ = §extends package class§(_loc1_.§5214232288232301123423632234§,3,this.§each set override§);
         this.§5214234328234341123423632234§ = §5214238764238777123423632234§(_loc1_.§throw class§);
         this.§default for dynamic§ = §5214238764238777123423632234§(_loc1_.§catch catch import§);
         this.§true catch true§ = §5214238764238777123423632234§(_loc1_.§use with§);
         this.§false for in§ = §5214238764238777123423632234§(_loc1_.§52142361123624123423632234§);
         this.§continue catch§ = §5214238764238777123423632234§(_loc1_.§function const for§);
         this.§static catch static§ = §default var for§.§5214239476239489123423632234§;
         this.§final switch set§ = new §5214231699231712123423632234§();
         this.§final switch set§.§5214236720236733123423632234§();
         this.§if switch§(_loc1_.§catch var get§);
         if(§return set get§.isSpectatorMode())
         {
            setTimeout(this.§final switch set§.§521423128692312882123423632234§,this.§5214232571232584123423632234§.§5214231130231143123423632234§ + this.§5214232571232584123423632234§.§5214236625236638123423632234§ + 900);
         }
      }
      
      private function §super finally finally§(param1:§521423122642312277123423632234§) : void
      {
         §switch true§.copy(param1.§dynamic final§);
         §switch true§.addScaled(100,param1.§521423123362312349123423632234§);
         §52142380523818123423632234§.getBattleScene3D().§override finally use§(param1.§dynamic final§,§switch true§,200,this.§5214234328234341123423632234§);
      }
      
      public function objectUnloaded() : void
      {
         this.§set var if§ = true;
         this.§521423107672310780123423632234§();
         this.§final switch set§ = null;
         this.§package var for§ = null;
         this.§5214237195237208123423632234§ = null;
         this.§5214232541232554123423632234§ = null;
         this.§default for dynamic§ = null;
         this.§true catch true§ = null;
         this.§false for in§ = null;
         this.§continue catch§ = null;
         this.§else package switch§ = null;
         this.§implements package while§ = null;
         this.§5214234328234341123423632234§ = null;
         this.§5214239755239768123423632234§ = new Dictionary();
      }
      
      public function §package set default§(param1:§521423122642312277123423632234§) : void
      {
         §with set include§.dispatchEvent(StateCorrectionEvent.§use var with§);
      }
      
      private function §var set return§() : void
      {
         var _loc2_:int = 0;
         var _loc4_:§5214233000233013123423632234§ = null;
         var _loc1_:§5214239411239424123423632234§ = null;
         var _loc3_:Vector3 = null;
         if(this.§use set const§ != null)
         {
            while(_loc2_ < this.§use set const§.length)
            {
               _loc4_ = this.§use set const§[_loc2_];
               _loc1_ = this.§5214239755239768123423632234§[_loc4_.§5214236536236549123423632234§];
               if(_loc1_ != null)
               {
                  this.§use set const§.removeAt(_loc2_);
                  _loc2_--;
                  _loc3_ = BattleUtils.getVector3(_loc4_.§dynamic final§);
                  this.§function switch each§(_loc4_.§5214236427236440123423632234§,this.§521423212334123423632234§,_loc3_,_loc4_.§5214236536236549123423632234§,_loc1_.§5214238124238137123423632234§,this.§implements for package§(_loc1_),_loc4_.§switch package package§);
               }
               _loc2_++;
            }
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238269238282123423632234§.handleBattleEvent(param1);
      }
      
      private function §5214239224239237123423632234§(param1:TankLoadedEvent) : void
      {
         this.§5214239755239768123423632234§[param1.tank.§5214233939233952123423632234§().id] = param1.tank;
         if(param1.isLocal)
         {
            this.§implements package while§ = param1.tank;
         }
      }
      
      private function §var const default§(param1:§5214233863233876123423632234§) : void
      {
         this.§static catch const§ = Mesh(param1.§5214237990238003123423632234§[0]);
         if(this.§static catch const§.sorting != 1)
         {
            this.§static catch const§.sorting = 1;
            this.§static catch const§.calculateFacesNormals(true);
         }
         §521423122642312277123423632234§.§static catch const§ = this.§static catch const§;
      }
      
      private function §5214236500236513123423632234§(param1:§521423122642312277123423632234§, param2:§for const case§) : void
      {
         delete this.§for default§[param1.id];
         delete this.§include switch with§[§52142315723170123423632234§(param1.§dynamic final§,param1.§5214236536236549123423632234§)];
         param1.§finally extends§();
         param2.§5214236500236513123423632234§(param1);
      }
      
      public function §do use implements§(param1:String) : void
      {
         var _loc2_:§521423122642312277123423632234§ = null;
         var _loc3_:§521423122642312277123423632234§ = null;
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§for const case§ = this.§52142352023533123423632234§[param1];
         if(_loc5_ != null)
         {
            _loc2_ = _loc5_.§5214234060234073123423632234§;
            this.§final switch set§.§5214236720236733123423632234§();
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.§switch for catch§;
               _loc6_ = Math.min(_loc3_.§dynamic const null§,70);
               while(_loc4_ < _loc6_)
               {
                  §catch package super§(_loc3_.§dynamic final§,this.§5214232541232554123423632234§,this.§each set override§,0.5,0.9);
                  §static use continue§(this.§5214231521231534123423632234§,_loc3_.§dynamic final§,0.1);
                  _loc4_++;
               }
               this.§5214236500236513123423632234§(_loc3_,_loc5_);
            }
            this.§final switch set§.§521423128692312882123423632234§();
         }
      }
      
      private function §try catch try§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:§for switch class§ = §for switch class§(OSGi.getInstance().getService(§for switch class§));
         _loc2_.§5214231352231365123423632234§("[Mine_2]\nuser:" + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).userName + " " + IUserPropertiesService(OSGi.getInstance().getService(IUserPropertiesService)).rank + "\n" + "Minutes-" + int(getTimer() / 1000 / 60) + "\n" + "ownerN: " + param1.§do for final§.userName + "\n" + "ownerI: " + param1.§native catch class§ + "\n" + "\n\n");
      }
      
      private function §break finally catch§(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:int = 0;
         var _loc4_:§5214233000233013123423632234§ = null;
         var _loc3_:Vector3 = null;
         if(this.§use set const§ != null)
         {
            while(_loc2_ < this.§use set const§.length)
            {
               _loc4_ = this.§use set const§[_loc2_];
               if(_loc4_.§5214236536236549123423632234§ == param1.§5214233939233952123423632234§().id)
               {
                  this.§use set const§.removeAt(_loc2_);
                  _loc2_--;
                  _loc3_ = BattleUtils.getVector3(_loc4_.§dynamic final§);
                  this.§function switch each§(_loc4_.§5214236427236440123423632234§,this.§521423212334123423632234§,_loc3_,_loc4_.§5214236536236549123423632234§,param1.§5214238124238137123423632234§,this.§implements for package§(param1),_loc4_.§switch package package§);
               }
               _loc2_++;
            }
         }
      }
      
      public function §const var override§(param1:String) : void
      {
         var _loc2_:§521423122642312277123423632234§ = this.§for default§[param1] || this.§function var for§[param1];
         if(_loc2_ != null)
         {
            _loc2_.§extends switch override§();
            §static use continue§(this.§package var for§,_loc2_.§dynamic final§,0.3);
         }
         else
         {
            for each(var _loc3_ in this.§use set const§)
            {
               if(_loc3_.§5214236427236440123423632234§ == param1)
               {
                  _loc3_.§switch package package§ = true;
                  return;
               }
            }
         }
      }
   }
}

