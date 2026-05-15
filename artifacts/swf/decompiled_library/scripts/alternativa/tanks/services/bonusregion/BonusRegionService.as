package alternativa.tanks.services.bonusregion
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214233087233100123423632234§.§throw for true§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Decal;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.BattleEventSupport;
   import alternativa.tanks.battle.events.BattleFinishEvent;
   import alternativa.tanks.battle.events.TankAddedToBattleEvent;
   import alternativa.tanks.battle.events.§if use default§;
   import alternativa.utils.TextureMaterialRegistry;
   import alternativa.utils.clearDictionary;
   import §class set do§.BattleBonus;
   import §const false§.TankDeadEvent;
   import §extends override§.BonusRegion;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §for catch for§.§5214234380234393123423632234§;
   import §static set§.§521423113842311397123423632234§;
   import §try catch var§.§5214233413233426123423632234§;
   import §try catch var§.§5214234821234834123423632234§;
   
   public class BonusRegionService implements IBonusRegionService, §if use default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      public static var §5214235868235881123423632234§:TextureMaterialRegistry;
      
      private static var §get set function§:BitmapData;
      
      private static const §5214236685236698123423632234§:int = 478;
      
      private static const §function var const§:Number = 0.1;
      
      private static const §try switch else§:Matrix3 = new Matrix3();
      
      private static const §import const true§:Matrix3 = new Matrix3();
      
      private static const §try use each§:Vector3 = new Vector3();
      
      private static const §static catch finally§:Vector3 = new Vector3();
      
      private var §5214238630238643123423632234§:BattleEventSupport;
      
      private var §if use for§:Dictionary;
      
      private var §521423135312313544123423632234§:Dictionary;
      
      private var §521423112382311251123423632234§:Boolean;
      
      private var §5214236234236247123423632234§:Boolean;
      
      private var §52142388023893123423632234§:§5214239411239424123423632234§;
      
      private var §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      public function BonusRegionService(param1:BattleEventDispatcher)
      {
         super();
         this.§5214238630238643123423632234§ = new BattleEventSupport(param1,this);
         this.§5214238630238643123423632234§.addEventHandler(BattleFinishEvent,this.b48735f2);
         this.§5214238630238643123423632234§.addEventHandler(TankAddedToBattleEvent,this.b3b06d40);
         this.§5214238630238643123423632234§.addEventHandler(TankDeadEvent,this.d24f521a);
      }
      
      private static function e3df6188(param1:Vector3, param2:Vector3, param3:TextureMaterial, param4:Number) : Mesh
      {
         var _loc11_:Number = NaN;
         var _loc5_:Decal = new Decal();
         var _loc12_:Number = 239;
         var _loc8_:Number = 0.5;
         var _loc6_:Vertex = _loc5_.addVertex(-_loc12_,_loc12_,_loc8_,0,0);
         var _loc7_:Vertex = _loc5_.addVertex(-_loc12_,-_loc12_,_loc8_,0,1);
         var _loc9_:Vertex = _loc5_.addVertex(_loc12_,-_loc12_,_loc8_,1,1);
         var _loc10_:Vertex = _loc5_.addVertex(_loc12_,_loc12_,_loc8_,1,0);
         _loc5_.addQuadFace(_loc6_,_loc7_,_loc9_,_loc10_,param3);
         _loc5_.calculateFacesNormals();
         _loc5_.calculateVerticesNormals();
         _loc5_.x = param1.x;
         _loc5_.y = param1.y;
         _loc5_.z = param1.z + 0.1;
         if(BattleBonus.isFlatSurface(param2))
         {
            §static catch finally§.reset(0,0,param4);
         }
         else
         {
            §try use each§.cross2(Vector3.§521423109692310982123423632234§,param2);
            §try use each§.normalize();
            _loc11_ = Math.acos(param2.z);
            §try switch else§.fromAxisAngle(§try use each§,_loc11_);
            §import const true§.setRotationMatrix(0,0,param4);
            §import const true§.append(§try switch else§);
            §import const true§.getEulerAngles(§static catch finally§);
         }
         _loc5_.rotationX = §static catch finally§.x;
         _loc5_.rotationY = §static catch finally§.y;
         _loc5_.rotationZ = §static catch finally§.z;
         return _loc5_;
      }
      
      private static function e75483c() : BitmapData
      {
         if(§get set function§ == null)
         {
            §get set function§ = new §throw for true§(65280);
         }
         return §get set function§;
      }
      
      public function showAll() : void
      {
         var _loc1_:int = getTimer();
         for each(var _loc2_ in this.§521423135312313544123423632234§)
         {
            if(this.§521423112382311251123423632234§ || _loc2_.regionType.value >= §521423113842311397123423632234§.§5214238363238376123423632234§.value)
            {
               _loc2_.show(_loc1_,1000);
            }
         }
      }
      
      public function enableForceShow() : void
      {
         this.§521423112382311251123423632234§ = true;
         this.§5214236234236247123423632234§ = false;
         var _loc1_:int = getTimer();
         for each(var _loc2_ in this.§521423135312313544123423632234§)
         {
            if(_loc2_.regionType.value < §521423113842311397123423632234§.§5214238363238376123423632234§.value)
            {
               _loc2_.enableForceShow(_loc1_);
            }
         }
      }
      
      private function d2fd01c8() : void
      {
         var _loc1_:BonusRegion = null;
         for(var _loc2_ in this.§521423135312313544123423632234§)
         {
            _loc1_ = this.§521423135312313544123423632234§[_loc2_];
            if(_loc1_.regionType.value >= §521423113842311397123423632234§.§5214238363238376123423632234§.value)
            {
               _loc1_.hideAndRemoveFromGame();
               delete this.§521423135312313544123423632234§[_loc2_];
            }
         }
      }
      
      private function d24f521a(param1:TankDeadEvent) : void
      {
         if(this.hasTank() && this.§52142388023893123423632234§ == param1.§52142366723680123423632234§)
         {
            this.b4b97501();
         }
      }
      
      private function hasTank() : Boolean
      {
         return this.§52142388023893123423632234§ != null;
      }
      
      public function prepare(param1:Vector.<§5214233413233426123423632234§>) : void
      {
         this.§521423112382311251123423632234§ = true;
         this.§5214236234236247123423632234§ = !this.§521423112382311251123423632234§;
         this.§5214238630238643123423632234§.activateHandlers();
         this.§521423135312313544123423632234§ = new Dictionary();
         this.bc8d1a8(param1);
      }
      
      public function setTank(param1:§5214239411239424123423632234§) : void
      {
         this.§52142388023893123423632234§ = param1;
         for each(var _loc2_ in this.§521423135312313544123423632234§)
         {
            _loc2_.setTank(param1);
         }
      }
      
      public function resetTank() : void
      {
         this.§52142388023893123423632234§ = null;
         for each(var _loc1_ in this.§521423135312313544123423632234§)
         {
            _loc1_.resetTank();
         }
         if(this.§521423112382311251123423632234§)
         {
            this.showAll();
         }
      }
      
      private function b4192a0c(param1:§5214234821234834123423632234§) : Boolean
      {
         var _loc5_:Vector3 = null;
         var _loc2_:Mesh = null;
         var _loc6_:BonusRegion = null;
         var _loc3_:Vector3 = BattleUtils.getVector3(param1.§dynamic final§);
         var _loc4_:§5214234380234393123423632234§ = §52142380523818123423632234§.getBattleRunner().getCollisionDetector();
         if(!this.d3a3aef5(param1) && _loc4_.§set use for§(_loc3_,Vector3.DOWN,16,10000000000,null,§5214235622235635123423632234§))
         {
            _loc5_ = §5214235622235635123423632234§.§dynamic final§.clone();
            _loc2_ = e3df6188(_loc5_,§5214235622235635123423632234§.§5214233761233774123423632234§,this.getMaterial(param1.§native finally§),param1.§else use extends§.§continue package false§);
            if(param1.§native finally§.value >= §521423113842311397123423632234§.§5214238363238376123423632234§.value)
            {
               _loc6_ = new BonusRegion(param1.§native finally§,_loc5_,_loc2_,true,false);
            }
            else
            {
               _loc6_ = new BonusRegion(param1.§native finally§,_loc5_,_loc2_,this.§521423112382311251123423632234§,this.§5214236234236247123423632234§);
            }
            _loc6_.addToGame();
            this.§521423135312313544123423632234§[_loc3_.toString()] = _loc6_;
            return true;
         }
         return false;
      }
      
      private function b3b06d40(param1:TankAddedToBattleEvent) : void
      {
         if(this.hasTank() && this.§52142388023893123423632234§.§5214233939233952123423632234§() == param1.tank.§5214233939233952123423632234§())
         {
            this.showAll();
         }
      }
      
      private function b4b97501() : void
      {
         var _loc1_:int = getTimer();
         for each(var _loc2_ in this.§521423135312313544123423632234§)
         {
            if(this.§521423112382311251123423632234§ || _loc2_.regionType.value >= §521423113842311397123423632234§.§5214238363238376123423632234§.value)
            {
               _loc2_.hide(_loc1_,3000);
            }
         }
      }
      
      public function enableForceHide() : void
      {
         this.§5214236234236247123423632234§ = true;
         this.§521423112382311251123423632234§ = false;
         var _loc1_:int = getTimer();
         for each(var _loc2_ in this.§521423135312313544123423632234§)
         {
            if(_loc2_.regionType.value < §521423113842311397123423632234§.§5214238363238376123423632234§.value)
            {
               _loc2_.enableForceHide(_loc1_);
            }
         }
      }
      
      private function getMaterial(param1:§521423113842311397123423632234§) : TextureMaterial
      {
         var _loc3_:BitmapData = this.§if use for§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = e75483c();
         }
         var _loc2_:TextureMaterial = §5214235868235881123423632234§.getMaterial(_loc3_);
         _loc2_.resolution = 478 / _loc2_.texture.width;
         return _loc2_;
      }
      
      public function addAndShowRegion(param1:§5214234821234834123423632234§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Vector3 = null;
         var _loc4_:BonusRegion = null;
         if(!this.d3a3aef5(param1))
         {
            _loc2_ = this.b4192a0c(param1);
            if(!_loc2_)
            {
               return;
            }
            _loc3_ = BattleUtils.getVector3(param1.§dynamic final§);
            _loc4_ = this.§521423135312313544123423632234§[_loc3_.toString()];
            _loc4_.addAndShow(this.§52142388023893123423632234§);
         }
      }
      
      private function e46ef7eb() : void
      {
         clearDictionary(this.§if use for§);
         this.§if use for§ = null;
      }
      
      private function f4e4f606() : void
      {
         for each(var _loc1_ in this.§521423135312313544123423632234§)
         {
            _loc1_.removeFromGame();
         }
         clearDictionary(this.§521423135312313544123423632234§);
         this.§521423135312313544123423632234§ = null;
      }
      
      public function destroy() : void
      {
         this.§5214238630238643123423632234§.deactivateHandlers();
         if(this.§521423135312313544123423632234§ != null)
         {
            this.f4e4f606();
         }
         if(this.§if use for§ != null)
         {
            this.e46ef7eb();
         }
         this.§52142388023893123423632234§ = null;
      }
      
      private function bc8d1a8(param1:Vector.<§5214233413233426123423632234§>) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§5214233413233426123423632234§ = null;
         this.§if use for§ = new Dictionary();
         var _loc2_:int = int(param1.length);
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1[_loc3_];
            this.§if use for§[_loc4_.§native finally§] = _loc4_.§5214239206239219123423632234§.data;
            _loc3_++;
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§5214238630238643123423632234§.handleBattleEvent(param1);
      }
      
      public function toggleRegionsVisible() : void
      {
         if(this.§521423112382311251123423632234§)
         {
            this.enableForceHide();
         }
         else if(this.§5214236234236247123423632234§)
         {
            this.enableForceShow();
         }
      }
      
      public function addFewRegions(param1:Vector.<§5214234821234834123423632234§>) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = int(param1.length);
         while(_loc3_ < _loc2_)
         {
            this.b4192a0c(param1[_loc3_]);
            _loc3_++;
         }
      }
      
      public function changeTank(param1:§5214239411239424123423632234§) : void
      {
         var _loc2_:int = 0;
         if(!this.hasTank() || this.hasTank() && this.§52142388023893123423632234§.§5214233939233952123423632234§() != param1.§5214233939233952123423632234§())
         {
            this.§52142388023893123423632234§ = param1;
            _loc2_ = getTimer();
            for each(var _loc3_ in this.§521423135312313544123423632234§)
            {
               _loc3_.changeTank(_loc2_,param1);
            }
         }
      }
      
      private function b48735f2(param1:BattleFinishEvent) : void
      {
         this.d2fd01c8();
         if(this.§521423112382311251123423632234§ && !this.hasTank())
         {
            this.showAll();
         }
         else
         {
            this.b4b97501();
         }
      }
      
      public function hideAndRemoveRegion(param1:§5214234821234834123423632234§) : void
      {
         var _loc2_:Vector3 = null;
         var _loc3_:BonusRegion = null;
         if(this.d3a3aef5(param1))
         {
            _loc2_ = BattleUtils.getVector3(param1.§dynamic final§);
            _loc3_ = this.§521423135312313544123423632234§[_loc2_.toString()];
            _loc3_.hideAndRemoveFromGame();
            delete this.§521423135312313544123423632234§[_loc2_.toString()];
         }
      }
      
      private function d3a3aef5(param1:§5214234821234834123423632234§) : Boolean
      {
         var _loc2_:Vector3 = BattleUtils.getVector3(param1.§dynamic final§);
         return this.§521423135312313544123423632234§[_loc2_.toString()] != undefined;
      }
   }
}

