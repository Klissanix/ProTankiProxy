package §throw set function§
{
   import §521423118762311889123423632234§.§5214231029231042123423632234§;
   import §521423118762311889123423632234§.§5214231591231604123423632234§;
   import §5214234427234440123423632234§.§5214232306232319123423632234§;
   import §5214237208237221123423632234§.§5214234680234693123423632234§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§throw var§;
   import §5214237976237989123423632234§.§function use use§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.AnimatedSpriteEffect;
   import alternativa.tanks.sfx.ExternalObject3DPositionProvider;
   import alternativa.tanks.sfx.SFXUtils;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   import §const set null§.§521423136232313636123423632234§;
   import §each var null§.§const throw§;
   import §else switch default§.§5214235140235153123423632234§;
   import flash.media.Sound;
   import §for catch for§.§5214234380234393123423632234§;
   import §set package each§.§5214237646237659123423632234§;
   
   public class §case var§ extends §5214234680234693123423632234§
   {
      
      public static const §case var super§:Number = 300;
      
      public static const §521423139692313982123423632234§:Number = 266;
      
      public static const §521423137882313801123423632234§:Number = 100;
      
      private static const §native switch function§:Number = 80;
      
      private static const §5214233741233754123423632234§:Number = 300;
      
      private static const §521423128842312897123423632234§:int = 6;
      
      private static const §5214232437232450123423632234§:Vector3 = new Vector3();
      
      private static const §521423115432311556123423632234§:Vector3 = new Vector3();
      
      private static const §null for catch§:Vector3 = new Vector3();
      
      private var §override set else§:§continue package else§;
      
      private var §set const break§:§final use class§;
      
      private var §5214234360234373123423632234§:Vector.<Vector3>;
      
      private var §5214237410237423123423632234§:§521423136232313636123423632234§;
      
      private var sprite:AnimatedSprite3D;
      
      private var §dynamic package const§:§5214237646237659123423632234§;
      
      private var §521423122032312216123423632234§:int;
      
      private var §return use§:§use const return§;
      
      private var §var for get§:Number;
      
      private var §52142354723560123423632234§:AnimatedLightEffect;
      
      private var §5214237164237177123423632234§:ExternalObject3DPositionProvider;
      
      private var §5214233585233598123423632234§:§5214232306232319123423632234§;
      
      public function §case var§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.sprite = new AnimatedSprite3D(300,300);
         this.sprite.§52142356623579123423632234§ = true;
         this.§return use§ = new §use const return§(100,300);
         this.§5214234360234373123423632234§ = new Vector.<Vector3>();
      }
      
      override protected function §include const include§() : Boolean
      {
         var _loc1_:§5214234380234393123423632234§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         §521423115432311556123423632234§.diff(§52142372223735123423632234§,§521423100222310035123423632234§);
         var _loc2_:Number = §521423115432311556123423632234§.length();
         §521423115432311556123423632234§.normalize();
         return this.§521423137972313810123423632234§(§521423115432311556123423632234§,_loc2_,_loc1_);
      }
      
      private function §5214232460232473123423632234§(param1:Vector3) : void
      {
         var _loc2_:AnimatedLightEffect = AnimatedLightEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc3_.init(param1,50);
         _loc2_.init(_loc3_,this.§override set else§.§5214238606238619123423632234§);
         §52142380523818123423632234§.addGraphicEffect(_loc2_);
      }
      
      private function §class catch var§(param1:Vector3) : void
      {
         var _loc2_:AnimatedLightEffect = AnimatedLightEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc3_.init(param1,50);
         _loc2_.init(_loc3_,this.§override set else§.§import for function§);
         §52142380523818123423632234§.addGraphicEffect(_loc2_);
      }
      
      private function §521423137972313810123423632234§(param1:Vector3, param2:Number, param3:§5214234380234393123423632234§) : Boolean
      {
         if(param3.§5214239358239371123423632234§(§521423100222310035123423632234§,param1,8,param2,this,§get switch class§))
         {
            this.§5214234360234373123423632234§.push(§get switch class§.§dynamic final§.clone());
            if(BattleUtils.isTankBody(§get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§))
            {
               this.§dynamic var super§(§get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§,§get switch class§.§dynamic final§,param1,0,this.§5214234360234373123423632234§);
               return true;
            }
            if(this.§521423122032312216123423632234§ >= this.§5214237410237423123423632234§.§5214232411232424123423632234§)
            {
               this.§521423121102312123123423632234§(§get switch class§.§5214233761233774123423632234§);
               return true;
            }
            ++this.§521423122032312216123423632234§;
            §52142372223735123423632234§.copy(§get switch class§.§dynamic final§);
            this.§52142331023323123423632234§(§get switch class§.§5214233761233774123423632234§);
            this.§521423106162310629123423632234§(§get switch class§.§dynamic final§);
            return false;
         }
         return this.§52142325523268123423632234§(param1,param2,param3);
      }
      
      private function §5214231006231019123423632234§(param1:Sound, param2:Vector3) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Sound3D = null;
         var _loc3_:Sound3DEffect = null;
         if(param1 != null)
         {
            _loc4_ = 0.8;
            _loc5_ = Sound3D.create(param1,_loc4_);
            _loc3_ = Sound3DEffect.create(param2,_loc5_);
            §52142380523818123423632234§.addSound3DEffect(_loc3_);
         }
      }
      
      private function §else use var§(param1:§const throw§, param2:Vector.<Vector3>) : void
      {
         if(this.§set const break§)
         {
            this.§set const break§.§else use var§(§5214233952233965123423632234§(),param1,param2);
         }
      }
      
      private function §52142325523268123423632234§(param1:Vector3, param2:Number, param3:§5214234380234393123423632234§) : Boolean
      {
         var _loc6_:Vector3 = null;
         var _loc4_:§const throw§ = null;
         §false package dynamic§(§521423100222310035123423632234§,param1);
         var _loc5_:int = 0;
         while(_loc5_ < 6)
         {
            _loc6_ = §5214236205236218123423632234§[_loc5_];
            if(param3.§5214239358239371123423632234§(_loc6_,§521423109142310927123423632234§,8,param2,this,§get switch class§))
            {
               _loc4_ = §get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§;
               if(BattleUtils.isTankBody(_loc4_))
               {
                  §include for override§.copy(§521423100222310035123423632234§).addScaled(§get switch class§.§5214232932232945123423632234§,param1);
                  this.§5214234360234373123423632234§.push(§include for override§.clone());
                  this.§dynamic var super§(_loc4_,§include for override§,param1,0,this.§5214234360234373123423632234§);
                  return true;
               }
            }
            _loc5_++;
         }
         return false;
      }
      
      override protected function §521423120402312053123423632234§(param1:Number) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:§const throw§ = null;
         var _loc7_:int = 0;
         var _loc8_:Vector3 = null;
         var _loc5_:Boolean = false;
         if(§set use set§ >= this.§5214237410237423123423632234§.§5214231670231683123423632234§)
         {
            this.destroy();
            return;
         }
         var _loc4_:§5214234380234393123423632234§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         var _loc3_:Number = this.§5214237410237423123423632234§.§5214231890231903123423632234§ * param1;
         §521423100282310041123423632234§.copy(§52142372223735123423632234§);
         while(_loc3_ > 0)
         {
            _loc9_ = -1;
            _loc10_ = _loc3_;
            if(_loc4_.§5214239358239371123423632234§(§52142372223735123423632234§,§521423109142310927123423632234§,8,_loc3_,this,§get switch class§))
            {
               _loc2_ = §get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§;
               _loc9_ = §get switch class§.§5214232932232945123423632234§;
               if(BattleUtils.isTankBody(_loc2_))
               {
                  this.§5214234360234373123423632234§.push(§get switch class§.§dynamic final§.clone().add(§get switch class§.§5214233761233774123423632234§));
                  this.§dynamic var super§(_loc2_,§get switch class§.§dynamic final§,§521423109142310927123423632234§,§set use set§ + _loc9_,this.§5214234360234373123423632234§);
                  return;
               }
               _loc10_ = _loc9_;
               §null for catch§.copy(§get switch class§.§dynamic final§);
               §5214232437232450123423632234§.copy(§get switch class§.§5214233761233774123423632234§);
            }
            _loc7_ = 0;
            while(_loc7_ < 6)
            {
               _loc8_ = §5214236205236218123423632234§[_loc7_];
               if(_loc4_.§5214239358239371123423632234§(_loc8_,§521423109142310927123423632234§,8,_loc10_,this,§get switch class§))
               {
                  _loc2_ = §get switch class§.§521423105112310524123423632234§.§5214232783232796123423632234§;
                  §include for override§.copy(§52142372223735123423632234§).addScaled(§get switch class§.§5214232932232945123423632234§,§521423109142310927123423632234§);
                  _loc5_ = BattleUtils.isTankBody(_loc2_) && !this.§function use set§(§52142372223735123423632234§,§include for override§);
                  if(_loc5_)
                  {
                     this.§5214234360234373123423632234§.push(§include for override§.clone());
                     this.§dynamic var super§(_loc2_,§include for override§,§521423109142310927123423632234§,§set use set§ + §get switch class§.§5214232932232945123423632234§,this.§5214234360234373123423632234§);
                     return;
                  }
               }
               _loc8_.addScaled(_loc10_,§521423109142310927123423632234§);
               _loc7_++;
            }
            if(_loc9_ > -1)
            {
               §set use set§ += _loc9_;
               _loc3_ -= _loc9_;
               if(this.§521423122032312216123423632234§ >= this.§5214237410237423123423632234§.§5214232411232424123423632234§)
               {
                  _loc6_ = this.§dynamic package const§.§521423126342312647123423632234§(§set use set§);
                  this.§5214234360234373123423632234§.push(§null for catch§.clone());
                  this.§521423121102312123123423632234§(§5214232437232450123423632234§,_loc6_,_loc2_);
                  return;
               }
               ++this.§521423122032312216123423632234§;
               §52142372223735123423632234§.addScaled(_loc9_,§521423109142310927123423632234§);
               this.§52142331023323123423632234§(§5214232437232450123423632234§);
               this.§521423106162310629123423632234§(§52142372223735123423632234§);
               this.§5214234360234373123423632234§.push(§52142372223735123423632234§.clone());
            }
            else
            {
               §set use set§ += _loc3_;
               §52142372223735123423632234§.addScaled(_loc3_,§521423109142310927123423632234§);
               _loc3_ = 0;
            }
         }
      }
      
      override protected function §include var function§() : int
      {
         return 6;
      }
      
      private function §521423121102312123123423632234§(param1:Vector3, param2:Number = 1, param3:§const throw§ = null) : void
      {
         var _loc5_:Vector3 = this.§5214234360234373123423632234§[this.§5214234360234373123423632234§.length - 1];
         _loc5_.addScaled(0.1,param1);
         var _loc4_:Boolean = true;
         this.§5214237799237812123423632234§(_loc5_);
         if(Boolean(this.§set const break§) && _loc4_)
         {
            this.§set const break§.§521423136472313660123423632234§(§5214233952233965123423632234§(),this.§5214234360234373123423632234§);
         }
         this.destroy();
      }
      
      override protected function §5214239838239851123423632234§() : Number
      {
         return this.§5214237410237423123423632234§.§in use each§;
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         var _loc1_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc1_.§5214233649233662123423632234§(this.sprite);
         this.sprite.material = null;
         _loc1_.§5214233649233662123423632234§(this.§return use§);
         this.§return use§.setMaterialToAllFaces(null);
         _loc1_.§521423139632313976123423632234§(this.§return use§);
         §class final§ = null;
         this.§5214237410237423123423632234§ = null;
         this.§override set else§ = null;
         this.§dynamic package const§ = null;
         this.§set const break§ = null;
         this.§52142354723560123423632234§.kill();
         this.§52142354723560123423632234§ = null;
         this.§5214237164237177123423632234§ = null;
      }
      
      private function §function use set§(param1:Vector3, param2:Vector3) : Boolean
      {
         return §function use use§.§do set in§(param1,param2);
      }
      
      private function §dynamic var super§(param1:§const throw§, param2:Vector3, param3:Vector3, param4:Number, param5:Vector.<Vector3>) : void
      {
         this.§5214237799237812123423632234§(param2);
         var _loc7_:Number = this.§dynamic package const§.§521423126342312647123423632234§(param4);
         var _loc6_:§5214239411239424123423632234§ = param1.§521423122212312234123423632234§;
         _loc6_.§5214239340239353123423632234§(param2,param3,_loc7_ * this.§var for get§);
         this.§else use var§(param1,param5);
         this.destroy();
      }
      
      private function §521423106162310629123423632234§(param1:Vector3) : void
      {
         var _loc2_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         var _loc4_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(_loc2_.§52142349423507123423632234§(StaticObject3DPositionProvider));
         var _loc5_:int = 50;
         _loc4_.init(param1,_loc5_);
         var _loc3_:AnimatedSpriteEffect = AnimatedSpriteEffect(_loc2_.§52142349423507123423632234§(AnimatedSpriteEffect));
         _loc3_.init(80,80,this.§override set else§.§import const set§,Math.random() * 3.141592653589793 * 2,_loc4_,0.5,0.5);
         §52142380523818123423632234§.addGraphicEffect(_loc3_);
         this.§5214231006231019123423632234§(this.§override set else§.§package set else§,param1);
         this.§class catch var§(param1);
      }
      
      public function init(param1:Number, param2:§521423136232313636123423632234§, param3:§continue package else§, param4:§5214237646237659123423632234§, param5:§final use class§, param6:§5214232306232319123423632234§) : void
      {
         this.§var for get§ = param1;
         this.§5214237410237423123423632234§ = param2;
         this.§override set else§ = param3;
         this.§dynamic package const§ = param4;
         this.§set const break§ = param5;
         this.§5214233585233598123423632234§ = param6;
         this.sprite.rotation = 2 * 3.141592653589793 * Math.random();
         this.sprite.setAnimationData(param3.§else package get§);
         this.sprite.setFrameIndex(this.sprite.getNumFrames() * Math.random());
         this.§return use§.setMaterialToAllFaces(param3.§extends switch get§);
         this.§521423122032312216123423632234§ = 0;
         this.§5214234360234373123423632234§.length = 0;
         this.§52142354723560123423632234§ = AnimatedLightEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         this.§5214237164237177123423632234§ = ExternalObject3DPositionProvider(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(ExternalObject3DPositionProvider));
         this.§52142354723560123423632234§.init(this.§5214237164237177123423632234§,param3.§5214239929239942123423632234§,99999,true);
      }
      
      private function §5214237799237812123423632234§(param1:Vector3) : void
      {
         var _loc2_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         var _loc6_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(_loc2_.§52142349423507123423632234§(StaticObject3DPositionProvider));
         var _loc7_:int = 50;
         _loc6_.init(param1,_loc7_);
         var _loc4_:AnimatedSpriteEffect = AnimatedSpriteEffect(_loc2_.§52142349423507123423632234§(AnimatedSpriteEffect));
         var _loc5_:Number = Math.random() * 3.141592653589793 * 2;
         var _loc3_:int = 0;
         _loc4_.init(266,266,this.§override set else§.§throw try§,_loc5_,_loc6_,0.5,0.5,null,_loc3_);
         §52142380523818123423632234§.addGraphicEffect(_loc4_);
         this.§5214231006231019123423632234§(this.§override set else§.§5214232585232598123423632234§,param1);
         this.§5214232460232473123423632234§(param1);
      }
      
      private function §52142331023323123423632234§(param1:Vector3) : void
      {
         §52142372223735123423632234§.addScaled(0.1,param1);
         §521423109142310927123423632234§.addScaled(-2 * §521423109142310927123423632234§.dot(param1),param1);
         §false package dynamic§(§52142372223735123423632234§,§521423109142310927123423632234§);
      }
      
      override public function render(param1:int, param2:int) : void
      {
         this.sprite.x = §5214235411235424123423632234§.x;
         this.sprite.y = §5214235411235424123423632234§.y;
         this.sprite.z = §5214235411235424123423632234§.z;
         this.sprite.update(param2 / 1000);
         var _loc9_:Number = this.§dynamic package const§.§521423126342312647123423632234§(§set use set§);
         var _loc10_:Number = 300 * _loc9_;
         this.sprite.width = _loc10_;
         this.sprite.height = _loc10_;
         this.sprite.rotation -= 0.003 * param2;
         var _loc7_:Vector3 = §52142380523818123423632234§.getBattleScene3D().§while set for§().§dynamic final§;
         SFXUtils.alignObjectPlaneToView(this.§return use§,§5214235411235424123423632234§,§521423109142310927123423632234§,_loc7_);
         var _loc8_:Number = §52142372223735123423632234§.x - _loc7_.x;
         var _loc5_:Number = §52142372223735123423632234§.y - _loc7_.y;
         var _loc6_:Number = §52142372223735123423632234§.z - _loc7_.z;
         var _loc4_:Number = _loc8_ * _loc8_ + _loc5_ * _loc5_ + _loc6_ * _loc6_;
         if(_loc4_ > 0.00001)
         {
            _loc4_ = 1 / Math.sqrt(_loc4_);
            _loc8_ *= _loc4_;
            _loc5_ *= _loc4_;
            _loc6_ *= _loc4_;
         }
         var _loc3_:Number = _loc8_ * §521423109142310927123423632234§.x + _loc5_ * §521423109142310927123423632234§.y + _loc6_ * §521423109142310927123423632234§.z;
         if(_loc3_ < 0)
         {
            _loc3_ = -_loc3_;
         }
         if(_loc3_ > 0.5)
         {
            this.§return use§.alpha = 2 * (1 - _loc3_) * _loc9_;
         }
         else
         {
            this.§return use§.alpha = _loc9_;
         }
         this.§5214237164237177123423632234§.setPosition(§5214235411235424123423632234§);
      }
      
      override public function considerBody(param1:§const throw§) : Boolean
      {
         return super.considerBody(param1) || this.§521423122032312216123423632234§ > 0;
      }
      
      override public function §5214237205237218123423632234§(param1:§else const final§, param2:Vector3, param3:§const throw§, param4:int = -1) : void
      {
         super.§5214237205237218123423632234§(param1,param2,param3,param4);
         var _loc5_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc5_.§5214231095231108123423632234§(this.sprite);
         _loc5_.§5214231095231108123423632234§(this.§return use§);
         _loc5_.§5214239252239265123423632234§(this.§return use§);
         _loc5_.§each var use§(this.§52142354723560123423632234§);
      }
      
      override protected function §52142380923822123423632234§() : §5214231029231042123423632234§
      {
         return §5214231591231604123423632234§.§var use null§;
      }
   }
}

