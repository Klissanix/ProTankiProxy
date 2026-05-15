package §521423100272310040123423632234§
{
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §in catch throw§.ProBattleModelBase;
   import §in catch throw§.§try return§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   
   public class ProBattleInfoModel extends ProBattleModelBase implements §try return§, §5214236663236676123423632234§, §5214235049235062123423632234§
   {
      
      public static var §while set function§:IBattleInfoFormService;
      
      public function ProBattleInfoModel()
      {
         super();
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function getEnterPrice() : int
      {
         return getInitParam().proBattleEnterPrice;
      }
      
      private function f30fdadd(param1:TimerEvent) : void
      {
         var _loc2_:Timer = null;
         var _loc3_:int = (getTimer() - int(getData(int))) / 1000;
         if(_loc3_ > this.getTimeLeftInSec())
         {
            _loc2_ = Timer(getData(Timer));
            _loc2_.removeEventListener("timer",getFunctionWrapper(this.f30fdadd));
            _loc2_.stop();
            §while set function§.method_526();
         }
      }
      
      public function getTimeLeftInSec() : int
      {
         if(getInitParam() == null)
         {
            return 0;
         }
         return getInitParam().timeLeftInSec;
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:Timer = null;
         var _loc2_:int = this.getTimeLeftInSec();
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:Timer = null;
         var _loc2_:int = this.getTimeLeftInSec();
      }
      
      public function objectLoaded() : void
      {
      }
   }
}

