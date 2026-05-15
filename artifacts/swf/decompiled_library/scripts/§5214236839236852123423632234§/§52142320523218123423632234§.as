package §5214236839236852123423632234§
{
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.osgi.OSGi;
   import §break use catch§.§extends package import§;
   import §catch package dynamic§.RankUpSupplyBonusModel;
   import §default catch do§.§521423139952314008123423632234§;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import §super package break§.§5214235534235547123423632234§;
   
   public class §52142320523218123423632234§ extends §521423139952314008123423632234§
   {
      
      private var §final set const§:RankUpSupplyBonusModel;
      
      public function §52142320523218123423632234§()
      {
         super();
         this.§throw var override§ = 66;
         this.§final set const§ = RankUpSupplyBonusModel(§native switch include§.getModel(Long.getLong(-654350160,-1306873246)));
      }
      
      private function §5214235602235615123423632234§(param1:§52142376923782123423632234§) : void
      {
         var _loc6_:§5214235534235547123423632234§ = null;
         var _loc4_:ResourceRegistry = ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry));
         var _loc3_:Object = JSON.parse(param1.§5214239792239805123423632234§);
         var _loc5_:Vector.<§5214235534235547123423632234§> = new Vector.<§5214235534235547123423632234§>();
         for each(var _loc2_ in _loc3_.items)
         {
            _loc6_ = new §5214235534235547123423632234§();
            _loc6_.§5214237362237375123423632234§ = _loc2_.count;
            _loc6_.text = _loc2_.text;
            _loc6_.§5214233998234011123423632234§ = §include catch with§(_loc4_.getResource(Long.fromInt(_loc2_.preview)));
            _loc5_[_loc5_.length] = _loc6_;
         }
         this.§final set const§.showRankUpSupplyBonusAlerts(_loc5_);
      }
      
      override public function §static package return§(param1:§extends package import§) : void
      {
         switch(param1.§else try§() - -1709511848)
         {
            case 0:
               this.§5214235602235615123423632234§(param1 as §52142376923782123423632234§);
         }
      }
   }
}

