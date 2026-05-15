package §if var class§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.tanks.battle.BattleRunnerProvider;
   
   public class §set catch use§ extends BattleRunnerProvider
   {
      
      private var §catch switch function§:Object3DContainer;
      
      public function §set catch use§()
      {
         super();
      }
      
      private function §else else§() : Object3DContainer
      {
         if(§catch switch function§ == null)
         {
            §catch switch function§ = new Object3DContainer();
            §catch switch function§.visible = true;
            §52142380523818123423632234§.getBattleScene3D().§break use with§(§catch switch function§);
         }
         return §catch switch function§;
      }
      
      public function §5214239093239106123423632234§(param1:Object3D) : void
      {
         var _loc2_:Object3DContainer = §else else§();
         _loc2_.addChild(param1);
      }
      
      public function destroy() : void
      {
         if(§catch switch function§ != null && §catch switch function§.parent != null)
         {
            §52142380523818123423632234§.getBattleScene3D().§5214234588234601123423632234§(§catch switch function§);
         }
      }
   }
}

