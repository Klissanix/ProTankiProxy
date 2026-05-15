package §else switch default§
{
   import alternativa.engine3d.core.Camera3D;
   
   public class §5214231079231092123423632234§
   {
      
      private var color:int;
      
      private var §set package const§:Number;
      
      private var §do package switch§:Number;
      
      private var §521423101722310185123423632234§:Number;
      
      private var §5214239291239304123423632234§:Camera3D;
      
      public function §5214231079231092123423632234§(param1:Camera3D)
      {
         super();
         this.§5214239291239304123423632234§ = param1;
      }
      
      public function §5214236262236275123423632234§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.color = param1;
         this.§set package const§ = param2;
         this.§do package switch§ = param3;
         this.§521423101722310185123423632234§ = param4;
      }
      
      public function enable() : void
      {
         if(this.color != 0)
         {
            this.§5214239291239304123423632234§.fogNear = this.§do package switch§;
            this.§5214239291239304123423632234§.fogFar = this.§521423101722310185123423632234§;
            this.§5214239291239304123423632234§.fogAlpha = this.§set package const§;
            this.§5214239291239304123423632234§.fogColor = this.color;
         }
      }
      
      public function disable() : void
      {
         this.§5214239291239304123423632234§.fogNear = 0;
         this.§5214239291239304123423632234§.fogFar = 1000000;
         this.§5214239291239304123423632234§.fogAlpha = 0;
      }
   }
}

