package alternativa.gfx.agal
{
   public class SamplerFilter extends SamplerOption
   {
      
      private static const d4649860:uint = 28;
      
      public static const NEAREST:SamplerFilter = new SamplerFilter(0);
      
      public static const LINEAR:SamplerFilter = new SamplerFilter(1);
      
      public static const ANISOTROPIC2X:SamplerFilter = new SamplerFilter(2);
      
      public static const ANISOTROPIC4X:SamplerFilter = new SamplerFilter(3);
      
      public static const ANISOTROPIC8X:SamplerFilter = new SamplerFilter(4);
      
      public static const ANISOTROPIC16X:SamplerFilter = new SamplerFilter(5);
      
      public function SamplerFilter(param1:uint)
      {
         super(param1,28);
      }
   }
}

