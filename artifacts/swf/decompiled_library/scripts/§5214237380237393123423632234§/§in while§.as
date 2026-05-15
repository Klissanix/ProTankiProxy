package §5214237380237393123423632234§
{
   import §5214236303236316123423632234§.§521423133942313407123423632234§;
   import §5214236303236316123423632234§.§52142319523208123423632234§;
   import §5214236303236316123423632234§.§final use while§;
   import §5214237930237943123423632234§.§throw var§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.AnimatedLightEffect;
   import alternativa.tanks.sfx.AnimatedSpriteEffect;
   import alternativa.tanks.sfx.MobileSound3DEffect;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   import flash.media.SoundChannel;
   
   public class §in while§
   {
      
      public static const §521423111022311115123423632234§:Number = 200;
      
      public static const §52142329423307123423632234§:Number = 200;
      
      private static const §521423472360123423632234§:Number = 110;
      
      private static const §final else§:Number = 0.4;
      
      private static const §super package native§:Number = 0.8;
      
      private static const §switch for§:Number = 0.35;
      
      private static const §each switch finally§:int = 1000;
      
      private static const §with const§:int = 300;
      
      private static const §while var const§:Vector3 = new Vector3();
      
      private var §override set else§:§native catch null§;
      
      private var §52142380523818123423632234§:BattleService;
      
      private var §521423125652312578123423632234§:SoundChannel;
      
      private var §true switch dynamic§:MobileSound3DEffect;
      
      public function §in while§(param1:§native catch null§, param2:BattleService)
      {
         super();
         this.§override set else§ = param1;
         this.§52142380523818123423632234§ = param2;
      }
      
      private function §in var in§(param1:Vector3) : void
      {
         var _loc2_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc2_.init(param1,110);
         var _loc3_:AnimatedSpriteEffect = AnimatedSpriteEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedSpriteEffect));
         _loc3_.init(200,2.5 * 200,this.§override set else§.§throw try§,0,_loc2_);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
         this.§5214232460232473123423632234§(param1);
      }
      
      public function §set static§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc4_:MuzzlePositionProvider = MuzzlePositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(MuzzlePositionProvider));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.§override set else§.§in catch package§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
      }
      
      public function §extends switch do§(param1:Object3D) : void
      {
         var _loc2_:Sound3D = null;
         if(this.§true switch dynamic§ == null)
         {
            this.§true switch dynamic§ = MobileSound3DEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(MobileSound3DEffect));
            _loc2_ = Sound3D.create(this.§override set else§.§final import§,0.35);
            this.§true switch dynamic§.init(_loc2_,param1,0,9999);
            this.§52142380523818123423632234§.addSound3DEffect(this.§true switch dynamic§);
         }
      }
      
      private function §get set set§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Vector3, param5:Boolean) : void
      {
         var _loc7_:Number = NaN;
         var _loc6_:Number = this.§override set else§.§break var break§;
         §while var const§.diff(param1,param2);
         if(§while var const§.dot(param3) > 0)
         {
            _loc7_ = §while var const§.length();
            if(_loc7_ > _loc6_)
            {
               _loc7_ = _loc6_;
            }
            this.§null var else§(§521423133942313407123423632234§,param1,param4,_loc7_,_loc7_ / _loc6_);
            if(param5)
            {
               this.§null var else§(§52142319523208123423632234§,param1,param4,_loc7_,0.5);
            }
         }
         this.§in var in§(param1);
         this.§5214233773233786123423632234§(param1);
      }
      
      public function §521423136812313694123423632234§(param1:Vector3, param2:Object3D) : void
      {
         var _loc4_:§throw var§ = this.§52142380523818123423632234§.getObjectPool();
         var _loc5_:MuzzlePositionProvider = MuzzlePositionProvider(_loc4_.§52142349423507123423632234§(MuzzlePositionProvider));
         _loc5_.init(param2,param1,10);
         var _loc3_:AnimatedSpriteEffect = AnimatedSpriteEffect(_loc4_.§52142349423507123423632234§(AnimatedSpriteEffect));
         _loc3_.init(200,200,this.§override set else§.§static const false§,0,_loc5_);
         this.§52142380523818123423632234§.addGraphicEffect(_loc3_);
         this.§set static§(param1,param2);
      }
      
      public function §5214238119238132123423632234§(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.§521423125652312578123423632234§ == null)
            {
               this.§521423125652312578123423632234§ = this.§52142380523818123423632234§.soundManager.playSound(this.§override set else§.§521423120652312078123423632234§,0,9999);
            }
         }
         else if(this.§521423125652312578123423632234§ != null)
         {
            this.§52142380523818123423632234§.soundManager.stopSound(this.§521423125652312578123423632234§);
            this.§521423125652312578123423632234§ = null;
         }
      }
      
      public function §get switch case§(param1:Vector3, param2:Vector3) : void
      {
         if(param2 != null)
         {
            this.§52142380523818123423632234§.getBattleScene3D().§override finally use§(param2,param1,47,this.§override set else§.§521423101512310164123423632234§);
         }
      }
      
      public function §5214239371239384123423632234§() : void
      {
         if(this.§true switch dynamic§ != null)
         {
            this.§true switch dynamic§.fade(1000);
         }
      }
      
      public function §class for use§(param1:Vector3, param2:Vector.<Vector3>, param3:Vector3, param4:Vector3, param5:Vector3) : void
      {
         var _loc6_:Vector3 = null;
         if(param1 != null)
         {
            this.§get set set§(param1,param3,param4,param5,false);
         }
         if(param2 != null)
         {
            for each(_loc6_ in param2)
            {
               if(_loc6_ != null)
               {
                  this.§get set set§(_loc6_,param3,param4,param5,true);
               }
            }
         }
      }
      
      private function §5214232460232473123423632234§(param1:Vector3) : void
      {
         var _loc2_:AnimatedLightEffect = AnimatedLightEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(AnimatedLightEffect));
         var _loc3_:StaticObject3DPositionProvider = StaticObject3DPositionProvider(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(StaticObject3DPositionProvider));
         _loc3_.init(param1,110);
         _loc2_.init(_loc3_,this.§override set else§.§5214238606238619123423632234§);
         this.§52142380523818123423632234§.addGraphicEffect(_loc2_);
      }
      
      public function §521423103202310333123423632234§(param1:Vector3) : void
      {
         var _loc2_:Sound3D = Sound3D.create(this.§override set else§.§override for while§,0.4);
         var _loc3_:Sound3DEffect = Sound3DEffect.create(param1,_loc2_);
         this.§52142380523818123423632234§.addSound3DEffect(_loc3_);
      }
      
      public function §5214234986234999123423632234§() : void
      {
         if(this.§true switch dynamic§ != null)
         {
            this.§true switch dynamic§.kill();
            this.§true switch dynamic§ = null;
         }
      }
      
      private function §null var else§(param1:Class, param2:Vector3, param3:Vector3, param4:Number, param5:Number) : void
      {
         var _loc6_:§final use while§ = §final use while§(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(param1));
         _loc6_.init(param2,param3,param4,param5,this.§override set else§.§function var while§,300);
         this.§52142380523818123423632234§.addGraphicEffect(_loc6_);
      }
      
      public function destroy() : void
      {
         if(this.§521423125652312578123423632234§ != null)
         {
            this.§52142380523818123423632234§.soundManager.stopSound(this.§521423125652312578123423632234§);
            this.§521423125652312578123423632234§ = null;
         }
         this.§5214234986234999123423632234§();
      }
      
      private function §5214233773233786123423632234§(param1:Vector3) : void
      {
         var _loc2_:Sound3D = Sound3D.create(this.§override set else§.§5214232585232598123423632234§,0.8);
         var _loc3_:Sound3DEffect = Sound3DEffect(this.§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(Sound3DEffect));
         _loc3_.init(param1,_loc2_,100);
         this.§52142380523818123423632234§.addSound3DEffect(_loc3_);
      }
   }
}

