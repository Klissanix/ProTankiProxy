package §5214234056234069123423632234§
{
   import §5214231938231951123423632234§.§521423130992313112123423632234§;
   import §5214231938231951123423632234§.§5214234016234029123423632234§;
   import §5214231938231951123423632234§.§case set static§;
   import §5214233087233100123423632234§.§5214237988238001123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.LevelUpEffectFactory;
   import alternativa.tanks.sfx.Sound3D;
   import alternativa.tanks.sfx.Sound3DEffect;
   import §each var null§.§const throw§;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import §set package in§.ClientObject;
   
   public class §521423134682313481123423632234§ extends §521423130992313112123423632234§ implements §case set static§, §5214232742232755123423632234§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §for continue§:ResourceRegistry;
      
      private var §5214234460234473123423632234§:§null for with§;
      
      private var §native use each§:int;
      
      public function §521423134682313481123423632234§()
      {
         super();
      }
      
      public function §finally catch get§() : Boolean
      {
         return §switch var switch§() != null;
      }
      
      public function objectUnloaded() : void
      {
         --this.§native use each§;
         if(this.§native use each§ == 0)
         {
            this.§5214234460234473123423632234§.close();
            this.§5214234460234473123423632234§ = null;
         }
      }
      
      public function §implements const import§(param1:§5214239411239424123423632234§, param2:int) : void
      {
         if(param1.§implements catch catch§ == §get catch§.§case use include§)
         {
            this.§5214231270231283123423632234§(param1.§5214233939233952123423632234§(),param2);
         }
         else
         {
            this.§5214233067233080123423632234§(param1,param2);
         }
      }
      
      private function §null const extends§(param1:§5214239411239424123423632234§, param2:§5214237988238001123423632234§) : void
      {
         var _loc5_:Sound3D = null;
         var _loc6_:§const throw§ = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Sound3DEffect = null;
         if(param2 != null)
         {
            _loc5_ = Sound3D.create(param2.§set const switch§);
            _loc6_ = param1.§break switch catch§();
            _loc3_ = _loc6_.§implements catch catch§.§dynamic final§.clone();
            _loc4_ = Sound3DEffect.create(_loc3_,_loc5_,0,0);
            §52142380523818123423632234§.addSound3DEffect(_loc4_);
         }
      }
      
      private function §5214233067233080123423632234§(param1:§5214239411239424123423632234§, param2:int) : void
      {
         var _loc4_:LevelUpEffectFactory = new LevelUpEffectFactory();
         var _loc3_:§5214234016234029123423632234§ = §switch var switch§();
         _loc4_.createEffect(param1,param2,_loc3_.§5214236656236669123423632234§,_loc3_.§5214237705237718123423632234§,_loc3_.§52142357023583123423632234§);
         this.§null const extends§(param1,_loc3_.§dynamic var set§);
      }
      
      public function objectLoaded() : void
      {
         if(this.§5214234460234473123423632234§ == null)
         {
            this.§5214234460234473123423632234§ = new §null for with§(null);
         }
         ++this.§native use each§;
      }
      
      private function §5214231270231283123423632234§(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§switch switch default§ = new §switch switch default§(param1,param2);
         param1.putParams(§switch switch default§,_loc3_);
      }
   }
}

