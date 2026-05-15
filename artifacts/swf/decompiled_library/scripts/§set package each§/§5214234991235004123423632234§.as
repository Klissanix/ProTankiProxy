package §set package each§
{
   import alternativa.tanks.battle.BattleUtils;
   import §in set null§.§5214236916236929123423632234§;
   import §in set null§.§switch catch in§;
   import §set package in§.ClientObject;
   
   public class §5214234991235004123423632234§ extends §5214236916236929123423632234§ implements §switch catch in§, §finally set final§
   {
      
      public function §5214234991235004123423632234§()
      {
         super();
      }
      
      public function §5214231718231731123423632234§(param1:ClientObject) : §5214237646237659123423632234§
      {
         var _loc2_:§package switch continue§ = §package switch continue§(param1.getParams(§5214234991235004123423632234§));
         return new §5214237646237659123423632234§(_loc2_.§521423101172310130123423632234§,_loc2_.§default package while§,_loc2_.§for package extends§);
      }
      
      public function §include var if§(param1:ClientObject, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§package switch continue§ = null;
         _loc5_ = new §package switch continue§();
         _loc5_.§521423101172310130123423632234§ = isNaN(param2) ? 0 : BattleUtils.toClientScale(param2);
         _loc5_.§default package while§ = isNaN(param4) ? 1 : BattleUtils.toClientScale(param4);
         _loc5_.§for package extends§ = isNaN(param3) ? 0 : param3;
         _loc5_.§5214231630231643123423632234§ = _loc5_.§default package while§ - _loc5_.§521423101172310130123423632234§;
         if(_loc5_.§for package extends§ > 100)
         {
            _loc5_.§for package extends§ = 100;
         }
         param1.putParams(§5214234991235004123423632234§,_loc5_);
      }
   }
}

