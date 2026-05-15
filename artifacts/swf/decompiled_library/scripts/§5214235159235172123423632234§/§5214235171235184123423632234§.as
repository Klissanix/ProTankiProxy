package §5214235159235172123423632234§
{
   import §5214234098234111123423632234§.§521423129872313000123423632234§;
   import alternativa.math.Vector3;
   
   public class §5214235171235184123423632234§
   {
      
      private static const §class var return§:Vector3 = new Vector3();
      
      private static const §521423128282312841123423632234§:Vector3 = new Vector3();
      
      private var §521423112302311243123423632234§:Vector.<Vector3>;
      
      private var §5214233989234002123423632234§:Vector.<Vector3>;
      
      private var §try const continue§:§521423129872313000123423632234§;
      
      private var §521423136532313666123423632234§:Number;
      
      private var §5214234040234053123423632234§:Number;
      
      public function §5214235171235184123423632234§(param1:§521423129872313000123423632234§)
      {
         super();
         this.§521423136532313666123423632234§ = Math.tan(param1.§521423129032312916123423632234§ * 0.5);
         this.§5214234040234053123423632234§ = Math.tan(param1.§5214236543236556123423632234§ * 0.5);
         this.§try const continue§ = param1;
         this.§521423112302311243123423632234§ = new Vector.<Vector3>(param1.§dynamic use do§,true);
         this.§5214233989234002123423632234§ = new Vector.<Vector3>(param1.§dynamic use do§,true);
         var _loc2_:int = 0;
         while(_loc2_ < this.§521423112302311243123423632234§.length)
         {
            this.§521423112302311243123423632234§[_loc2_] = new Vector3();
            this.§5214233989234002123423632234§[_loc2_] = new Vector3();
            _loc2_++;
         }
      }
      
      private function §521423137472313760123423632234§(param1:Vector3, param2:Vector3) : void
      {
         §class var return§.copy(param1);
         §521423128282312841123423632234§.cross2(§class var return§,param2).normalize();
      }
      
      private function §521423136482313661123423632234§(param1:Number, param2:Number, param3:Vector3, param4:Vector3) : void
      {
         param4.reset();
         param4.addScaled(param1,§class var return§);
         param4.addScaled(param2,§521423128282312841123423632234§);
         param4.add(param3);
         param4.normalize();
      }
      
      private function §catch var catch§(param1:Vector3) : void
      {
         var _loc2_:Number = Math.random();
         var _loc3_:Number = Math.random() * 3.141592653589793 * 2;
         param1.x = Math.cos(_loc3_) * _loc2_ * this.§521423136532313666123423632234§;
         param1.y = Math.sin(_loc3_) * _loc2_ * this.§5214234040234053123423632234§;
      }
      
      public function §super for implements§(param1:Vector3, param2:Vector3) : Vector.<Vector3>
      {
         var _loc3_:Vector3 = null;
         this.§521423137472313760123423632234§(param1,param2);
         var _loc4_:int = 0;
         while(_loc4_ < this.§521423112302311243123423632234§.length)
         {
            _loc3_ = this.§521423112302311243123423632234§[_loc4_];
            this.§521423136482313661123423632234§(_loc3_.x,_loc3_.y,param2,this.§5214233989234002123423632234§[_loc4_]);
            _loc4_++;
         }
         return this.§5214233989234002123423632234§;
      }
      
      public function §switch for catch§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§521423112302311243123423632234§.length)
         {
            this.§catch var catch§(this.§521423112302311243123423632234§[_loc1_]);
            _loc1_++;
         }
      }
   }
}

