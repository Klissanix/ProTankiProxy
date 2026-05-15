package §5214231742231755123423632234§
{
   import flash.utils.getTimer;
   
   public class DiscountInfo
   {
      
      public static const §5214232961232974123423632234§:DiscountInfo = new DiscountInfo(0,0,0);
      
      public static const §implements finally var§:DiscountInfo = new DiscountInfo(100);
      
      private var §native use false§:int;
      
      private var §5214233866233879123423632234§:uint;
      
      private var §const finally set§:uint;
      
      private var §5214234003234016123423632234§:Boolean;
      
      public function DiscountInfo(param1:int, param2:uint = 0, param3:uint = 4294967295, param4:Boolean = false)
      {
         super();
         if(getTimer() > param3)
         {
            param1 = 0;
            param2 = 0;
            param3 = 0;
            return;
         }
         this.§native use false§ = param1;
         this.§5214233866233879123423632234§ = param2;
         this.§const finally set§ = param3;
         this.§5214234003234016123423632234§ = param4;
      }
      
      public function getDiscountInPercent() : int
      {
         return this.§native use false§;
      }
      
      public function hasDiscount() : Boolean
      {
         return this.§native use false§ > 0;
      }
      
      public function getBeginTime() : uint
      {
         return this.§5214233866233879123423632234§;
      }
      
      public function isKitDiscount() : Boolean
      {
         return this.§5214234003234016123423632234§;
      }
      
      public function isDiscountTime(param1:uint) : Boolean
      {
         return this.§5214233866233879123423632234§ <= param1 && param1 < this.§const finally set§;
      }
      
      public function getEndTime() : uint
      {
         return this.§const finally set§;
      }
   }
}

