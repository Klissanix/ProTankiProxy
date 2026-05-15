package §521423112462311259123423632234§
{
   import §5214233059233072123423632234§.ItemProperty;
   import §5214237976237989123423632234§.§true const each§;
   import §5214238361238374123423632234§.§5214232328232341123423632234§;
   import §5214238361238374123423632234§.§import catch null§;
   import §5214238361238374123423632234§.§package package do§;
   import §5214238868238881123423632234§.§521423115072311520123423632234§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.battle.§dynamic switch break§;
   import flash.errors.IllegalOperationError;
   
   public class §5214234049234062123423632234§ extends BattleRunnerProvider implements §import catch null§, §package package do§, §dynamic switch break§
   {
      
      protected static const §var catch package§:§else const final§ = new §else const final§();
      
      private var enabled:Boolean;
      
      private var §try use include§:Boolean;
      
      private var §override var§:Boolean;
      
      private var §5214238834238847123423632234§:§true const each§;
      
      private var §521423122782312291123423632234§:§5214232328232341123423632234§;
      
      public function §5214234049234062123423632234§(param1:§521423115072311520123423632234§)
      {
         super();
         if(param1.§include catch switch§())
         {
            this.§5214238834238847123423632234§ = new §true const each§();
            this.§5214238834238847123423632234§.§throw finally catch§(this);
         }
         this.reset();
      }
      
      public function §5214233388233401123423632234§() : §5214232328232341123423632234§
      {
         return this.§521423122782312291123423632234§;
      }
      
      public function enable() : void
      {
         if(!this.enabled)
         {
            this.enabled = true;
            this.§try use include§ = this.§5214238834238847123423632234§.§class for final§();
            if(this.§try use include§)
            {
               if(this.§var switch use§())
               {
                  this.§native var include§(getBattleRunner().getPhysicsTime());
               }
            }
         }
      }
      
      public function reset() : void
      {
         this.§override var§ = false;
         this.§try use include§ = false;
      }
      
      protected function §5214238155238168123423632234§() : int
      {
         return §52142380523818123423632234§.getPhysicsTime();
      }
      
      public function deactivate() : void
      {
         this.disable(true);
      }
      
      protected function §native var include§(param1:int) : void
      {
         this.§override var§ = true;
      }
      
      public function destroy() : void
      {
         if(this.§5214238834238847123423632234§ != null)
         {
            this.§5214238834238847123423632234§.destroy();
            this.§521423122782312291123423632234§ = null;
            getBattleRunner().removeLogicUnit(this);
         }
      }
      
      public function §521423128582312871123423632234§() : ItemProperty
      {
         throw new IllegalOperationError();
      }
      
      public function §else package final§() : Boolean
      {
         return this.enabled;
      }
      
      public function getStatus() : Number
      {
         return 0;
      }
      
      public function §implements package native§() : void
      {
         if(this.enabled)
         {
            this.§try use include§ = true;
            if(this.§var switch use§())
            {
               this.§native var include§(getBattleRunner().getPhysicsTime());
            }
         }
      }
      
      public function activate() : void
      {
      }
      
      public function init(param1:§5214232328232341123423632234§) : void
      {
         this.§521423122782312291123423632234§ = param1;
         if(this.§5214238834238847123423632234§ != null)
         {
            this.§5214238834238847123423632234§.init();
            getBattleRunner().addLogicUnit(this);
         }
      }
      
      protected function §521423129602312973123423632234§(param1:int, param2:Boolean) : void
      {
         this.§override var§ = false;
      }
      
      public function §5214235337235350123423632234§() : void
      {
         if(this.enabled)
         {
            this.§try use include§ = false;
            this.§521423129602312973123423632234§(getBattleRunner().getPhysicsTime(),true);
         }
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         if(this.§else package final§() && this.§try use include§ && !this.§5214239485239498123423632234§() && this.§var switch use§())
         {
            this.§native var include§(param1);
         }
      }
      
      public function disable(param1:Boolean) : void
      {
         if(this.enabled)
         {
            if(this.§try use include§)
            {
               this.§try use include§ = false;
               this.§521423129602312973123423632234§(getBattleRunner().getPhysicsTime(),param1);
            }
            this.enabled = false;
         }
      }
      
      public function §5214239485239498123423632234§() : Boolean
      {
         return this.§else package final§() && this.§override var§;
      }
      
      protected function §var switch use§() : Boolean
      {
         return true;
      }
   }
}

