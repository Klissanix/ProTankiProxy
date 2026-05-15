package §5214237739237752123423632234§
{
   import §5214233132233145123423632234§.§5214237484237497123423632234§;
   import §5214233132233145123423632234§.§extends catch switch§;
   import §5214237976237989123423632234§.§true const each§;
   import §5214238361238374123423632234§.§5214232328232341123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238868238881123423632234§.§const package override§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.§dynamic switch break§;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import flash.utils.getTimer;
   import §for const do§.§get var get§;
   import §set package each§.§5214237646237659123423632234§;
   
   public class §const const import§ extends BattleRunnerProvider implements §import catch null§, §dynamic switch break§
   {
      
      private static const §var catch package§:§else const final§ = new §else const final§();
      
      private var enabled:Boolean;
      
      private var §52142397323986123423632234§:§native switch false§ = new §5214235507235520123423632234§();
      
      private var §while set get§:§native switch false§ = new §5214235507235520123423632234§();
      
      private var §5214231517231530123423632234§:§const package override§;
      
      private var §5214238834238847123423632234§:§true const each§;
      
      private var §set catch import§:§extends catch switch§;
      
      private var §521423122782312291123423632234§:§5214232328232341123423632234§;
      
      private var §dynamic package const§:§5214237646237659123423632234§;
      
      private var §set const break§:§521423112472311260123423632234§;
      
      private var §5214236382236395123423632234§:§5214235412235425123423632234§;
      
      public function §const const import§(param1:int, param2:§const package override§, param3:§extends catch switch§, param4:§5214237646237659123423632234§, param5:§5214235412235425123423632234§, param6:§521423112472311260123423632234§, param7:§true const each§)
      {
         super();
         this.§52142397323986123423632234§.§5214231491231504123423632234§(param1);
         this.§5214231517231530123423632234§ = param2;
         this.§set catch import§ = param3;
         this.§dynamic package const§ = param4;
         this.§5214236382236395123423632234§ = param5;
         this.§set const break§ = param6;
         this.§5214238834238847123423632234§ = param7;
      }
      
      public function init(param1:§5214232328232341123423632234§) : void
      {
         this.§521423122782312291123423632234§ = param1;
         this.§5214238834238847123423632234§.init();
         this.reset();
      }
      
      public function deactivate() : void
      {
         getBattleRunner().removeLogicUnit(this);
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         if(this.§5214238834238847123423632234§.§include finally use§())
         {
            if(this.enabled && param1 >= this.§while set get§.§521423128592312872123423632234§())
            {
               this.§521423125102312523123423632234§(param1);
            }
            this.§5214238834238847123423632234§.§5214233699233712123423632234§();
         }
      }
      
      private function §521423126032312616123423632234§(param1:§else const final§, param2:§get var get§) : Boolean
      {
         var _loc3_:§5214237484237497123423632234§ = this.§set catch import§.§5214235960235973123423632234§(param1);
         param2.§if set finally§(param1,_loc3_);
         return _loc3_.§use for if§();
      }
      
      public function §5214238646238659123423632234§(param1:Vector3) : void
      {
         this.§5214236382236395123423632234§.§5214235663235676123423632234§(param1);
      }
      
      public function enable() : void
      {
         this.enabled = true;
         this.§5214238834238847123423632234§.§5214233699233712123423632234§();
      }
      
      public function disable(param1:Boolean) : void
      {
         this.enabled = false;
      }
      
      public function reset() : void
      {
         this.§while set get§.§5214231491231504123423632234§(getTimer());
      }
      
      public function activate() : void
      {
         getBattleRunner().addLogicUnit(this);
      }
      
      public function getStatus() : Number
      {
         var _loc1_:Number = 1 - (this.§while set get§.§521423128592312872123423632234§() - getTimer()) / this.§52142397323986123423632234§.§521423128592312872123423632234§();
         return _loc1_ > 1 ? 1 : _loc1_;
      }
      
      private function §521423125102312523123423632234§(param1:int) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:§5214239411239424123423632234§ = null;
         this.§while set get§.§5214231491231504123423632234§(param1 + this.§52142397323986123423632234§.§521423128592312872123423632234§());
         this.§521423122782312291123423632234§.§52142371223725123423632234§(§var catch package§);
         this.§521423122782312291123423632234§.§break switch catch§().§521423492362123423632234§(§var catch package§.§521423100222310035123423632234§,§var catch package§.§5214239673239686123423632234§,-this.§5214231517231530123423632234§.§import finally const§());
         this.§521423122782312291123423632234§.§get use extends§();
         this.§5214236382236395123423632234§.§override set switch§(this.§521423122782312291123423632234§.§super for dynamic§(),this.§521423122782312291123423632234§.§static set catch§());
         var _loc4_:§get var get§ = new §get var get§();
         if(BattleUtils.isTurretAboveGround(this.§521423122782312291123423632234§.§break switch catch§(),§var catch package§) && this.§521423126032312616123423632234§(§var catch package§,_loc4_))
         {
            this.§5214236382236395123423632234§.§try use get§(_loc4_.§dynamic final§);
            if(BattleUtils.isTankBody(_loc4_.§5214232783232796123423632234§))
            {
               _loc2_ = _loc4_.§5214232783232796123423632234§.§521423122212312234123423632234§;
               _loc3_ = this.§dynamic package const§.§521423126342312647123423632234§(_loc4_.§extends catch function§);
               _loc2_.§5214239340239353123423632234§(_loc4_.§dynamic final§,_loc4_.§5214239673239686123423632234§,this.§5214231517231530123423632234§.§5214231830231843123423632234§() * _loc3_);
               this.§set const break§.§true var case§(param1,_loc4_.§dynamic final§,_loc4_.§5214232783232796123423632234§);
            }
            else
            {
               this.§5214236382236395123423632234§.§set finally for§(§var catch package§.§521423100222310035123423632234§,_loc4_.§dynamic final§);
               this.§set const break§.§var const implements§(param1,_loc4_.§dynamic final§);
            }
         }
         else
         {
            this.§set const break§.§5214234994235007123423632234§(param1);
         }
      }
      
      public function destroy() : void
      {
         this.§5214231517231530123423632234§ = null;
         this.§set catch import§ = null;
         this.§dynamic package const§ = null;
         this.§5214236382236395123423632234§ = null;
         this.§set const break§ = null;
         this.§5214238834238847123423632234§.destroy();
         this.§5214238834238847123423632234§ = null;
      }
   }
}

