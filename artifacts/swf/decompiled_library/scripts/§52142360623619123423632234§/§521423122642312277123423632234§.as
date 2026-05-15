package §52142360623619123423632234§
{
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214237930237943123423632234§.§final switch return§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238361238374123423632234§.§get catch§;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.physics.collision.colliders.BoxSphereCollider;
   import alternativa.tanks.battle.§5214234639234652123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.sfx.Blinker;
   import §do catch return§.§5214232252232265123423632234§;
   import §do catch return§.§function set static§;
   import §each var null§.§521423119402311953123423632234§;
   import §each var null§.§const throw§;
   import §else switch default§.§5214235140235153123423632234§;
   import §else switch default§.§override for default§;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §set package in§.ClientObject;
   
   public class §521423122642312277123423632234§ extends §final switch return§ implements §5214234639234652123423632234§, §override for default§
   {
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §5214237148237161123423632234§:int = 1;
      
      private static const §521423104242310437123423632234§:int = 2;
      
      private static const §521423104762310489123423632234§:int = 3;
      
      private static const §5214233588233601123423632234§:int = 320;
      
      private static const §5214231508231521123423632234§:int = 22;
      
      private static const §5214231954231967123423632234§:int = 12;
      
      private static const §5214236064236077123423632234§:Number = 0.2;
      
      private static const §5214237474237487123423632234§:Number = 10;
      
      public static var §static catch const§:Mesh;
      
      private static const §switch super§:Vector3 = new Vector3();
      
      private static const §break package return§:BoxSphereCollider = new BoxSphereCollider();
      
      public var §switch for catch§:§521423122642312277123423632234§;
      
      public var §break for throw§:§521423122642312277123423632234§;
      
      public var id:String;
      
      public var §5214236536236549123423632234§:String;
      
      public var §try use override§:§function set static§ = new §function set static§(1,8,§521423119402311953123423632234§.§with catch class§);
      
      public var §dynamic final§:Vector3 = new Vector3();
      
      public var §521423123362312349123423632234§:Vector3 = new Vector3();
      
      private var §set const break§:§5214231157231170123423632234§;
      
      private var §5214238124238137123423632234§:§5214231658231671123423632234§;
      
      private var §class const dynamic§:Mesh;
      
      private var §implements catch catch§:§static set in§ = §static set in§.§5214231571231584123423632234§;
      
      private var §5214232571232584123423632234§:§5214234312234325123423632234§;
      
      private var §5214233061233074123423632234§:int;
      
      private var §throw catch false§:int;
      
      private var §5214235465235478123423632234§:ColorTransform = new ColorTransform();
      
      private const §true set implements§:Blinker = new Blinker(320,22,12,0.2,1,10);
      
      public var §implements package while§:§5214239411239424123423632234§;
      
      private var §with set with§:Boolean;
      
      private var §final switch set§:§5214231699231712123423632234§;
      
      private var §5214239907239920123423632234§:Boolean = false;
      
      public var §dynamic const null§:int = 1;
      
      public function §521423122642312277123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§class const dynamic§ = Mesh(§static catch const§.clone());
      }
      
      public static function §52142342923442123423632234§(param1:String, param2:String, param3:Number, param4:Mesh, param5:Material, param6:§5214231658231671123423632234§, param7:§5214234312234325123423632234§, param8:§5214231157231170123423632234§, param9:§5214231699231712123423632234§) : §521423122642312277123423632234§
      {
         var _loc10_:§521423122642312277123423632234§ = §521423122642312277123423632234§(§52142380523818123423632234§.getObjectPool().§52142349423507123423632234§(§521423122642312277123423632234§));
         _loc10_.init(param1,param2,param3,param5,param6,param7,param8,param9);
         return _loc10_;
      }
      
      public function render(param1:int, param2:int) : void
      {
         if(this.§implements catch catch§ == §static set in§.§5214231571231584123423632234§)
         {
            this.§class const dynamic§.alpha = this.§true set implements§.updateValue(param1,param2);
         }
         else if(this.§implements catch catch§ == §static set in§.§super switch extends§)
         {
            if(this.§throw catch false§ != 3)
            {
               this.§dynamic const extends§(param1);
            }
            else
            {
               this.§else throw§();
            }
         }
      }
      
      public function §5214233236233249123423632234§(param1:Vector3, param2:Vector3) : void
      {
         this.§dynamic final§.copy(param1);
         this.§521423123362312349123423632234§.copy(param2);
         this.§class const dynamic§.x = param1.x;
         this.§class const dynamic§.y = param1.y;
         this.§class const dynamic§.z = param1.z;
         §switch super§.cross2(Vector3.§521423109692310982123423632234§,param2).normalize();
         var _loc4_:Number = Math.acos(param2.dot(Vector3.§521423109692310982123423632234§));
         var _loc5_:Matrix3 = new Matrix3();
         _loc5_.fromAxisAngle(§switch super§,_loc4_);
         _loc5_.getEulerAngles(§switch super§);
         this.§class const dynamic§.rotationX = §switch super§.x;
         this.§class const dynamic§.rotationY = §switch super§.y;
         this.§class const dynamic§.rotationZ = §switch super§.z;
         var _loc3_:Matrix4 = this.§try use override§.§try const throw§;
         _loc3_.setPosition(param1);
         this.§try use override§.§finally switch static§();
      }
      
      public function §5214237205237218123423632234§() : void
      {
         §52142380523818123423632234§.getBattleRunner().addTrigger(this);
         var _loc1_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc1_.§5214231991232004123423632234§(this,0);
         _loc1_.§5214231095231108123423632234§(this.§class const dynamic§);
      }
      
      private function §5214235068235081123423632234§(param1:uint) : void
      {
         this.§5214235465235478123423632234§.redOffset = param1;
         this.§5214235465235478123423632234§.greenOffset = param1;
         this.§5214235465235478123423632234§.blueOffset = param1;
         this.§class const dynamic§.colorTransform = this.§5214235465235478123423632234§;
      }
      
      private function init(param1:String, param2:String, param3:Number, param4:Material, param5:§5214231658231671123423632234§, param6:§5214234312234325123423632234§, param7:§5214231157231170123423632234§, param8:§5214231699231712123423632234§) : void
      {
         this.id = param1;
         this.§5214236536236549123423632234§ = param2;
         this.§while const native§(param3);
         this.§5214238124238137123423632234§ = param5;
         this.§5214232571232584123423632234§ = param6;
         this.§set const break§ = param7;
         this.§class const dynamic§.name = null;
         this.§class const dynamic§.colorTransform = null;
         this.§class const dynamic§.alpha = 1;
         this.§class const dynamic§.visible = true;
         this.§class const dynamic§.setMaterialToAllFaces(param4);
         this.§implements catch catch§ = §static set in§.§5214231571231584123423632234§;
         this.§throw catch false§ = 3;
         this.§5214233061233074123423632234§ = getTimer();
         this.§true set implements§.init(this.§5214233061233074123423632234§);
         this.§final switch set§ = param8;
      }
      
      public function checkTrigger(param1:§const throw§) : void
      {
         this.§implements package while§ = param1.§521423122212312234123423632234§;
         if(this.§5214236399236412123423632234§(this.§implements package while§))
         {
            if(this.§implements switch native§(this.§implements package while§))
            {
               if(!this.§with set with§)
               {
                  this.§with set with§ = true;
                  this.§set const break§.§package set default§(this);
               }
            }
            else
            {
               this.§with set with§ = false;
            }
         }
      }
      
      private function §else throw§() : void
      {
         if(this.§override for extends§())
         {
            this.§class const dynamic§.visible = true;
         }
         else if(this.§5214232592232605123423632234§())
         {
            this.§return var package§(this.§implements package while§);
         }
         else
         {
            this.§class const dynamic§.visible = false;
         }
      }
      
      private function §override for extends§() : Boolean
      {
         return §return set get§.isSpectatorMode() || this.§implements catch catch§ != §static set in§.§super switch extends§ || this.§5214232592232605123423632234§() && (this.§5214236536236549123423632234§ == this.§implements package while§.§do for final§.userName || this.§implements package while§.§try for const§(this.§5214238124238137123423632234§));
      }
      
      private function §5214232592232605123423632234§() : Boolean
      {
         return Boolean(this.§implements package while§) && this.§implements package while§.§do for final§.§5214231837231850123423632234§ > 0;
      }
      
      private function §implements switch native§(param1:§5214239411239424123423632234§) : Boolean
      {
         var _loc2_:§5214232252232265123423632234§ = param1.§521423125572312570123423632234§();
         return (_loc2_.collisionGroup & this.§try use override§.collisionGroup) != 0 && §break package return§.haveCollision(_loc2_,this.§try use override§);
      }
      
      private function §while const native§(param1:Number) : void
      {
         this.§try use override§.§with var false§ = param1;
         this.§try use override§.§finally switch static§();
      }
      
      private function §5214236399236412123423632234§(param1:§5214239411239424123423632234§) : Boolean
      {
         return this.§implements catch catch§ == §static set in§.§super switch extends§ && this.§5214236536236549123423632234§ != param1.§do for final§.userName && !param1.§try for const§(this.§5214238124238137123423632234§) && param1.§implements catch catch§ == §get catch§.§52142350323516123423632234§;
      }
      
      public function §finally extends§() : void
      {
         §52142380523818123423632234§.getBattleRunner().removeTrigger(this);
         var _loc1_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc1_.§521423129322312945123423632234§(this,0);
         if(this.§5214239907239920123423632234§)
         {
            this.§final switch set§.§5214236500236513123423632234§(this.§class const dynamic§);
            this.§5214239907239920123423632234§ = false;
         }
         else
         {
            _loc1_.§5214233649233662123423632234§(this.§class const dynamic§);
         }
      }
      
      private function §5214239149239162123423632234§() : void
      {
         if(this.§final switch set§ != null)
         {
            §52142380523818123423632234§.getBattleScene3D().§5214233649233662123423632234§(this.§class const dynamic§);
            this.§final switch set§.§521423113372311350123423632234§(this.§class const dynamic§);
            this.§5214239907239920123423632234§ = true;
         }
      }
      
      private function §return var package§(param1:§5214239411239424123423632234§) : void
      {
         var _loc3_:Number = NaN;
         this.§class const dynamic§.visible = true;
         §switch super§.diff(param1.§break switch catch§().§implements catch catch§.§dynamic final§,this.§dynamic final§);
         var _loc2_:Number = §switch super§.length();
         if(_loc2_ > this.§5214232571232584123423632234§.§5214235719235732123423632234§ * 0.98)
         {
            this.§class const dynamic§.visible = false;
         }
         else if(_loc2_ < this.§5214232571232584123423632234§.§throw use finally§ * 1.04)
         {
            this.§class const dynamic§.alpha = 1;
         }
         else
         {
            _loc3_ = (this.§5214232571232584123423632234§.§5214235719235732123423632234§ - _loc2_) / (this.§5214232571232584123423632234§.§5214235719235732123423632234§ - this.§5214232571232584123423632234§.§throw use finally§);
            this.§class const dynamic§.alpha = 1 - Math.pow(1 - _loc3_,this.§dynamic const null§);
         }
      }
      
      public function §extends switch override§(param1:Boolean = false) : void
      {
         this.§implements catch catch§ = §static set in§.§super switch extends§;
         this.§class const dynamic§.visible = !param1;
         this.§5214233061233074123423632234§ = getTimer();
         this.§throw catch false§ = 1;
         this.§class const dynamic§.colorTransform = this.§5214235465235478123423632234§;
         this.§class const dynamic§.alpha = 1;
         if(this.§5214239907239920123423632234§)
         {
            this.§final switch set§.§5214236500236513123423632234§(this.§class const dynamic§);
            §52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(this.§class const dynamic§);
            this.§5214239907239920123423632234§ = false;
         }
      }
      
      public function §5214238823101123423632234§() : void
      {
         this.id = null;
         this.§5214236536236549123423632234§ = null;
         this.§5214232571232584123423632234§ = null;
         this.§final switch set§ = null;
         this.§dynamic const null§ = 1;
         this.§5214239907239920123423632234§ = false;
         this.§implements package while§ = null;
         this.§with set with§ = false;
         this.§switch for catch§ = null;
         §521423117092311722123423632234§();
      }
      
      private function §dynamic const extends§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:ClientObject = null;
         switch(this.§throw catch false§ - 1)
         {
            case 0:
               if(param1 < this.§5214233061233074123423632234§ + this.§5214232571232584123423632234§.§5214231130231143123423632234§)
               {
                  this.§5214235068235081123423632234§(this.§5214232571232584123423632234§.§5214238375238388123423632234§ * (param1 - this.§5214233061233074123423632234§) / this.§5214232571232584123423632234§.§5214231130231143123423632234§);
                  break;
               }
               this.§5214235068235081123423632234§(this.§5214232571232584123423632234§.§5214238375238388123423632234§);
               this.§5214233061233074123423632234§ += this.§5214232571232584123423632234§.§5214231130231143123423632234§ + this.§5214232571232584123423632234§.§5214236625236638123423632234§;
               this.§throw catch false§ = 2;
               break;
            case 1:
               if(param1 < this.§5214233061233074123423632234§)
               {
                  this.§5214235068235081123423632234§(this.§5214232571232584123423632234§.§5214238375238388123423632234§ * (this.§5214233061233074123423632234§ - param1) / this.§5214232571232584123423632234§.§5214236625236638123423632234§);
                  break;
               }
               this.§5214235068235081123423632234§(0);
               this.§class const dynamic§.colorTransform = null;
               _loc2_ = §return set get§.isSpectatorMode();
               if(this.§implements package while§ == null && !_loc2_)
               {
                  return;
               }
               this.§throw catch false§ = 3;
               if(this.§5214239907239920123423632234§)
               {
                  return;
               }
               _loc3_ = _loc2_ ? null : this.§implements package while§.§5214233939233952123423632234§();
               if(_loc2_ || this.§implements package while§.§try for const§(§5214238124238137123423632234§) || _loc3_ != null && _loc3_.id == §5214236536236549123423632234§)
               {
                  this.§5214239149239162123423632234§();
                  break;
               }
               this.§final switch set§ = null;
         }
      }
   }
}

