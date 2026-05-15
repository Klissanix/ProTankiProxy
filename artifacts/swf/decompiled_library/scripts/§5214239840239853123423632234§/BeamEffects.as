package §5214239840239853123423632234§
{
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.§5214232204232217123423632234§;
   import flash.utils.Dictionary;
   
   public class BeamEffects
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var effects:Dictionary;
      
      public function BeamEffects()
      {
         super();
         this.effects = new Dictionary();
      }
      
      public function removeEffect(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:§5214232204232217123423632234§ = this.effects[param1];
         if(_loc2_ != null)
         {
            _loc2_.kill();
            delete this.effects[param1];
         }
      }
      
      public function addEffect(param1:§5214239411239424123423632234§, param2:§5214232204232217123423632234§) : void
      {
         this.effects[param1] = param2;
         §52142380523818123423632234§.getBattleScene3D().§each var use§(param2);
      }
   }
}

