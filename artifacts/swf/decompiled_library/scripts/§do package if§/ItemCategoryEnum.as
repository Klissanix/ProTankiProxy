package §do package if§
{
   public class ItemCategoryEnum
   {
      
      public static const WEAPON:ItemCategoryEnum = new ItemCategoryEnum(0,"WEAPON");
      
      public static const ARMOR:ItemCategoryEnum = new ItemCategoryEnum(1,"ARMOR");
      
      public static const COLOR:ItemCategoryEnum = new ItemCategoryEnum(2,"COLOR");
      
      public static const INVENTORY:ItemCategoryEnum = new ItemCategoryEnum(3,"INVENTORY");
      
      public static const PLUGIN:ItemCategoryEnum = new ItemCategoryEnum(4,"PLUGIN");
      
      public static const KIT:ItemCategoryEnum = new ItemCategoryEnum(5,"KIT");
      
      public static const EMBLEM:ItemCategoryEnum = new ItemCategoryEnum(6,"EMBLEM");
      
      public static const PRESENT:ItemCategoryEnum = new ItemCategoryEnum(7,"PRESENT");
      
      public static const GIVEN_PRESENT:ItemCategoryEnum = new ItemCategoryEnum(8,"GIVEN_PRESENT");
      
      private var §521423125632312576123423632234§:int;
      
      private var §5214235906235919123423632234§:String;
      
      public function ItemCategoryEnum(param1:int, param2:String)
      {
         super();
         this.§521423125632312576123423632234§ = param1;
         this.§5214235906235919123423632234§ = param2;
      }
      
      public function get value() : int
      {
         return this.§521423125632312576123423632234§;
      }
      
      public function toString() : String
      {
         return "ItemCategoryEnum [" + this.§5214235906235919123423632234§ + "]";
      }
      
      public function get name() : String
      {
         return this.§5214235906235919123423632234§;
      }
   }
}

