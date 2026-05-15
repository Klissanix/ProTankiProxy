package §521423114822311495123423632234§
{
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214233059233072123423632234§.ItemGaragePropertyData;
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   
   public class ItemGaragePropertyValue implements §for use use§
   {
      
      private var §521423130392313052123423632234§:ItemGaragePropertyData;
      
      public function ItemGaragePropertyValue(param1:ItemGaragePropertyData)
      {
         super();
         this.§521423130392313052123423632234§ = param1;
      }
      
      public function getProperty() : ItemGarageProperty
      {
         return this.§521423130392313052123423632234§.property;
      }
      
      public function isUpgradable() : Boolean
      {
         return false;
      }
      
      public function getUpgradableValue() : UpgradableItemPropertyValue
      {
         return null;
      }
      
      public function getValue() : String
      {
         return this.§521423130392313052123423632234§.value;
      }
   }
}

