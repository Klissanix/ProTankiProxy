package §null switch throw§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import §var set var§.§521423132492313262123423632234§;
   
   public class SparkEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private var §5214231453231466123423632234§:Sprite3D;
      
      private var delay:int;
      
      private var time:int;
      
      private var §52142370123714123423632234§:Number;
      
      private var §521423116862311699123423632234§:Number;
      
      private var §5214237150237163123423632234§:Number;
      
      private var x:Number;
      
      private var y:Number;
      
      private var z:Number;
      
      private var object:Object3D;
      
      private var container:§switch var final§;
      
      public function SparkEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§5214231453231466123423632234§ = new Sprite3D(10,10);
      }
      
      public function init(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Object3D, param12:TextureMaterial, param13:String) : void
      {
         this.delay = param1;
         this.§5214231453231466123423632234§.width = param2;
         this.§5214231453231466123423632234§.height = param3;
         this.§5214231453231466123423632234§.calculateBounds();
         this.§5214231453231466123423632234§.rotation = param4;
         this.§52142370123714123423632234§ = param5;
         this.§521423116862311699123423632234§ = param6;
         this.§5214237150237163123423632234§ = param7;
         this.x = param8;
         this.y = param9;
         this.z = param10;
         this.object = param11;
         this.§5214231453231466123423632234§.material = param12;
         this.§5214231453231466123423632234§.softAttenuation = 150;
         this.§5214231453231466123423632234§.depthMapAlphaThreshold = 2;
         this.§5214231453231466123423632234§.shadowMapAlphaThreshold = 2;
         this.§5214231453231466123423632234§.useShadowMap = false;
         this.§5214231453231466123423632234§.useLight = false;
         this.§5214231453231466123423632234§.blendMode = param13;
         this.§5214231453231466123423632234§.alpha = 0;
         this.time = 0;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.§5214231453231466123423632234§);
      }
      
      public function kill() : void
      {
         this.z = this.§52142370123714123423632234§;
         this.§5214231453231466123423632234§.alpha = 0;
      }
      
      public function destroy() : void
      {
         this.container.§5214231752231765123423632234§(this.§5214231453231466123423632234§);
         this.container = null;
         this.§5214231453231466123423632234§.material = null;
         §521423117092311722123423632234§();
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc3_:Number = NaN;
         if(this.z >= this.§52142370123714123423632234§)
         {
            return false;
         }
         this.§5214231453231466123423632234§.x = this.object.x + this.x;
         this.§5214231453231466123423632234§.y = this.object.y + this.y;
         this.§5214231453231466123423632234§.z = this.object.z + this.z;
         this.time += param1;
         if(this.time >= this.delay)
         {
            this.z += this.§52142370123714123423632234§ * this.§5214237150237163123423632234§ * param1 * 0.001;
            if(this.z < this.§521423116862311699123423632234§)
            {
               this.§5214231453231466123423632234§.alpha = this.z / this.§521423116862311699123423632234§;
            }
            else
            {
               _loc3_ = (this.z - this.§521423116862311699123423632234§) / (this.§52142370123714123423632234§ - this.§521423116862311699123423632234§);
               this.§5214231453231466123423632234§.alpha = 1 - _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_;
            }
            if(this.§5214231453231466123423632234§.alpha < 0)
            {
               this.§5214231453231466123423632234§.alpha = 0;
            }
            if(this.§5214231453231466123423632234§.alpha > 1)
            {
               this.§5214231453231466123423632234§.alpha = 1;
            }
         }
         else
         {
            this.§5214231453231466123423632234§.alpha = 0;
         }
         return true;
      }
   }
}

