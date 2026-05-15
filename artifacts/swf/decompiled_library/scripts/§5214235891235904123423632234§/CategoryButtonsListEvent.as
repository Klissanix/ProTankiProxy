package §5214235891235904123423632234§
{
   import §do package if§.ItemViewCategoryEnum;
   import flash.events.Event;
   
   public class CategoryButtonsListEvent extends Event
   {
      
      public static const §false for continue§:String = "CategoryButtonsListEvent:CategorySelected";
      
      private var category:ItemViewCategoryEnum;
      
      public function CategoryButtonsListEvent(param1:String, param2:ItemViewCategoryEnum)
      {
         super(param1);
         this.category = param2;
      }
      
      public function getCategory() : ItemViewCategoryEnum
      {
         return this.category;
      }
   }
}

