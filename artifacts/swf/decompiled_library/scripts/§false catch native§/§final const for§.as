package §false catch native§
{
   import §521423103152310328123423632234§.BattleDMItemModel;
   import §521423126892312702123423632234§.§for const catch§;
   import §521423127082312721123423632234§.TeamBattleItemCC;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.model.battleselect.BattleSelectModel;
   import alternativa.tanks.model.item.BattleItemModel;
   import alternativa.tanks.service.achievement.IAchievementService;
   import §break use catch§.§extends package import§;
   import §const use implements§.§var use native§;
   import §default catch do§.§521423139952314008123423632234§;
   import §dynamic switch in§.§class use native§;
   import §if use class§.BattleDMItemCC;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.impl.*;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§5214232060232073123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   import projects.tanks.client.battleselect.model.item.BattleItemCC;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   import §use const§.BattleTeamItemModel;
   
   public class §final const for§ extends §521423139952314008123423632234§
   {
      
      private var §extends const catch§:BattleSelectModel;
      
      private var §use switch each§:BattleItemModel;
      
      private var §5214233821233834123423632234§:BattleDMItemModel;
      
      private var §5214239096239109123423632234§:BattleTeamItemModel;
      
      private var §521423124592312472123423632234§:IAchievementService;
      
      private var §521423107632310776123423632234§:§52142376523778123423632234§;
      
      private var §do package try§:§52142376523778123423632234§;
      
      public function §final const for§()
      {
         super();
         this.§throw var override§ = 31;
         this.§extends const catch§ = BattleSelectModel(§native switch include§.getModel(Long.getLong(1025883733,680508086)));
         this.§use switch each§ = BattleItemModel(§native switch include§.getModel(Long.getLong(1795767073,-1843767879)));
         this.§5214233821233834123423632234§ = BattleDMItemModel(§native switch include§.getModel(Long.getLong(534467352,-1241620068)));
         this.§5214239096239109123423632234§ = BattleTeamItemModel(§native switch include§.getModel(Long.getLong(1820768384,992066567)));
         var _loc1_:Vector.<Long> = new Vector.<Long>();
         _loc1_.push(this.§use switch each§.id);
         _loc1_.push(this.§5214233821233834123423632234§.id);
         §final package implements§.createClass(Long.getLong(5823623,5812059),_loc1_);
         _loc1_ = new Vector.<Long>();
         _loc1_.push(Long.getLong(-1693948923,-747891023));
         _loc1_.push(Long.getLong(1905532812,672035587));
         _loc1_.push(Long.getLong(1173489864,-398322629));
         §final package implements§.createClass(Long.getLong(5823622,5812058),_loc1_);
         _loc1_ = new Vector.<Long>();
         _loc1_.push(this.§use switch each§.id);
         _loc1_.push(this.§5214239096239109123423632234§.id);
         §final package implements§.createClass(Long.getLong(58236221,58120558),_loc1_);
         _loc1_ = new Vector.<Long>();
         _loc1_.push(Long.getLong(-1693948923,-747891023));
         _loc1_.push(Long.getLong(-1892971237,309522086));
         _loc1_.push(Long.getLong(1173489864,-398322629));
         §final package implements§.createClass(Long.getLong(58236223,58120559),_loc1_);
         this.§521423107632310776123423632234§ = §while package native§.getSpace(Long.getLong(59235923,646943));
         this.§do package try§ = §52142376523778123423632234§(§while package native§.getSpace(Long.getLong(52835823,6349643)));
         this.§521423124592312472123423632234§ = IAchievementService(OSGi.getInstance().getService(IAchievementService));
      }
      
      private function §5214236239236252123423632234§(param1:§5214237104237117123423632234§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = this.§521423107632310776123423632234§.getObjectByName("BattleSelectObject");
         var _temp_1:* = Model;
         var _loc4_:§521423120252312038123423632234§ = _loc2_;
         var _loc3_:Model = _temp_1;
         platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
         this.§extends const catch§.select(param1.§5214235052235065123423632234§);
         Model.popObject();
      }
      
      private function §if catch dynamic§(param1:§null finally dynamic§) : void
      {
         var _loc2_:§521423120252312038123423632234§ = this.§521423107632310776123423632234§.getObjectByName(param1.§521423122262312239123423632234§);
         if(_loc2_ != null)
         {
            var _temp_1:* = Model;
            var _loc4_:§521423120252312038123423632234§ = _loc2_;
            var _loc3_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc4_;
            this.§521423107632310776123423632234§.destroyObject(_loc2_.id);
            Model.popObject();
         }
      }
      
      private function §5214238335238348123423632234§(param1:Object) : void
      {
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc3_:BattleItemCC = null;
         var _loc5_:BattleDMItemCC = null;
         var _loc6_:TeamBattleItemCC = null;
         var _loc4_:§5214232060232073123423632234§ = §final package implements§.getClass(Long.getLong(5823623,5812059));
         if(param1.battleMode != "DM")
         {
            _loc4_ = §final package implements§.getClass(Long.getLong(58236221,58120558));
         }
         if(_loc4_ != null)
         {
            if(this.§521423107632310776123423632234§.getObjectByName(param1.battleId) != null)
            {
               this.§521423107632310776123423632234§.destroyObject(this.§521423107632310776123423632234§.getObjectByName(param1.battleId).id);
            }
            _loc2_ = this.§521423107632310776123423632234§.createObject(§for const catch§.§5214234842234855123423632234§(),_loc4_,param1.battleId);
            _loc3_ = new BattleItemCC();
            _loc3_.battleId = param1.battleId;
            _loc3_.battleMode = §class use native§.§5214232122232135123423632234§(param1.battleMode);
            _loc3_.map = this.§521423107632310776123423632234§.getObject(Long.getLong(param1.preview * 1000,param1.preview * 1000));
            _loc3_.maxPeople = param1.maxPeople;
            _loc3_.name = param1.name;
            _loc3_.privateBattle = param1.privateBattle;
            _loc3_.proBattle = param1.proBattle;
            _loc3_.§do catch catch§ = new §var use native§(param1.maxRank,param1.minRank);
            _loc3_.suspicionLevel = BattleSuspicionLevel[param1.suspicionLevel];
            _loc3_.equipmentConstraintsMode = §class use native§.§5214235436235449123423632234§(param1.equipmentConstraintsMode);
            _loc3_.parkourMode = param1.parkourMode;
            var _temp_1:* = Model;
            var _loc15_:§521423120252312038123423632234§ = _loc2_;
            var _loc8_:Model = _temp_1;
            platform.client.fp10.core.model.impl.Model.objects[platform.client.fp10.core.model.impl.Model.objects.length] = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
            platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§ = _loc15_;
            this.§use switch each§.putInitParams(_loc3_);
            if(param1.battleMode == "DM")
            {
               _loc5_ = new BattleDMItemCC();
               _loc5_.users = new Vector.<String>();
               for each(var _loc7_ in param1.users)
               {
                  _loc5_.users.push(_loc7_);
               }
               this.§5214233821233834123423632234§.putInitParams(_loc5_);
               this.§5214233821233834123423632234§.objectLoaded();
            }
            else
            {
               _loc6_ = new TeamBattleItemCC();
               _loc6_.usersBlue = new Vector.<String>();
               _loc6_.usersRed = new Vector.<String>();
               for each(_loc7_ in param1.usersBlue)
               {
                  _loc6_.usersBlue.push(_loc7_);
               }
               for each(_loc7_ in param1.usersRed)
               {
                  _loc6_.usersRed.push(_loc7_);
               }
               this.§5214239096239109123423632234§.putInitParams(_loc6_);
               this.§5214239096239109123423632234§.objectLoaded();
            }
            this.§use switch each§.objectLoadedPost();
            Model.popObject();
         }
      }
      
      private function §switch switch catch§(param1:§5214233294233307123423632234§) : void
      {
         this.§5214238335238348123423632234§(JSON.parse(param1.§5214239792239805123423632234§));
      }
      
      private function §5214239144239157123423632234§(param1:§finally set catch§) : void
      {
         var _loc3_:Object = JSON.parse(param1.§5214239792239805123423632234§);
         this.§extends const catch§.objectLoadedPost();
         for each(var _loc2_ in _loc3_.battles)
         {
            this.§5214238335238348123423632234§(_loc2_);
         }
         this.§extends const catch§.battleItemsPacketJoinSuccess();
         this.§521423124592312472123423632234§.setPanelPartition(2);
      }
      
      private function §521423130722313085123423632234§() : void
      {
         var _loc1_:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
         for each(var _loc3_ in this.§521423107632310776123423632234§.objects)
         {
            _loc1_.push(_loc3_);
         }
         _loc1_.reverse();
         for each(_loc3_ in _loc1_)
         {
            this.§521423107632310776123423632234§.destroyObject(_loc3_.id);
         }
         var _loc2_:Vector.<§521423120252312038123423632234§> = new Vector.<§521423120252312038123423632234§>();
         for each(_loc3_ in this.§do package try§.objects)
         {
            _loc2_.push(_loc3_);
         }
         for each(_loc3_ in _loc2_)
         {
            this.§do package try§.destroyObject(_loc3_.id);
         }
      }
      
      override public function §static package return§(param1:§extends package import§) : void
      {
         switch(param1.§else try§())
         {
            case 802300608:
               this.§switch switch catch§(param1 as §5214233294233307123423632234§);
               break;
            case 552006706:
               this.§5214239144239157123423632234§(param1 as §finally set catch§);
               break;
            case -1848001147:
               this.§if catch dynamic§(param1 as §null finally dynamic§);
               break;
            case 2092412133:
               this.§5214236239236252123423632234§(param1 as §5214237104237117123423632234§);
               break;
            case -324155151:
               this.§521423130722313085123423632234§();
         }
      }
   }
}

