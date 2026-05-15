package alternativa.gfx.agal
{
   public class SamplerRepeat extends SamplerOption
   {
      
      private static const c2bb1255:uint = 20;
      
      public static const CLAMP:SamplerRepeat = new SamplerRepeat(0);
      
      public static const REPEAT:SamplerRepeat = new SamplerRepeat(1);
      
      public static const WRAP:SamplerRepeat = REPEAT;
      
      public static const CLAMP_U_REPEAT_V:SamplerRepeat = new SamplerRepeat(2);
      
      public static const REPEAT_U_CLAMP_V:SamplerRepeat = new SamplerRepeat(3);
      
      public function SamplerRepeat(param1:uint)
      {
         super(param1,20);
      }
   }
}

