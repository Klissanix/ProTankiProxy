package §5214238160238173123423632234§
{
   import §521423136192313632123423632234§.MapClanInfoCC;
   import §5214231605231618123423632234§.MapInfoCC;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214234934234947123423632234§.BattleCreateCC;
   import §5214239374239387123423632234§.MapClanInfoModel;
   import alternativa.osgi.OSGi;
   import §break use catch§.§extends package import§;
   import §const use implements§.§dynamic include§;
   import §const use implements§.§var use native§;
   import §default catch do§.§521423139952314008123423632234§;
   import §dynamic switch in§.§class use native§;
   import §if var else§.MapInfoModel;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§5214232060232073123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   import §throw set continue§.§switch const continue§;
   import §var for throw§.BattleCreateModel;
   
   public class §catch set true§ extends §521423139952314008123423632234§
   {
      
      private var §5214233029233042123423632234§:BattleCreateModel;
      
      private var §521423107302310743123423632234§:MapInfoModel;
      
      private var §static var static§:MapClanInfoModel;
      
      private var §default package class§:§5214232060232073123423632234§;
      
      private var §5214237857237870123423632234§:§5214232060232073123423632234§;
      
      private var §521423131532313166123423632234§:§521423120252312038123423632234§;
      
      public function §catch set true§()
      {
         super();
         this.§throw var override§ = 30;
         this.§5214233029233042123423632234§ = BattleCreateModel(§native switch include§.getModel(Long.getLong(241311312,-189497800)));
         this.§521423107302310743123423632234§ = MapInfoModel(§native switch include§.getModel(Long.getLong(1357088820,1306920920)));
         this.§static var static§ = MapClanInfoModel(§native switch include§.getModel(Long.getLong(-430103794,-504102655)));
         var _loc1_:Vector.<Long> = new Vector.<Long>();
         _loc1_.push(this.§5214233029233042123423632234§.id);
         _loc1_.push(Long.getLong(1025883733,680508086));
         var _loc2_:Vector.<Long> = new Vector.<Long>();
         _loc2_.push(this.§521423107302310743123423632234§.id);
         _loc2_.push(this.§static var static§.id);
         this.§default package class§ = §final package implements§.createClass(Long.getLong(8238523,63486349),_loc2_);
         this.§5214237857237870123423632234§ = §final package implements§.createClass(Long.getLong(591359,5235923),_loc1_);
      }
      
      override public function §static package return§(param1:§extends package import§) : void
      {
         switch(param1.§else try§())
         {
            case 947161947:
               this.§5214236060236073123423632234§();
               break;
            case 566338297:
               this.§5214236245236258123423632234§();
               break;
            case -614313838:
               this.§default package function§();
               break;
            case -1491503394:
               this.§null const return§();
               break;
            case -838186985:
               this.§final package try§(param1 as §5214231339231352123423632234§);
               break;
            case 120401338:
               this.§use catch extends§(param1 as §implements use break§);
         }
      }
      
      private function §null const return§() : void
      {
         this.§5214233029233042123423632234§.createFailedYouAreBanned();
      }
      
      private function §default package function§() : void
      {
         this.§5214233029233042123423632234§.createFailedTooManyBattlesFromYou();
      }
      
      private function §use catch extends§(param1:§implements use break§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = §while package native§.getSpace(Long.getLong(59235923,646943)).getObjectByName("BattleSelectObject");
         var _temp_1:* = Model;
         var _loc4_:§521423120252312038123423632234§ = _loc2_;
         var _loc3_:Model = _temp_1;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
         this.§5214233029233042123423632234§.setFilteredBattleName(param1.§extends set case§);
         Model.popObject();
      }
      
      private function §5214236245236258123423632234§() : void
      {
         this.§5214233029233042123423632234§.createFailedServerIsHalting();
      }
      
      private function §final package try§(param1:§5214231339231352123423632234§) : void
      {
         var _loc10_:§521423120252312038123423632234§ = null;
         var _loc5_:MapInfoCC = null;
         var _loc2_:MapClanInfoCC = null;
         var _loc9_:§52142376523778123423632234§ = §while package native§.getSpace(Long.getLong(59235923,646943));
         this.§521423131532313166123423632234§ = _loc9_.createObject(Long.getLong(53152835,6296493246),this.§5214237857237870123423632234§,"BattleSelectObject");
         var _loc3_:Object = JSON.parse(param1.§5214239792239805123423632234§);
         var _loc7_:ResourceRegistry = ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry));
         for each(var _loc4_ in _loc3_.maps)
         {
            _loc10_ = _loc9_.createObject(Long.getLong(_loc4_.preview * 1000,_loc4_.preview * 1000),this.§default package class§,_loc4_.mapId + _loc4_.theme);
            _loc5_ = new MapInfoCC();
            _loc5_.additionalCrystalsPercent = _loc4_.additionalCrystalsPercent;
            _loc5_.enabled = _loc4_.enabled;
            _loc5_.mapId = _loc4_.mapId;
            _loc5_.mapName = _loc4_.mapName;
            _loc5_.maxPeople = _loc4_.maxPeople;
            _loc5_.preview = §include catch with§(_loc7_.getResource(Long.getLong(0,_loc4_.preview)));
            _loc5_.§5214235931235944123423632234§ = new §var use native§(_loc4_.maxRank,_loc4_.minRank);
            _loc5_.supportedModes = new Vector.<§dynamic include§>();
            for each(var _loc6_ in _loc4_.supportedModes)
            {
               _loc5_.supportedModes.push(§class use native§.§5214232122232135123423632234§(_loc6_));
            }
            _loc5_.theme = §class use native§.§5214239835239848123423632234§(_loc4_.theme);
            _loc2_ = new MapClanInfoCC(_loc4_.clanLink,_loc4_.clanName);
            var _temp_2:* = Model;
            var _loc19_:§521423120252312038123423632234§ = _loc10_;
            var _loc13_:Model = _temp_2;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc19_;
            this.§521423107302310743123423632234§.putInitParams(_loc5_);
            this.§521423107302310743123423632234§.objectLoaded();
            this.§static var static§.putInitParams(_loc2_);
            Model.popObject();
         }
         var _temp_4:* = Model;
         var _loc20_:§521423120252312038123423632234§ = this.§521423131532313166123423632234§;
         var _loc16_:Model = _temp_4;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc20_;
         var _loc8_:BattleCreateCC = new BattleCreateCC();
         _loc8_.battleCreationDisabled = _loc3_.battleCreationDisabled;
         _loc8_.§for catch continue§ = new Vector.<§switch const continue§>();
         for each(_loc6_ in _loc3_.battleLimits)
         {
            _loc8_.§for catch continue§.push(new §switch const continue§(_loc6_.scoreLimit,_loc6_.timeLimitInSec));
         }
         _loc8_.maxRangeLength = _loc3_.maxRangeLength;
         _loc8_.proBattleTimeLeftInSec = _loc3_.proBattleTimeLeftInSec;
         this.§5214233029233042123423632234§.putInitParams(_loc8_);
         this.§5214233029233042123423632234§.objectLoaded();
         this.§5214233029233042123423632234§.objectLoadedPost();
         Model.popObject();
      }
      
      private function §5214236060236073123423632234§() : void
      {
         this.§5214233029233042123423632234§.createFailedBattleCreateDisabled();
      }
   }
}

