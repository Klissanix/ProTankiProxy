package §5214239840239853123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import alternativa.tanks.sfx.SFXUtils;
   import flash.utils.Dictionary;
   import §var set var§.§521423132492313262123423632234§;
   
   public class DominationBeamEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private static const §throw finally set§:ConsoleVarFloat = new ConsoleVarFloat("beam_zoffset",100,0,1000);
      
      private static const §5214238292238305123423632234§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private var §switch package get§:AnimatedBeam;
      
      private var alive:Boolean;
      
      private var object:Object3D;
      
      private var §use switch else§:Vector3 = new Vector3();
      
      private var §521423135122313525123423632234§:Dictionary;
      
      private var container:§switch var final§;
      
      public function DominationBeamEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§switch package get§ = new AnimatedBeam(1,1,1,0);
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.container = param1;
         param1.§5214237128237141123423632234§(this.§switch package get§);
         this.§521423135122313525123423632234§[this.§switch package get§] = true;
      }
      
      private function e29b7f34(param1:Number) : void
      {
         this.§switch package get§.setWidth(param1);
         this.§switch package get§.setTipLength(param1);
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         §5214238292238305123423632234§.x = this.object.x;
         §5214238292238305123423632234§.y = this.object.y;
         §5214238292238305123423632234§.z = this.object.z + §throw finally set§.value;
         direction.diff(this.§use switch else§,§5214238292238305123423632234§);
         this.§switch package get§.setLength(direction.length());
         direction.normalize();
         SFXUtils.alignObjectPlaneToView(this.§switch package get§,§5214238292238305123423632234§,direction,param2.§dynamic final§);
         this.§switch package get§.update(param1 * 0.001);
         return this.alive;
      }
      
      public function destroy() : void
      {
         this.object = null;
         this.container.§5214231752231765123423632234§(this.§switch package get§);
         this.§switch package get§.setMaterialToAllFaces(null);
         delete this.§521423135122313525123423632234§[this.§switch package get§];
         this.§521423135122313525123423632234§ = null;
         §521423117092311722123423632234§();
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function init(param1:Object3D, param2:Vector3, param3:BeamProperties, param4:Dictionary) : void
      {
         this.object = param1;
         this.§use switch else§.copy(param2);
         this.§switch package get§.setMaterials(param3.§521423105952310608123423632234§,param3.§override set function§);
         this.§switch package get§.setUnitLength(param3.§52142333323346123423632234§);
         this.§switch package get§.§521423137992313812123423632234§ = param3.§521423129462312959123423632234§;
         this.e29b7f34(param3.§5214239466239479123423632234§);
         this.§switch package get§.setURange(param3.§5214234958234971123423632234§);
         this.§switch package get§.alpha = param3.alpha;
         this.alive = true;
         this.§521423135122313525123423632234§ = param4;
      }
   }
}

