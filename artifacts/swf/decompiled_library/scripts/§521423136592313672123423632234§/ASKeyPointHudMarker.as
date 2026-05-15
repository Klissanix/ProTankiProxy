package §521423136592313672123423632234§
{
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleView;
   import §else switch default§.§override for default§;
   
   public class ASKeyPointHudMarker implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §521423115052311518123423632234§:ConsoleVarFloat = new ConsoleVarFloat("ph_scale",0.12,0.00001,10);
      
      private static const §finally const§:ConsoleVarFloat = new ConsoleVarFloat("pfh_scale",0.1,0.00001,10);
      
      private static const §try switch else§:Matrix4 = new Matrix4();
      
      private static const §import const true§:Matrix4 = new Matrix4();
      
      private static const v:Vector3 = new Vector3();
      
      private static const §5214234828234841123423632234§:Vector3 = new Vector3();
      
      private static const §5214239445239458123423632234§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private var §5214239291239304123423632234§:Camera3D;
      
      private var §521423131642313177123423632234§:ASMarker;
      
      public function ASKeyPointHudMarker(param1:Camera3D, param2:Vector3)
      {
         super();
         this.§5214239291239304123423632234§ = param1;
         this.§521423131642313177123423632234§ = new ASMarker(param2);
         this.§521423131642313177123423632234§.visible = false;
         §52142380523818123423632234§.getBattleView().addOverlayObject(this.§521423131642313177123423632234§);
      }
      
      private static function a4753fcb(param1:Object3D) : Matrix4
      {
         var _loc7_:Number = Math.cos(param1.rotationX);
         var _loc13_:Number = Math.sin(param1.rotationX);
         var _loc14_:Number = Math.cos(param1.rotationY);
         var _loc11_:Number = Math.sin(param1.rotationY);
         var _loc12_:Number = Math.cos(param1.rotationZ);
         var _loc9_:Number = Math.sin(param1.rotationZ);
         var _loc10_:Number = _loc12_ * _loc11_;
         var _loc8_:Number = _loc9_ * _loc11_;
         var _loc3_:Number = _loc14_ * param1.scaleX;
         var _loc2_:Number = _loc13_ * param1.scaleY;
         var _loc6_:Number = _loc7_ * param1.scaleY;
         var _loc5_:Number = _loc7_ * param1.scaleZ;
         var _loc4_:Number = _loc13_ * param1.scaleZ;
         §import const true§.m00 = _loc12_ * _loc3_;
         §import const true§.§5214239800239813123423632234§ = _loc10_ * _loc2_ - _loc9_ * _loc6_;
         §import const true§.§521423117972311810123423632234§ = _loc10_ * _loc5_ + _loc9_ * _loc4_;
         §import const true§.§catch package continue§ = param1.x;
         §import const true§.§5214234411234424123423632234§ = _loc9_ * _loc3_;
         §import const true§.m11 = _loc8_ * _loc2_ + _loc12_ * _loc6_;
         §import const true§.§null use use§ = _loc8_ * _loc5_ - _loc12_ * _loc4_;
         §import const true§.§include var break§ = param1.y;
         §import const true§.§521423135662313579123423632234§ = -_loc11_ * param1.scaleX;
         §import const true§.§case set function§ = _loc14_ * _loc2_;
         §import const true§.m22 = _loc14_ * _loc5_;
         §import const true§.§function var import§ = param1.z;
         return §import const true§;
      }
      
      private static function f6f0c2f1(param1:Camera3D, param2:Vector3) : Number
      {
         var _loc15_:Number = Math.cos(param1.rotationX);
         var _loc16_:Number = Math.sin(param1.rotationX);
         var _loc13_:Number = Math.cos(param1.rotationY);
         var _loc14_:Number = Math.sin(param1.rotationY);
         var _loc10_:Number = Math.cos(param1.rotationZ);
         var _loc11_:Number = Math.sin(param1.rotationZ);
         var _loc9_:Number = _loc10_ * _loc14_ * _loc15_ + _loc11_ * _loc16_;
         var _loc4_:Number = -_loc10_ * _loc16_ + _loc14_ * _loc11_ * _loc15_;
         var _loc3_:Number = _loc13_ * _loc15_;
         var _loc8_:Number = -_loc9_ * param1.x - _loc4_ * param1.y - _loc3_ * param1.z;
         var _loc7_:Number = param1.view.width * 0.5;
         var _loc6_:Number = param1.view.height * 0.5;
         var _loc5_:Number = Math.sqrt(_loc7_ * _loc7_ + _loc6_ * _loc6_) / Math.tan(param1.fov * 0.5);
         var _loc12_:Number = _loc9_ * param2.x + _loc4_ * param2.y + _loc3_ * param2.z + _loc8_;
         return _loc5_ / _loc12_;
      }
      
      private function cb49b2f(param1:Matrix4) : void
      {
         var _loc2_:Number = NaN;
         this.§521423131642313177123423632234§.readPosition3D(v);
         v.transform4(param1);
         this.c1a90d89(v);
         var _loc5_:Number = 15;
         var _loc6_:Number = this.fabdadc();
         var _loc3_:Boolean = this.f6633c91(v.x,v.y,_loc5_,_loc6_);
         if(v.z > 0 && _loc3_)
         {
            _loc2_ = this.b2e9aaac();
            if(_loc2_ == 0)
            {
               this.§521423131642313177123423632234§.visible = false;
               this.§521423131642313177123423632234§.alpha = 0;
            }
            else
            {
               this.§521423131642313177123423632234§.visible = true;
               this.§521423131642313177123423632234§.alpha = _loc2_;
            }
         }
         else
         {
            this.§521423131642313177123423632234§.alpha = 1;
            this.§521423131642313177123423632234§.visible = false;
         }
         var _loc4_:BattleView = §52142380523818123423632234§.getBattleView();
         this.§521423131642313177123423632234§.x = int(v.x + _loc4_.getWidth() / 2 - 12);
         this.§521423131642313177123423632234§.y = int(v.y + _loc4_.getHeight() / 2 - 12);
      }
      
      public function show() : void
      {
         this.§521423131642313177123423632234§.visible = true;
      }
      
      private function f6633c91(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc6_:BattleView = §52142380523818123423632234§.getBattleView();
         var _loc7_:Number = _loc6_.getWidth() / 2 - param3;
         var _loc5_:Number = _loc6_.getHeight() / 2 - param4;
         return param1 >= -_loc7_ && param1 <= _loc7_ && param2 >= -_loc5_ && param2 <= _loc5_;
      }
      
      private function a35274b0() : Matrix4
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = this.§5214239291239304123423632234§.viewSizeX / this.§5214239291239304123423632234§.focalLength;
         var _loc9_:Number = this.§5214239291239304123423632234§.viewSizeY / this.§5214239291239304123423632234§.focalLength;
         var _loc2_:Number = Math.cos(this.§5214239291239304123423632234§.rotationX);
         var _loc1_:Number = Math.sin(this.§5214239291239304123423632234§.rotationX);
         _loc7_ = Math.cos(this.§5214239291239304123423632234§.rotationY);
         _loc8_ = Math.sin(this.§5214239291239304123423632234§.rotationY);
         _loc15_ = Math.cos(this.§5214239291239304123423632234§.rotationZ);
         _loc16_ = Math.sin(this.§5214239291239304123423632234§.rotationZ);
         var _loc6_:Number = _loc15_ * _loc8_;
         _loc13_ = _loc16_ * _loc8_;
         var _loc5_:Number = _loc7_ * this.§5214239291239304123423632234§.scaleX;
         _loc14_ = _loc1_ * this.§5214239291239304123423632234§.scaleY;
         var _loc4_:Number = _loc2_ * this.§5214239291239304123423632234§.scaleY;
         _loc10_ = _loc2_ * this.§5214239291239304123423632234§.scaleZ;
         var _loc3_:Number = _loc1_ * this.§5214239291239304123423632234§.scaleZ;
         §try switch else§.m00 = _loc15_ * _loc5_ * _loc11_;
         §try switch else§.§5214239800239813123423632234§ = (_loc6_ * _loc14_ - _loc16_ * _loc4_) * _loc9_;
         §try switch else§.§521423117972311810123423632234§ = _loc6_ * _loc10_ + _loc16_ * _loc3_;
         §try switch else§.§catch package continue§ = this.§5214239291239304123423632234§.x;
         §try switch else§.§5214234411234424123423632234§ = _loc16_ * _loc5_ * _loc11_;
         §try switch else§.m11 = (_loc13_ * _loc14_ + _loc15_ * _loc4_) * _loc9_;
         §try switch else§.§null use use§ = _loc13_ * _loc10_ - _loc15_ * _loc3_;
         §try switch else§.§include var break§ = this.§5214239291239304123423632234§.y;
         §try switch else§.§521423135662313579123423632234§ = -_loc8_ * this.§5214239291239304123423632234§.scaleX * _loc11_;
         §try switch else§.§case set function§ = _loc7_ * _loc14_ * _loc9_;
         §try switch else§.m22 = _loc7_ * _loc10_;
         §try switch else§.§function var import§ = this.§5214239291239304123423632234§.z;
         var _loc12_:Object3D = this.§5214239291239304123423632234§;
         while(_loc12_._parent != null)
         {
            _loc12_ = _loc12_._parent;
            §try switch else§.append(a4753fcb(_loc12_));
         }
         §try switch else§.invert();
         return §try switch else§;
      }
      
      private function b2e9aaac() : Number
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:RayIntersectionData = null;
         this.§521423131642313177123423632234§.readPosition3D(§5214234828234841123423632234§);
         var _loc4_:Number = f6f0c2f1(this.§5214239291239304123423632234§,§5214234828234841123423632234§);
         if(_loc4_ < §finally const§.value)
         {
            return 1;
         }
         §5214239445239458123423632234§.reset(this.§5214239291239304123423632234§.x,this.§5214239291239304123423632234§.y,this.§5214239291239304123423632234§.z);
         direction.diff(§5214234828234841123423632234§,§5214239445239458123423632234§);
         _loc2_ = direction.length();
         direction.normalize();
         _loc3_ = §52142380523818123423632234§.getBattleScene3D().§5214239358239371123423632234§(§5214239445239458123423632234§,direction,§52142380523818123423632234§.getExcludedObjects3D());
         if(_loc3_ != null && _loc3_.time < _loc2_)
         {
            _loc1_ = 1;
         }
         else if(_loc4_ > §521423115052311518123423632234§.value)
         {
            _loc1_ = 0;
         }
         else
         {
            _loc1_ = (§521423115052311518123423632234§.value - _loc4_) / (§521423115052311518123423632234§.value - §finally const§.value);
         }
         return _loc1_;
      }
      
      private function c1a90d89(param1:Vector3) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
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
            _loc2_ = §52142380523818123423632234§.getBattleView().getDiagonalSquared();
            _loc3_ = Math.sqrt(param1.x * param1.x + param1.y * param1.y);
            param1.x *= _loc2_ / _loc3_;
            param1.y *= _loc2_ / _loc3_;
         }
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:Matrix4 = this.a35274b0();
         this.cb49b2f(_loc3_);
      }
      
      private function fabdadc() : int
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
   }
}

