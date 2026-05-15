package §52142328223295123423632234§
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214237930237943123423632234§.§throw var§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.tank.service.LocalTankInfoService;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.AnimatedSpriteEffect;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   import §for catch for§.§5214234380234393123423632234§;
   import §true for else§.§5214232096232109123423632234§;
   
   public class §521423131422313155123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214237923237936123423632234§:LocalTankInfoService;
      
      private static const §521423472360123423632234§:Number = 110;
      
      private static const §do var§:Number = 550;
      
      public static const §static set case§:Number = 3000;
      
      protected static const §get switch class§:§default catch native§ = new §default catch native§();
      
      private var §native use function§:Vector3;
      
      private var §dynamic final§:Vector3;
      
      private var §5214239673239686123423632234§:Vector3;
      
      private var §521423100282310041123423632234§:Vector3;
      
      private var §5214232704232717123423632234§:Vector3;
      
      private var §override set else§:§each for finally§;
      
      private var §break catch else§:Number;
      
      private var §5214236834236847123423632234§:§5214235340235353123423632234§;
      
      private var §for set dynamic§:Boolean = true;
      
      private var §dynamic package native§:Vector3;
      
      private var §5214233867233880123423632234§:Vector3;
      
      private var §continue set false§:Vector3;
      
      private var §case return§:Vector3;
      
      public function §521423131422313155123423632234§(param1:Mesh, param2:§each for finally§, param3:Vector3, param4:§else const final§, param5:Vector3, param6:Number)
      {
         super();
         this.§dynamic package native§ = new Vector3();
         this.§5214233867233880123423632234§ = new Vector3();
         this.§continue set false§ = new Vector3();
         this.§case return§ = new Vector3();
         this.§native use function§ = new Vector3();
         this.§dynamic final§ = new Vector3();
         this.§5214239673239686123423632234§ = new Vector3();
         this.§521423100282310041123423632234§ = new Vector3();
         this.§5214232704232717123423632234§ = new Vector3();
         this.§override set else§ = param2;
         this.§break catch else§ = param6;
         this.§native use function§.copy(param3);
         this.§dynamic final§.copy(param4.§if var switch§);
         this.§5214239673239686123423632234§.copy(param5);
         this.§521423100282310041123423632234§.copy(param4.§if var switch§);
         this.§5214232704232717123423632234§.copy(param5);
         this.§5214236834236847123423632234§ = this.§case use try§(param1);
         this.§super catch each§();
      }
      
      private function §set finally for§(param1:Vector3, param2:Vector3) : void
      {
         this.§dynamic package native§.copy(param1).subtract(param2);
         §52142380523818123423632234§.getBattleScene3D().§override finally use§(param1,this.§dynamic package native§,550,this.§override set else§.§5214234328234341123423632234§);
      }
      
      public function §try set function§(param1:Boolean = false) : Boolean
      {
         if(!this.§for set dynamic§)
         {
            return false;
         }
         §5214232096232109123423632234§.§do package else§(0.033,this.§dynamic final§,this.§521423100282310041123423632234§,this.§5214239673239686123423632234§,this.§5214232704232717123423632234§,this.§native use function§,this.§break catch else§);
         this.§case return§.diff(this.§dynamic final§,this.§521423100282310041123423632234§);
         var _loc2_:Number = this.§case return§.length();
         this.§case return§.normalize();
         var _loc3_:§5214234380234393123423632234§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         if(_loc3_.§set use for§(this.§521423100282310041123423632234§,this.§case return§,16,_loc2_,null,§get switch class§))
         {
            if(!param1)
            {
               this.§for set dynamic§ = false;
               this.§with each§(§get switch class§.§dynamic final§);
            }
            return false;
         }
         return true;
      }
      
      private function §implements var package§(param1:Vector3) : Boolean
      {
         return Boolean(§5214237923237936123423632234§.getLocalTank()) && this.§521423135862313599123423632234§(param1);
      }
      
      public function §5214239365239378123423632234§(param1:Number) : void
      {
         this.§5214236834236847123423632234§.§521423120402312053123423632234§(param1);
      }
      
      private function §super catch each§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 24)
         {
            this.§for set dynamic§ = this.§try set function§(true);
            if(!this.§for set dynamic§)
            {
               return;
            }
            _loc1_++;
         }
      }
      
      private function §case use try§(param1:Mesh) : §5214235340235353123423632234§
      {
         var _loc2_:§5214235340235353123423632234§ = §5214235340235353123423632234§(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§5214235340235353123423632234§));
         _loc2_.init(param1,this.§override set else§);
         return _loc2_;
      }
      
      private function §5214233773233786123423632234§(param1:Vector3) : void
      {
         var _loc2_:Sound3D = Sound3D.create(this.§override set else§.§5214232585232598123423632234§,0.8);
         §52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(param1,_loc2_));
      }
      
      public function §5214237799237812123423632234§(param1:Vector3, param2:Vector3) : void
      {
         this.§in var in§(param1,param2);
         this.§5214232460232473123423632234§(param1);
         this.§5214233773233786123423632234§(param1);
         this.§set finally for§(param1,param2);
      }
      
      private function §5214232460232473123423632234§(param1:Vector3) : void
      {
         var _loc2_:AnimatedLightEffect = AnimatedLightEffect(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc3_.init(param1,110);
         _loc2_.init(_loc3_,this.§override set else§.§5214238606238619123423632234§);
         §52142380523818123423632234§.addGraphicEffect(_loc2_);
      }
      
      private function §in var in§(param1:Vector3, param2:Vector3) : void
      {
         this.§continue set false§.sum(param1,this.§5214233867233880123423632234§.copy(param2).scale(-155));
         var _loc5_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         var _loc4_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(_loc5_.§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc4_.init(this.§continue set false§,110);
         var _loc3_:AnimatedSpriteEffect = AnimatedSpriteEffect(_loc5_.§52142349423507123423632234§(AnimatedSpriteEffect));
         _loc3_.init(1500,1500,this.§override set else§.§with var continue§,0,_loc4_,0.5,0.75);
         §52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      private function §521423135862313599123423632234§(param1:Vector3) : Boolean
      {
         var _temp_1:* = param1;
         var _loc3_:Vector3 = §5214237923237936123423632234§.getLocalTank().§break switch catch§().§implements catch catch§.§dynamic final§;
         var _loc2_:Vector3 = _temp_1;
         var _loc4_:Number = _loc2_.x - _loc3_.x;
         var _loc5_:Number = _loc2_.y - _loc3_.y;
         var _loc6_:Number = _loc2_.z - _loc3_.z;
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_) <= 3000;
      }
      
      private function §with each§(param1:Vector3) : void
      {
         if(this.§implements var package§(param1))
         {
            this.§5214237580237593123423632234§(param1);
         }
      }
      
      public function destroy() : void
      {
         this.§5214236834236847123423632234§.close();
         this.§5214236834236847123423632234§ = null;
      }
      
      public function §5214237580237593123423632234§(param1:Vector3) : void
      {
         var _loc2_:Sound3D = Sound3D.create(this.§override set else§.§5214235870235883123423632234§,0.8);
         §52142380523818123423632234§.addSound3DEffect(Sound3DEffect.create(param1,_loc2_));
      }
   }
}

