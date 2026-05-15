package §5214236338236351123423632234§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import §do catch return§.§5214231131231144123423632234§;
   import §do catch return§.§5214232252232265123423632234§;
   import §do catch return§.§5214237379237392123423632234§;
   import §each var null§.§521423119402311953123423632234§;
   import §for catch for§.§521423136582313671123423632234§;
   
   public class §5214231002231015123423632234§
   {
      
      private static const §521423135382313551123423632234§:int = 255;
      
      private static const §5214232274232287123423632234§:§521423119402311953123423632234§ = new §521423119402311953123423632234§(0,1);
      
      private static const §package catch const§:Vector3 = new Vector3();
      
      private static const §dynamic final§:Vector3 = new Vector3();
      
      private static const §else use extends§:Vector3 = new Vector3();
      
      private static const §extends set class§:Matrix3 = new Matrix3();
      
      public function §5214231002231015123423632234§()
      {
         super();
      }
      
      public static function §5214234225234238123423632234§(param1:XML) : Vector.<§521423136582313671123423632234§>
      {
         var _loc3_:Vector.<§521423136582313671123423632234§> = new Vector.<§521423136582313671123423632234§>();
         var _loc2_:XML = param1.elements("collision-geometry")[0];
         §false use use§(§final catch const§(_loc2_),_loc3_);
         §false use use§(§default catch true§(_loc2_),_loc3_);
         §false use use§(§5214237292237305123423632234§(_loc2_),_loc3_);
         return _loc3_;
      }
      
      private static function §5214237292237305123423632234§(param1:XML) : Vector.<§521423136582313671123423632234§>
      {
         var _loc4_:int = 0;
         var _loc10_:XML = null;
         var _loc3_:§521423136582313671123423632234§ = null;
         var _loc5_:Vector3 = new Vector3();
         var _loc6_:Vector3 = new Vector3();
         var _loc7_:Vector3 = new Vector3();
         var _loc8_:XMLList = param1.elements("collision-triangle");
         var _loc2_:int = _loc8_.length();
         var _loc9_:Vector.<§521423136582313671123423632234§> = new Vector.<§521423136582313671123423632234§>(_loc2_);
         while(_loc4_ < _loc2_)
         {
            _loc10_ = _loc8_[_loc4_];
            §5214233033233046123423632234§(_loc10_.elements("v0")[0],_loc5_);
            §5214233033233046123423632234§(_loc10_.elements("v1")[0],_loc6_);
            §5214233033233046123423632234§(_loc10_.elements("v2")[0],_loc7_);
            _loc3_ = new §5214237379237392123423632234§(_loc5_,_loc6_,_loc7_,255,§5214232274232287123423632234§);
            §return var class§(_loc3_,_loc10_);
            _loc9_[_loc4_] = _loc3_;
            _loc4_++;
         }
         return _loc9_;
      }
      
      private static function §false use use§(param1:Vector.<§521423136582313671123423632234§>, param2:Vector.<§521423136582313671123423632234§>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = int(param2.length);
         _loc4_ = 0;
         _loc3_ = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            param2[_loc5_ + _loc4_] = param1[_loc4_];
            _loc4_++;
         }
      }
      
      private static function §return var class§(param1:§521423136582313671123423632234§, param2:XML) : void
      {
         §5214233033233046123423632234§(param2.elements("position")[0],§dynamic final§);
         §5214233033233046123423632234§(param2.elements("rotation")[0],§else use extends§);
         §extends set class§.setRotationMatrix(§else use extends§.x,§else use extends§.y,§else use extends§.z);
         param1.§try const throw§.setFromMatrix3(§extends set class§,§dynamic final§);
      }
      
      private static function §final catch const§(param1:XML) : Vector.<§521423136582313671123423632234§>
      {
         var _loc4_:int = 0;
         var _loc7_:XML = null;
         var _loc3_:§521423136582313671123423632234§ = null;
         var _loc5_:XMLList = param1.elements("collision-plane");
         var _loc2_:int = _loc5_.length();
         var _loc6_:Vector.<§521423136582313671123423632234§> = new Vector.<§521423136582313671123423632234§>(_loc2_);
         §package catch const§.z = 0;
         while(_loc4_ < _loc2_)
         {
            _loc7_ = _loc5_[_loc4_];
            §package catch const§.x = 0.5 * Number(_loc7_.elements("width")[0]);
            §package catch const§.y = 0.5 * Number(_loc7_.elements("length")[0]);
            _loc3_ = new §5214231131231144123423632234§(§package catch const§,255,§5214232274232287123423632234§);
            §return var class§(_loc3_,_loc7_);
            _loc6_[_loc4_] = _loc3_;
            _loc4_++;
         }
         return _loc6_;
      }
      
      private static function §default catch true§(param1:XML) : Vector.<§521423136582313671123423632234§>
      {
         var _loc4_:int = 0;
         var _loc7_:XML = null;
         var _loc3_:§521423136582313671123423632234§ = null;
         var _loc5_:XMLList = param1.elements("collision-box");
         var _loc2_:int = _loc5_.length();
         var _loc6_:Vector.<§521423136582313671123423632234§> = new Vector.<§521423136582313671123423632234§>(_loc2_);
         while(_loc4_ < _loc2_)
         {
            _loc7_ = _loc5_[_loc4_];
            §5214233033233046123423632234§(_loc7_.elements("size")[0],§package catch const§);
            §package catch const§.scale(0.5);
            _loc3_ = new §5214232252232265123423632234§(§package catch const§,255,§5214232274232287123423632234§);
            §return var class§(_loc3_,_loc7_);
            _loc6_[_loc4_] = _loc3_;
            _loc4_++;
         }
         return _loc6_;
      }
      
      private static function §5214233033233046123423632234§(param1:XML, param2:Vector3) : void
      {
         param2.x = param1.elements("x")[0];
         param2.y = param1.elements("y")[0];
         param2.z = param1.elements("z")[0];
      }
   }
}

