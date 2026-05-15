package §function catch if§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214239374239387123423632234§.§null override§;
   import alternativa.tanks.service.achievement.IAchievementService;
   import §const use implements§.§default const while§;
   import §const use implements§.§dynamic include§;
   import §const use implements§.§var use native§;
   import §each var do§.§521423127822312795123423632234§;
   import §extends use§.§5214232535232548123423632234§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import §if var else§.§521423117842311797123423632234§;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import §throw set continue§.§switch const continue§;
   
   public class CreateBattleFormController extends EventDispatcher implements §52142328723300123423632234§, §5214235988236001123423632234§
   {
      
      private static const §5214233216233229123423632234§:String = "battlecreate";
      
      public static var §if catch include§:IStorageService;
      
      public static var §521423124592312472123423632234§:IAchievementService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      public static var §5214239416239429123423632234§:BattleFormatUtil;
      
      private static const §function package const§:int = 30;
      
      private static const §in const function§:int = 1;
      
      private static const §false switch const§:int = 1;
      
      private static const §super package while§:int = 2;
      
      private static const §5214237775237788123423632234§:int = 1;
      
      private static const §package for try§:int = 1;
      
      private static const §do set null§:int = 5;
      
      private static const §with var implements§:int = 1;
      
      private static const §5214238508238521123423632234§:int = 50;
      
      private static const §521423116192311632123423632234§:int = 50;
      
      private var §5214237022237035123423632234§:Vector.<§switch const continue§>;
      
      private var §return use in§:int = 0;
      
      private var §521423116462311659123423632234§:int = 0;
      
      private var §catch for package§:int = 0;
      
      private var §521423140122314025123423632234§:int = 0;
      
      private var §521423114762311489123423632234§:int = 1200;
      
      private var §52142388123894123423632234§:int;
      
      private var §5214231122231135123423632234§:§dynamic include§ = §dynamic include§.§import const native§;
      
      private var §break const catch§:§5214232535232548123423632234§;
      
      private var §finally use throw§:Dictionary = new Dictionary();
      
      private var §false const final§:int = -1;
      
      private var §else switch else§:Array;
      
      private var §continue catch in§:Timer;
      
      private var §null set final§:String;
      
      private var §try const dynamic§:Array;
      
      private var §521423112542311267123423632234§:Boolean;
      
      private var §function catch get§:Boolean;
      
      private var §do use extends§:String;
      
      private var §5214232406232419123423632234§:Long;
      
      private var §do for finally§:Boolean;
      
      private var §521423133422313355123423632234§:int;
      
      public function CreateBattleFormController(param1:Vector.<§switch const continue§>, param2:int, param3:Vector.<§521423120252312038123423632234§>, param4:§5214232535232548123423632234§)
      {
         super();
         this.§break const catch§ = param4;
         this.init(param1,param2,param3);
      }
      
      public function checkedBattleNameResult(param1:String) : void
      {
         this.§function catch get§ = true;
         this.§continue catch in§.stop();
         if(this.§break const catch§.§override var native§() == this.§null set final§ && this.§null set final§ != param1)
         {
            this.§521423112542311267123423632234§ = false;
            this.§break const catch§.§package switch super§(param1);
         }
         this.§break const catch§.§const use return§();
         if(this.§break const catch§.§do super§() != 0)
         {
            this.§break const catch§.§import use var§();
         }
         this.b56fb601();
      }
      
      private function init(param1:Vector.<§switch const continue§>, param2:int, param3:Vector.<§521423120252312038123423632234§>) : void
      {
         this.§break const catch§.§package function§(this);
         this.§continue catch in§ = new Timer(1200);
         this.§continue catch in§.addEventListener("timer",this.f30fdadd);
         this.§5214237022237035123423632234§ = param1;
         this.§break const catch§.§52142334123354123423632234§(param2 - 1);
         this.§break const catch§.§5214239212239225123423632234§(1,30,1);
         this.§break const catch§.§extends const while§();
         this.§break const catch§.§5214239094239107123423632234§(this.a73b38d());
         this.e1680ae4(param3);
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         if(this.§5214232406232419123423632234§ == param1.§5214239618239631123423632234§.id)
         {
            this.§break const catch§.§521423119942312007123423632234§(param1.data);
         }
      }
      
      private function e1cd0ccb() : void
      {
         var _loc1_:CreateBattleMapParams = null;
         this.§finally use throw§ = new Dictionary();
         this.§try const dynamic§ = [];
         for each(_loc1_ in this.§else switch else§)
         {
            if(_loc1_.enabled && this.§false const final§ <= _loc1_.maxRank)
            {
               if(this.§finally use throw§[_loc1_.id] == undefined)
               {
                  this.§finally use throw§[_loc1_.id] = new Dictionary();
                  _loc1_.currentRank = this.§false const final§ >= _loc1_.minRank ? 0 : _loc1_.minRank;
                  this.§try const dynamic§.push(_loc1_);
               }
               this.§finally use throw§[_loc1_.id][_loc1_.themeName] = _loc1_;
            }
         }
         if(this.§try const dynamic§.length != 0)
         {
            this.§try const dynamic§.sortOn(["additionalCrystalsPercent","defaultMap","currentRank","gameName"],[0x10 | 2,0x10 | 2,16,null]);
            this.§break const catch§.§521423114882311501123423632234§(this.§try const dynamic§);
            return;
         }
         throw new ArgumentError("For your rank is not available maps");
      }
      
      public function onCreateBattle() : void
      {
         var _loc1_:§default const while§ = null;
         if(this.b87f8c7())
         {
            _loc1_ = new §default const while§();
            _loc1_.§throw var include§ = this.§5214231122231135123423632234§;
            _loc1_.§5214236316236329123423632234§ = new §switch const continue§(this.§break const catch§.§521423134452313458123423632234§(),this.§521423114762311489123423632234§);
            _loc1_.§5214231684231697123423632234§ = this.§break const catch§.§with catch for§().id;
            _loc1_.§import break§ = this.§break const catch§.§with catch for§().theme;
            _loc1_.§5214231995232008123423632234§ = this.§52142388123894123423632234§;
            _loc1_.§extends set case§ = this.§break const catch§.§override var native§();
            _loc1_.§52142386923882123423632234§ = this.§break const catch§.§521423124182312431123423632234§;
            _loc1_.§do catch catch§ = new §var use native§(this.§break const catch§.§5214236705236718123423632234§(),this.§break const catch§.§each try§());
            _loc1_.§521423134322313445123423632234§ = this.§break const catch§.§5214239893239906123423632234§;
            if(this.§break const catch§.§5214239893239906123423632234§)
            {
               _loc1_.§default use throw§ = this.§break const catch§.§5214236146236159123423632234§;
               _loc1_.§5214235973235986123423632234§ = this.§break const catch§.§521423133262313339123423632234§;
               _loc1_.§set use dynamic§ = this.§break const catch§.§5214233672233685123423632234§;
               _loc1_.§set var each§ = this.§break const catch§.§native package default§;
               _loc1_.§521423702383123423632234§ = this.§break const catch§.§52142348923502123423632234§;
               _loc1_.§break for get§ = this.§break const catch§.§class const switch§;
               _loc1_.§while set native§ = this.§break const catch§.§default package case§;
               _loc1_.§521423140722314085123423632234§ = this.§break const catch§.§do package const§;
               _loc1_.§null switch override§ = this.§break const catch§.§implements set override§;
               _loc1_.§each var dynamic§ = this.§break const catch§.§5214231203231216123423632234§;
               _loc1_.§521423114902311503123423632234§ = this.§break const catch§.§try set dynamic§;
               _loc1_.§5214235115235128123423632234§ = this.§break const catch§.§return switch use§;
               _loc1_.§5214238767238780123423632234§ = this.§break const catch§.§5214239596239609123423632234§;
               _loc1_.§use catch implements§ = this.§break const catch§.§5214234808234821123423632234§;
               _loc1_.§include use static§ = this.§break const catch§.§52142338423397123423632234§;
               _loc1_.§5214232276232289123423632234§ = this.§break const catch§.§521423120442312057123423632234§;
            }
            else
            {
               _loc1_.§521423702383123423632234§ = true;
               _loc1_.§5214232276232289123423632234§ = true;
            }
            _loc1_.§52142311123124123423632234§ = this.a6fb8aed();
            _loc1_.§521423127912312804123423632234§ = this.§break const catch§.§5214239893239906123423632234§ && this.e436458();
            dispatchEvent(new CreateBattleEvent("CreateBattleEvent.CREATE_BATTLE",_loc1_));
            this.hideForm();
            §521423124592312472123423632234§.hideAllBubbles(true);
         }
      }
      
      private function d6859eff() : void
      {
         this.§break const catch§.§set set static§(this.§5214231122231135123423632234§);
         var _loc1_:int = this.e2d14682().maxPeople;
         this.§52142388123894123423632234§ = _loc1_;
         this.§break const catch§.§521423106682310681123423632234§(2,_loc1_,this.§52142388123894123423632234§);
         this.§break const catch§.§return const finally§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§5214239290239303123423632234§ / 60,this.§521423114762311489123423632234§ / 60);
         this.§break const catch§.§5214236460236473123423632234§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§do set switch§,this.§return use in§,1);
         this.§break const catch§.§extends switch case§();
         this.§break const catch§.§5214239517239530123423632234§();
         if(this.§521423112542311267123423632234§)
         {
            this.a7363add();
         }
      }
      
      private function e4702bb() : void
      {
         this.§break const catch§.§return default§(this.§521423133422313355123423632234§);
      }
      
      private function c54dbe69() : void
      {
         this.§break const catch§.§set set static§(this.§5214231122231135123423632234§);
         var _loc1_:int = this.e2d14682().maxPeople / 2;
         this.§52142388123894123423632234§ = _loc1_;
         this.§break const catch§.§521423106682310681123423632234§(1,_loc1_,this.§52142388123894123423632234§);
         this.§break const catch§.§return const finally§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§5214239290239303123423632234§ / 60,this.§521423114762311489123423632234§ / 60);
         this.§break const catch§.§5214236460236473123423632234§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§do set switch§,this.§521423140122314025123423632234§,50);
         this.§break const catch§.§521423132042313217123423632234§();
         this.§break const catch§.§5214235310235323123423632234§();
         if(this.§521423112542311267123423632234§)
         {
            this.a7363add();
         }
      }
      
      private function a7363add() : void
      {
         this.§521423112542311267123423632234§ = true;
         this.§function catch get§ = true;
         this.§break const catch§.§package switch super§(this.d25e4dcc());
         this.§break const catch§.§import use var§();
      }
      
      public function onBattleNameChange() : void
      {
         this.§break const catch§.§function for§();
         this.§continue catch in§.stop();
         if(this.§break const catch§.§do super§() != 0)
         {
            this.§break const catch§.§import use var§();
            this.§function catch get§ = false;
            this.§continue catch in§.start();
         }
         else
         {
            this.§break const catch§.§import var false§();
         }
      }
      
      public function onBattleNameInFocus() : void
      {
         if(this.§break const catch§.§override var native§() == this.d25e4dcc())
         {
            this.§521423112542311267123423632234§ = false;
            this.§break const catch§.§package switch super§("");
            this.§break const catch§.§import var false§();
            this.§break const catch§.§function for§();
         }
      }
      
      private function e4f96828() : void
      {
         var _loc5_:int = 0;
         var _loc4_:String = null;
         var _loc2_:SaveMapParams = this.c6a61580();
         var _loc3_:CreateBattleMapParams = this.a18b479d(_loc2_.mapId,_loc2_.themeName);
         if(this.c3237d4d(_loc3_))
         {
            _loc4_ = _loc3_.gameName;
            this.§do use extends§ = _loc3_.themeName;
         }
         else
         {
            _loc5_ = 0;
            for each(var _loc1_ in this.§try const dynamic§)
            {
               if(_loc1_.additionalCrystalsPercent > 0)
               {
                  _loc5_++;
               }
            }
            _loc4_ = this.§try const dynamic§[_loc5_].gameName;
            this.§do use extends§ = this.§try const dynamic§[_loc5_].themeName;
         }
         this.§break const catch§.§521423106822310695123423632234§("gameName",_loc4_);
         this.onMapChange();
      }
      
      private function b56fb601() : void
      {
         if(this.b87f8c7())
         {
            this.§break const catch§.§5214235031235044123423632234§();
         }
         else
         {
            this.§break const catch§.§function for§();
         }
      }
      
      public function showForm(param1:int) : void
      {
         this.§do for finally§ = true;
         if(this.§false const final§ != param1)
         {
            this.§false const final§ = param1;
            if(this.§false const final§ < 1)
            {
               this.§false const final§ = 1;
            }
            this.§break const catch§.§5214239390239403123423632234§(this.§false const final§);
            this.e1cd0ccb();
            this.e4f96828();
         }
         §521423124592312472123423632234§.showStartButtonHelper();
         this.a7363add();
         this.§break const catch§.show();
      }
      
      public function destroy() : void
      {
         this.§continue catch in§.stop();
         this.§continue catch in§.removeEventListener("timer",this.f30fdadd);
         this.§continue catch in§ = null;
         this.§break const catch§.destroy();
         this.§break const catch§ = null;
      }
      
      public function method_722() : void
      {
         if(this.§break const catch§.§default package case§)
         {
            this.c67e9ffe();
         }
      }
      
      private function e436458() : Boolean
      {
         return this.§break const catch§.§if catch static§().parkour;
      }
      
      private function b5d14a2a() : void
      {
         this.f644f13d();
         this.f732cfe();
         this.c2476656(this.§5214231122231135123423632234§);
         this.a452b1e4();
         this.updatePreview();
      }
      
      public function hideForm() : void
      {
         this.§do for finally§ = false;
         this.§continue catch in§.stop();
         this.§break const catch§.§true package final§();
         §521423124592312472123423632234§.hideStartButtonHelper();
      }
      
      private function f644f13d() : void
      {
         var _loc1_:CreateBattleMapParams = this.e2d14682();
         var _loc2_:int = _loc1_.minRank < 1 ? 1 : _loc1_.minRank;
         var _loc5_:int = _loc1_.maxRank > 30 ? 30 : _loc1_.maxRank;
         var _loc6_:int = this.§break const catch§.§package package finally§();
         if(_loc2_ < this.§false const final§ - _loc6_)
         {
            _loc2_ = this.§false const final§ - _loc6_;
         }
         if(_loc5_ > this.§false const final§ + _loc6_)
         {
            _loc5_ = this.§false const final§ + _loc6_;
         }
         this.§break const catch§.§5214239212239225123423632234§(_loc2_,_loc5_,1);
         var _loc3_:int = this.§break const catch§.§each try§();
         var _loc4_:int = this.§break const catch§.§5214236705236718123423632234§();
         if(this.§false const final§ + _loc6_ <= this.§break const catch§.§521423108122310825123423632234§())
         {
            this.§break const catch§.§catch package true§(this.§false const final§ + _loc6_);
         }
         else
         {
            this.§break const catch§.§catch package true§(this.§break const catch§.§521423108122310825123423632234§());
         }
         _loc4_ = this.§break const catch§.§5214236705236718123423632234§();
         if(_loc4_ - this.§false const final§ < _loc6_)
         {
            if(_loc4_ - _loc6_ >= this.§break const catch§.§521423133292313342123423632234§())
            {
               this.§break const catch§.§5214231081231094123423632234§(_loc4_ - _loc6_);
            }
            else
            {
               this.§break const catch§.§5214231081231094123423632234§(this.§break const catch§.§521423133292313342123423632234§());
            }
         }
         else
         {
            this.§break const catch§.§5214231081231094123423632234§(this.§false const final§);
         }
      }
      
      private function c67e9ffe() : void
      {
         if(!this.e436458())
         {
            this.e4702bb();
         }
      }
      
      private function c2476656(param1:§dynamic include§) : void
      {
         if(this.d9b7d30(param1))
         {
            this.onSelected(param1);
         }
         else
         {
            this.onSelected(this.e2d14682().battleModes[0]);
         }
      }
      
      private function a18b479d(param1:Long, param2:String) : CreateBattleMapParams
      {
         var _loc3_:int = int(this.§else switch else§.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            var _loc5_:Long;
            if(param1 != null && this.§else switch else§[_loc4_].previewResource.id.low == (_loc5_ = param1).b34eb168 && this.§else switch else§[_loc4_].themeName == param2)
            {
               return this.§else switch else§[_loc4_];
            }
            _loc4_++;
         }
         return null;
      }
      
      private function e2d14682() : CreateBattleMapParams
      {
         var _loc1_:String = this.§break const catch§.§set package default§().id;
         return CreateBattleMapParams(this.§finally use throw§[_loc1_][this.§do use extends§]);
      }
      
      private function d25e4dcc() : String
      {
         return this.e2d14682().gameName + " " + this.§5214231122231135123423632234§.§extends set case§;
      }
      
      public function setRank(param1:int) : void
      {
         if(this.§do for finally§)
         {
            this.showForm(param1);
         }
      }
      
      public function onMapChange() : void
      {
         this.e13b6374();
         this.b5d14a2a();
      }
      
      private function c6a61580() : SaveMapParams
      {
         var _loc1_:SaveMapParams = new SaveMapParams();
         var _loc2_:SharedObject = §if catch include§.getStorage();
         var _loc3_:Vector.<Object> = _loc2_.data.SelectedMap != null && _loc2_.data.SelectedMap is Vector.<Object> ? _loc2_.data.SelectedMap as Vector.<Object> : new Vector.<Object>();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(_loc3_[_loc4_].userName == §52142329523308123423632234§.userName)
            {
               _loc1_.mapId = Long.getLong(int(_loc3_[_loc4_].mapIdHigh),int(_loc3_[_loc4_].mapIdLow));
               _loc1_.themeName = _loc3_[_loc4_].mapTheme;
               break;
            }
            _loc4_++;
         }
         return _loc1_;
      }
      
      private function e1680ae4(param1:Vector.<§521423120252312038123423632234§>) : void
      {
         var _loc4_:SaveMapParams = null;
         var _loc2_:§521423120252312038123423632234§ = null;
         var _loc7_:§521423117842311797123423632234§ = null;
         var _loc8_:CreateBattleMapParams = null;
         var _loc5_:§null override§ = null;
         this.§else switch else§ = [];
         var _loc6_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc6_)
         {
            _loc2_ = param1[_loc3_];
            _loc7_ = §521423117842311797123423632234§(_loc2_.adapt(§521423117842311797123423632234§));
            _loc8_ = new CreateBattleMapParams();
            _loc8_.index = _loc3_;
            _loc8_.id = _loc7_.getMapId();
            _loc8_.previewResource = _loc7_.getPreviewResource();
            _loc8_.gameName = _loc7_.getName();
            _loc8_.maxPeople = _loc7_.getMaxPeople();
            _loc8_.maxRank = _loc7_.getMaxRank();
            _loc8_.minRank = _loc7_.getMinRank();
            _loc8_.themeName = _loc7_.getThemeName();
            _loc8_.theme = _loc7_.getTheme();
            _loc8_.battleModes = _loc7_.getSupportedBattleModes();
            _loc8_.enabled = _loc7_.isEnabled();
            _loc5_ = §null override§(_loc2_.adapt(§null override§));
            _loc8_.clanName = _loc5_.getClanName();
            _loc8_.clanLink = _loc5_.getClanLink();
            _loc8_.additionalCrystalsPercent = _loc7_.getAdditionalCrystalsPercent();
            _loc4_ = this.c6a61580();
            var _loc9_:§include catch with§;
            _loc8_.defaultMap = _loc4_ != null && _loc4_.mapId == (_loc9_ = _loc7_.getPreviewResource()).§5214239618239631123423632234§.id && _loc4_.themeName == _loc7_.getThemeName();
            this.§else switch else§.push(_loc8_);
            _loc3_++;
         }
      }
      
      public function onBattleNameOutFocus() : void
      {
         if(this.§break const catch§.§do super§() == 0)
         {
            this.a7363add();
            if(this.b87f8c7())
            {
               this.§break const catch§.§5214235031235044123423632234§();
            }
         }
      }
      
      private function f732cfe() : void
      {
         this.§break const catch§.§do default§(this.e2d14682().battleModes);
      }
      
      private function c3237d4d(param1:CreateBattleMapParams) : Boolean
      {
         return param1 != null && param1.enabled && this.§false const final§ >= param1.minRank && this.§false const final§ <= param1.maxRank;
      }
      
      public function onTimeLimitChange() : void
      {
         this.§521423114762311489123423632234§ = this.§break const catch§.§5214232138232151123423632234§() * 60;
         if(this.§function catch get§)
         {
            this.b56fb601();
         }
      }
      
      private function f30fdadd(param1:TimerEvent) : void
      {
         this.§break const catch§.§in var if§();
         this.§break const catch§.§function for§();
         this.§null set final§ = this.§break const catch§.§override var native§();
         this.§continue catch in§.stop();
         dispatchEvent(new CheckBattleNameEvent("CheckBattleNameEvent.CHECK_NAME",this.§null set final§));
      }
      
      private function f2bec8f2() : void
      {
         this.§break const catch§.§set set static§(this.§5214231122231135123423632234§);
         var _loc1_:int = this.e2d14682().maxPeople / 2;
         this.§52142388123894123423632234§ = _loc1_;
         this.§break const catch§.§521423106682310681123423632234§(1,_loc1_,this.§52142388123894123423632234§);
         this.§break const catch§.§return const finally§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§5214239290239303123423632234§ / 60,this.§521423114762311489123423632234§ / 60);
         this.§break const catch§.§5214236460236473123423632234§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§do set switch§,this.§catch for package§,50);
         this.§break const catch§.§native const with§();
         this.§break const catch§.§5214235310235323123423632234§();
         if(this.§521423112542311267123423632234§)
         {
            this.a7363add();
         }
      }
      
      public function onThemeChange() : void
      {
         this.§do use extends§ = this.§break const catch§.§with catch for§().themeName;
         this.b5d14a2a();
      }
      
      private function a73b38d() : Vector.<Object>
      {
         this.§521423133422313355123423632234§ = 0;
         var _loc1_:Vector.<Object> = new Vector.<Object>();
         _loc1_.push({
            "index":0,
            "gameName":§5214239416239429123423632234§.getEquipConstraintsFormatName(§521423127822312795123423632234§.§dynamic use false§),
            "equipmentConstraintsMode":§521423127822312795123423632234§.§dynamic use false§,
            "parkour":false,
            "rang":0
         },{
            "index":1,
            "gameName":§5214239416239429123423632234§.getEquipConstraintsFormatName(§521423127822312795123423632234§.§each const for§),
            "equipmentConstraintsMode":§521423127822312795123423632234§.§each const for§,
            "parkour":false,
            "rang":0
         },{
            "index":2,
            "gameName":§5214239416239429123423632234§.getEquipConstraintsFormatName(§521423127822312795123423632234§.§5214237311237324123423632234§),
            "equipmentConstraintsMode":§521423127822312795123423632234§.§5214237311237324123423632234§,
            "parkour":false,
            "rang":0
         },{
            "index":3,
            "gameName":§5214239416239429123423632234§.getEquipConstraintsFormatName(§521423127822312795123423632234§.§try class§),
            "equipmentConstraintsMode":§521423127822312795123423632234§.§try class§,
            "parkour":false,
            "rang":0
         },{
            "index":4,
            "gameName":§5214239416239429123423632234§.getParkourFormatName(),
            "equipmentConstraintsMode":§521423127822312795123423632234§.§dynamic use false§,
            "parkour":true,
            "rang":0
         });
         return _loc1_;
      }
      
      public function onPlayersNumberChange() : void
      {
         this.§52142388123894123423632234§ = this.§break const catch§.§implements const case§();
      }
      
      public function onFormatChange() : void
      {
         var _loc1_:§521423127822312795123423632234§ = null;
         if(!this.e436458())
         {
            _loc1_ = this.a6fb8aed();
            if(_loc1_ != §521423127822312795123423632234§.§dynamic use false§)
            {
               this.§break const catch§.§do for const§();
            }
         }
      }
      
      private function f72ee549() : void
      {
         this.§break const catch§.§set set static§(this.§5214231122231135123423632234§);
         var _loc1_:int = this.e2d14682().maxPeople / 2;
         this.§52142388123894123423632234§ = _loc1_;
         this.§break const catch§.§521423106682310681123423632234§(1,_loc1_,this.§52142388123894123423632234§);
         this.§break const catch§.§return const finally§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§5214239290239303123423632234§ / 60,this.§521423114762311489123423632234§ / 60);
         this.§break const catch§.§5214236460236473123423632234§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§do set switch§,this.§521423116462311659123423632234§,1);
         this.§break const catch§.§each package while§();
         this.§break const catch§.§5214235310235323123423632234§();
         if(this.§521423112542311267123423632234§)
         {
            this.a7363add();
         }
      }
      
      private function b87f8c7() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.§break const catch§.§do super§() != 0 && (this.§break const catch§.§5214232138232151123423632234§() != 0 || this.§break const catch§.§521423134452313458123423632234§() != 0))
         {
            _loc1_ = true;
         }
         return _loc1_;
      }
      
      private function e13b6374() : void
      {
         var _loc1_:Array = null;
         var _loc2_:* = null;
         var _loc6_:CreateBattleMapParams = null;
         var _loc7_:CreateBattleMapParams = null;
         var _loc4_:Object = null;
         var _loc5_:String = this.§break const catch§.§set package default§().id;
         var _loc3_:Dictionary = this.§finally use throw§[_loc5_];
         if(_loc3_ != null)
         {
            _loc1_ = [];
            for(_loc2_ in _loc3_)
            {
               _loc7_ = this.§finally use throw§[_loc5_][_loc2_];
               if(this.§false const final§ >= _loc7_.minRank && this.§false const final§ <= _loc7_.maxRank)
               {
                  _loc1_.push({
                     "gameName":_loc2_,
                     "id":_loc7_.id,
                     "rang":0,
                     "theme":_loc7_.theme
                  });
               }
            }
            _loc1_.sortOn(["gameName"]);
            this.§break const catch§.§5214237314237327123423632234§(_loc1_);
            _loc6_ = this.§finally use throw§[this.§break const catch§.§set package default§().id][this.§do use extends§];
            if(this.§do use extends§ != null && this.c3237d4d(_loc6_))
            {
               this.§break const catch§.§5214237883237896123423632234§("themeName",this.§do use extends§);
            }
            else
            {
               _loc4_ = this.§break const catch§.§with catch for§();
               this.§do use extends§ = _loc4_ != null ? _loc4_.themeName : null;
            }
            if(_loc1_.length > 1)
            {
               this.§break const catch§.§each use while§();
            }
            else
            {
               this.§break const catch§.§get var break§();
            }
         }
      }
      
      private function a6fb8aed() : §521423127822312795123423632234§
      {
         if(this.§break const catch§.§5214239893239906123423632234§)
         {
            return this.§break const catch§.§if catch static§().equipmentConstraintsMode;
         }
         return §521423127822312795123423632234§.§dynamic use false§;
      }
      
      private function updatePreview() : void
      {
         var _loc1_:§include catch with§ = this.e2d14682().previewResource;
         var _loc2_:§include catch with§ = _loc1_;
         if(_loc2_.§5214239618239631123423632234§.§521423137152313728123423632234§ && (_loc3_.§else for include§ & 1) == 0)
         {
            var _loc4_:§include catch with§;
            this.§5214232406232419123423632234§ = (_loc4_ = _loc1_).§5214239618239631123423632234§.id;
            _loc1_.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
         }
         this.§break const catch§.§521423119942312007123423632234§(_loc1_.data);
      }
      
      private function a452b1e4() : void
      {
         var _loc1_:Object = null;
         var _loc2_:SharedObject = §if catch include§.getStorage();
         var _loc5_:Vector.<Object> = _loc2_.data.SelectedMap != null && _loc2_.data.SelectedMap is Vector.<Object> ? _loc2_.data.SelectedMap as Vector.<Object> : new Vector.<Object>();
         var _loc6_:* = -1;
         var _loc3_:int = 0;
         while(_loc3_ < _loc5_.length)
         {
            if(_loc5_[_loc3_].userName == §52142329523308123423632234§.userName)
            {
               _loc6_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         var _loc4_:CreateBattleMapParams = this.e2d14682();
         if(_loc6_ != -1)
         {
            var _loc8_:Long;
            var _loc7_:§include catch with§;
            _loc5_[_loc6_].mapIdLow = (_loc8_ = (_loc7_ = _loc4_.previewResource).§5214239618239631123423632234§.id).b34eb168;
            var _loc10_:Long;
            var _loc9_:§include catch with§;
            _loc5_[_loc6_].mapIdHigh = (_loc10_ = (_loc9_ = _loc4_.previewResource).§5214239618239631123423632234§.id).c3a10ab6;
            _loc5_[_loc6_].mapTheme = _loc4_.themeName;
         }
         else
         {
            _loc1_ = {};
            _loc1_.userName = §52142329523308123423632234§.userName;
            var _loc12_:Long;
            var _loc11_:§include catch with§;
            _loc1_.mapIdLow = (_loc12_ = (_loc11_ = _loc4_.previewResource).§5214239618239631123423632234§.id).b34eb168;
            var _loc14_:Long;
            var _loc13_:§include catch with§;
            _loc1_.mapIdHigh = (_loc14_ = (_loc13_ = _loc4_.previewResource).§5214239618239631123423632234§.id).c3a10ab6;
            _loc1_.mapTheme = _loc4_.themeName;
            _loc5_.push(_loc1_);
         }
         _loc2_.data.SelectedMap = _loc5_;
      }
      
      public function onScoreLimitChange() : void
      {
         switch(this.§5214231122231135123423632234§)
         {
            case §dynamic include§.§import const native§:
            case §dynamic include§.§continue catch super§:
               this.§return use in§ = this.§break const catch§.§521423134452313458123423632234§();
               break;
            case §dynamic include§.§return package native§:
               this.§521423116462311659123423632234§ = this.§break const catch§.§521423134452313458123423632234§();
               break;
            case §dynamic include§.§catch package use§:
               this.§catch for package§ = this.§break const catch§.§521423134452313458123423632234§();
               break;
            case §dynamic include§.§final finally dynamic§:
               this.§521423140122314025123423632234§ = this.§break const catch§.§521423134452313458123423632234§();
         }
         if(this.§function catch get§)
         {
            this.b56fb601();
         }
      }
      
      private function b22486a6() : void
      {
         this.§break const catch§.§set set static§(this.§5214231122231135123423632234§);
         var _loc1_:int = this.e2d14682().maxPeople / 2;
         this.§52142388123894123423632234§ = _loc1_;
         this.§break const catch§.§521423106682310681123423632234§(1,_loc1_,this.§52142388123894123423632234§);
         this.§break const catch§.§return const finally§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§5214239290239303123423632234§ / 60,this.§521423114762311489123423632234§ / 60);
         this.§break const catch§.§5214236460236473123423632234§(0,this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§do set switch§,this.§return use in§,5);
         this.§break const catch§.§extends switch case§();
         this.§break const catch§.§5214235310235323123423632234§();
         if(this.§521423112542311267123423632234§)
         {
            this.a7363add();
         }
      }
      
      private function d9b7d30(param1:§dynamic include§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Vector.<§dynamic include§> = this.e2d14682().battleModes;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(_loc3_[_loc4_] == param1)
            {
               _loc2_ = true;
               break;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function onSelected(param1:§dynamic include§) : void
      {
         this.§5214231122231135123423632234§ = param1;
         var _loc2_:int = this.§5214237022237035123423632234§[this.§5214231122231135123423632234§.value].§5214239290239303123423632234§;
         if(this.§521423114762311489123423632234§ > _loc2_)
         {
            this.§521423114762311489123423632234§ = _loc2_;
         }
         switch(this.§5214231122231135123423632234§)
         {
            case §dynamic include§.§import const native§:
               this.d6859eff();
               break;
            case §dynamic include§.§continue catch super§:
               this.b22486a6();
               break;
            case §dynamic include§.§return package native§:
               this.f72ee549();
               break;
            case §dynamic include§.§catch package use§:
               this.f2bec8f2();
               break;
            case §dynamic include§.§final finally dynamic§:
               this.c54dbe69();
         }
      }
   }
}

