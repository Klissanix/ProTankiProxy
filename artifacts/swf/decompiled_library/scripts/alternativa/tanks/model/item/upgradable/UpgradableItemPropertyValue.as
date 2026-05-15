package alternativa.tanks.model.item.upgradable
{
   import §521423111432311156123423632234§.§5214237017237030123423632234§;
   import §521423111432311156123423632234§.GaragePropertyCalculator;
   import §521423111432311156123423632234§.RangePropertyCalculator;
   import §521423111432311156123423632234§.UpgradeLinearCalculator;
   import §521423114822311495123423632234§.§for use use§;
   import §5214233059233072123423632234§.ItemGarageProperty;
   import §5214233059233072123423632234§.ItemProperty;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParams;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.tanks.service.itempropertyparams.UpgradeAggregationMode;
   import §true finally§.GaragePropertyData;
   import §true finally§.PropertyData;
   
   public class UpgradableItemPropertyValue implements §for use use§
   {
      
      public static var §native throw§:ItemPropertyParamsService;
      
      private static const §5214236599236612123423632234§:Number = 0.75;
      
      private var data:GaragePropertyData;
      
      private var §521423138502313863123423632234§:UpgradeLinearCalculator;
      
      private var §extends in§:UpgradeLinearCalculator;
      
      private var §5214239533239546123423632234§:§5214237017237030123423632234§;
      
      private var §5214235640235653123423632234§:Boolean;
      
      public function UpgradableItemPropertyValue(param1:GaragePropertyData, param2:Boolean)
      {
         var _loc7_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         super();
         var _loc8_:ItemPropertyParams = null;
         var _loc9_:PropertyData = null;
         var _loc6_:Vector.<GaragePropertyCalculator> = null;
         this.data = param1;
         this.§521423138502313863123423632234§ = new UpgradeLinearCalculator(param1.§5214239339239352123423632234§);
         this.§extends in§ = new UpgradeLinearCalculator(param1.§5214232525232538123423632234§);
         this.§5214235640235653123423632234§ = param2;
         _loc8_ = §native throw§.getParams(param1.property);
         var _loc3_:Vector.<ItemProperty> = _loc8_.getProperties();
         switch(_loc8_.getAggregationMode())
         {
            case UpgradeAggregationMode.§switch set return§:
               _loc6_ = new Vector.<GaragePropertyCalculator>();
               for each(_loc9_ in param1.properties)
               {
                  if(_loc3_.indexOf(_loc9_.property) != -1)
                  {
                     _loc6_.push(new GaragePropertyCalculator(_loc9_.§null null§,_loc9_.§try const class§,this.data.§true do§));
                  }
               }
               if(_loc6_.length != 2)
               {
                  throw new Error("Unexpected number subproperties: property=" + this.data.property + ";valueCalculators=" + _loc6_);
               }
               this.§5214239533239546123423632234§ = new RangePropertyCalculator(_loc6_[0],_loc6_[1]);
               break;
            case UpgradeAggregationMode.§null catch true§:
               _loc7_ = 0;
               _loc4_ = 0;
               for each(_loc9_ in param1.properties)
               {
                  if(_loc3_.indexOf(_loc9_.property) != -1)
                  {
                     _loc7_ += _loc9_.§null null§;
                     _loc4_ += _loc9_.§try const class§;
                  }
               }
               _loc5_ = _loc8_.getMultiplier();
               _loc7_ *= _loc5_;
               _loc4_ *= _loc5_;
               if(_loc5_ == 100)
               {
                  _loc7_ = _loc4_ = Math.round(_loc7_);
               }
               this.§5214239533239546123423632234§ = new GaragePropertyCalculator(_loc7_,_loc4_,this.data.§true do§);
         }
      }
      
      public function getLevel() : int
      {
         return this.data.§521423110412311054123423632234§;
      }
      
      private function c756780(param1:int, param2:int) : int
      {
         return param1 * (100 - param2) * 0.01 + 0.001;
      }
      
      public function isUpgradable() : Boolean
      {
         return true;
      }
      
      public function getDelta() : String
      {
         return this.§5214239533239546123423632234§.getDelta(this.data.§521423110412311054123423632234§);
      }
      
      private function a49cab0c() : int
      {
         return this.§extends in§.calculate(this.data.§521423110412311054123423632234§);
      }
      
      public function getMaxLevel() : int
      {
         return this.data.§true do§;
      }
      
      public function traceUpgrades() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.getMaxLevel())
         {
            _loc1_ = this.§extends in§.calculate(_loc2_);
            _loc2_++;
         }
      }
      
      public function getTimeInSeconds() : int
      {
         return this.c756780(this.a49cab0c() * 60,this.data.§5214231305231318123423632234§);
      }
      
      public function getCost() : int
      {
         var _loc1_:int = this.§521423138502313863123423632234§.calculate(this.data.§521423110412311054123423632234§);
         return this.c756780(_loc1_,this.data.§use switch class§);
      }
      
      public function getNextValue() : String
      {
         return this.§5214239533239546123423632234§.getValue(this.data.§521423110412311054123423632234§ + 1);
      }
      
      public function getValue() : String
      {
         return this.§5214239533239546123423632234§.getValue(this.data.§521423110412311054123423632234§);
      }
      
      public function incrementLevel() : void
      {
         ++this.data.§521423110412311054123423632234§;
      }
      
      public function getDiscount() : Number
      {
         if(this.§5214235640235653123423632234§ && this.isFullUpgraded())
         {
            return this.data.§5214239847239860123423632234§ * 0.75;
         }
         return 0;
      }
      
      public function isFullUpgraded() : Boolean
      {
         return this.data.§521423110412311054123423632234§ == this.data.§true do§;
      }
      
      public function getProperty() : ItemGarageProperty
      {
         return this.data.property;
      }
      
      public function getSpeedUpCost() : int
      {
         return 0;
      }
      
      public function getUpgradableValue() : UpgradableItemPropertyValue
      {
         return this;
      }
      
      public function getPrecision() : int
      {
         return this.§5214239533239546123423632234§.getPrecision();
      }
      
      public function setPrecision(param1:int) : void
      {
         this.§5214239533239546123423632234§.setPrecision(param1);
      }
   }
}

