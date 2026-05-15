package §else set super§
{
   public class QueueItem
   {
      
      private static var §return const with§:QueueItem;
      
      public var next:QueueItem;
      
      public var data:*;
      
      public function QueueItem(param1:*)
      {
         super();
         this.data = param1;
      }
      
      public static function create(param1:*) : QueueItem
      {
         if(§return const with§ == null)
         {
            return new QueueItem(param1);
         }
         var _loc2_:QueueItem = §return const with§;
         §return const with§ = §return const with§.next;
         _loc2_.data = param1;
         return _loc2_;
      }
      
      public function destroy() : void
      {
         this.data = null;
         this.next = §return const with§;
         §return const with§ = this;
      }
   }
}

