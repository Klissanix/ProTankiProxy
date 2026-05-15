package §true for else§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.tanks.battle.BattleService;
   import §else switch default§.§override for default§;
   
   public class §521423140072314020123423632234§ implements §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §521423109032310916123423632234§:Number = 75;
      
      private static const §continue var include§:Number = 35;
      
      private static const §catch use§:Number = 450;
      
      private var §5214238376238389123423632234§:Object3D;
      
      private var §521423103632310376123423632234§:int;
      
      private var §5214237122237135123423632234§:Number;
      
      public function §521423140072314020123423632234§(param1:§521423120912312104123423632234§)
      {
         super();
         if(param1.§include switch break§() && param1.§include switch break§().§super switch use§())
         {
            this.§5214238376238389123423632234§ = param1.§include switch break§().§super switch use§();
            this.§5214237122237135123423632234§ = this.§5214238376238389123423632234§.y;
         }
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.§521423103632310376123423632234§ += param2;
         if(this.§521423103632310376123423632234§ >= 450)
         {
            this.reset();
            return;
         }
         if(this.§521423103632310376123423632234§ < 35)
         {
            this.§5214238376238389123423632234§.y = this.§5214237122237135123423632234§ - this.§521423103632310376123423632234§ / 35 * 75;
            return;
         }
         this.§5214238376238389123423632234§.y = this.§5214237122237135123423632234§ + (this.§521423103632310376123423632234§ - 35) / (450 - 35) * 75 - 75;
      }
      
      public function reset() : void
      {
         if(this.§5214238376238389123423632234§)
         {
            this.§5214238376238389123423632234§.y = this.§5214237122237135123423632234§;
            §52142380523818123423632234§.getBattleScene3D().§521423129322312945123423632234§(this);
         }
      }
      
      public function §switch use const§() : void
      {
         if(this.§5214238376238389123423632234§)
         {
            §52142380523818123423632234§.getBattleScene3D().§5214231991232004123423632234§(this);
            this.§521423103632310376123423632234§ = 0;
         }
      }
   }
}

