package §52142328223295123423632234§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.battle.BattleService;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §5214235340235353123423632234§ extends §final switch return§ implements §521423117662311779123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §super set set§:Number = 0.001;
      
      private var §throw switch else§:Number;
      
      private var §class package set§:Mesh;
      
      private var §false for with§:TextureMaterial;
      
      public function §5214235340235353123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
      }
      
      public function §521423120402312053123423632234§(param1:Number) : void
      {
         var _loc2_:§521423112402311253123423632234§ = null;
         this.§throw switch else§ += param1;
         if(this.§throw switch else§ >= 0.001)
         {
            _loc2_ = §521423112402311253123423632234§(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§521423112402311253123423632234§));
            _loc2_.init(this.§class package set§,this.§false for with§);
            §52142380523818123423632234§.addGraphicEffect(_loc2_);
            this.§throw switch else§ = 0;
         }
      }
      
      public function init(param1:Mesh, param2:§each for finally§) : void
      {
         this.§class package set§ = param1;
         this.§false for with§ = param2.§5214233500233513123423632234§;
         this.§throw switch else§ = 0;
      }
      
      public function close() : void
      {
         this.§class package set§ = null;
         this.§false for with§ = null;
         §521423117092311722123423632234§();
      }
   }
}

