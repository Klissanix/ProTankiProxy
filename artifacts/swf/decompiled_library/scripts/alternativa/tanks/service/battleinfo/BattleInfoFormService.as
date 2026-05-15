package alternativa.tanks.service.battleinfo
{
   import alternativa.osgi.service.display.IDisplay;
   import §do catch var§.§5214231736231749123423632234§;
   import §do catch var§.§5214232866232879123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   import §final for if§.§5214231167231180123423632234§;
   import §final for if§.§521423137772313790123423632234§;
   import flash.events.EventDispatcher;
   import §import use import§.§5214236237236250123423632234§;
   import §import use import§.§function for with§;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import §throw switch catch§.§52142320023213123423632234§;
   import §throw switch catch§.§5214237536237549123423632234§;
   
   public class BattleInfoFormService extends EventDispatcher implements IBattleInfoFormService
   {
      
      public static var display:IDisplay;
      
      private var §52142369223705123423632234§:§5214232866232879123423632234§;
      
      private var §function package if§:§5214231736231749123423632234§;
      
      private var §5214231446231459123423632234§:Boolean;
      
      private var §case package§:Boolean;
      
      public function BattleInfoFormService()
      {
         super();
      }
      
      public function showTeamForm(param1:§function for with§) : void
      {
         if(this.§function package if§ == null)
         {
            this.§function package if§ = new §5214231736231749123423632234§(new §5214236237236250123423632234§(display,new §521423137772313790123423632234§()));
            this.§function package if§.addEventListener("BattleInfoViewEvent.ENTER_TEAM",this.b2bd64ce);
            this.§function package if§.addEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.f4ed4e2e);
         }
         this.hideForms();
         this.§case package§ = true;
         this.§function package if§.§5214236047236060123423632234§(param1);
      }
      
      public function updateUserScore(param1:String, param2:int) : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§5214231207231220123423632234§(param1,param2);
         }
         if(this.§case package§)
         {
            this.§function package if§.§5214231207231220123423632234§(param1,param2);
         }
      }
      
      private function b3298879() : void
      {
         if(this.§case package§)
         {
            this.§case package§ = false;
            this.§function package if§.§true for override§();
         }
      }
      
      public function updateTeamScore(param1:§5214231658231671123423632234§, param2:int) : void
      {
         if(this.§case package§)
         {
            this.§function package if§.§case package return§(param1,param2);
         }
      }
      
      public function updateName(param1:String) : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§521423127802312793123423632234§(param1);
         }
         if(this.§case package§)
         {
            this.§function package if§.§521423127802312793123423632234§(param1);
         }
      }
      
      public function swapTeams() : void
      {
         if(this.§case package§)
         {
            this.§function package if§.§static for in§();
         }
      }
      
      public function roundStart() : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§in set return§();
         }
         if(this.§case package§)
         {
            this.§function package if§.§in set return§();
         }
      }
      
      public function showLastShowedForm() : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§continue for do§();
         }
         if(this.§case package§)
         {
            this.§function package if§.§continue for do§();
         }
      }
      
      private function f4ed4e2e(param1:§5214231167231180123423632234§) : void
      {
         dispatchEvent(param1.clone());
      }
      
      public function roundFinish() : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§implements package super§();
         }
         if(this.§case package§)
         {
            this.§function package if§.§implements package super§();
         }
      }
      
      public function addUserTeam(param1:BattleInfoUser, param2:§5214231658231671123423632234§) : void
      {
         if(this.§case package§)
         {
            this.§function package if§.§const switch case§(param1,param2);
         }
      }
      
      public function method_1542(param1:BattleInfoUser) : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§super catch use§(param1);
         }
      }
      
      public function method_526() : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§52142369923712123423632234§();
         }
         if(this.§case package§)
         {
            this.§function package if§.§52142369923712123423632234§();
         }
      }
      
      public function battleStop() : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§5214233506233519123423632234§();
         }
         if(this.§case package§)
         {
            this.§function package if§.§5214233506233519123423632234§();
         }
      }
      
      public function showDmForm(param1:§5214237536237549123423632234§) : void
      {
         if(this.§52142369223705123423632234§ == null)
         {
            this.§52142369223705123423632234§ = new §5214232866232879123423632234§(new §52142320023213123423632234§(display,new §521423137772313790123423632234§()));
            this.§52142369223705123423632234§.addEventListener("BattleInfoViewEvent.ENTER_DM",this.c5d9ea9d);
            this.§52142369223705123423632234§.addEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.f4ed4e2e);
         }
         this.hideForms();
         this.§5214231446231459123423632234§ = true;
         this.§52142369223705123423632234§.§5214236047236060123423632234§(param1);
      }
      
      public function removeFormFromStage() : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§521423133982313411123423632234§();
         }
         if(this.§case package§)
         {
            this.§function package if§.§521423133982313411123423632234§();
         }
      }
      
      private function c5d9ea9d(param1:§5214231167231180123423632234§) : void
      {
         dispatchEvent(param1.clone());
      }
      
      public function getBattleItemId() : String
      {
         if(this.§5214231446231459123423632234§)
         {
            return this.§52142369223705123423632234§.§import use static§();
         }
         if(this.§case package§)
         {
            return this.§function package if§.§import use static§();
         }
         return null;
      }
      
      public function destroy() : void
      {
         if(this.§52142369223705123423632234§ != null)
         {
            this.§52142369223705123423632234§.removeEventListener("BattleInfoViewEvent.ENTER_DM",this.c5d9ea9d);
            this.§52142369223705123423632234§.removeEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.f4ed4e2e);
            this.§52142369223705123423632234§.destroy();
            this.§52142369223705123423632234§ = null;
            this.§5214231446231459123423632234§ = false;
         }
         if(this.§function package if§ != null)
         {
            this.§function package if§.removeEventListener("BattleInfoViewEvent.ENTER_TEAM",this.b2bd64ce);
            this.§function package if§.removeEventListener("BattleInfoViewEvent.ENTER_SPECTATOR",this.f4ed4e2e);
            this.§function package if§.destroy();
            this.§function package if§ = null;
            this.§case package§ = false;
         }
      }
      
      public function updateUserSuspiciousState(param1:String, param2:Boolean) : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§try set each§(param1,param2);
         }
         if(this.§case package§)
         {
            this.§function package if§.§try set each§(param1,param2);
         }
      }
      
      private function c353fd9e() : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§5214231446231459123423632234§ = false;
            this.§52142369223705123423632234§.§true for override§();
         }
      }
      
      public function hideForms() : void
      {
         this.c353fd9e();
         this.b3298879();
      }
      
      public function removeUser(param1:String) : void
      {
         if(this.§5214231446231459123423632234§)
         {
            this.§52142369223705123423632234§.§default catch super§(param1);
         }
         if(this.§case package§)
         {
            this.§function package if§.§default catch super§(param1);
         }
      }
      
      private function b2bd64ce(param1:§5214231167231180123423632234§) : void
      {
         dispatchEvent(param1.clone());
      }
   }
}

