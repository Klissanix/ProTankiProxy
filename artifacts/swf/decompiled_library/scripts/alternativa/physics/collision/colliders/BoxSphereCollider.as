package alternativa.physics.collision.colliders
{
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import §do catch return§.§5214232252232265123423632234§;
   import §do catch return§.§function set static§;
   import §each var null§.§function set class§;
   import §for catch for§.§521423136582313671123423632234§;
   import §for catch for§.§final set null§;
   
   public class BoxSphereCollider implements §final set null§
   {
      
      private var center:Vector3;
      
      private var §set use switch§:Vector3;
      
      private var §5214234907234920123423632234§:Vector3;
      
      private var §class var var§:Vector3;
      
      public function BoxSphereCollider()
      {
         super();
         this.center = new Vector3();
         this.§set use switch§ = new Vector3();
         this.§5214234907234920123423632234§ = new Vector3();
         this.§class var var§ = new Vector3();
      }
      
      public function haveCollision(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§) : Boolean
      {
         var _loc9_:§5214232252232265123423632234§ = null;
         var _loc4_:§function set static§ = param1 as §function set static§;
         if(_loc4_ == null)
         {
            _loc4_ = param2 as §function set static§;
            _loc9_ = param1 as §5214232252232265123423632234§;
         }
         else
         {
            _loc9_ = param2 as §5214232252232265123423632234§;
         }
         var _loc3_:Matrix4 = _loc4_.§try const throw§;
         _loc3_.getAxis(3,this.§class var var§);
         var _loc8_:Matrix4 = _loc9_.§try const throw§;
         _loc8_.getAxis(3,this.§5214234907234920123423632234§);
         _loc8_.transformVectorInverse(this.§class var var§,this.center);
         var _loc10_:Vector3 = _loc9_.§return const dynamic§;
         var _loc5_:Number = _loc10_.x + _loc4_.§with var false§;
         var _loc6_:Number = _loc10_.y + _loc4_.§with var false§;
         var _loc7_:Number = _loc10_.z + _loc4_.§with var false§;
         if(this.center.x > _loc5_ || this.center.x < -_loc5_ || this.center.y > _loc6_ || this.center.y < -_loc6_ || this.center.z > _loc7_ || this.center.z < -_loc7_)
         {
            return false;
         }
         if(this.center.x > _loc10_.x)
         {
            this.§set use switch§.x = _loc10_.x;
         }
         else if(this.center.x < -_loc10_.x)
         {
            this.§set use switch§.x = -_loc10_.x;
         }
         else
         {
            this.§set use switch§.x = this.center.x;
         }
         if(this.center.y > _loc10_.y)
         {
            this.§set use switch§.y = _loc10_.y;
         }
         else if(this.center.y < -_loc10_.y)
         {
            this.§set use switch§.y = -_loc10_.y;
         }
         else
         {
            this.§set use switch§.y = this.center.y;
         }
         if(this.center.z > _loc10_.z)
         {
            this.§set use switch§.z = _loc10_.z;
         }
         else if(this.center.z < -_loc10_.z)
         {
            this.§set use switch§.z = -_loc10_.z;
         }
         else
         {
            this.§set use switch§.z = this.center.z;
         }
         var _loc11_:Number = this.center.subtract(this.§set use switch§).lengthSqr();
         return _loc11_ <= _loc4_.§with var false§ * _loc4_.§with var false§;
      }
      
      public function getContacts(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§, param3:Vector.<§function set class§>) : void
      {
         var _loc8_:§5214232252232265123423632234§ = null;
         var _loc11_:§function set static§ = param1 as §function set static§;
         if(_loc11_ == null)
         {
            _loc11_ = param2 as §function set static§;
            _loc8_ = param1 as §5214232252232265123423632234§;
         }
         else
         {
            _loc8_ = param2 as §5214232252232265123423632234§;
         }
         var _loc10_:Matrix4 = _loc11_.§try const throw§;
         _loc10_.getAxis(3,this.§class var var§);
         var _loc7_:Matrix4 = _loc8_.§try const throw§;
         _loc7_.getAxis(3,this.§5214234907234920123423632234§);
         _loc7_.transformVectorInverse(this.§class var var§,this.center);
         var _loc9_:Vector3 = _loc8_.§return const dynamic§;
         var _loc4_:Number = _loc9_.x + _loc11_.§with var false§;
         var _loc5_:Number = _loc9_.y + _loc11_.§with var false§;
         var _loc6_:Number = _loc9_.z + _loc11_.§with var false§;
         if(this.center.x > _loc4_ || this.center.x < -_loc4_ || this.center.y > _loc5_ || this.center.y < -_loc5_ || this.center.z > _loc6_ || this.center.z < -_loc6_)
         {
            return;
         }
         if(this.center.x > _loc9_.x)
         {
            this.§set use switch§.x = _loc9_.x;
         }
         else if(this.center.x < -_loc9_.x)
         {
            this.§set use switch§.x = -_loc9_.x;
         }
         else
         {
            this.§set use switch§.x = this.center.x;
         }
         if(this.center.y > _loc9_.y)
         {
            this.§set use switch§.y = _loc9_.y;
         }
         else if(this.center.y < -_loc9_.y)
         {
            this.§set use switch§.y = -_loc9_.y;
         }
         else
         {
            this.§set use switch§.y = this.center.y;
         }
         if(this.center.z > _loc9_.z)
         {
            this.§set use switch§.z = _loc9_.z;
         }
         else if(this.center.z < -_loc9_.z)
         {
            this.§set use switch§.z = -_loc9_.z;
         }
         else
         {
            this.§set use switch§.z = this.center.z;
         }
         var _loc12_:Number = this.center.subtract(this.§set use switch§).lengthSqr();
         if(_loc12_ > _loc11_.§with var false§ * _loc11_.§with var false§)
         {
            return;
         }
         var _loc13_:§function set class§ = §function set class§.§52142342923442123423632234§();
         _loc13_.§continue switch native§ = _loc11_;
         _loc13_.§with const get§ = _loc8_;
         _loc13_.§5214233761233774123423632234§.copy(this.§set use switch§).transform4(_loc7_).subtract(this.§class var var§).normalize().reverse();
         _loc13_.§5214237971237984123423632234§ = _loc11_.§with var false§ - Math.sqrt(_loc12_);
         _loc13_.§dynamic final§.copy(_loc13_.§5214233761233774123423632234§).scale(-_loc11_.§with var false§).add(this.§class var var§);
         param3[param3.length] = _loc13_;
      }
   }
}

