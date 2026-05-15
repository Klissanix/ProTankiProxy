package §5214236338236351123423632234§
{
   import §5214231366231379123423632234§.§521423130562313069123423632234§;
   import §5214232916232929123423632234§.§521423108032310816123423632234§;
   import §5214234043234056123423632234§.HidableObject3DWrapper;
   import §5214237930237943123423632234§.§throw var§;
   import alternativa.engine3d.containers.KDContainer;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.§final use in§;
   import alternativa.tanks.battle.BattleRunner;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.validator.DataValidator;
   import alternativa.tanks.services.validator.StaticCollisionBoxValidator;
   import alternativa.tanks.services.validator.StaticCollisionTriangleValidator;
   import alternativa.tanks.services.validator.StaticCollisoinRectValidator;
   import alternativa.tanks.sfx.StaticObject3DPositionProvider;
   import alternativa.utils.TextureMaterialRegistry;
   import §do catch return§.§5214231131231144123423632234§;
   import §do catch return§.§5214232252232265123423632234§;
   import §do catch return§.§5214237379237392123423632234§;
   import §else switch default§.§5214235140235153123423632234§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import §for catch for§.§521423136582313671123423632234§;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §use package import§.ChristmasTreeToyEffect;
   
   public class §5214239451239464123423632234§ implements §521423117662311779123423632234§
   {
      
      public static var §5214231316231329123423632234§:DataValidator;
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214233864233877123423632234§:CommandService;
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      private static const §5214234262234275123423632234§:Number = 0.1;
      
      private static const §5214235834235847123423632234§:int = 20;
      
      private var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      private var §5214237932237945123423632234§:§521423108032310816123423632234§;
      
      private var §return package catch§:§include finally dynamic§;
      
      private var §521423137462313759123423632234§:KDContainer;
      
      private var §5214235023235036123423632234§:Function;
      
      private var §default switch continue§:§521423130562313069123423632234§;
      
      private var §5214238136238149123423632234§:Vector.<BitmapData>;
      
      private var §for set continue§:§5214237967237980123423632234§;
      
      private var §521423127002312713123423632234§:uint;
      
      private var §5214232616232629123423632234§:Boolean;
      
      private var §for package if§:Boolean;
      
      public function §5214239451239464123423632234§(param1:TextureMaterialRegistry, param2:§521423108032310816123423632234§)
      {
         super();
         if(param2.§return set extends§("dust2") != null || param2.§return set extends§("dust2 Winter") != null || param2.§return set extends§("Fogtown") != null || param2.§return set extends§("Lapland") != null || param2.§return set extends§("Custom Gradients") != null)
         {
            §5214232551232564123423632234§.forceDisabledTankShadows = true;
         }
         if(param2.§return set extends§("Lapland") != null || param2.§return set extends§("NY") != null)
         {
            §5214232551232564123423632234§.snowParticles = true;
         }
         this.§5214235868235881123423632234§ = param1;
         this.§5214237932237945123423632234§ = param2;
      }
      
      private function §521423107582310771123423632234§() : void
      {
         for each(var _loc1_ in this.§5214238136238149123423632234§)
         {
            _loc1_.dispose();
         }
         this.§5214238136238149123423632234§ = null;
      }
      
      private function §super const include§(param1:XML) : void
      {
         var _loc3_:Vector.<§521423136582313671123423632234§> = §5214231002231015123423632234§.§5214234225234238123423632234§(param1);
         var _loc2_:BattleRunner = §52142380523818123423632234§.getBattleRunner();
         _loc2_.initStaticGeometry(_loc3_);
      }
      
      private function §521423126272312640123423632234§() : void
      {
         var _loc1_:Vector.<Mesh> = this.§for set continue§.§5214237226237239123423632234§();
         var _loc2_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         for each(var _loc3_ in _loc1_)
         {
            _loc2_.§dynamic set continue§(_loc3_);
         }
      }
      
      private function §5214238836238849123423632234§(param1:§final use in§) : void
      {
         if(!this.§for package if§ && this.§5214232616232629123423632234§)
         {
            this.§5214233690233703123423632234§();
         }
      }
      
      public function §5214231310231323123423632234§() : Object3DContainer
      {
         return this.§521423137462313759123423632234§;
      }
      
      public function §521423105162310529123423632234§(param1:XML, param2:Function) : void
      {
         this.§5214235023235036123423632234§ = param2;
         this.§super const include§(param1);
         this.§521423131462313159123423632234§(param1);
         this.§52142398623999123423632234§();
      }
      
      private function §continue const override§(param1:Vector.<§521423136582313671123423632234§>) : void
      {
         for each(var _loc2_ in param1)
         {
            if(_loc2_ is §5214232252232265123423632234§)
            {
               §5214231316231329123423632234§.addValidator(new StaticCollisionBoxValidator(§5214232252232265123423632234§(_loc2_)));
            }
            else if(_loc2_ is §5214231131231144123423632234§)
            {
               §5214231316231329123423632234§.addValidator(new StaticCollisoinRectValidator(§5214231131231144123423632234§(_loc2_)));
            }
            else if(_loc2_ is §5214237379237392123423632234§)
            {
               §5214231316231329123423632234§.addValidator(new StaticCollisionTriangleValidator(§5214237379237392123423632234§(_loc2_)));
            }
         }
      }
      
      private function §52142398623999123423632234§() : void
      {
         this.§return package catch§ = new §include finally dynamic§(this.§5214235868235881123423632234§,20);
         this.§return package catch§.addEventListener("complete",this.§5214236938236951123423632234§);
         this.§return package catch§.§switch use const§(this.§for set continue§.§5214232758232771123423632234§());
      }
      
      private function §5214233690233703123423632234§() : void
      {
         this.§for package if§ = true;
         clearTimeout(this.§521423127002312713123423632234§);
         this.§5214238136238149123423632234§ = this.§return package catch§.§class for implements§();
         this.§5214239441239454123423632234§();
         this.§521423135982313611123423632234§();
         this.§521423126272312640123423632234§();
         this.§const switch final§();
         this.§for set continue§.§false set final§();
         this.§for set continue§ = null;
         this.§return package catch§ = null;
         this.§5214235868235881123423632234§ = null;
         this.§5214237932237945123423632234§ = null;
         this.§5214235023235036123423632234§();
      }
      
      private function §5214236938236951123423632234§(param1:Event) : void
      {
         var _loc2_:int = 0;
         this.§5214232616232629123423632234§ = true;
         this.§return package catch§.removeEventListener("complete",this.§5214236938236951123423632234§);
         this.§521423127002312713123423632234§ = setTimeout(this.§5214233690233703123423632234§,_loc2_);
      }
      
      private function §521423131462313159123423632234§(param1:XML) : void
      {
         this.§for set continue§ = new §5214237967237980123423632234§(this.§5214237932237945123423632234§);
         this.§for set continue§.§5214234225234238123423632234§(param1);
         this.§default switch continue§ = this.§for set continue§.§set var throw§();
      }
      
      public function close() : void
      {
         clearTimeout(this.§521423127002312713123423632234§);
         if(this.§521423137462313759123423632234§ != null)
         {
            this.§521423137462313759123423632234§.destroyTree();
            this.§521423137462313759123423632234§ = null;
         }
         if(this.§return package catch§ != null)
         {
            this.§return package catch§.removeEventListener("complete",this.§5214236938236951123423632234§);
            this.§return package catch§.destroy();
            this.§return package catch§ = null;
         }
         if(this.§for set continue§ != null)
         {
            this.§for set continue§.§false set final§();
            this.§for set continue§ = null;
         }
         this.§5214235023235036123423632234§ = null;
         this.§521423107582310771123423632234§();
      }
      
      private function §const switch final§() : void
      {
         var _loc6_:int = 0;
         var _loc9_:Object3D = null;
         var _loc3_:StaticObject3DPositionProvider = null;
         var _loc5_:ChristmasTreeToyEffect = null;
         if(this.§for set continue§.§override catch use§() == null)
         {
            return;
         }
         var _loc1_:Vector.<Object3D> = this.§for set continue§.§null package function§();
         var _loc2_:int = int(_loc1_.length);
         var _loc8_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         var _loc4_:Vector3 = new Vector3();
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            _loc9_ = _loc1_[_loc6_];
            _loc4_.x += _loc9_.x;
            _loc4_.y += _loc9_.y;
            _loc4_.z += _loc9_.z;
            _loc6_++;
         }
         _loc4_.x /= _loc2_;
         _loc4_.y /= _loc2_;
         _loc4_.z /= _loc2_;
         var _loc7_:Vector3 = new Vector3();
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            _loc9_ = _loc1_[_loc6_];
            _loc7_.x = _loc9_.x;
            _loc7_.y = _loc9_.y;
            _loc7_.z = _loc9_.z;
            _loc3_ = StaticObject3DPositionProvider(_loc8_.§52142349423507123423632234§(StaticObject3DPositionProvider));
            _loc3_.init(_loc7_,150);
            _loc5_ = ChristmasTreeToyEffect(_loc8_.§52142349423507123423632234§(ChristmasTreeToyEffect));
            _loc5_.init(_loc9_ as Sprite3D,_loc3_,_loc4_);
            §52142380523818123423632234§.getBattleScene3D().§each var use§(_loc5_);
            _loc6_++;
         }
      }
      
      public function §set var throw§() : §521423130562313069123423632234§
      {
         return this.§default switch continue§;
      }
      
      private function §521423135982313611123423632234§() : void
      {
         this.§521423137462313759123423632234§ = new KDContainer();
         this.§521423137462313759123423632234§.threshold = 0.1;
         this.§521423137462313759123423632234§.ignoreChildrenInCollider = true;
         var _loc2_:Vector.<Object3D> = this.§for set continue§.§5214236632236645123423632234§();
         _loc2_[_loc2_.length] = new §5214236662236675123423632234§();
         this.§521423137462313759123423632234§.createTree(_loc2_,this.§for set continue§.§5214239264239277123423632234§());
         var _loc3_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         for each(var _loc4_ in this.§for set continue§.§get catch dynamic§())
         {
            this.§521423137462313759123423632234§.addChild(_loc4_);
            _loc3_.§5214233808233821123423632234§.add(new HidableObject3DWrapper(_loc4_));
         }
         for each(var _loc1_ in this.§for set continue§.§class package package§())
         {
            _loc3_.§5214231095231108123423632234§(_loc1_);
         }
         this.§521423137462313759123423632234§.calculateBounds();
         _loc3_.§5214232669232682123423632234§(this.§521423137462313759123423632234§);
      }
      
      private function §5214239441239454123423632234§() : void
      {
         if(this.§for set continue§.§override catch use§() == null)
         {
            return;
         }
         var _loc1_:BSP = this.§for set continue§.§override catch use§() as BSP;
         _loc1_.faces[0].material.alphaTestThreshold = 0.5;
      }
   }
}

