package §5214232446232459123423632234§
{
   import §5214237380237393123423632234§.§if switch throw§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.Display;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.BattleUtils;
   import alternativa.tanks.battle.BattleView;
   import §var set var§.§521423132492313262123423632234§;
   
   public class §default set else§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private var §5214239291239304123423632234§:§521423132492313262123423632234§;
      
      private var §5214235326235339123423632234§:§if switch throw§;
      
      public function §default set else§(param1:§if switch throw§)
      {
         super();
         this.§5214235326235339123423632234§ = param1;
         this.§5214239291239304123423632234§ = §52142380523818123423632234§.getBattleScene3D().§while set for§();
      }
      
      public function §521423120402312053123423632234§(param1:Vector3) : void
      {
         var _loc3_:BattleView = null;
         var _loc10_:Number = Number(this.§5214239291239304123423632234§.focalLength);
         var _loc11_:Number = this.§5214239291239304123423632234§.viewSizeX / Display.§521423132512313264123423632234§;
         var _loc8_:Number = this.§5214239291239304123423632234§.viewSizeY / Display.§521423132512313264123423632234§;
         var _loc9_:Number = Math.atan((_loc8_ + this.§5214235326235339123423632234§.height / 2) / _loc10_);
         var _loc6_:Number = Math.atan((_loc11_ + this.§5214235326235339123423632234§.width / 2) / _loc10_);
         var _loc7_:Matrix3 = BattleUtils.§catch set else§;
         _loc7_.setRotationMatrixForObject3D(this.§5214239291239304123423632234§);
         var _loc5_:Vector3 = BattleUtils.§switch for default§;
         _loc7_.transformVectorInverse(param1,_loc5_);
         var _loc4_:Number = Math.atan2(_loc5_.x,_loc5_.z);
         var _loc2_:Number = Math.atan2(_loc5_.y,_loc5_.z);
         this.§5214235326235339123423632234§.visible = Math.abs(_loc2_) <= _loc9_ && Math.abs(_loc4_) <= _loc6_;
         if(this.§5214235326235339123423632234§.visible)
         {
            _loc3_ = §52142380523818123423632234§.getBattleView();
            this.§5214235326235339123423632234§.x = _loc3_.getX() + Math.tan(_loc4_) * _loc10_ + _loc11_ - this.§5214235326235339123423632234§.width / 2;
            this.§5214235326235339123423632234§.y = _loc3_.getY() + Math.tan(_loc2_) * _loc10_ + _loc8_ - this.§5214235326235339123423632234§.height / 2;
         }
      }
   }
}

