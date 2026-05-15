package §5214236338236351123423632234§
{
   import §5214231366231379123423632234§.§521423130562313069123423632234§;
   import §5214232916232929123423632234§.§521423108032310816123423632234§;
   import §5214232916232929123423632234§.§5214232415232428123423632234§;
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Occluder;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.utils.clearDictionary;
   import §catch catch§.§521423132262313239123423632234§;
   import §catch catch§.§5214233797233810123423632234§;
   import §catch catch§.§break catch import§;
   import §finally package catch§.§5214234227234240123423632234§;
   import §finally package catch§.§5214234253234266123423632234§;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class §5214237967237980123423632234§
   {
      
      public static var §5214232551232564123423632234§:ISettingsService;
      
      private static const §5214233343233356123423632234§:Matrix3D = new Matrix3D();
      
      private static const §try var get§:Vector.<Vector3D> = new <Vector3D>[new Vector3D(),new Vector3D(),new Vector3D(1,1,1)];
      
      private var §5214237932237945123423632234§:§521423108032310816123423632234§;
      
      private var §switch catch package§:§5214233737233750123423632234§ = new §5214233737233750123423632234§();
      
      private var §5214237990238003123423632234§:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var §false switch continue§:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var §true catch case§:Vector.<Occluder> = new Vector.<Occluder>();
      
      private var §false switch var§:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var §5214233098233111123423632234§:Vector.<Object3D> = new Vector.<Object3D>();
      
      private var §class for super§:Vector.<Light3D> = new Vector.<Light3D>();
      
      private var §5214233278233291123423632234§:Dictionary = new Dictionary();
      
      private var §set package function§:Dictionary = new Dictionary();
      
      private var §default switch continue§:§521423130562313069123423632234§ = new §521423130562313069123423632234§();
      
      private var §5214239324239337123423632234§:§52142343323446123423632234§ = new §52142343323446123423632234§();
      
      private var §import switch for§:Object3D;
      
      private var §use for extends§:Vector.<Object3D> = new Vector.<Object3D>();
      
      public function §5214237967237980123423632234§(param1:§521423108032310816123423632234§)
      {
         super();
         this.§5214237932237945123423632234§ = param1;
      }
      
      private static function §521423110772311090123423632234§(param1:XMLList, param2:Vector3D) : void
      {
         var _loc3_:XML = param1[0];
         param2.x = _loc3_.elements("x")[0];
         param2.y = _loc3_.elements("y")[0];
         param2.z = _loc3_.elements("z")[0];
      }
      
      private static function §throw for§(param1:XML) : String
      {
         var _loc3_:String = null;
         var _loc2_:XMLList = param1.elements("texture-name");
         if(_loc2_.length() > 0)
         {
            _loc3_ = _loc2_[0];
         }
         return _loc3_ || "$$$_DEFAULT_TEXTURE_$$$";
      }
      
      private function §dynamic for§(param1:XML) : void
      {
         var _loc2_:§521423132262313239123423632234§ = this.§default const case§(param1);
         if(_loc2_ != null)
         {
            if(_loc2_ is §5214233797233810123423632234§)
            {
               this.§521423119122311925123423632234§(param1,§5214233797233810123423632234§(_loc2_));
            }
            else if(_loc2_ is §break catch import§)
            {
               this.§if for true§(param1,§break catch import§(_loc2_));
            }
         }
      }
      
      public function §false set final§() : void
      {
         this.§5214237932237945123423632234§ = null;
         this.§switch catch package§.§false set final§();
         this.§5214237990238003123423632234§.length = 0;
         this.§false switch continue§.length = 0;
         this.§true catch case§.length = 0;
         this.§false switch var§.length = 0;
         this.§class for super§.length = 0;
         this.§import switch for§ = null;
         this.§use for extends§.length = 0;
      }
      
      public function §get catch dynamic§() : Vector.<Object3D>
      {
         return this.§false switch continue§;
      }
      
      public function §set var throw§() : §521423130562313069123423632234§
      {
         return this.§default switch continue§;
      }
      
      private function §function catch implements§(param1:XML) : void
      {
         for each(var _loc2_ in param1.elements("static-geometry").prop)
         {
            this.§dynamic for§(_loc2_);
         }
         for each(_loc2_ in param1.elements("lights").light)
         {
            this.§try use const§(_loc2_);
         }
      }
      
      public function §5214234225234238123423632234§(param1:XML) : void
      {
         this.§function catch implements§(param1);
         this.§5214239324239337123423632234§.§while const extends§(this.§5214233098233111123423632234§);
         if(this.§import switch for§ != null)
         {
            (this.§import switch for§ as Mesh).calculateVerticesNormalsByAngle(3.141592653589793 / 3,1);
         }
         this.§521423127572312770123423632234§();
      }
      
      public function §override catch use§() : Object3D
      {
         return this.§import switch for§;
      }
      
      public function §null package function§() : Vector.<Object3D>
      {
         return this.§use for extends§;
      }
      
      private function §default const case§(param1:XML) : §521423132262313239123423632234§
      {
         var _loc2_:String = param1.attribute("library-name");
         var _loc3_:String = param1.attribute("group-name");
         var _loc6_:String = param1.@name;
         var _loc4_:§5214232415232428123423632234§ = this.§5214237932237945123423632234§.§return set extends§(_loc2_);
         if(_loc4_ == null)
         {
            return null;
         }
         var _loc7_:§5214234253234266123423632234§ = _loc4_.§super package throw§.§override package get§(_loc3_);
         if(_loc7_ == null)
         {
            return null;
         }
         var _loc5_:§5214234227234240123423632234§ = _loc7_.§native var class§(_loc6_);
         if(_loc5_ == null)
         {
            return null;
         }
         return _loc5_.§521423100502310063123423632234§().§5214234943234956123423632234§();
      }
      
      public function §class package package§() : Vector.<Light3D>
      {
         return this.§class for super§;
      }
      
      public function §5214239264239277123423632234§() : Vector.<Occluder>
      {
         return this.§true catch case§;
      }
      
      private function §true package return§(param1:§5214233797233810123423632234§, param2:Vector.<Vector3D>) : void
      {
         var _loc5_:Matrix3D = null;
         var _loc3_:Occluder = null;
         if(param1.§true catch case§ != null)
         {
            §5214233343233356123423632234§.recompose(param2);
            for each(var _loc4_ in param1.§true catch case§)
            {
               _loc5_ = _loc4_.matrix;
               _loc5_.append(§5214233343233356123423632234§);
               _loc3_ = Occluder(_loc4_.clone());
               _loc3_.matrix = _loc5_;
               this.§true catch case§[§true catch case§.length] = _loc3_;
            }
         }
      }
      
      public function §5214237226237239123423632234§() : Vector.<Mesh>
      {
         return this.§false switch var§;
      }
      
      private function §case case§(param1:XML, param2:§5214233797233810123423632234§) : void
      {
         var _loc6_:Mesh = Mesh(param2.§throw use true§.clone());
         _loc6_.calculateFacesNormals();
         _loc6_.calculateVerticesNormalsByAngle(0);
         _loc6_.sorting = 2;
         _loc6_.name = "static";
         this.§false switch var§[§false switch var§.length] = _loc6_;
         var _loc4_:String = §throw for§(param1);
         this.§switch catch package§.§521423113682311381123423632234§(param2,_loc4_,_loc6_,"display");
         var _loc5_:Vector3D = §try var get§[0];
         §521423110772311090123423632234§(param1.position,_loc5_);
         this.§default switch continue§.§implements const return§(_loc5_.x,_loc5_.y,_loc5_.z);
         var _loc3_:Vector3D = §try var get§[1];
         §521423110772311090123423632234§(param1.rotation,_loc3_);
         _loc6_.x = _loc5_.x;
         _loc6_.y = _loc5_.y;
         _loc6_.z = _loc5_.z;
         _loc6_.rotationZ = _loc3_.z;
         this.§5214237990238003123423632234§[§5214237990238003123423632234§.length] = _loc6_;
      }
      
      private function §if for true§(param1:XML, param2:§break catch import§) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Sprite3D = Sprite3D(param2.§throw use true§.clone());
         if(param1.@name.indexOf("Shar") >= 0)
         {
            this.§use for extends§[§use for extends§.length] = _loc4_;
            _loc3_ = §try var get§[0];
            §521423110772311090123423632234§(param1.position,_loc3_);
            _loc4_.x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.z = _loc3_.z;
            _loc4_.name = param1.@name;
            return;
         }
         _loc4_.shadowMapAlphaThreshold = 0;
         _loc4_.softAttenuation = 80;
         this.§false switch continue§[§false switch continue§.length] = _loc4_;
         var _loc5_:Vector3D = §try var get§[0];
         §521423110772311090123423632234§(param1.position,_loc5_);
         _loc4_.x = _loc5_.x;
         _loc4_.y = _loc5_.y;
         _loc4_.z = _loc5_.z;
         _loc4_.width = param2.§with set implements§;
         this.§switch catch package§.§521423110392311052123423632234§(param2,_loc4_);
      }
      
      private function §static var§(param1:XML, param2:§5214233797233810123423632234§) : void
      {
         var _loc6_:Mesh = Mesh(param2.§throw use true§.clone());
         var _loc5_:Vector3D = §try var get§[0];
         §521423110772311090123423632234§(param1.position,_loc5_);
         _loc6_.x = _loc5_.x;
         _loc6_.y = _loc5_.y;
         _loc6_.z = _loc5_.z;
         this.§default switch continue§.§implements const return§(_loc5_.x,_loc5_.y,_loc5_.z);
         var _loc3_:Vector3D = §try var get§[1];
         §521423110772311090123423632234§(param1.rotation,_loc3_);
         _loc6_.rotationZ = _loc3_.z;
         var _loc4_:String = §throw for§(param1);
         this.§5214233098233111123423632234§[§5214233098233111123423632234§.length] = _loc6_;
         this.§5214233278233291123423632234§[_loc6_] = param2;
         this.§set package function§[_loc6_] = _loc4_;
         this.§true package return§(param2,§try var get§);
         if(param1.@name == "Elka")
         {
            this.§import switch for§ = _loc6_;
         }
      }
      
      private function §521423119122311925123423632234§(param1:XML, param2:§5214233797233810123423632234§) : void
      {
         this.§static var§(param1,param2);
      }
      
      public function §5214236632236645123423632234§() : Vector.<Object3D>
      {
         return this.§5214237990238003123423632234§;
      }
      
      private function §521423127572312770123423632234§() : void
      {
         var _loc1_:Mesh = null;
         var _loc2_:BSP = null;
         for each(var _loc3_ in this.§5214233098233111123423632234§)
         {
            _loc1_ = _loc3_ as Mesh;
            _loc2_ = new BSP();
            _loc2_.name = "static";
            _loc2_.createTree(_loc1_,true);
            _loc2_.x = _loc1_.x;
            _loc2_.y = _loc1_.y;
            _loc2_.z = _loc1_.z;
            _loc2_.rotationZ = _loc1_.rotationZ;
            this.§switch catch package§.§5214236208236221123423632234§(this.§5214233278233291123423632234§[_loc1_],this.§set package function§[_loc1_],_loc2_);
            this.§5214237990238003123423632234§[§5214237990238003123423632234§.length] = _loc2_;
            if(_loc1_ == this.§import switch for§)
            {
               this.§import switch for§ = _loc2_;
            }
         }
         this.§5214233098233111123423632234§.length = 0;
         clearDictionary(this.§5214233278233291123423632234§);
         clearDictionary(this.§set package function§);
      }
      
      private function §try use const§(param1:XML) : void
      {
         var _loc4_:Light3D = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:* = 0;
         var _loc2_:Number = NaN;
         var _loc8_:Vector3D = null;
         var _loc6_:Vector3D = null;
         var _loc9_:String = String(param1.attribute("type"));
         if("omni" === _loc9_)
         {
            _loc5_ = param1.attribute("attenuationBegin") * 100;
            _loc7_ = param1.attribute("attenuationEnd") * 100;
            _loc3_ = uint(param1.attribute("color"));
            _loc2_ = Number(param1.attribute("intensity"));
            _loc4_ = new OmniLight(_loc3_,_loc5_,_loc7_);
            _loc4_.intensity = _loc2_;
         }
         if(_loc4_ != null)
         {
            _loc8_ = §try var get§[0];
            §521423110772311090123423632234§(param1.position,_loc8_);
            _loc6_ = §try var get§[1];
            §521423110772311090123423632234§(param1.rotation,_loc6_);
            _loc4_.x = _loc8_.x;
            _loc4_.y = _loc8_.y;
            _loc4_.z = _loc8_.z;
            _loc4_.rotationZ = _loc6_.z;
            _loc4_.calculateBounds();
            this.§class for super§[§class for super§.length] = _loc4_;
         }
      }
      
      public function §5214232758232771123423632234§() : Vector.<§521423112022311215123423632234§>
      {
         return this.§switch catch package§.§521423136862313699123423632234§();
      }
   }
}

