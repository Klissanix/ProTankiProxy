package alternativa.engine3d.materials
{
   import alternativa.gfx.agal.FragmentShader;
   import alternativa.gfx.agal.SamplerDim;
   import alternativa.gfx.agal.SamplerFilter;
   import alternativa.gfx.agal.SamplerMipMap;
   import alternativa.gfx.agal.SamplerRepeat;
   import alternativa.gfx.agal.SamplerType;
   
   public class SkyboxFragmentShader extends FragmentShader
   {
      
      public function SkyboxFragmentShader()
      {
         super();
         tex(ft0,v0,fs0.repeat(SamplerRepeat.CLAMP).filter(SamplerFilter.LINEAR).dim(SamplerDim.CUBE).mipmap(SamplerMipMap.NONE).type(SamplerType.RGBA));
      }
   }
}

