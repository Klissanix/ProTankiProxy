package §5214237477237490123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.math.Vector3;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import alternativa.tanks.sfx.AnimatedPlane;
   import alternativa.tanks.sfx.SFXUtils;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §5214231901231914123423632234§ extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private var §dynamic final§:Vector3 = new Vector3();
      
      private var §5214239673239686123423632234§:Vector3 = new Vector3();
      
      private var §get use const§:int;
      
      private var §case var import§:int;
      
      private var §5214238195238208123423632234§:AnimatedPlane;
      
      private var §catch switch function§:§switch var final§;
      
      public function §5214231901231914123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§5214238195238208123423632234§ = new AnimatedPlane(30,200,0,-100,0);
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(this.§get use const§ >= this.§case var import§)
         {
            return false;
         }
         this.§5214238195238208123423632234§.setTime(this.§get use const§);
         this.§get use const§ += param1;
         SFXUtils.alignObjectPlaneToView(this.§5214238195238208123423632234§,this.§dynamic final§,this.§5214239673239686123423632234§,param2.§dynamic final§);
         return true;
      }
      
      public function kill() : void
      {
         this.§get use const§ = this.§case var import§;
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:TextureAnimation) : void
      {
         this.§dynamic final§.copy(param1);
         this.§5214239673239686123423632234§.copy(param2);
         this.§5214238195238208123423632234§.init(param3,0.001 * param3.fps);
         this.§case var import§ = this.§5214238195238208123423632234§.getOneLoopTime();
         this.§get use const§ = 0;
         this.§5214238195238208123423632234§.x = param1.x;
         this.§5214238195238208123423632234§.y = param1.y;
         this.§5214238195238208123423632234§.z = param1.z;
      }
      
      public function destroy() : void
      {
         this.§catch switch function§.§5214231752231765123423632234§(this.§5214238195238208123423632234§);
         this.§catch switch function§ = null;
         this.§5214238195238208123423632234§.clear();
         §521423117092311722123423632234§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
         param1.§5214237128237141123423632234§(this.§5214238195238208123423632234§);
      }
   }
}

