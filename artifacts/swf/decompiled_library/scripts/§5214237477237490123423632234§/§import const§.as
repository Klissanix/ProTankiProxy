package §5214237477237490123423632234§
{
   import §5214233132233145123423632234§.§extends catch switch§;
   import §5214237976237989123423632234§.§true const each§;
   import §5214238361238374123423632234§.§5214232328232341123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238868238881123423632234§.§521423119532311966123423632234§;
   import §5214238868238881123423632234§.§const package override§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.§dynamic switch break§;
   import §each var null§.§const throw§;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import §finally catch with§.§throw for continue§;
   import flash.utils.getTimer;
   
   public class §import const§ extends BattleRunnerProvider implements §import catch null§, §dynamic switch break§
   {
      
      private static const §5214233452233465123423632234§:§else const final§ = new §else const final§();
      
      private static const §5214237349237362123423632234§:§521423119532311966123423632234§ = new §521423119532311966123423632234§();
      
      private var §5214238834238847123423632234§:§true const each§;
      
      private var §set catch import§:§extends catch switch§;
      
      private var §52142397323986123423632234§:§native switch false§ = new §5214235507235520123423632234§();
      
      private var §5214231517231530123423632234§:§const package override§;
      
      private var §do set var§:Number;
      
      private var §true for§:§native switch false§ = new §5214235507235520123423632234§();
      
      private var §5214236382236395123423632234§:§521423123582312371123423632234§;
      
      private var §set const break§:§use finally var§;
      
      private var §521423122782312291123423632234§:§5214232328232341123423632234§;
      
      private var enabled:Boolean;
      
      private var §while set get§:§native switch false§ = new §5214235507235520123423632234§();
      
      private var §package for if§:Boolean;
      
      public function §import const§(param1:§extends catch switch§, param2:§true const each§, param3:int, param4:§const package override§, param5:Number, param6:int, param7:§521423123582312371123423632234§, param8:§use finally var§)
      {
         super();
         this.§set catch import§ = param1;
         this.§5214238834238847123423632234§ = param2;
         this.§52142397323986123423632234§.§5214231491231504123423632234§(param3);
         this.§5214231517231530123423632234§ = param4;
         this.§do set var§ = param5;
         this.§true for§.§5214231491231504123423632234§(param6);
         this.§5214236382236395123423632234§ = param7;
         this.§set const break§ = param8;
      }
      
      private function §5214237630237643123423632234§(param1:§dynamic var true§) : void
      {
         var _loc2_:§const throw§ = null;
         var _loc4_:§5214239411239424123423632234§ = null;
         var _loc5_:Number = 1;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§do catch extends§.length)
         {
            _loc2_ = param1.§do catch extends§[_loc3_];
            _loc4_ = _loc2_.§521423122212312234123423632234§;
            _loc4_.§5214239340239353123423632234§(param1.§return const static§[_loc3_],param1.§5214233716233729123423632234§,this.§5214231517231530123423632234§.§5214231830231843123423632234§() * _loc5_);
            _loc5_ *= this.§do set var§;
            _loc3_++;
         }
      }
      
      public function reset() : void
      {
         this.enabled = false;
         this.§5214236382236395123423632234§.§set set do§();
         this.§while set get§.§5214231491231504123423632234§(0);
         this.§package for if§ = false;
      }
      
      public function activate() : void
      {
         getBattleRunner().addLogicUnit(this);
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
         if(this.§package for if§)
         {
            return §throw for continue§.§52142393423947123423632234§((this.§while set get§.§521423128592312872123423632234§() - getTimer()) / this.§true for§.§521423128592312872123423632234§(),0,1);
         }
         return §throw for continue§.§52142393423947123423632234§(1 - (this.§while set get§.§521423128592312872123423632234§() - getTimer()) / this.§52142397323986123423632234§.§521423128592312872123423632234§(),0,1);
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         if(this.§package for if§)
         {
            if(param1 >= this.§while set get§.§521423128592312872123423632234§())
            {
               this.§521423125102312523123423632234§(param1);
            }
         }
         else if(this.enabled)
         {
            if(param1 >= this.§while set get§.§521423128592312872123423632234§() && this.§5214238834238847123423632234§.§include finally use§())
            {
               this.§521423103342310347123423632234§(param1);
            }
         }
         this.§5214238834238847123423632234§.§5214233699233712123423632234§();
      }
      
      public function destroy() : void
      {
         this.deactivate();
         this.§5214236382236395123423632234§.§set set do§();
         this.§5214238834238847123423632234§.destroy();
         this.§5214238834238847123423632234§ = null;
         this.§5214236382236395123423632234§ = null;
         this.§5214231517231530123423632234§ = null;
         this.§set catch import§ = null;
         this.§set const break§ = null;
      }
      
      private function §521423103342310347123423632234§(param1:int) : void
      {
         this.§package for if§ = true;
         this.§while set get§.§5214231491231504123423632234§(param1 + this.§true for§.§521423128592312872123423632234§());
         this.§5214236382236395123423632234§.§521423125582312571123423632234§(this.§521423122782312291123423632234§.§super for dynamic§(),this.§521423122782312291123423632234§.§static set catch§(),this.§true for§.§521423128592312872123423632234§());
         this.§521423122782312291123423632234§.§import catch static§(§5214237349237362123423632234§);
         this.§5214236382236395123423632234§.§null const extends§(§5214237349237362123423632234§.§if var switch§);
         this.§set const break§.§5214234982234995123423632234§(param1);
      }
      
      private function §catch catch catch§(param1:§dynamic var true§, param2:§else const final§) : void
      {
         var _loc3_:Vector3 = param1.§5214232158232171123423632234§();
         if(_loc3_ == null && param1.§do catch extends§.length > 0)
         {
            _loc3_ = §const switch extends§.§5214234051234064123423632234§(param2.§521423100222310035123423632234§,param1.§5214233716233729123423632234§);
         }
         this.§5214236382236395123423632234§.§5214238282238295123423632234§(param2.§if var switch§,_loc3_,param2.§5214239673239686123423632234§);
         this.§5214236382236395123423632234§.§5214234972234985123423632234§(param2.§521423100222310035123423632234§,param1.§5214232158232171123423632234§());
         if(_loc3_ != null)
         {
            if(param1.§use switch return§)
            {
               this.§5214236382236395123423632234§.§override const true§(param2.§if var switch§,param1.§null for catch§,param1.§5214232437232450123423632234§);
            }
            if(param1.§do catch extends§.length > 0)
            {
               this.§5214236382236395123423632234§.§5214235560235573123423632234§(param2.§if var switch§,_loc3_,param1.§return const static§,param1.§do catch extends§);
            }
         }
      }
      
      private function §521423125102312523123423632234§(param1:int) : void
      {
         var _loc2_:§dynamic var true§ = null;
         this.§package for if§ = false;
         this.§while set get§.§5214231491231504123423632234§(param1 + this.§52142397323986123423632234§.§521423128592312872123423632234§());
         this.§521423122782312291123423632234§.§52142371223725123423632234§(§5214233452233465123423632234§);
         this.§521423122782312291123423632234§.§break switch catch§().§521423492362123423632234§(§5214233452233465123423632234§.§if var switch§,§5214233452233465123423632234§.§5214239673239686123423632234§,-this.§5214231517231530123423632234§.§import finally const§());
         this.§521423122782312291123423632234§.§get use extends§();
         if(BattleUtils.isTurretAboveGround(this.§521423122782312291123423632234§.§break switch catch§(),§5214233452233465123423632234§))
         {
            _loc2_ = new §dynamic var true§();
            _loc2_.§5214237810237823123423632234§(this.§set catch import§.§5214235960235973123423632234§(§5214233452233465123423632234§));
            if(_loc2_.§return const static§.length > 0)
            {
               this.§5214237630237643123423632234§(_loc2_);
            }
            this.§catch catch catch§(_loc2_,§5214233452233465123423632234§);
            this.§set const break§.§5214234994235007123423632234§(param1,_loc2_.§5214232158232171123423632234§(),_loc2_.§do catch extends§,_loc2_.§return const static§);
         }
         else
         {
            this.§set const break§.§5214236238236251123423632234§(param1);
         }
      }
      
      public function deactivate() : void
      {
         getBattleRunner().removeLogicUnit(this);
      }
      
      public function disable(param1:Boolean) : void
      {
         if(this.enabled)
         {
            this.enabled = false;
            this.§5214236382236395123423632234§.§set set do§();
         }
      }
      
      public function init(param1:§5214232328232341123423632234§) : void
      {
         this.§521423122782312291123423632234§ = param1;
         this.§5214238834238847123423632234§.init();
      }
   }
}

