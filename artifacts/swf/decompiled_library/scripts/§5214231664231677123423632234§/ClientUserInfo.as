package §5214231664231677123423632234§
{
   import §521423117022311715123423632234§.§5214231668231681123423632234§;
   import §extends var import§.§5214231658231671123423632234§;
   
   public class ClientUserInfo
   {
      
      private var §5214234339234352123423632234§:String;
      
      private var §5214232654232667123423632234§:String;
      
      private var §implements switch in§:int;
      
      private var §52142356023573123423632234§:Boolean;
      
      private var §5214238165238178123423632234§:Boolean;
      
      private var §get var import§:§5214231658231671123423632234§;
      
      private var §521423104272310440123423632234§:§5214231668231681123423632234§;
      
      public function ClientUserInfo(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:§5214231658231671123423632234§, param7:§5214231668231681123423632234§)
      {
         super();
         this.§5214234339234352123423632234§ = param1;
         this.§5214232654232667123423632234§ = param2;
         this.§implements switch in§ = param3;
         this.§52142356023573123423632234§ = param4;
         this.§5214238165238178123423632234§ = param5;
         this.§get var import§ = param6;
         this.§521423104272310440123423632234§ = param7;
      }
      
      public function get teamType() : §5214231658231671123423632234§
      {
         return this.§get var import§;
      }
      
      public function set teamType(param1:§5214231658231671123423632234§) : void
      {
         this.§get var import§ = param1;
      }
      
      public function get userId() : String
      {
         return this.§5214234339234352123423632234§;
      }
      
      public function set loaded(param1:Boolean) : void
      {
         this.§52142356023573123423632234§ = param1;
      }
      
      public function getShortUserInfo() : ShortUserInfo
      {
         var _loc1_:ShortUserInfo = new ShortUserInfo();
         _loc1_.userId = this.§5214234339234352123423632234§;
         _loc1_.rank = this.§implements switch in§;
         _loc1_.suspicious = this.§5214238165238178123423632234§;
         _loc1_.teamType = this.§get var import§;
         _loc1_.chatModeratorLevel = this.§521423104272310440123423632234§;
         return _loc1_;
      }
      
      public function get suspicious() : Boolean
      {
         return this.§5214238165238178123423632234§;
      }
      
      public function get loaded() : Boolean
      {
         return this.§52142356023573123423632234§;
      }
      
      public function set rank(param1:int) : void
      {
         this.§implements switch in§ = param1;
      }
      
      public function get chatModeratorLevel() : §5214231668231681123423632234§
      {
         return this.§521423104272310440123423632234§;
      }
      
      public function get uid() : String
      {
         return this.§5214232654232667123423632234§;
      }
      
      public function set userId(param1:String) : void
      {
         this.§5214234339234352123423632234§ = param1;
      }
      
      public function get rank() : int
      {
         return this.§implements switch in§;
      }
      
      public function set uid(param1:String) : void
      {
         this.§5214232654232667123423632234§ = param1;
      }
      
      public function set suspicious(param1:Boolean) : void
      {
         this.§5214238165238178123423632234§ = param1;
      }
      
      public function set chatModeratorLevel(param1:§5214231668231681123423632234§) : void
      {
         this.§521423104272310440123423632234§ = param1;
      }
   }
}

