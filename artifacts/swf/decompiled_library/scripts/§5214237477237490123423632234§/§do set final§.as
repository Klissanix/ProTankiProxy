package §5214237477237490123423632234§
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.Material;
   import alternativa.math.Vector3;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import alternativa.tanks.sfx.SFXUtils;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §do set final§ extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      private var §catch switch function§:§switch var final§;
      
      private var §5214233500233513123423632234§:§in switch for§;
      
      private var §5214234922234935123423632234§:Vector3 = new Vector3();
      
      private var §5214239673239686123423632234§:Vector3 = new Vector3();
      
      private var §5214232694232707123423632234§:Number;
      
      private var §5214238334238347123423632234§:Number;
      
      private var §dynamic catch include§:Number;
      
      private var §dynamic catch throw§:int;
      
      private var §dynamic finally var§:int;
      
      public function §do set final§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§5214233500233513123423632234§ = new §in switch for§();
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§catch switch function§ = param1;
         param1.§5214237128237141123423632234§(this.§5214233500233513123423632234§);
      }
      
      public function destroy() : void
      {
         this.§5214233500233513123423632234§.§false set final§();
         this.§catch switch function§.§5214231752231765123423632234§(this.§5214233500233513123423632234§);
         this.§catch switch function§ = null;
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Material, param4:Number, param5:Number, param6:Number, param7:Number, param8:int) : void
      {
         this.§5214234922234935123423632234§.copy(param1);
         this.§5214239673239686123423632234§.diff(param2,param1);
         var _loc9_:Number = this.§5214239673239686123423632234§.length();
         this.§5214239673239686123423632234§.scale(1 / _loc9_);
         this.§5214232694232707123423632234§ = param5;
         this.§5214238334238347123423632234§ = param6;
         this.§dynamic catch include§ = param7;
         this.§dynamic catch throw§ = param8;
         this.§5214233500233513123423632234§.init(param4,_loc9_,param3,param7);
         this.§dynamic finally var§ = 0;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§dynamic finally var§ > this.§dynamic catch throw§)
         {
            return false;
         }
         SFXUtils.alignObjectPlaneToView(this.§5214233500233513123423632234§,this.§5214234922234935123423632234§,this.§5214239673239686123423632234§,param2.§dynamic final§);
         _loc4_ = this.§dynamic finally var§ / this.§dynamic catch throw§;
         _loc3_ = Math.sqrt(_loc4_);
         this.§5214233500233513123423632234§.scaleX = this.§5214232694232707123423632234§ + (this.§5214238334238347123423632234§ - this.§5214232694232707123423632234§) * _loc3_;
         this.§5214233500233513123423632234§.alpha = 1 - _loc4_;
         this.§5214233500233513123423632234§.§521423120402312053123423632234§(_loc3_);
         this.§dynamic finally var§ += param1;
         return true;
      }
      
      public function kill() : void
      {
         this.§dynamic finally var§ = this.§dynamic catch throw§ + 1;
      }
   }
}

