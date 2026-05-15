package §include const override§
{
   import §continue for super§.§521423137872313800123423632234§;
   import §continue for super§.CountableItemModelBase;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   
   public class CountableItemModel extends CountableItemModelBase implements §521423137872313800123423632234§, §super set do§, §5214235049235062123423632234§
   {
      
      public function CountableItemModel()
      {
         super();
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectLoaded() : void
      {
         putData(CountableItemModel,getInitParam().count);
      }
      
      public function getCount() : int
      {
         return int(getData(CountableItemModel));
      }
      
      public function setCount(param1:int) : void
      {
         putData(CountableItemModel,param1);
      }
   }
}

