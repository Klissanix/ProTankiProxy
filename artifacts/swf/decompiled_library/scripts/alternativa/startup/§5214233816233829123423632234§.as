package alternativa.startup
{
   import flash.utils.ByteArray;
   
   public class §5214233816233829123423632234§
   {
      
      public function §5214233816233829123423632234§()
      {
         super();
      }
      
      public static function encode(param1:String) : String
      {
         var _loc2_:Base64Encoder = new Base64Encoder();
         _loc2_.§5214234444234457123423632234§ = false;
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes(param1);
         _loc2_.encodeUTFBytes(_loc3_.toString());
         return _loc2_.toString();
      }
   }
}

