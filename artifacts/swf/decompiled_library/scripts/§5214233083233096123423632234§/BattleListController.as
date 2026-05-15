package §5214233083233096123423632234§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.controllers.BattleSelectVectorUtil;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import §const use implements§.§dynamic include§;
   import §const use implements§.§var use native§;
   import flash.events.EventDispatcher;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import §native finally catch§.§static use do§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.UserPropertiesServiceEvent;
   
   public class BattleListController extends EventDispatcher implements §break const return§
   {
      
      public static var §while set function§:IBattleInfoFormService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §if catch include§:IStorageService;
      
      public static var display:IDisplay;
      
      public static var §5214234621234634123423632234§:LogService;
      
      public static var §continue for final§:ILobbyLayoutService;
      
      private static const FILTER_BY_DM:String = "FILTER_BY_DM";
      
      private static const FILTER_BY_TDM:String = "FILTER_BY_TDM";
      
      private static const FILTER_BY_CTF:String = "FILTER_BY_CTF";
      
      private static const FILTER_BY_CP:String = "FILTER_BY_CP";
      
      private static const FILTER_BY_ASL:String = "FILTER_BY_ASL";
      
      private static const §5214232984232997123423632234§:int = 400;
      
      private static var §52142360223615123423632234§:String;
      
      private var §in for finally§:Boolean;
      
      private var §5214232326232339123423632234§:Boolean;
      
      private var §5214235397235410123423632234§:Boolean;
      
      private var §false catch override§:Boolean;
      
      private var §5214237899237912123423632234§:Boolean;
      
      private var §5214238304238317123423632234§:§dynamic include§;
      
      private var §break const catch§:§static use do§;
      
      private var §true package do§:String;
      
      private var §5214233497233510123423632234§:uint;
      
      private var §break for return§:Vector.<BattleListItemParams>;
      
      private var §5214239303239316123423632234§:Array;
      
      private var §52142361823631123423632234§:Boolean;
      
      public function BattleListController(param1:§static use do§)
      {
         super();
         this.§break const catch§ = param1;
         this.init();
      }
      
      private static function b1ecb017(param1:String, param2:Boolean) : void
      {
         §if catch include§.getStorage().data[param1] = param2;
      }
      
      private static function getBoolean(param1:String, param2:Boolean) : Boolean
      {
         var _loc3_:* = §if catch include§.getStorage().data[param1];
         return _loc3_ == null ? param2 : Boolean(_loc3_);
      }
      
      private function removeEvents() : void
      {
         §52142329523308123423632234§.removeEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.a43d8f3c);
      }
      
      public function onBattleModeChange(param1:§dynamic include§, param2:Boolean) : void
      {
         switch(param1)
         {
            case §dynamic include§.§import const native§:
               this.§in for finally§ = param2;
               b1ecb017("FILTER_BY_DM",param2);
               break;
            case §dynamic include§.§continue catch super§:
               this.§5214232326232339123423632234§ = param2;
               b1ecb017("FILTER_BY_TDM",param2);
               break;
            case §dynamic include§.§return package native§:
               this.§5214235397235410123423632234§ = param2;
               b1ecb017("FILTER_BY_CTF",param2);
               break;
            case §dynamic include§.§catch package use§:
               this.§false catch override§ = param2;
               b1ecb017("FILTER_BY_CP",param2);
               break;
            case §dynamic include§.§final finally dynamic§:
               this.§5214237899237912123423632234§ = param2;
               b1ecb017("FILTER_BY_ASL",param2);
         }
         if(param2)
         {
            this.d6d31d0b(param1);
         }
         else
         {
            this.a537929(param1);
         }
         this.f14ee1e1();
      }
      
      private function f26ac9af(param1:String, param2:Boolean, param3:String) : String
      {
         if(param2)
         {
            param1 = param1 + " " + param3;
         }
         return param1;
      }
      
      private function e55acfbd() : void
      {
         dispatchEvent(new BattleSelectedEvent("BattleListControllerEvent.BATTLE_SELECTED",this.§true package do§));
      }
      
      public function madePrivate(param1:String, param2:String) : void
      {
         this.updateName(param1,"[Private] " + param2);
      }
      
      public function removeBattle(param1:String) : void
      {
         this.§break const catch§.§521423122662312279123423632234§(param1);
         BattleSelectVectorUtil.deleteElementInVector(this.§break for return§,param1);
         BattleSelectVectorUtil.deleteElementInArray(this.§5214239303239316123423632234§,param1);
      }
      
      private function a43d8f3c(param1:UserPropertiesServiceEvent) : void
      {
         this.§break const catch§.§super set class§(param1.§52142397423987123423632234§.rank);
      }
      
      public function onBattleListItemChange(param1:String) : void
      {
         if(this.§true package do§ != null)
         {
            if(this.§true package do§ != param1)
            {
               this.da07f81(param1,false,true,400);
            }
         }
         else
         {
            this.da07f81(param1,false,true);
         }
      }
      
      private function resetSelectedItem() : void
      {
         if(this.§true package do§ != null)
         {
            this.§true package do§ = null;
            this.§break const catch§.§final catch var§();
         }
      }
      
      public function updateSuspicious(param1:String, param2:BattleSuspicionLevel) : void
      {
         var _loc3_:BattleListItemParams = BattleSelectVectorUtil.findElementInVector(this.§break for return§,param1);
         _loc3_.suspicionLevel = param2;
         this.§break const catch§.§5214238955238968123423632234§(param1,param2);
      }
      
      private function e4cfe51() : void
      {
         if(this.§5214238304238317123423632234§ != null)
         {
            this.§break const catch§.§5214232692232705123423632234§(this.§5214238304238317123423632234§);
            this.§5214238304238317123423632234§ = null;
         }
      }
      
      public function battleItemRecord(param1:§521423120252312038123423632234§, param2:§dynamic include§, param3:String, param4:Boolean = true, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0, param9:int = 0, param10:int = 0, param11:int = 0, param12:String = "", param13:§var use native§ = null, param14:Boolean = false, param15:Boolean = false, param16:BattleSuspicionLevel = null, param17:Boolean = false, param18:Boolean = false, param19:String = "", param20:int = 0) : void
      {
         var _loc21_:BattleListItemParams = new BattleListItemParams();
         if(param15)
         {
            _loc21_.§return var null§ = "[Private] " + this.f26ac9af(param3,param18,param19);
         }
         else
         {
            _loc21_.§return var null§ = this.f26ac9af(param3,param18,param19);
         }
         _loc21_.§5214239315239328123423632234§ = param1;
         _loc21_.battleMode = param2;
         _loc21_.id = param1.name;
         _loc21_.§5214235112235125123423632234§ = param4;
         _loc21_.§5214234629234642123423632234§ = param5;
         _loc21_.§521423128912312904123423632234§ = param6;
         _loc21_.§5214232697232710123423632234§ = param7;
         _loc21_.§5214237929237942123423632234§ = param8;
         _loc21_.all = param9;
         _loc21_.friends = param10;
         _loc21_.maxPeople = param11;
         _loc21_.§var switch implements§ = param12;
         _loc21_.§do catch catch§ = param13;
         _loc21_.accessible = §52142329523308123423632234§.rank >= param13.§5214239002239015123423632234§ && §52142329523308123423632234§.rank <= param13.§5214232042232055123423632234§;
         _loc21_.§5214239008239021123423632234§ = param14;
         _loc21_.proBattle = param17;
         _loc21_.suspicionLevel = param16;
         _loc21_.friends = Math.max(param10,param8 + param7);
         _loc21_.§static var in§ = param18;
         _loc21_.§521423118712311884123423632234§ = param19;
         _loc21_.additionalCrystalsPercent = param20;
         if(this.§52142361823631123423632234§)
         {
            this.§break for return§.push(_loc21_);
            if(this.c8817f0(param2))
            {
               this.§break const catch§.§true switch get§(_loc21_,true);
            }
         }
         else
         {
            this.§5214239303239316123423632234§[§5214239303239316123423632234§.length] = _loc21_;
         }
      }
      
      public function battleItemsPacketJoinSuccess() : void
      {
         var _loc5_:int = 0;
         var _loc1_:BattleListItemParams = null;
         var _loc4_:BattleListItemParams = null;
         this.§52142361823631123423632234§ = true;
         var _loc3_:int = getTimer();
         §5214234621234634123423632234§.getLogger("BattleSelectModel").info("battleItemsPacketJoinSuccess item=%1, await=%2",[this.§break for return§.length,this.§5214239303239316123423632234§.length]);
         var _loc2_:int = int(this.§5214239303239316123423632234§.length);
         if(_loc2_ != 0)
         {
            this.§5214239303239316123423632234§.sortOn(["suspicionLevel","accessible","friends","id"],[0x10 | 2,2,0x10 | 2,2]);
            if(!§continue for final§.inBattle())
            {
               _loc4_ = this.c6ca8cc2();
            }
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc1_ = this.§5214239303239316123423632234§[_loc5_];
               this.§break for return§[§break for return§.length] = _loc1_;
               if(this.c8817f0(_loc1_.battleMode))
               {
                  this.§break const catch§.§true switch get§(_loc1_,false);
               }
               _loc5_++;
            }
            this.§break const catch§.§override set include§();
         }
         this.§5214239303239316123423632234§.length = 0;
         this.§break const catch§.resize();
         if(§52142360223615123423632234§ != null && !§continue for final§.inBattle())
         {
            _loc4_ = BattleSelectVectorUtil.findElementInVector(this.§break for return§,§52142360223615123423632234§);
         }
         else if(_loc4_ != null && c8817f0(_loc4_.battleMode))
         {
            this.da07f81(_loc4_.id,true,true,400);
         }
         §5214234621234634123423632234§.getLogger("BattleSelectModel").info("battleItemsPacketJoinSuccess runtime=%1",[getTimer() - _loc3_]);
      }
      
      private function init() : void
      {
         this.§break for return§ = new Vector.<BattleListItemParams>();
         this.§5214239303239316123423632234§ = [];
         this.§break const catch§.§package function§(this);
         this.b6af4d82();
      }
      
      private function b702873e(param1:§dynamic include§) : void
      {
         this.e4cfe51();
         this.§5214238304238317123423632234§ = param1;
         this.§break const catch§.§521423113652311378123423632234§(this.§5214238304238317123423632234§);
      }
      
      public function onShowCreateBattleFormButtonClick() : void
      {
         this.resetSelectedItem();
         dispatchEvent(new CreateBattleClickEvent("CreateBattleClickEvent.CREATE_BATTLE_CLICK",null));
      }
      
      private function e1ce8f86(param1:String) : String
      {
         return param1;
      }
      
      public function showForm() : void
      {
         this.§break const catch§.show(this.§in for finally§,this.§5214232326232339123423632234§,this.§5214235397235410123423632234§,this.§false catch override§,this.§5214237899237912123423632234§);
         this.setEvents();
      }
      
      public function selectBattleItemFromServer(param1:String) : void
      {
         clearTimeout(this.§5214233497233510123423632234§);
         if(param1 == null)
         {
            this.resetSelectedItem();
         }
         else
         {
            this.da07f81(param1,true,false);
         }
      }
      
      private function b6af4d82() : void
      {
         this.§in for finally§ = getBoolean("FILTER_BY_DM",true);
         this.§5214232326232339123423632234§ = getBoolean("FILTER_BY_TDM",true);
         this.§5214235397235410123423632234§ = getBoolean("FILTER_BY_CTF",true);
         this.§false catch override§ = getBoolean("FILTER_BY_CP",true);
         this.§5214237899237912123423632234§ = getBoolean("FILTER_BY_ASL",true);
         if(!this.§in for finally§ && !this.§5214232326232339123423632234§ && !this.§5214235397235410123423632234§ && !this.§false catch override§ && !this.§5214237899237912123423632234§)
         {
            this.§in for finally§ = true;
            this.§5214232326232339123423632234§ = true;
            this.§5214235397235410123423632234§ = true;
            this.§false catch override§ = true;
            this.§5214237899237912123423632234§ = true;
         }
         this.f14ee1e1();
      }
      
      private function f14ee1e1() : void
      {
         var _loc1_:Vector.<§dynamic include§> = new Vector.<§dynamic include§>();
         if(this.§in for finally§)
         {
            _loc1_[_loc1_.length] = §dynamic include§.§import const native§;
         }
         if(this.§5214232326232339123423632234§)
         {
            _loc1_[_loc1_.length] = §dynamic include§.§continue catch super§;
         }
         if(this.§5214235397235410123423632234§)
         {
            _loc1_[_loc1_.length] = §dynamic include§.§return package native§;
         }
         if(this.§false catch override§)
         {
            _loc1_[_loc1_.length] = §dynamic include§.§catch package use§;
         }
         if(_loc1_.length == 1)
         {
            this.b702873e(_loc1_[0]);
         }
         else
         {
            this.e4cfe51();
         }
      }
      
      public function onBattleListItemClick(param1:String) : void
      {
         this.da07f81(param1,false,true);
      }
      
      private function a537929(param1:§dynamic include§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(this.§break for return§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(this.§break for return§[_loc4_].battleMode == param1)
            {
               this.§break const catch§.§521423122662312279123423632234§(this.§break for return§[_loc4_].id);
               _loc2_++;
            }
            _loc4_++;
         }
         if(_loc2_ != 0)
         {
            this.§break const catch§.resize();
         }
         if(this.§true package do§ != null)
         {
            if(this.§break const catch§.§with const each§(this.§true package do§) == -1)
            {
               §while set function§.removeFormFromStage();
               this.resetSelectedItem();
            }
         }
      }
      
      public function updateUsersCountTeam(param1:String, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:BattleListItemParams = null;
         _loc6_ = BattleSelectVectorUtil.findElementInVector(this.§break for return§,param1);
         _loc6_.§5214234629234642123423632234§ = param2;
         _loc6_.§521423128912312904123423632234§ = param3;
         _loc6_.§5214237929237942123423632234§ = param5;
         _loc6_.§5214232697232710123423632234§ = param4;
         this.§break const catch§.§5214233348233361123423632234§(param1,param2,param3,param4,param5);
      }
      
      public function swapTeams(param1:String) : void
      {
         var _loc2_:BattleListItemParams = BattleSelectVectorUtil.findElementInVector(this.§break for return§,param1);
         var _loc3_:int = _loc2_.§5214234629234642123423632234§;
         _loc2_.§5214234629234642123423632234§ = _loc2_.§521423128912312904123423632234§;
         _loc2_.§521423128912312904123423632234§ = _loc3_;
         var _loc4_:int = _loc2_.§5214232697232710123423632234§;
         _loc2_.§5214232697232710123423632234§ = _loc2_.§5214237929237942123423632234§;
         _loc2_.§5214237929237942123423632234§ = _loc4_;
         this.§break const catch§.§static for in§(param1,_loc2_.§5214234629234642123423632234§,_loc2_.§521423128912312904123423632234§,_loc2_.§5214232697232710123423632234§,_loc2_.§5214237929237942123423632234§);
      }
      
      public function updateUsersCountDm(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:BattleListItemParams = null;
         _loc4_ = BattleSelectVectorUtil.findElementInVector(this.§break for return§,param1);
         _loc4_.all = param2;
         this.§break const catch§.§521423114392311452123423632234§(param1,param2,param3);
      }
      
      private function c5d99edf(param1:BattleListItemParams) : int
      {
         return param1.maxPeople - Math.max(param1.all,param1.§5214234629234642123423632234§ + param1.§521423128912312904123423632234§);
      }
      
      public function destroy() : void
      {
         if(§continue for final§.inBattle())
         {
         }
         clearTimeout(this.§5214233497233510123423632234§);
         this.removeEvents();
         this.§break const catch§.destroy();
         this.§break const catch§ = null;
         this.§true package do§ = null;
         this.§break for return§ = null;
         this.§5214239303239316123423632234§ = null;
         this.§52142361823631123423632234§ = false;
      }
      
      private function c62623fa(param1:String) : void
      {
         var _loc2_:BattleListItemParams = this.a25610fd(param1);
         if(_loc2_ == null)
         {
            this.resetSelectedItem();
            dispatchEvent(new BattleByURLNotFoundEvent("BattleListControllerEvent.BATTLE_BY_URL_NOT_FOUND",param1));
         }
         else if(_loc2_.id != this.§true package do§)
         {
            this.da07f81(_loc2_.id,true,true);
         }
      }
      
      private function da07f81(param1:String, param2:Boolean, param3:Boolean, param4:Number = 0) : void
      {
         var _loc5_:BattleListItemParams = null;
         clearTimeout(this.§5214233497233510123423632234§);
         this.§true package do§ = param1;
         if(param2)
         {
            if(this.§break const catch§.§with const each§(param1) < 0)
            {
               _loc5_ = BattleSelectVectorUtil.findElementInVector(this.§break for return§,param1);
               if(_loc5_ != null)
               {
                  this.§break const catch§.§true switch get§(_loc5_,true);
                  if(_loc5_.id == §while set function§.getBattleItemId())
                  {
                     §while set function§.showLastShowedForm();
                  }
               }
            }
            this.§break const catch§.§for for throw§(this.§true package do§);
         }
         if(param3)
         {
            if(param4 == 0)
            {
               dispatchEvent(new BattleSelectedEvent("BattleListControllerEvent.BATTLE_SELECTED",this.§true package do§));
            }
            else
            {
               this.§5214233497233510123423632234§ = setTimeout(this.e55acfbd,param4);
            }
         }
         if(§52142360223615123423632234§ == this.§true package do§)
         {
            §while set function§.showLastShowedForm();
         }
         §52142360223615123423632234§ = this.§true package do§;
      }
      
      private function c6ca8cc2() : BattleListItemParams
      {
         var _loc1_:BattleListItemParams = null;
         var _loc3_:BattleListItemParams = this.§5214239303239316123423632234§[0];
         var _loc5_:int = this.c5d99edf(_loc3_);
         var _loc2_:uint = this.§5214239303239316123423632234§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc1_ = this.§5214239303239316123423632234§[_loc4_];
            if(_loc1_.friends > _loc3_.friends && this.c5d99edf(_loc1_) > _loc5_)
            {
               _loc3_ = _loc1_;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function c8817f0(param1:§dynamic include§) : Boolean
      {
         if(param1 == §dynamic include§.§import const native§)
         {
            return this.§in for finally§;
         }
         if(param1 == §dynamic include§.§continue catch super§)
         {
            return this.§5214232326232339123423632234§;
         }
         if(param1 == §dynamic include§.§return package native§)
         {
            return this.§5214235397235410123423632234§;
         }
         if(param1 == §dynamic include§.§catch package use§)
         {
            return this.§false catch override§;
         }
         if(param1 == §dynamic include§.§final finally dynamic§)
         {
            return this.§5214237899237912123423632234§;
         }
         return true;
      }
      
      public function hideForm() : void
      {
         this.removeEvents();
         this.§break const catch§.§true package final§();
      }
      
      private function a25610fd(param1:String) : BattleListItemParams
      {
         var _loc2_:BattleListItemParams = null;
         var _loc3_:int = int(this.§break for return§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(this.e1ce8f86(this.§break for return§[_loc4_].id) == param1)
            {
               _loc2_ = this.§break for return§[_loc4_];
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function updateName(param1:String, param2:String) : void
      {
         var _loc3_:BattleListItemParams = BattleSelectVectorUtil.findElementInVector(this.§break for return§,param1);
         _loc3_.§return var null§ = param2;
         this.§break const catch§.§521423127802312793123423632234§(param1,param2);
      }
      
      private function setEvents() : void
      {
         §52142329523308123423632234§.addEventListener("UserPropertiesServiceEvent.UPDATE_RANK",this.a43d8f3c);
      }
      
      private function d6d31d0b(param1:§dynamic include§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(this.§break for return§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(this.§break for return§[_loc4_].battleMode == param1)
            {
               this.§break const catch§.§true switch get§(this.§break for return§[_loc4_],false);
               _loc2_++;
            }
            _loc4_++;
         }
         if(_loc2_ != 0)
         {
            this.§break const catch§.§override set include§();
            if(this.§true package do§ != null)
            {
               this.da07f81(this.§true package do§,true,false);
            }
            this.§break const catch§.resize();
         }
      }
   }
}

