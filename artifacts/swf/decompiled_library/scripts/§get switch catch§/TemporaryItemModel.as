package §get switch catch§
{
   import §5214234798234811123423632234§.§521423114542311467123423632234§;
   import §5214234798234811123423632234§.TemporaryItemModelBase;
   import alternativa.tanks.service.temporaryitem.ITemporaryItemService;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class TemporaryItemModel extends TemporaryItemModelBase implements §521423114542311467123423632234§, §catch§, §5214235049235062123423632234§
   {
      
      public static var §5214232011232024123423632234§:ITemporaryItemService;
      
      public function TemporaryItemModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         var _loc1_:uint = getInitParam().remainingTimeInSec;
         if(_loc1_ > 0)
         {
            this.b4318fd4(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§,_loc1_);
         }
      }
      
      public function getTimeRemainingInMSec() : Number
      {
         return §5214232011232024123423632234§.getCurrentTimeRemainingMSec(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
      }
      
      private function b4318fd4(param1:§521423120252312038123423632234§, param2:uint) : void
      {
         §5214232011232024123423632234§.startItem(param1,param2);
      }
      
      public function startTiming(param1:int) : void
      {
         this.b4318fd4(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§,getInitParam().§function return§ + param1);
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function getStopDate() : Date
      {
         return new Date(new Date().getTime() + §5214232011232024123423632234§.getCurrentTimeRemainingMSec(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§));
      }
      
      public function objectUnloaded() : void
      {
         this.e170946c(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
      }
      
      private function e170946c(param1:§521423120252312038123423632234§) : void
      {
         §5214232011232024123423632234§.stopItem(param1);
      }
      
      public function objectUnloadedPost() : void
      {
      }
   }
}

