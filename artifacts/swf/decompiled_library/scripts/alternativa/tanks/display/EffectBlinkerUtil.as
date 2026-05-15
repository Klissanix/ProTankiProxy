package alternativa.tanks.display
{
   import alternativa.tanks.sfx.Blinker;
   
   public class EffectBlinkerUtil
   {
      
      public static const §5214231573231586123423632234§:int = 3000;
      
      public static const §switch set in§:int = 100000;
      
      public static const §5214233588233601123423632234§:int = 300;
      
      public static const §5214237904237917123423632234§:int = 20;
      
      public static const §5214231954231967123423632234§:int = 30;
      
      public static const §5214233941233954123423632234§:int = 0;
      
      public static const §final package do§:Number = 0.2;
      
      public static const §521423105042310517123423632234§:Number = 1;
      
      public static const §class implements§:Number = 10;
      
      public function EffectBlinkerUtil()
      {
         super();
      }
      
      public static function createBlinker(param1:int) : Blinker
      {
         var _loc3_:int = 0;
         var _loc7_:int = 300;
         var _loc5_:int = 20;
         var _loc4_:Number = 0.2;
         var _loc6_:Number = 1;
         var _loc2_:Number = 10;
         if(param1 == 1)
         {
            _loc3_ = 0;
         }
         else
         {
            _loc3_ = 30;
         }
         return new Blinker(_loc7_,_loc5_,_loc3_,_loc4_,_loc6_,_loc2_);
      }
      
      public static function getBlinkingPeriod(param1:int) : int
      {
         if(param1 == 1)
         {
            return 100000;
         }
         return 3000;
      }
   }
}

