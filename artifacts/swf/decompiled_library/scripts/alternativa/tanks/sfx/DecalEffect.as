package alternativa.tanks.sfx
{
   import §521423120192312032123423632234§.§switch var final§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Decal;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import §var set var§.§521423132492313262123423632234§;
   
   public class DecalEffect extends §final switch return§ implements §5214232204232217123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var §521423114782311491123423632234§:Decal;
      
      private var position:Vector3 = new Vector3();
      
      private var §null for extends§:Vector3 = new Vector3();
      
      private var material:TextureMaterial;
      
      private var §class null§:Number;
      
      private var §dynamic catch throw§:int;
      
      private var §5214231114231127123423632234§:int;
      
      private var §5214236677236690123423632234§:int;
      
      public function DecalEffect(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function kill() : void
      {
         this.§5214236677236690123423632234§ = 0;
      }
      
      public function destroy() : void
      {
         if(this.§521423114782311491123423632234§ != null)
         {
            §52142380523818123423632234§.getBattleScene3D().§override override§(this.§521423114782311491123423632234§);
            this.§521423114782311491123423632234§ = null;
         }
         this.material = null;
         §521423117092311722123423632234§();
      }
      
      public function init(param1:Vector3, param2:TextureMaterial, param3:Vector3, param4:Number, param5:int, param6:int) : void
      {
         this.position.copy(param1);
         this.§null for extends§.copy(param3);
         this.§class null§ = param4;
         this.material = param2;
         this.§dynamic catch throw§ = param5;
         this.§5214231114231127123423632234§ = param6;
         this.§5214236677236690123423632234§ = param6;
      }
      
      public function play(param1:int, param2:§521423132492313262123423632234§) : Boolean
      {
         if(this.§5214236677236690123423632234§ > 0)
         {
            if(this.§dynamic catch throw§ > 0)
            {
               this.§dynamic catch throw§ -= param1;
            }
            else
            {
               this.§5214236677236690123423632234§ -= param1;
               if(this.§521423114782311491123423632234§ != null)
               {
                  this.§521423114782311491123423632234§.alpha = this.§5214236677236690123423632234§ / this.§5214231114231127123423632234§;
               }
            }
            return true;
         }
         return false;
      }
      
      public function addedToScene(param1:§switch var final§) : void
      {
         this.§521423114782311491123423632234§ = §52142380523818123423632234§.getBattleScene3D().§try package true§(this.position,this.§null for extends§,this.§class null§,this.material);
         if(this.§521423114782311491123423632234§ == null)
         {
            this.kill();
         }
      }
   }
}

