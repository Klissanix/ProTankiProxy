package §else switch default§
{
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.ShadowMap;
   import alternativa.engine3d.lights.DirectionalLight;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.Color;
   import flash.geom.Vector3D;
   
   public class §5214231756231769123423632234§
   {
      
      private static const §5214238319238332123423632234§:int = 2048;
      
      private static const §function use in§:Number = 0.5;
      
      private static const §in switch with§:Number = 10000;
      
      private static const §5214232056232069123423632234§:Number = 5000;
      
      private static const §throw use class§:Number = 10000;
      
      private var §const while§:Color;
      
      private var §if const include§:Color;
      
      private var §52142317323186123423632234§:Number = 0;
      
      private var §do for set§:Number = 0;
      
      private var §5214239673239686123423632234§:Vector3D;
      
      private var §5214239291239304123423632234§:Camera3D;
      
      public function §5214231756231769123423632234§(param1:Camera3D)
      {
         super();
         this.§5214239673239686123423632234§ = new Vector3D(1,1,1);
         this.§5214239291239304123423632234§ = param1;
      }
      
      public function §5214238587238600123423632234§() : void
      {
         this.§5214239291239304123423632234§.directionalLight = null;
      }
      
      public function §5214236262236275123423632234§(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§const while§ = new Color(param1);
         this.§if const include§ = new Color(param2);
         this.§const while§.subtract(this.§if const include§);
         this.§52142317323186123423632234§ = param3;
         this.§do for set§ = param4;
         this.§5214233610233623123423632234§();
      }
      
      public function §521423132852313298123423632234§() : void
      {
         if(this.§5214239291239304123423632234§.shadowMap == null)
         {
            this.§5214237667237680123423632234§();
         }
         else
         {
            this.§class default§();
         }
      }
      
      public function §each switch break§() : void
      {
         this.§5214239291239304123423632234§.directionalLight = new DirectionalLight(this.§const while§.getColor());
         this.§5214239291239304123423632234§.directionalLight.lookAt(this.§5214239673239686123423632234§.x,this.§5214239673239686123423632234§.y,this.§5214239673239686123423632234§.z);
         this.§5214239291239304123423632234§.ambientColor = this.§if const include§.getColor();
      }
      
      public function §5214237667237680123423632234§() : void
      {
         this.§5214239291239304123423632234§.shadowMap = new ShadowMap(2048,5000,10000,0.5,10000);
      }
      
      private function §5214233610233623123423632234§() : void
      {
         var _loc2_:Matrix3 = new Matrix3();
         _loc2_.setRotationMatrix(this.§52142317323186123423632234§,0,this.§do for set§);
         var _loc1_:Vector3 = new Vector3(0,1,0);
         _loc1_.transform3(_loc2_);
         this.§5214239673239686123423632234§.x = _loc1_.x;
         this.§5214239673239686123423632234§.y = _loc1_.y;
         this.§5214239673239686123423632234§.z = _loc1_.z;
      }
      
      public function §class default§() : void
      {
         if(this.§5214239291239304123423632234§.shadowMap != null)
         {
            this.§5214239291239304123423632234§.shadowMap.dispose();
            this.§5214239291239304123423632234§.shadowMap = null;
         }
      }
   }
}

