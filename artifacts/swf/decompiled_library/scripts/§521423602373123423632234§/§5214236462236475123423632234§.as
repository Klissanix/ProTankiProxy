package §521423602373123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§throw var§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import alternativa.tanks.sfx.MuzzlePositionProvider;
   import alternativa.tanks.sfx.SFXUtils;
   import §finally catch with§.§521423135242313537123423632234§;
   import §finally catch with§.§5214238074238087123423632234§;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §5214236462236475123423632234§ implements §5214232204232217123423632234§, §521423117662311779123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §class for default§:int = 0;
      
      private static const §get set native§:int = 1;
      
      private static const §5214239701239714123423632234§:int = 2;
      
      private static const §5214238999239012123423632234§:int = 3;
      
      private static const §5214233253233266123423632234§:int = 4;
      
      private static const §5214232605232618123423632234§:int = 200;
      
      private static const §for super§:Number = 100000;
      
      private static const §52142321923232123423632234§:Number = 200;
      
      private static const §import switch else§:Number = 2.2;
      
      private static const §do catch switch§:Number = 0.333;
      
      private static const §use const get§:Number = 30;
      
      private static const §default const return§:Number = 10;
      
      private static const §521423131572313170123423632234§:Number = 0.001;
      
      private static const §521423118412311854123423632234§:Number = 1;
      
      private static const §5214236267236280123423632234§:Class = §Dd8c88_png$4c5144b34d563edeaf8d09396a1c8b4d-1446442903§;
      
      public static var §import const import§:BitmapData = new §5214236267236280123423632234§().bitmapData;
      
      private static const §5214238292238305123423632234§:Vector3 = new Vector3();
      
      private static const §5214232114232127123423632234§:Vector3 = new Vector3();
      
      private static const §5214239673239686123423632234§:Vector3 = new Vector3();
      
      private static const §521423108562310869123423632234§:Dictionary = new Dictionary();
      
      private var visible:Boolean;
      
      private var §implements catch catch§:int;
      
      private var §dynamic finally var§:int;
      
      private var §break set import§:int;
      
      private var §catch use continue§:Object3D;
      
      private var §switch set var§:§521423133432313356123423632234§;
      
      private var §catch switch function§:§switch var final§;
      
      private var §5214236985236998123423632234§:MuzzlePositionProvider;
      
      private var §var package while§:Sprite3D;
      
      private var §521423102242310237123423632234§:Number;
      
      private var §finally catch catch§:Number;
      
      private var §5214239616239629123423632234§:Number;
      
      private var §52142330523318123423632234§:§5214239411239424123423632234§;
      
      private var §implements const get§:Vector3;
      
      private var §false catch default§:§521423135242313537123423632234§;
      
      private var §521423135122313525123423632234§:Dictionary;
      
      public function §5214236462236475123423632234§(param1:int, param2:§5214239411239424123423632234§)
      {
         super();
         this.§implements const get§ = new Vector3();
         this.§break set import§ = param1;
         this.§switch set var§ = new §521423133432313356123423632234§();
         this.§var package while§ = new Sprite3D(30,30);
         this.§var package while§.useShadowMap = false;
         this.§var package while§.useLight = false;
         this.§var package while§.blendMode = "add";
         this.§var package while§.sorting = 2;
         this.§var package while§.shadowMapAlphaThreshold = 2;
         this.§var package while§.depthMapAlphaThreshold = 2;
         this.§catch use continue§ = param2.§include switch break§().§static set catch§();
         var _loc3_:§throw var§ = §52142380523818123423632234§.getObjectPool();
         this.§5214236985236998123423632234§ = MuzzlePositionProvider(_loc3_.§52142349423507123423632234§(MuzzlePositionProvider));
         this.§5214236985236998123423632234§.init(this.§catch use continue§,param2.§521423102952310308123423632234§());
         this.§521423135122313525123423632234§ = §52142380523818123423632234§.getBattleScene3D().§package package each§();
         this.§false catch default§ = new §521423135242313537123423632234§(this.§521423135122313525123423632234§);
      }
      
      public function aimAtTank(param1:§5214239411239424123423632234§, param2:Vector3) : Boolean
      {
         this.§true switch function§();
         if(this.§52142330523318123423632234§ != param1 || param2.distanceToSquared(this.§implements const get§) > 1)
         {
            this.§52142330523318123423632234§ = param1;
            this.§implements const get§.copy(param2);
            return true;
         }
         return false;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         this.§extends for true§(param1);
         if(this.§implements catch catch§ == 4)
         {
            return false;
         }
         if(this.§implements catch catch§ == 0)
         {
            this.§switch set var§.alpha = 0;
            this.§switch set var§.visible = false;
            this.§var package while§.alpha = 0;
            this.§var package while§.visible = false;
            return true;
         }
         this.§5214236985236998123423632234§.updateObjectPosition(this.§switch set var§,param2,param1);
         §5214238292238305123423632234§.x = this.§switch set var§.x;
         §5214238292238305123423632234§.y = this.§switch set var§.y;
         §5214238292238305123423632234§.z = this.§switch set var§.z;
         this.§return for import§();
         var _temp_1:* = §5214238292238305123423632234§;
         var _loc5_:Vector3 = §5214232114232127123423632234§;
         var _loc4_:Vector3 = _temp_1;
         var _loc6_:Number = _loc4_.x - _loc5_.x;
         var _loc7_:Number = _loc4_.y - _loc5_.y;
         var _loc8_:Number = _loc4_.z - _loc5_.z;
         var _loc3_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         this.§switch set var§.§521423120402312053123423632234§(param1,_loc3_);
         this.§switch set var§.visible = _loc3_ >= 200;
         this.§var package while§.x = §5214232114232127123423632234§.x;
         this.§var package while§.y = §5214232114232127123423632234§.y;
         this.§var package while§.z = §5214232114232127123423632234§.z;
         this.§var package while§.visible = _loc3_ < 100000;
         SFXUtils.alignObjectPlaneToView(this.§switch set var§,§5214238292238305123423632234§,§5214239673239686123423632234§,param2.§dynamic final§);
         return true;
      }
      
      public function kill() : void
      {
         if(this.§catch switch function§)
         {
            this.§catch switch function§.§5214231752231765123423632234§(this.§switch set var§);
            this.§catch switch function§.§5214231752231765123423632234§(this.§var package while§);
            this.§catch switch function§ = null;
            this.§switch set var§.close();
            this.§var package while§.material = null;
            this.§implements catch catch§ = 4;
         }
         else
         {
            this.§implements catch catch§ = 0;
         }
         this.§52142330523318123423632234§ = null;
         this.§implements const get§.reset();
         this.§521423102242310237123423632234§ = 0;
         this.§finally catch catch§ = 0;
         this.§5214239616239629123423632234§ = 1;
      }
      
      public function §const for break§() : Boolean
      {
         return this.visible;
      }
      
      private function §extends for true§(param1:int) : void
      {
         var _loc2_:Number = 0;
         switch(this.§implements catch catch§ - 1)
         {
            case 0:
               _loc2_ = this.§continue var with§(param1,2,this.§break set import§);
               break;
            case 2:
               _loc2_ = 1 - this.§continue var with§(param1,4,200);
               break;
            default:
               return;
         }
         var _loc3_:Number = Math.pow(_loc2_,2.2);
         this.§switch set var§.alpha = _loc3_;
         this.§var package while§.alpha = _loc3_;
      }
      
      public function updateDirection(param1:Number) : Boolean
      {
         if(this.§implements catch catch§ == 0 || this.§52142330523318123423632234§ != null || Math.abs(this.§521423102242310237123423632234§ - param1) > 0.001)
         {
            this.§true switch function§();
            this.§521423102242310237123423632234§ = param1;
            this.§52142330523318123423632234§ = null;
            return true;
         }
         return false;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
         param1.§5214237128237141123423632234§(this.§switch set var§);
         param1.§5214237128237141123423632234§(this.§var package while§);
      }
      
      private function §continue var with§(param1:int, param2:int, param3:int) : Number
      {
         this.§dynamic finally var§ += param1;
         if(this.§dynamic finally var§ >= param3)
         {
            this.§implements catch catch§ = param2;
            this.§dynamic finally var§ = param3;
         }
         return this.§dynamic finally var§ / param3;
      }
      
      public function show(param1:uint) : void
      {
         this.visible = true;
         this.§implements catch catch§ = 0;
         this.§finally catch catch§ = 0;
         this.§5214239616239629123423632234§ = 1;
         this.§switch set var§.alpha = 0;
         this.§switch set var§.visible = false;
         this.§switch set var§.init(param1);
         this.§var package while§.alpha = 0;
         this.§var package while§.visible = false;
         this.§var package while§.material = §5214238074238087123423632234§.§for use include§(§521423108562310869123423632234§,param1,§import const import§);
         if(this.§catch switch function§ == null)
         {
            §52142380523818123423632234§.addGraphicEffect(this);
         }
      }
      
      private function §package for switch§() : void
      {
         var _loc1_:RayIntersectionData = null;
         var _loc2_:Object3D = null;
         this.§false catch default§.§else const implements§(this.§catch use continue§);
         while(true)
         {
            _loc1_ = §52142380523818123423632234§.getBattleScene3D().§5214239358239371123423632234§(§5214238292238305123423632234§,§5214239673239686123423632234§,this.§521423135122313525123423632234§);
            if(_loc1_ == null)
            {
               break;
            }
            _loc2_ = _loc1_.object;
            if(_loc2_.name == "static" || _loc2_.name == "tankPart")
            {
               §5214232114232127123423632234§.copy(§5214238292238305123423632234§);
               §5214232114232127123423632234§.addScaled(_loc1_.time - 10,§5214239673239686123423632234§);
               this.§false catch default§.§try override§();
               return;
            }
            this.§false catch default§.§else const implements§(_loc1_.object);
         }
         this.§false catch default§.§try override§();
         §5214232114232127123423632234§.copy(§5214238292238305123423632234§);
         §5214232114232127123423632234§.addScaled(100000,§5214239673239686123423632234§);
      }
      
      public function §5214239409239422123423632234§() : void
      {
         this.visible = true;
      }
      
      public function destroy() : void
      {
         this.kill();
      }
      
      public function §true package final§() : void
      {
         this.visible = false;
         if(this.§catch switch function§)
         {
            this.§implements catch catch§ = 3;
            this.§dynamic finally var§ = 0;
         }
         else
         {
            this.kill();
         }
      }
      
      private function §return for import§() : void
      {
         var _loc1_:Matrix3 = BattleUtils.§catch set else§;
         _loc1_.setRotationMatrixForObject3D(this.§catch use continue§);
         var _loc2_:Vector3 = BattleUtils.§switch for default§;
         _loc1_.getUp(_loc2_);
         if(this.§52142330523318123423632234§ != null && this.§52142330523318123423632234§.§break switch catch§() != null)
         {
            §5214232114232127123423632234§.copy(this.§implements const get§);
            BattleUtils.localToGlobal(this.§52142330523318123423632234§.§break switch catch§(),§5214232114232127123423632234§);
            §5214239673239686123423632234§.diff(§5214232114232127123423632234§,§5214238292238305123423632234§).normalize();
            this.§521423102242310237123423632234§ = _loc2_.dot(§5214239673239686123423632234§);
            if(Math.abs(this.§521423102242310237123423632234§ - this.§finally catch catch§) < 0.001)
            {
               §5214232114232127123423632234§.addScaled(-10,§5214239673239686123423632234§);
               return;
            }
         }
         if(Math.abs(this.§521423102242310237123423632234§ - this.§finally catch catch§) > 0.001)
         {
            this.§finally catch catch§ += 0.333 * (this.§521423102242310237123423632234§ - this.§finally catch catch§);
            this.§5214239616239629123423632234§ = Math.sqrt(1 - this.§finally catch catch§ * this.§finally catch catch§);
         }
         §5214239673239686123423632234§.copy(_loc2_);
         §5214239673239686123423632234§.scale(this.§finally catch catch§);
         _loc1_.getForward(_loc2_);
         §5214239673239686123423632234§.addScaled(this.§5214239616239629123423632234§,_loc2_);
         this.§package for switch§();
      }
      
      private function §true switch function§() : void
      {
         if(this.§implements catch catch§ == 0)
         {
            this.§dynamic finally var§ = 0;
            this.§implements catch catch§ = 1;
         }
      }
      
      public function close() : void
      {
         this.kill();
         this.§5214236985236998123423632234§.destroy();
         this.§5214236985236998123423632234§ = null;
         this.§catch use continue§ = null;
         this.§switch set var§ = null;
         this.§var package while§ = null;
         this.§521423135122313525123423632234§ = null;
         this.§false catch default§ = null;
      }
   }
}

