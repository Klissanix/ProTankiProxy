package §521423122592312272123423632234§
{
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.Display;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleView;
   import alternativa.tanks.models.controlpoints.hud.KeyPoint;
   import §else switch default§.§override for default§;
   
   public class KeyPointHUDMarkers implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §use switch do§:ConsoleVarFloat = new ConsoleVarFloat("ph_scale",0.12,0.00001,10);
      
      private static const §521423100582310071123423632234§:ConsoleVarFloat = new ConsoleVarFloat("pfh_scale",0.1,0.00001,10);
      
      private static const §try switch else§:Matrix4 = new Matrix4();
      
      private static const §import const true§:Matrix4 = new Matrix4();
      
      private static const v:Vector3 = new Vector3();
      
      private static const §5214237170237183123423632234§:Vector3 = new Vector3();
      
      private static const §5214239445239458123423632234§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private var §5214239291239304123423632234§:Camera3D;
      
      private var §implements catch false§:Vector.<KeyPointHUDMarker> = new Vector.<KeyPointHUDMarker>();
      
      public function KeyPointHUDMarkers(param1:Camera3D)
      {
         super();
         this.§5214239291239304123423632234§ = param1;
      }
      
      private static function f6567de5(param1:Camera3D, param2:Vector3) : Number
      {
         var _loc14_:Number = Math.cos(param1.rotationX);
         var _loc6_:Number = Math.sin(param1.rotationX);
         var _loc9_:Number = Math.cos(param1.rotationY);
         var _loc5_:Number = Math.sin(param1.rotationY);
         var _loc11_:Number = Math.cos(param1.rotationZ);
         var _loc7_:Number = Math.sin(param1.rotationZ);
         var _loc10_:Number = _loc11_ * _loc5_ * _loc14_ + _loc7_ * _loc6_;
         var _loc12_:Number = -_loc11_ * _loc6_ + _loc5_ * _loc7_ * _loc14_;
         var _loc13_:Number = _loc9_ * _loc14_;
         var _loc15_:Number = -_loc10_ * param1.x - _loc12_ * param1.y - _loc13_ * param1.z;
         var _loc3_:Number = param1.view.width * 0.5;
         var _loc4_:Number = param1.view.height * 0.5;
         var _loc16_:Number = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_) / Math.tan(param1.fov * 0.5);
         var _loc8_:Number = _loc10_ * param2.x + _loc12_ * param2.y + _loc13_ * param2.z + _loc15_;
         return _loc16_ / _loc8_;
      }
      
      private static function d21638d1(param1:Object3D) : Matrix4
      {
         var _loc14_:Number = Math.cos(param1.rotationX);
         var _loc5_:Number = Math.sin(param1.rotationX);
         var _loc9_:Number = Math.cos(param1.rotationY);
         var _loc4_:Number = Math.sin(param1.rotationY);
         var _loc12_:Number = Math.cos(param1.rotationZ);
         var _loc6_:Number = Math.sin(param1.rotationZ);
         var _loc8_:Number = _loc12_ * _loc4_;
         var _loc7_:Number = _loc6_ * _loc4_;
         var _loc2_:Number = _loc9_ * param1.scaleX;
         var _loc10_:Number = _loc5_ * param1.scaleY;
         var _loc11_:Number = _loc14_ * param1.scaleY;
         var _loc13_:Number = _loc14_ * param1.scaleZ;
         var _loc3_:Number = _loc5_ * param1.scaleZ;
         §import const true§.m00 = _loc12_ * _loc2_;
         §import const true§.§5214239800239813123423632234§ = _loc8_ * _loc10_ - _loc6_ * _loc11_;
         §import const true§.§521423117972311810123423632234§ = _loc8_ * _loc13_ + _loc6_ * _loc3_;
         §import const true§.§catch package continue§ = param1.x;
         §import const true§.§5214234411234424123423632234§ = _loc6_ * _loc2_;
         §import const true§.m11 = _loc7_ * _loc10_ + _loc12_ * _loc11_;
         §import const true§.§null use use§ = _loc7_ * _loc13_ - _loc12_ * _loc3_;
         §import const true§.§include var break§ = param1.y;
         §import const true§.§521423135662313579123423632234§ = -_loc4_ * param1.scaleX;
         §import const true§.§case set function§ = _loc9_ * _loc10_;
         §import const true§.m22 = _loc9_ * _loc13_;
         §import const true§.§function var import§ = param1.z;
         return §import const true§;
      }
      
      private function a54d2c86() : Matrix4
      {
         var _loc1_:Number = this.§5214239291239304123423632234§.viewSizeX / this.§5214239291239304123423632234§.focalLength;
         var _loc3_:Number = this.§5214239291239304123423632234§.viewSizeY / this.§5214239291239304123423632234§.focalLength;
         var _loc16_:Number = Math.cos(this.§5214239291239304123423632234§.rotationX);
         var _loc6_:Number = Math.sin(this.§5214239291239304123423632234§.rotationX);
         var _loc11_:Number = Math.cos(this.§5214239291239304123423632234§.rotationY);
         var _loc5_:Number = Math.sin(this.§5214239291239304123423632234§.rotationY);
         var _loc14_:Number = Math.cos(this.§5214239291239304123423632234§.rotationZ);
         var _loc7_:Number = Math.sin(this.§5214239291239304123423632234§.rotationZ);
         var _loc10_:Number = _loc14_ * _loc5_;
         var _loc8_:Number = _loc7_ * _loc5_;
         var _loc2_:Number = _loc11_ * this.§5214239291239304123423632234§.scaleX;
         var _loc12_:Number = _loc6_ * this.§5214239291239304123423632234§.scaleY;
         var _loc13_:Number = _loc16_ * this.§5214239291239304123423632234§.scaleY;
         var _loc15_:Number = _loc16_ * this.§5214239291239304123423632234§.scaleZ;
         var _loc4_:Number = _loc6_ * this.§5214239291239304123423632234§.scaleZ;
         §try switch else§.m00 = _loc14_ * _loc2_ * _loc1_;
         §try switch else§.§5214239800239813123423632234§ = (_loc10_ * _loc12_ - _loc7_ * _loc13_) * _loc3_;
         §try switch else§.§521423117972311810123423632234§ = _loc10_ * _loc15_ + _loc7_ * _loc4_;
         §try switch else§.§catch package continue§ = this.§5214239291239304123423632234§.x;
         §try switch else§.§5214234411234424123423632234§ = _loc7_ * _loc2_ * _loc1_;
         §try switch else§.m11 = (_loc8_ * _loc12_ + _loc14_ * _loc13_) * _loc3_;
         §try switch else§.§null use use§ = _loc8_ * _loc15_ - _loc14_ * _loc4_;
         §try switch else§.§include var break§ = this.§5214239291239304123423632234§.y;
         §try switch else§.§521423135662313579123423632234§ = -_loc5_ * this.§5214239291239304123423632234§.scaleX * _loc1_;
         §try switch else§.§case set function§ = _loc11_ * _loc12_ * _loc3_;
         §try switch else§.m22 = _loc11_ * _loc15_;
         §try switch else§.§function var import§ = this.§5214239291239304123423632234§.z;
         var _loc9_:Object3D = this.§5214239291239304123423632234§;
         while(_loc9_._parent != null)
         {
            _loc9_ = _loc9_._parent;
            §try switch else§.append(d21638d1(_loc9_));
         }
         §try switch else§.invert();
         return §try switch else§;
      }
      
      private function a1a9af4(param1:KeyPoint) : Number
      {
         var _loc2_:Number = NaN;
         param1.readPosition(§5214237170237183123423632234§);
         var _loc5_:Number = f6567de5(this.§5214239291239304123423632234§,§5214237170237183123423632234§);
         if(_loc5_ < §521423100582310071123423632234§.value)
         {
            return 1;
         }
         §5214239445239458123423632234§.reset(this.§5214239291239304123423632234§.x,this.§5214239291239304123423632234§.y,this.§5214239291239304123423632234§.z);
         direction.diff(§5214237170237183123423632234§,§5214239445239458123423632234§);
         var _loc4_:Number = direction.length();
         direction.normalize();
         var _loc3_:RayIntersectionData = §52142380523818123423632234§.getBattleScene3D().§5214239358239371123423632234§(§5214239445239458123423632234§,direction,§52142380523818123423632234§.getExcludedObjects3D());
         if(_loc3_ != null && _loc3_.time < _loc4_)
         {
            _loc2_ = 1;
         }
         else if(_loc5_ > §use switch do§.value)
         {
            _loc2_ = 0;
         }
         else
         {
            _loc2_ = (§use switch do§.value - _loc5_) / (§use switch do§.value - §521423100582310071123423632234§.value);
         }
         return _loc2_;
      }
      
      private function e49bb1ff(param1:Vector3) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = NaN;
         if(param1.z > 0.001)
         {
            param1.x = param1.x * this.§5214239291239304123423632234§.viewSizeX / param1.z;
            param1.y = param1.y * this.§5214239291239304123423632234§.viewSizeY / param1.z;
         }
         else if(param1.z < -0.001)
         {
            param1.x = -param1.x * this.§5214239291239304123423632234§.viewSizeX / param1.z;
            param1.y = -param1.y * this.§5214239291239304123423632234§.viewSizeY / param1.z;
         }
         else
         {
            _loc3_ = §52142380523818123423632234§.getBattleView().getDiagonalSquared();
            _loc2_ = Math.sqrt(param1.x * param1.x + param1.y * param1.y);
            param1.x *= _loc3_ / _loc2_;
            param1.y *= _loc3_ / _loc2_;
         }
      }
      
      private function e61c0199(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc6_:BattleView = §52142380523818123423632234§.getBattleView();
         var _loc7_:Number = _loc6_.getWidth() / 2 - param3;
         var _loc5_:Number = _loc6_.getHeight() / 2 - param4;
         return param1 >= -_loc7_ && param1 <= _loc7_ && param2 >= -_loc5_ && param2 <= _loc5_;
      }
      
      public function show() : void
      {
         for each(var _loc1_ in this.§implements catch false§)
         {
            _loc1_.visible = true;
         }
      }
      
      private function c4d9e90b(param1:KeyPointHUDMarker, param2:Matrix4) : void
      {
         var _loc4_:Number = NaN;
         if(Display.§521423132512313264123423632234§ == 2)
         {
            param1.visible = false;
            return;
         }
         param1.readPosition3D(v);
         v.transform4(param2);
         this.e49bb1ff(v);
         var _loc5_:Number = 15;
         var _loc6_:Number = this.e1644e0();
         var _loc7_:Boolean = this.e61c0199(v.x,v.y,_loc5_,_loc6_);
         if(v.z > 0 && _loc7_)
         {
            _loc4_ = this.a1a9af4(param1.getKeyPoint());
            if(_loc4_ == 0)
            {
               param1.visible = false;
               param1.alpha = 0;
            }
            else
            {
               param1.visible = true;
               param1.alpha = _loc4_;
            }
         }
         else
         {
            param1.alpha = 1;
            param1.visible = false;
         }
         var _loc3_:BattleView = §52142380523818123423632234§.getBattleView();
         param1.x = int(v.x + _loc3_.getWidth() / 2 - 12);
         param1.y = int(v.y + _loc3_.getHeight() / 2 - 12);
         param1.update();
      }
      
      public function addMarker(param1:KeyPointHUDMarker) : void
      {
         param1.visible = false;
         §52142380523818123423632234§.getBattleView().addOverlayObject(param1);
         this.§implements catch false§.push(param1);
      }
      
      private function e1644e0() : int
      {
         switch(§52142380523818123423632234§.getBattleView().getScreenSize() - 9)
         {
            case 0:
               return 40;
            case 1:
               return 70;
            default:
               return 15;
         }
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:Matrix4 = this.a54d2c86();
         for each(var _loc4_ in this.§implements catch false§)
         {
            this.c4d9e90b(_loc4_,_loc3_);
         }
      }
   }
}

