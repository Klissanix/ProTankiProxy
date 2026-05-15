package §else const import§
{
   import filters.Filters;
   
   public class StatisticsListUserLabel extends BattleChatUserLabel
   {
      
      public function StatisticsListUserLabel(param1:String)
      {
         super(param1,false);
      }
      
      override protected function getShadowFiltersOnOver() : Array
      {
         return Filters.§include set each§;
      }
      
      override protected function createAdditionalIcons() : void
      {
      }
      
      override protected function getShadowFilters() : Array
      {
         return null;
      }
      
      override protected function getAdditionalIconsWidth() : Number
      {
         return 0;
      }
   }
}

