package §dynamic const static§
{
   import alternativa.tanks.sfx.§break use null§;
   
   internal class SoundEffectData
   {
      
      private static var §521423113252311338123423632234§:int;
      
      private static var §super switch return§:Vector.<SoundEffectData> = new Vector.<SoundEffectData>();
      
      public var §return else§:Number;
      
      public var §if true§:§break use null§;
      
      public function SoundEffectData(param1:Number, param2:§break use null§)
      {
         super();
         this.§return else§ = param1;
         this.§if true§ = param2;
      }
      
      public static function destroy(param1:SoundEffectData) : void
      {
         param1.§if true§ = null;
         §super switch return§[§521423113252311338123423632234§++] = param1;
      }
      
      public static function create(param1:Number, param2:§break use null§) : SoundEffectData
      {
         var _loc3_:SoundEffectData = null;
         if(§521423113252311338123423632234§ > 0)
         {
            _loc3_ = §super switch return§[--§521423113252311338123423632234§];
            §super switch return§[§521423113252311338123423632234§] = null;
            _loc3_.§return else§ = param1;
            _loc3_.§if true§ = param2;
            return _loc3_;
         }
         return new SoundEffectData(param1,param2);
      }
   }
}

