package §while catch continue§
{
   import §521423115932311606123423632234§.§with for default§;
   import alternativa.tanks.gui.CongratulationsWindowConfiscate;
   import alternativa.tanks.gui.CongratulationsWindowPresent;
   import alternativa.tanks.gui.§try var if§;
   import §function catch case§.§5214237377237390123423632234§;
   import §function catch case§.§true const dynamic§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   
   public class BonusImageShowingModel extends §5214237377237390123423632234§ implements §true const dynamic§, §5214235049235062123423632234§
   {
      
      public function BonusImageShowingModel()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:§try var if§ = null;
         var _loc2_:§with for default§ = §with for default§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§with for default§));
         if(_loc2_.getImage() == null)
         {
            _loc1_ = new CongratulationsWindowPresent(null,§switch var switch§().§5214233309233322123423632234§,_loc2_.getTopText(),_loc2_.getBottomText(),platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         }
         else
         {
            _loc1_ = new CongratulationsWindowConfiscate(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§,§switch var switch§().§5214233309233322123423632234§.data,_loc2_.getImage().data,_loc2_.getTopText(),_loc2_.getBottomText());
         }
         putData(§try var if§,_loc1_);
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:§try var if§ = §try var if§(getData(§try var if§));
         if(_loc1_)
         {
            _loc1_.destroy();
         }
      }
   }
}

