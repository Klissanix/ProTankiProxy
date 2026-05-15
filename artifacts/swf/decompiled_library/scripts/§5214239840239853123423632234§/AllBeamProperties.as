package §5214239840239853123423632234§
{
   import §521423139282313941123423632234§.ConsoleVarFloat;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.utils.TextureMaterialRegistry;
   import §extends var import§.§5214231658231671123423632234§;
   import §include set return§.§521423107382310751123423632234§;
   
   public class AllBeamProperties
   {
      
      private static const §52142337023383123423632234§:ConsoleVarFloat = new ConsoleVarFloat("beam_width",100,0,1000);
      
      private static const §with for native§:ConsoleVarFloat = new ConsoleVarFloat("beam_ulength",500,0,10000);
      
      private static const §native finally finally§:ConsoleVarFloat = new ConsoleVarFloat("beam_anim_speed",-0.6,-1000,1000);
      
      private static const §521423109402310953123423632234§:ConsoleVarFloat = new ConsoleVarFloat("beam_urange",0.6,0.1,1);
      
      private static const §521423462359123423632234§:ConsoleVarFloat = new ConsoleVarFloat("beam_alpha",1,0,1);
      
      private var §5214231209231222123423632234§:BeamProperties;
      
      private var §final for return§:BeamProperties;
      
      public function AllBeamProperties(param1:TextureMaterialRegistry, param2:§521423107382310751123423632234§)
      {
         super();
         this.§5214231209231222123423632234§ = f971c87(param1,param2.§return const override§,param2.§5214233549233562123423632234§,50,100,1,1,1);
         this.§final for return§ = f971c87(param1,param2.§5214231328231341123423632234§,param2.§521423105402310553123423632234§,50,100,1,1,1);
      }
      
      private static function c2d51e6a(param1:BeamProperties) : BeamProperties
      {
         return new BeamProperties(param1.§override set function§,param1.§521423105952310608123423632234§,§52142337023383123423632234§.value,§with for native§.value,§native finally finally§.value,§521423109402310953123423632234§.value,§521423462359123423632234§.value);
      }
      
      private static function f971c87(param1:TextureMaterialRegistry, param2:§include catch with§, param3:§include catch with§, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : BeamProperties
      {
         var _loc10_:TextureMaterial = null;
         _loc10_ = param1.getMaterial(param2.data);
         _loc10_.repeat = true;
         var _loc9_:TextureMaterial = param1.getMaterial(param3.data);
         return new BeamProperties(_loc10_,_loc9_,param4,param5,param6,param7,param8);
      }
      
      private function c56dd133() : BeamProperties
      {
         return c2d51e6a(this.§final for return§);
      }
      
      private function a5fb08aa() : BeamProperties
      {
         return c2d51e6a(this.§5214231209231222123423632234§);
      }
      
      public function getBeamProperties(param1:§5214231658231671123423632234§) : BeamProperties
      {
         return param1 == §5214231658231671123423632234§.§implements set implements§ ? this.a5fb08aa() : this.c56dd133();
      }
   }
}

