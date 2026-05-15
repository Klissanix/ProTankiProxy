package alternativa.tanks.models.battle.battlefield
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleRunner;
   import alternativa.tanks.battle.BattleRunnerProvider;
   import alternativa.tanks.battle.§dynamic switch break§;
   import flash.display.Stage;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class StageFrameRateController extends BattleRunnerProvider implements §dynamic switch break§
   {
      
      public static var display:IDisplay;
      
      private static const §finally const for§:Number = 60;
      
      private static const §final switch extends§:Number = 40;
      
      private static const §521423127612312774123423632234§:int = 10;
      
      private static const §return var default§:int = 30;
      
      private var stage:Stage;
      
      private var §52142332823341123423632234§:TimeStatistics;
      
      private var §function get§:int;
      
      private var §521423128052312818123423632234§:int;
      
      private var §521423133642313377123423632234§:Number;
      
      private var §class use true§:String;
      
      private var §5214233607233620123423632234§:Boolean;
      
      public function StageFrameRateController(param1:Stage, param2:BattleRunner, param3:TimeStatistics, param4:int)
      {
         super();
         this.stage = param1;
         this.§52142332823341123423632234§ = param3;
         this.a64310bc();
         this.setMaxFrameRate(param4);
         this.d1e8a327();
      }
      
      private function b57830f0() : void
      {
         if(this.§5214233607233620123423632234§)
         {
            getBattleRunner().removeLogicUnit(this);
            this.§5214233607233620123423632234§ = false;
            this.stage.frameRate = this.§function get§;
         }
      }
      
      private function a64310bc() : void
      {
         this.§521423133642313377123423632234§ = this.stage.frameRate;
         this.§class use true§ = this.stage.quality;
      }
      
      public function restoreStageParams() : void
      {
         this.stage.frameRate = this.§521423133642313377123423632234§;
         this.stage.quality = this.§class use true§;
      }
      
      public function runLogic(param1:int, param2:int) : void
      {
         if(++this.§521423128052312818123423632234§ == 30)
         {
            this.§521423128052312818123423632234§ = 0;
            if(this.aef01fd())
            {
               this.c3a049d9();
            }
            else
            {
               this.f2ca5530();
            }
         }
      }
      
      public function setAdaptiveFrameRate(param1:Boolean) : void
      {
         if(param1)
         {
            this.f5be65a2();
         }
         else
         {
            this.b57830f0();
         }
      }
      
      private function f5be65a2() : void
      {
         if(!this.§5214233607233620123423632234§)
         {
            getBattleRunner().addLogicUnit(this);
            this.§5214233607233620123423632234§ = true;
         }
      }
      
      private function aef01fd() : Boolean
      {
         return this.§52142332823341123423632234§.fps < display.stage.frameRate - 1;
      }
      
      private function c3a049d9() : void
      {
         display.stage.frameRate = this.§52142332823341123423632234§.fps < 10 ? 10 : this.§52142332823341123423632234§.fps;
      }
      
      private function f2ca5530() : void
      {
         var _loc1_:Number = display.stage.frameRate + 1;
         display.stage.frameRate = _loc1_ > this.§function get§ ? this.§function get§ : _loc1_;
      }
      
      private function d1e8a327() : void
      {
         this.stage.frameRate = this.§function get§;
         var _loc1_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            this.stage.quality = "medium";
         }
         else
         {
            this.stage.quality = "low";
         }
      }
      
      public function setMaxFrameRate(param1:int = -1) : void
      {
         var _loc2_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§)
         {
            if(param1 != -1)
            {
               this.stage.frameRate = param1;
               this.§function get§ = param1;
            }
            else
            {
               this.§function get§ = 60;
            }
         }
         else
         {
            this.§function get§ = 40;
         }
      }
   }
}

