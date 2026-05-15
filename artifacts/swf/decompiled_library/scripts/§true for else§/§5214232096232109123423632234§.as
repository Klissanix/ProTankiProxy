package §true for else§
{
   import §52142328223295123423632234§.§521423131422313155123423632234§;
   import §5214235774235787123423632234§.§5214236557236570123423632234§;
   import §5214235774235787123423632234§.§super var dynamic§;
   import §5214237208237221123423632234§.§false for include§;
   import §5214237930237943123423632234§.§5214236270236283123423632234§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import §5214238868238881123423632234§.§else const final§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.utils.TextureMaterialRegistry;
   import §continue package native§.§5214235416235429123423632234§;
   import §each var null§.§const throw§;
   import flash.display.BitmapData;
   
   public class §5214232096232109123423632234§ extends §false for include§
   {
      
      public static var §521423119962312009123423632234§:TextureMaterialRegistry;
      
      public static var §try const const§:BitmapData;
      
      public static var §class package set§:Mesh;
      
      private var §var for get§:Number;
      
      private var §5214234597234610123423632234§:§521423120912312104123423632234§;
      
      private var §if set implements§:TextureMaterial;
      
      private var §extends var override§:Mesh;
      
      private var §try const continue§:§5214235416235429123423632234§;
      
      private var §5214236311236324123423632234§:Number;
      
      private var §native use function§:Vector3 = new Vector3();
      
      private var §5214232704232717123423632234§:Vector3 = new Vector3();
      
      private var §52142399902310003123423632234§:Vector3 = new Vector3();
      
      private var §const switch for§:Vector3 = new Vector3();
      
      private var §521423135652313578123423632234§:§521423131422313155123423632234§;
      
      public function §5214232096232109123423632234§(param1:§5214236270236283123423632234§)
      {
         super(param1);
         this.§extends var override§ = Mesh(§class package set§.clone());
      }
      
      public static function §do package else§(param1:Number, param2:Vector3, param3:Vector3, param4:Vector3, param5:Vector3, param6:Vector3, param7:Number) : void
      {
         param3.copy(param2);
         param5.copy(param4);
         var _loc8_:Number = §52142380523818123423632234§.getBattleRunner().getGravity() * param7;
         param2.addScaled(param1,param6).addScaled(param1 * param1 / 2 * _loc8_,Vector3.§521423109692310982123423632234§);
         param6.addScaled(_loc8_ * param1,Vector3.§521423109692310982123423632234§);
         param4.copy(param6).normalize();
      }
      
      override protected function §try switch catch§() : Number
      {
         return this.§5214236311236324123423632234§;
      }
      
      override protected function §521423133212313334123423632234§(param1:§const throw§, param2:Vector3, param3:Vector3, param4:Number, param5:int) : void
      {
         var _loc7_:§5214239411239424123423632234§ = null;
         super.§521423133212313334123423632234§(param1,param2,param3,param4,param5);
         if(this.§5214234597234610123423632234§ == null)
         {
            return;
         }
         if(!this.§5214234597234610123423632234§.§521423122942312307123423632234§())
         {
            this.destroy();
            return;
         }
         var _loc6_:§5214236557236570123423632234§ = this.§5214234597234610123423632234§.§52142349423507123423632234§().getParams(§super var dynamic§) as §5214236557236570123423632234§;
         this.§5214234597234610123423632234§.§5214233585233598123423632234§().§get package extends§(_loc6_.§catch use continue§,param2,1,param1);
         if(BattleUtils.isTankBody(param1))
         {
            _loc7_ = param1.§521423122212312234123423632234§;
            _loc7_.§5214239340239353123423632234§(param2,param3,this.§var for get§);
            this.§5214234597234610123423632234§.§5214236379236392123423632234§().§52142388823901123423632234§(§5214233952233965123423632234§(),§super package catch§,param1.§521423122212312234123423632234§);
         }
         else
         {
            this.§5214234597234610123423632234§.§5214236379236392123423632234§().§52142388823901123423632234§(§5214233952233965123423632234§(),§super package catch§);
         }
         this.§521423135652313578123423632234§.§5214237799237812123423632234§(param2,param3);
         this.destroy();
      }
      
      override public function interpolatePhysicsState(param1:Number) : void
      {
         super.interpolatePhysicsState(param1);
         this.§52142399902310003123423632234§.interpolate(param1,this.§5214232704232717123423632234§,§521423109142310927123423632234§);
         this.§52142399902310003123423632234§.normalize();
      }
      
      override public function render(param1:int, param2:int) : void
      {
         var _loc3_:Number = param2 / §function const include§.§521423128592312872123423632234§();
         this.§extends var override§.x = §5214235411235424123423632234§.x;
         this.§extends var override§.y = §5214235411235424123423632234§.y;
         this.§extends var override§.z = §5214235411235424123423632234§.z;
         var _loc5_:Matrix3 = BattleUtils.§catch set else§;
         _loc5_.setAxis(this.§const switch for§,this.§52142399902310003123423632234§,BattleUtils.§switch for default§.cross2(this.§const switch for§,this.§52142399902310003123423632234§).normalize());
         var _loc4_:Vector3 = BattleUtils.§switch for default§;
         _loc5_.getEulerAngles(_loc4_);
         this.§extends var override§.rotationX = _loc4_.x;
         this.§extends var override§.rotationY = _loc4_.y;
         this.§extends var override§.rotationZ = _loc4_.z;
         this.§521423135652313578123423632234§.§5214239365239378123423632234§(_loc3_);
      }
      
      override protected function §5214231060231073123423632234§() : Boolean
      {
         return super.§5214231060231073123423632234§() || §52142372223735123423632234§.z < §52142380523818123423632234§.getBattleScene3D().§else use class§() - 1000;
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         §52142380523818123423632234§.getBattleScene3D().§5214233649233662123423632234§(this.§extends var override§);
         §class final§ = null;
         §521423119962312009123423632234§.releaseMaterial(this.§if set implements§);
         this.§extends var override§.colorTransform = null;
         this.§5214234597234610123423632234§ = null;
         this.§521423135652313578123423632234§.destroy();
         this.§521423135652313578123423632234§ = null;
      }
      
      override protected function §static use class§(param1:Number) : void
      {
         if(this.§5214234597234610123423632234§.§521423122942312307123423632234§())
         {
            §do package else§(param1,§52142372223735123423632234§,§521423100282310041123423632234§,§521423109142310927123423632234§,this.§5214232704232717123423632234§,this.§native use function§,this.§try const continue§.§521423115462311559123423632234§);
            this.§521423135652313578123423632234§.§try set function§();
         }
         else
         {
            this.destroy();
         }
      }
      
      override protected function §5214239838239851123423632234§() : Number
      {
         return this.§try const continue§.§in use each§;
      }
      
      override public function §5214237205237218123423632234§(param1:§else const final§, param2:Vector3, param3:§const throw§, param4:int = -1) : void
      {
         super.§5214237205237218123423632234§(param1,param2,param3,param4);
         this.§native use function§.copy(param2).scale(this.§5214236311236324123423632234§);
         §52142380523818123423632234§.getBattleScene3D().§5214231095231108123423632234§(this.§extends var override§);
         this.§5214232704232717123423632234§.copy(param2);
         this.§const switch for§.copy(param1.§const switch for§);
         this.§521423135652313578123423632234§ = new §521423131422313155123423632234§(this.§extends var override§,this.§5214234597234610123423632234§.§var catch throw§().§5214231092231105123423632234§(this.§5214234597234610123423632234§.§52142349423507123423632234§()),this.§native use function§,param1,param2,this.§try const continue§.§521423115462311559123423632234§);
      }
      
      public function init(param1:§521423120912312104123423632234§, param2:§5214235416235429123423632234§, param3:Number) : void
      {
         this.§try const continue§ = param2;
         this.§5214236311236324123423632234§ = param3;
         this.§var for get§ = param1.§case for implements§().§5214231830231843123423632234§();
         this.§5214234597234610123423632234§ = param1;
         this.§if set implements§ = §521423119962312009123423632234§.getMaterial(§try const const§);
         this.§extends var override§.setMaterialToAllFaces(this.§if set implements§);
      }
   }
}

