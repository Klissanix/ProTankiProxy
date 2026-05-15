package alternativa.tanks.models.controlpoints.hud
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.utils.TextureMaterialRegistry;
   import §const use implements§.§dynamic include§;
   import §else switch default§.§5214235140235153123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §include set return§.§521423107382310751123423632234§;
   import §switch var native§.ModeLight;
   import §switch var native§.TeamLightColor;
   
   public class KeyPointView
   {
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      public static var §5214239937239950123423632234§:ILightingEffectsService;
      
      private static const §do package function§:Number = 1000;
      
      public static const §5214236140236153123423632234§:Number = 350;
      
      private static const §5214232725232738123423632234§:Number = 100;
      
      private static const §import switch else§:Number = 1.5;
      
      private var §5214236015236028123423632234§:BSP;
      
      private var §5214232463232476123423632234§:TextureMaterial;
      
      private var §5214237373237386123423632234§:TextureMaterial;
      
      private var §import package const§:TextureMaterial;
      
      private var §5214237019237032123423632234§:TextureMaterial;
      
      private var §5214238195238208123423632234§:ProgressPlane;
      
      private var §finally const implements§:OmniLight;
      
      private var §521423137162313729123423632234§:TeamLightColor;
      
      private var §521423120972312110123423632234§:TeamLightColor;
      
      private var §case for else§:TeamLightColor;
      
      private var §include catch catch§:Boolean;
      
      public function KeyPointView(param1:String, param2:§5214235140235153123423632234§, param3:§521423107382310751123423632234§, param4:Boolean)
      {
         super();
         this.§5214236015236028123423632234§ = f309b339(param3.§5214236015236028123423632234§);
         this.§import package const§ = §5214235868235881123423632234§.getMaterial(param3.§521423136052313618123423632234§.data);
         this.§5214237373237386123423632234§ = §5214235868235881123423632234§.getMaterial(param3.§continue package get§.data);
         this.§5214237019237032123423632234§ = §5214235868235881123423632234§.getMaterial(param3.§52142315623169123423632234§.data);
         var _loc5_:ModeLight = §5214239937239950123423632234§.getLightForMode(§dynamic include§.§catch package use§);
         this.§521423137162313729123423632234§ = _loc5_.getLightForTeam(§5214231658231671123423632234§.§521423107532310766123423632234§);
         this.§521423120972312110123423632234§ = _loc5_.getLightForTeam(§5214231658231671123423632234§.§implements set implements§);
         this.§case for else§ = _loc5_.getLightForTeam(§5214231658231671123423632234§.§dynamic use false§);
         this.§include catch catch§ = param4;
         this.a1dcc2e0(param1,param3);
         this.c23b4a4(_loc5_);
         param2.§5214239252239265123423632234§(this.§5214238195238208123423632234§);
         param2.§5214239252239265123423632234§(this.§5214236015236028123423632234§);
      }
      
      private static function c5d8782a(param1:uint, param2:uint, param3:Number) : uint
      {
         var _loc8_:Number = (param1 >> 16 & 0xFF) / 255;
         var _loc12_:Number = (param1 >> 8 & 0xFF) / 255;
         var _loc9_:Number = (param1 & 0xFF) / 255;
         var _loc4_:Number = (param2 >> 16 & 0xFF) / 255;
         var _loc10_:Number = (param2 >> 8 & 0xFF) / 255;
         var _loc5_:Number = (param2 & 0xFF) / 255;
         var _loc6_:int = d588259a(_loc8_,_loc4_,param3) * 255;
         var _loc11_:int = d588259a(_loc12_,_loc10_,param3) * 255;
         var _loc7_:int = d588259a(_loc9_,_loc5_,param3) * 255;
         return _loc6_ << 16 | _loc11_ << 8 | _loc7_;
      }
      
      private static function b5c9d64d(param1:BitmapData, param2:BitmapData) : BitmapData
      {
         var _loc3_:BitmapData = param1.clone();
         _loc3_.copyChannel(param2,param2.rect,new Point(),8,8);
         return _loc3_;
      }
      
      private static function f309b339(param1:§5214233863233876123423632234§) : BSP
      {
         var _loc3_:Mesh = Mesh(param1.§5214237990238003123423632234§[0]);
         var _loc2_:BSP = new BSP();
         _loc2_.createTree(_loc3_);
         return _loc2_;
      }
      
      private static function a11a41af(param1:BitmapData) : TextureMaterial
      {
         var _loc2_:TextureMaterial = §5214235868235881123423632234§.getMaterial(param1,false);
         _loc2_.resolution = 1000 / param1.width;
         return _loc2_;
      }
      
      private static function d588259a(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 + (param2 - param1) * param3;
      }
      
      private static function f340ddc4(param1:BitmapData, param2:BitmapData) : Rectangle
      {
         var _loc3_:int = param2.height;
         var _loc4_:Number = (param1.height - _loc3_) / 2;
         return new Rectangle(_loc4_,_loc4_,_loc3_,_loc3_);
      }
      
      private static function f5c2a32e(param1:BitmapData, param2:BitmapData, param3:int) : Matrix
      {
         var _loc4_:int = param2.height;
         var _loc5_:Matrix = new Matrix();
         _loc5_.tx = (param1.height - _loc4_) / 2 - _loc4_ * param3;
         _loc5_.ty = (param1.height - _loc4_) / 2;
         return _loc5_;
      }
      
      private function b3ef4a59(param1:Number) : void
      {
         var _loc2_:uint = param1 < 0 ? this.§521423137162313729123423632234§.getColor() : this.§521423120972312110123423632234§.getColor();
         var _loc4_:Number = param1 < 0 ? this.§521423137162313729123423632234§.getIntensity() : this.§521423120972312110123423632234§.getIntensity();
         var _loc3_:Number = param1 > 0 ? param1 : -param1;
         this.§finally const implements§.color = c5d8782a(this.§case for else§.getColor(),_loc2_,Math.pow(_loc3_,1.5));
         this.§finally const implements§.intensity = d588259a(this.§case for else§.getIntensity(),_loc4_,Math.pow(_loc3_,1.5));
      }
      
      public function update(param1:Number, param2:Camera3D) : void
      {
         this.§5214238195238208123423632234§.setProgress(param1);
         this.§5214238195238208123423632234§.updateRotation(param2);
         this.b3ef4a59(param1 / 100);
      }
      
      private function d46d4571(param1:TextureMaterial) : void
      {
         if(this.§5214232463232476123423632234§ != param1)
         {
            this.§5214232463232476123423632234§ = param1;
            this.§5214236015236028123423632234§.setMaterialToAllFaces(param1);
         }
      }
      
      public function addToScene(param1:§5214235140235153123423632234§, param2:Vector3) : void
      {
         this.§5214236015236028123423632234§.x = param2.x;
         this.§5214236015236028123423632234§.y = param2.y;
         this.§5214236015236028123423632234§.z = param2.z;
         param1.§5214231095231108123423632234§(this.§5214236015236028123423632234§);
         this.§5214238195238208123423632234§.x = param2.x;
         this.§5214238195238208123423632234§.y = param2.y;
         this.§5214238195238208123423632234§.z = param2.z + 350;
         param1.§5214231095231108123423632234§(this.§5214238195238208123423632234§);
         this.§finally const implements§.x = param2.x;
         this.§finally const implements§.y = param2.y;
         this.§finally const implements§.z = param2.z + 350;
         param1.§5214231095231108123423632234§(this.§finally const implements§);
      }
      
      public function becomeBlue() : void
      {
         this.d46d4571(this.§import package const§);
         this.a5da9119(this.§521423120972312110123423632234§);
      }
      
      public function becomeNeutral() : void
      {
         this.d46d4571(this.§5214237019237032123423632234§);
         this.a5da9119(this.§case for else§);
      }
      
      public function becomeRed() : void
      {
         this.d46d4571(this.§5214237373237386123423632234§);
         this.a5da9119(this.§521423137162313729123423632234§);
      }
      
      private function a1dcc2e0(param1:String, param2:§521423107382310751123423632234§) : void
      {
         var _loc13_:TextureMaterial = null;
         var _loc5_:TextureMaterial = null;
         var _loc10_:BitmapData = null;
         var _loc3_:BitmapData = null;
         var _loc11_:BitmapData = param2.§5214238774238787123423632234§.data.clone();
         var _loc15_:BitmapData = param2.§5214233847233860123423632234§.data.clone();
         var _loc6_:BitmapData = param2.§5214238235238248123423632234§.data.clone();
         var _loc16_:BitmapData = param2.§override use dynamic§.data;
         var _loc12_:int = param1.charCodeAt(0) - "A".charCodeAt(0);
         var _loc9_:Rectangle = f340ddc4(_loc11_,_loc16_);
         var _loc7_:Matrix = f5c2a32e(_loc11_,_loc16_,_loc12_);
         _loc11_.draw(_loc16_,_loc7_,null,"normal",_loc9_,true);
         _loc15_.draw(_loc16_,_loc7_,null,"normal",_loc9_,true);
         _loc6_.draw(_loc16_,_loc7_,null,"normal",_loc9_,true);
         var _loc8_:TextureMaterial = a11a41af(_loc11_);
         var _loc14_:TextureMaterial = a11a41af(_loc15_);
         var _loc4_:TextureMaterial = a11a41af(_loc6_);
         if(!§include catch catch§)
         {
            _loc10_ = b5c9d64d(_loc15_,_loc11_);
            _loc3_ = b5c9d64d(_loc6_,_loc11_);
            _loc13_ = a11a41af(_loc10_);
            _loc5_ = a11a41af(_loc3_);
         }
         else
         {
            _loc13_ = _loc14_;
            _loc5_ = _loc4_;
         }
         this.§5214238195238208123423632234§ = §include catch catch§ ? new LiquidProgressPlane(1000,1000,_loc8_,_loc13_,_loc14_,_loc5_,_loc4_) : new ProgressPlane(1000,1000,_loc8_,_loc13_,_loc14_,_loc5_,_loc4_);
      }
      
      private function c23b4a4(param1:ModeLight) : void
      {
         this.§finally const implements§ = new OmniLight(0,param1.getAttenuationBegin(),param1.getAttenuationEnd());
         this.a5da9119(this.§case for else§);
      }
      
      private function a5da9119(param1:TeamLightColor) : void
      {
         this.§finally const implements§.color = param1.getColor();
         this.§finally const implements§.intensity = param1.getIntensity();
      }
   }
}

