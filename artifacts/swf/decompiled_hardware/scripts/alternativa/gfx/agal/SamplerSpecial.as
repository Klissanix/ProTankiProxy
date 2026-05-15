package alternativa.gfx.agal
{
   public class SamplerSpecial extends SamplerOption
   {
      
      private static const f14e564c:uint = 16;
      
      public static const CENTROID:SamplerSpecial = new SamplerSpecial(1);
      
      public static const SINGLE:SamplerSpecial = new SamplerSpecial(2);
      
      public static const IGNORESAMPLER:SamplerSpecial = new SamplerSpecial(4);
      
      public function SamplerSpecial(param1:int)
      {
         super(param1,16);
      }
      
      override public function apply(param1:int) : int
      {
         return param1 | mask << flag;
      }
   }
}

