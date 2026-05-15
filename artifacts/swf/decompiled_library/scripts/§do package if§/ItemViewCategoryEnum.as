package §do package if§
{
   public class ItemViewCategoryEnum
   {
      
      public static const WEAPON:ItemViewCategoryEnum = new ItemViewCategoryEnum(0,"WEAPON");
      
      public static const ARMOR:ItemViewCategoryEnum = new ItemViewCategoryEnum(1,"ARMOR");
      
      public static const PAINT:ItemViewCategoryEnum = new ItemViewCategoryEnum(2,"PAINT");
      
      public static const INVENTORY:ItemViewCategoryEnum = new ItemViewCategoryEnum(3,"INVENTORY");
      
      public static const KIT:ItemViewCategoryEnum = new ItemViewCategoryEnum(4,"KIT");
      
      public static const SPECIAL:ItemViewCategoryEnum = new ItemViewCategoryEnum(5,"SPECIAL");
      
      public static const GIVEN_PRESENTS:ItemViewCategoryEnum = new ItemViewCategoryEnum(6,"GIVEN_PRESENTS");
      
      private var §521423125632312576123423632234§:int;
      
      private var §5214235906235919123423632234§:String;
      
      public function ItemViewCategoryEnum(param1:int, param2:String)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
         this.§5214235906235919123423632234§ = param2;
      }
      
      public function toString() : String
      {
         return "ItemViewCategoryEnum [" + this.§5214235906235919123423632234§ + "]";
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
      
      public function get name() : String
      {
         return this.§5214235906235919123423632234§;
      }
   }
}

