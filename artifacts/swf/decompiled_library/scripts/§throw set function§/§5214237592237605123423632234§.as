package §throw set function§
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214232389232402123423632234§.§5214233861233874123423632234§;
   import §5214237976237989123423632234§.§true const each§;
   import §5214238361238374123423632234§.§5214232328232341123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238868238881123423632234§.§521423115072311520123423632234§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.§dynamic switch break§;
   import §const set null§.§521423136232313636123423632234§;
   import §final for with§.§5214238652238665123423632234§;
   import §finally catch with§.§throw for continue§;
   import flash.utils.getTimer;
   import §package package false§.§static set true§;
   import §set package each§.§5214237646237659123423632234§;
   import §set package in§.ClientObject;
   
   public class §5214237592237605123423632234§ extends BattleRunnerProvider implements §import catch null§, §dynamic switch break§
   {
      
      private static var §5214236419236432123423632234§:int;
      
      private static const §5214233716233729123423632234§:Vector3 = new Vector3();
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private static const §default class§:§else const final§ = new §else const final§();
      
      private var §do use override§:Number;
      
      private var §return for super§:Number;
      
      private var §52142392923942123423632234§:int;
      
      private var §get const false§:int;
      
      private var §521423122782312291123423632234§:§5214232328232341123423632234§;
      
      private var §5214238834238847123423632234§:§true const each§ = new §true const each§();
      
      private var §set catch import§:§super const dynamic§;
      
      private var §var const null§:int;
      
      private var §5214236382236395123423632234§:§native const native§;
      
      private var §5214234984234997123423632234§:§override const use§;
      
      private var §set const break§:§final use class§;
      
      private var enabled:Boolean;
      
      private var §5214237410237423123423632234§:§521423136232313636123423632234§;
      
      public function §5214237592237605123423632234§(param1:ClientObject, param2:§521423136232313636123423632234§, param3:§return switch native§, param4:§final use class§)
      {
         super();
         var _loc7_:§return switch native§ = param3;
         var _loc8_:§521423115072311520123423632234§ = new §521423115072311520123423632234§(param1);
         var _loc5_:§final use class§ = param4;
         this.§5214237410237423123423632234§ = param2;
         this.§do use override§ = _loc8_.§case for implements§().§import finally const§();
         this.§return for super§ = param2.§5214238829238842123423632234§ / 1000;
         var _loc6_:§5214238652238665123423632234§ = §5214233861233874123423632234§.§521423135432313556123423632234§[_loc8_.§521423111262311139123423632234§().§catch use continue§.id];
         this.§set catch import§ = §5214237559237572123423632234§(_loc6_,param2,_loc8_);
         this.§var const null§ = _loc8_.§super finally§();
         this.§5214236382236395123423632234§ = _loc7_.§5214233898233911123423632234§(param1);
         this.§5214234984234997123423632234§ = new §override const use§(_loc8_,param2,_loc7_.§5214231092231105123423632234§(param1),_loc5_);
         this.§set const break§ = _loc5_;
      }
      
      private static function §5214237559237572123423632234§(param1:§5214238652238665123423632234§, param2:§521423136232313636123423632234§, param3:§521423115072311520123423632234§) : §super const dynamic§
      {
         var _loc10_:§5214237646237659123423632234§ = param3.§521423133412313354123423632234§();
         var _loc8_:Number = param1.§5214239092239105123423632234§();
         var _loc9_:int = Math.ceil(_loc8_ * Utl.method_2700(_loc10_.§include var native§()));
         var _loc6_:Number = param1.§const catch do§();
         var _loc7_:int = Math.ceil(_loc6_ * Utl.method_2700(_loc10_.§include var native§()));
         var _loc5_:Number = param2.§5214231670231683123423632234§;
         var _loc4_:§static set true§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         return new §super const dynamic§(_loc8_,_loc9_,_loc6_,_loc7_,_loc5_,_loc4_,§52142380523818123423632234§.getRicochetTargetEvaluator(),param2.§5214232411232424123423632234§);
      }
      
      public function activate() : void
      {
         getBattleRunner().addLogicUnit(this);
      }
      
      private function §switch switch switch§(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.§521423122782312291123423632234§.§break switch catch§().§521423492362123423632234§(param1,param2,param3);
      }
      
      public function enable() : void
      {
         if(!this.enabled)
         {
            this.enabled = true;
            this.§5214238834238847123423632234§.§5214233699233712123423632234§();
         }
      }
      
      public function getStatus() : Number
      {
         return this.§5214238545238558123423632234§(getTimer()) / this.§5214237410237423123423632234§.§const for finally§;
      }
      
      public function init(param1:§5214232328232341123423632234§) : void
      {
         this.§521423122782312291123423632234§ = param1;
         this.§5214238834238847123423632234§.init();
      }
      
      private function §5214238545238558123423632234§(param1:int) : Number
      {
         return §throw for continue§.§52142393423947123423632234§(this.§return for super§ * (param1 - this.§get const false§),0,this.§5214237410237423123423632234§.§const for finally§);
      }
      
      private function §true catch final§(param1:int) : void
      {
         this.§set const break§.§catch const super§(param1);
      }
      
      public function disable(param1:Boolean) : void
      {
         this.enabled = false;
      }
      
      private function §finally use use§(param1:int, param2:§else const final§, param3:Vector3) : void
      {
         var _loc4_:§case var§ = this.§5214234984234997123423632234§.§521423128402312853123423632234§();
         _loc4_.§5214237205237218123423632234§(param2,param3,this.§521423122782312291123423632234§.§break switch catch§(),++§5214236419236432123423632234§);
         this.§set const break§.§5214234994235007123423632234§(param1,_loc4_.§5214233952233965123423632234§(),param3);
      }
      
      public function reset() : void
      {
         this.§get const false§ = 0;
         this.§52142392923942123423632234§ = 0;
         this.§5214238834238847123423632234§.§5214233699233712123423632234§();
      }
      
      private function §5214236515236528123423632234§(param1:int, param2:Number) : void
      {
         this.§get const false§ = param1 - param2 / this.§return for super§;
      }
      
      private function §521423125102312523123423632234§(param1:int, param2:Number) : void
      {
         this.§52142392923942123423632234§ = param1 + this.§var const null§;
         this.§5214236515236528123423632234§(param1,param2 - this.§5214237410237423123423632234§.§finally package for§);
         this.§521423122782312291123423632234§.§52142371223725123423632234§(§default class§);
         this.§521423122782312291123423632234§.§get use extends§();
         this.§switch switch switch§(§default class§.§if var switch§,§default class§.§5214239673239686123423632234§,-this.§do use override§);
         this.§5214236382236395123423632234§.§override set switch§(this.§521423122782312291123423632234§.§static set catch§(),this.§521423122782312291123423632234§.§super for dynamic§(),§default class§.§if var switch§);
         this.§5214236382236395123423632234§.§5214232259232272123423632234§(this.§521423122782312291123423632234§.§static set catch§(),this.§521423122782312291123423632234§.§super for dynamic§());
         if(BattleUtils.isTurretAboveGround(this.§521423122782312291123423632234§.§break switch catch§(),§default class§))
         {
            this.§5214235630235643123423632234§(param1,§default class§);
         }
         else
         {
            this.§true catch final§(param1);
         }
      }
      
      private function §5214234166234179123423632234§(param1:Vector3, param2:Vector3, param3:Number) : Boolean
      {
         return getBattleRunner().getCollisionDetector().§set use for§(param1,param2,16,param3,null,§5214235622235635123423632234§);
      }
      
      public function deactivate() : void
      {
         getBattleRunner().removeLogicUnit(this);
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         if(this.enabled)
         {
            if(this.§5214238834238847123423632234§.§include finally use§() && param1 >= this.§52142392923942123423632234§)
            {
               _loc3_ = this.§5214238545238558123423632234§(param1);
               if(_loc3_ >= this.§5214237410237423123423632234§.§finally package for§)
               {
                  this.§521423125102312523123423632234§(param1,_loc3_);
               }
            }
         }
         this.§5214238834238847123423632234§.§5214233699233712123423632234§();
      }
      
      public function destroy() : void
      {
         this.§5214237410237423123423632234§ = null;
         this.§5214236382236395123423632234§ = null;
         this.§set const break§ = null;
         this.§set catch import§ = null;
         this.§5214238834238847123423632234§.destroy();
      }
      
      private function §5214235630235643123423632234§(param1:int, param2:§else const final§) : void
      {
         if(this.§5214234166234179123423632234§(param2.§521423100222310035123423632234§,param2.§5214239673239686123423632234§,this.§521423122782312291123423632234§.§use default§()))
         {
            §5214233716233729123423632234§.copy(param2.§5214239673239686123423632234§);
         }
         else
         {
            this.§set catch import§.§switch package with§(param2.§if var switch§,param2.§5214239673239686123423632234§,param2.§const switch for§,this.§521423122782312291123423632234§.§break switch catch§(),§5214233716233729123423632234§);
         }
         this.§finally use use§(param1,param2,§5214233716233729123423632234§);
      }
   }
}

class Utl
{
   
   private static const const_1379:Number = 458.3662361046586;
   
   private static const const_413:Number = 90;
   
   public function Utl()
   {
      super();
   }
   
   private static function f6f81250(param1:Number) : int
   {
      var _loc2_:Number = NaN;
      _loc2_ = 458.3662361046586;
      return Math.ceil(param1 * _loc2_);
   }
   
   public static function method_2700(param1:Number) : Number
   {
      return Math.min(458.3662361046586,1 / (2 * Math.atan(90 / (2 * param1))));
   }
}
