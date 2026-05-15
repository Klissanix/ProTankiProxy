package §5214236303236316123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.Material;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.SFXUtils;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §52142319523208123423632234§ extends §final switch return§ implements §final use while§
   {
      
      private static const §5214235553235566123423632234§:Number = 48;
      
      private var §dynamic final§:Vector3 = new Vector3();
      
      private var §5214239673239686123423632234§:Vector3 = new Vector3();
      
      private var §override use implements§:Number;
      
      private var §521423104962310509123423632234§:int;
      
      private var §switch package get§:§5214237264237277123423632234§;
      
      private var §catch switch function§:§switch var final§;
      
      public function §52142319523208123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§switch package get§ = new §5214237264237277123423632234§();
      }
      
      public function kill() : void
      {
         this.§521423104962310509123423632234§ = -1;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(this.§521423104962310509123423632234§ < 0)
         {
            return false;
         }
         this.§521423104962310509123423632234§ -= param1;
         this.§switch package get§.alpha -= this.§override use implements§ * param1;
         SFXUtils.alignObjectPlaneToView(this.§switch package get§,this.§dynamic final§,this.§5214239673239686123423632234§,param2.§dynamic final§);
         return true;
      }
      
      public function destroy() : void
      {
         this.§catch switch function§.§5214231752231765123423632234§(this.§switch package get§);
         this.§catch switch function§ = null;
         §521423117092311722123423632234§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
         param1.§5214237128237141123423632234§(this.§switch package get§);
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number, param4:Number, param5:Material, param6:int) : void
      {
         this.§dynamic final§.copy(param1);
         this.§5214239673239686123423632234§.copy(param2);
         this.§521423104962310509123423632234§ = param6;
         this.§override use implements§ = 1 / param6;
         this.§switch package get§.init(48,param3,param4,param5);
      }
   }
}

