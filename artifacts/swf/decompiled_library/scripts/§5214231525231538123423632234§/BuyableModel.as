package §5214231525231538123423632234§
{
   import §5214231742231755123423632234§.§521423136452313658123423632234§;
   import §import const super§.§521423118942311907123423632234§;
   import §import const super§.BuyableModelBase;
   import platform.client.fp10.core.model.impl.Model;
   
   public class BuyableModel extends BuyableModelBase implements §521423118942311907123423632234§, §52142387523888123423632234§
   {
      
      public function BuyableModel()
      {
         super();
      }
      
      public function isBuyable() : Boolean
      {
         return getInitParam().§5214238280238293123423632234§;
      }
      
      public function getPrice() : int
      {
         var _loc1_:§521423136452313658123423632234§ = §521423136452313658123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423136452313658123423632234§));
         return _loc1_.applyDiscount(getInitParam().§5214235124235137123423632234§);
      }
      
      public function getPriceWithoutDiscount() : int
      {
         return getInitParam().§5214235124235137123423632234§;
      }
   }
}

