package §5214233242233255123423632234§
{
   import §521423134112313424123423632234§.§const for class§;
   import §521423134112313424123423632234§.§use switch continue§;
   import §521423134112313424123423632234§.§while catch function§;
   import §521423138062313819123423632234§.§if set class§;
   import §5214233785233798123423632234§.§include return§;
   import §5214233785233798123423632234§.§native for dynamic§;
   import §5214236558236571123423632234§.§5214235818235831123423632234§;
   import §5214236944236957123423632234§.DiscreteSprite;
   import §521423832396123423632234§.§5214234734234747123423632234§;
   import §521423832396123423632234§.§5214238194238207123423632234§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.models.service.ClanMembersDataService;
   import alternativa.tanks.models.service.ClanService;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.clan.ClanUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   import §set switch use§.§5214232519232532123423632234§;
   
   public class §5214236221236234123423632234§ extends DiscreteSprite implements §const for class§, §while catch function§
   {
      
      public static var §const for import§:ClanService;
      
      public static var §5214234066234079123423632234§:ClanUserInfoService;
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §implements each§:ClanMembersDataService;
      
      private static var §5214239325239338123423632234§:§5214236221236234123423632234§;
      
      public static var §521423123542312367123423632234§:§5214235818235831123423632234§;
      
      private static var §while catch each§:String;
      
      private static const §5214236332236345123423632234§:int = 6;
      
      private static var §52142327923292123423632234§:Vector.<§const for class§> = new Vector.<§const for class§>();
      
      private var §521423108472310860123423632234§:§native for dynamic§;
      
      private var §5214234033234046123423632234§:§include return§;
      
      private var id:String;
      
      private var §5214238355238368123423632234§:int = 0;
      
      public function §5214236221236234123423632234§(param1:String, param2:String)
      {
         super();
         this.id = param1;
         §while catch each§ = param2;
         this.§521423108472310860123423632234§ = new §native for dynamic§();
         addChild(this.§521423108472310860123423632234§);
         this.§5214234033234046123423632234§ = new §include return§(0,0,4278985229);
         this.§5214234033234046123423632234§.x = 6;
         this.§5214234033234046123423632234§.y = 6;
         this.§521423108472310860123423632234§.addChild(this.§5214234033234046123423632234§);
         this.§5214237728237741123423632234§(§implements each§.getPermission(param2));
         §false var with§(this);
         §521423125692312582123423632234§.§5214232598232611123423632234§(this);
         addEventListener("rollOut",this.§521423128962312909123423632234§);
         §5214235917235930123423632234§.stage.addEventListener("click",this.§class const§);
         §5214235917235930123423632234§.stage.addEventListener("deactivate",this.§case use each§);
         §5214235917235930123423632234§.stage.addEventListener("keyUp",this.§521423135372313550123423632234§,false,-2);
      }
      
      public static function §package set true§(param1:§if set class§) : void
      {
         for each(var _loc2_ in §52142327923292123423632234§)
         {
            if(_loc2_.§each use get§ == param1.§each use get§)
            {
               _loc2_.§set switch return§(param1);
            }
         }
         §521423125692312582123423632234§.§get set final§();
      }
      
      public static function §521423136152313628123423632234§(param1:§const for class§) : void
      {
         var _loc2_:int = §52142327923292123423632234§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            §52142327923292123423632234§.splice(_loc2_,1);
         }
      }
      
      public static function resize(param1:int) : void
      {
         if(§5214239325239338123423632234§ != null)
         {
            §5214239325239338123423632234§.resize(param1);
         }
      }
      
      private static function §521423996231009123423632234§(param1:int) : §5214234734234747123423632234§
      {
         var _loc3_:Vector.<§5214234734234747123423632234§> = new <§5214234734234747123423632234§>[§5214234734234747123423632234§.§break switch else§,§5214234734234747123423632234§.§521423132412313254123423632234§,§5214234734234747123423632234§.§5214236910236923123423632234§,§5214234734234747123423632234§.§5214233694233707123423632234§,§5214234734234747123423632234§.§false package include§,§5214234734234747123423632234§.§5214231933231946123423632234§,§5214234734234747123423632234§.§override const const§];
         for each(var _loc2_ in _loc3_)
         {
            if(_loc2_.value == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §continue catch each§() : void
      {
         §52142327923292123423632234§ = new Vector.<§const for class§>();
      }
      
      public static function §5214238665238678123423632234§() : void
      {
         §52142327923292123423632234§ = new Vector.<§const for class§>();
      }
      
      public static function §5214239066239079123423632234§(param1:§use switch continue§) : void
      {
         var _loc2_:Point = null;
         if(§5214239325239338123423632234§ != null && §5214239325239338123423632234§.id == param1.§each use get§)
         {
            _loc2_ = param1.localToGlobal(new Point(0,0));
            §5214239325239338123423632234§.§5214239066239079123423632234§(_loc2_);
         }
      }
      
      public static function show(param1:String, param2:String, param3:§use switch continue§) : void
      {
         if(§5214239325239338123423632234§ != null)
         {
            §while use get§();
         }
         §5214239325239338123423632234§ = new §5214236221236234123423632234§(param1,param2);
         §5214239325239338123423632234§.§5214239066239079123423632234§(param3.localToGlobal(new Point(0,0)));
         §5214239325239338123423632234§.resize(§5214232519232532123423632234§.§5214232983232996123423632234§());
         §5214235917235930123423632234§.stage.addChild(§5214239325239338123423632234§);
      }
      
      public static function §false var with§(param1:§const for class§) : void
      {
         §52142327923292123423632234§.push(param1);
      }
      
      private static function §while use get§() : void
      {
         §5214239325239338123423632234§.parent.removeChild(§5214239325239338123423632234§);
         §5214239325239338123423632234§.§continue catch each§();
         §5214239325239338123423632234§ = null;
      }
      
      private function §class const§(param1:MouseEvent) : void
      {
         if(param1.target.parent != null && param1.target.parent as §use switch continue§ == null)
         {
            §while use get§();
         }
      }
      
      private function §521423135372313550123423632234§(param1:KeyboardEvent) : void
      {
         if(AlertUtils.isCancelKey(param1.keyCode))
         {
            param1.stopImmediatePropagation();
            §while use get§();
         }
      }
      
      private function §native catch var§(param1:MouseEvent) : void
      {
         var _loc2_:§use switch continue§ = null;
         if(§5214234066234079123423632234§.hasAction(§5214238194238207123423632234§.§5214237677237690123423632234§) && param1.target.parent != null && param1.target.parent as §use switch continue§ != null)
         {
            _loc2_ = param1.target.parent as §use switch continue§;
            §521423123542312367123423632234§.§5214233236233249123423632234§(§5214239325239338123423632234§.id,_loc2_.§default for package§);
            §while use get§();
         }
      }
      
      public function resize(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§use switch continue§ = null;
         this.§5214234033234046123423632234§.width = param1;
         this.§5214234033234046123423632234§.height = 18 * this.§5214238355238368123423632234§;
         _loc3_ = 0;
         while(_loc3_ < this.§5214234033234046123423632234§.numChildren)
         {
            if(this.§5214234033234046123423632234§.getChildAt(_loc3_) is §use switch continue§)
            {
               _loc2_ = §use switch continue§(this.§5214234033234046123423632234§.getChildAt(_loc3_));
               _loc2_.width = this.§5214234033234046123423632234§.width;
            }
            _loc3_++;
         }
         this.§521423108472310860123423632234§.width = param1 + 2 * 6;
         this.§521423108472310860123423632234§.height = 2 * 6 + this.§5214234033234046123423632234§.height;
      }
      
      public function §continue catch each§() : void
      {
         §521423136152313628123423632234§(this);
         §521423125692312582123423632234§.§5214239033239046123423632234§(this);
         removeEventListener("rollOut",this.§521423128962312909123423632234§);
         §5214235917235930123423632234§.stage.removeEventListener("click",this.§class const§);
         §5214235917235930123423632234§.stage.removeEventListener("deactivate",this.§case use each§);
         §5214235917235930123423632234§.stage.removeEventListener("keyUp",this.§521423135372313550123423632234§);
      }
      
      private function §5214237728237741123423632234§(param1:§5214234734234747123423632234§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§use switch continue§ = null;
         var _loc2_:int = 0;
         _loc3_ = param1.value + 1;
         while(_loc3_ < 6)
         {
            _loc4_ = §use switch continue§.§5214238616238629123423632234§(§521423996231009123423632234§(_loc3_));
            _loc4_.y = _loc2_;
            _loc4_.addEventListener("click",this.§native catch var§,false,0,true);
            this.§5214234033234046123423632234§.addChild(_loc4_);
            _loc2_ += 18;
            ++this.§5214238355238368123423632234§;
            _loc3_++;
         }
      }
      
      public function updateActions() : void
      {
         §while use get§();
      }
      
      public function §5214239066239079123423632234§(param1:Point) : void
      {
         §5214239325239338123423632234§.x = param1.x - 6;
         §5214239325239338123423632234§.y = param1.y - 6;
         if(§5214239325239338123423632234§.y > §5214235917235930123423632234§.stage.height - 60 - §5214239325239338123423632234§.height)
         {
            §5214239325239338123423632234§.y = §5214235917235930123423632234§.stage.height - 60 - §5214239325239338123423632234§.height;
         }
      }
      
      private function §case use each§(param1:Event) : void
      {
         §while use get§();
      }
      
      public function get §each use get§() : String
      {
         return this.id;
      }
      
      public function §set switch return§(param1:§if set class§) : void
      {
         §while use get§();
      }
      
      private function §521423128962312909123423632234§(param1:MouseEvent) : void
      {
         §while use get§();
      }
   }
}

