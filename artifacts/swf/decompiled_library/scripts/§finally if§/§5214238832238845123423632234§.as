package §finally if§
{
   import alternativa.tanks.display.EffectBlinkerUtil;
   import alternativa.tanks.sfx.Blinker;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §5214238832238845123423632234§
   {
      
      private static var §5214235729235742123423632234§:Dictionary;
      
      private static var §5214235790235803123423632234§:Rectangle;
      
      private static const §default package for§:int = 1;
      
      private static const §break use else§:int = 2;
      
      private static const §5214236692236705123423632234§:int = 4;
      
      private static const §521423127322312745123423632234§:int = 8;
      
      private static const §var catch class§:int = 2;
      
      private static const §5214236975236988123423632234§:Class = EffectIndicator_iconHealthCls_png$072e2385e91f1756c81a9056806f5766991155570;
      
      private static const §5214234733234746123423632234§:Class = §EffectIndicator_iconArmorCls_png$267b9044f3a9fddee4491bac07576786-1787636995§;
      
      private static const §5214238854238867123423632234§:Class = EffectIndicator_iconPowerCls_png$21642b2585a12eb02cc0e11e9d16764f6784871;
      
      private static const §5214232732232745123423632234§:Class = EffectIndicator_iconNitroCls_png$8f314e92d893c960adf144c33b36f4d62052966838;
      
      private static const §if switch override§:Class = §EffectIndicator_iconUnkillableCls_png$e5a0d2b1f1f2f4d89ec74bbc839ed23a-1475741595§;
      
      private static const §set import§:BitmapData = Bitmap(new §if switch override§()).bitmapData;
      
      private static var §521423119502311963123423632234§:Matrix = new Matrix();
      
      private var §package import§:int;
      
      private var icon:BitmapData;
      
      private var §5214237863237876123423632234§:int;
      
      private var §5214235465235478123423632234§:ColorTransform;
      
      private var §5214238700238713123423632234§:int;
      
      private var §get if§:Blinker;
      
      private var §set package const§:Number = 1;
      
      private var §set package return§:Boolean;
      
      private var x:int;
      
      private var y:int;
      
      private var §5214236039236052123423632234§:§521423131952313208123423632234§;
      
      private var §implements catch catch§:int;
      
      private var §5214239757239770123423632234§:Boolean;
      
      public var §5214231648231661123423632234§:Boolean;
      
      public var §5214231386231399123423632234§:int;
      
      public function §5214238832238845123423632234§(param1:int, param2:§521423131952313208123423632234§)
      {
         super();
         this.§5214235465235478123423632234§ = new ColorTransform();
         if(§5214235729235742123423632234§ == null)
         {
            §521423109422310955123423632234§();
         }
         this.§package import§ = param1;
         this.icon = §5214235729235742123423632234§[param1];
         this.§5214236039236052123423632234§ = param2;
         this.§5214237863237876123423632234§ = EffectBlinkerUtil.getBlinkingPeriod(param1);
         this.§get if§ = EffectBlinkerUtil.createBlinker(param1);
         this.§implements catch catch§ = 1;
      }
      
      private static function §521423109422310955123423632234§() : void
      {
         §5214235729235742123423632234§ = new Dictionary();
         §5214235729235742123423632234§[1] = Bitmap(new §5214236975236988123423632234§()).bitmapData;
         §5214235729235742123423632234§[2] = Bitmap(new §5214234733234746123423632234§()).bitmapData;
         §5214235729235742123423632234§[3] = Bitmap(new §5214238854238867123423632234§()).bitmapData;
         §5214235729235742123423632234§[4] = Bitmap(new §5214232732232745123423632234§()).bitmapData;
         §5214235790235803123423632234§ = BitmapData(§5214235729235742123423632234§[1]).rect;
      }
      
      public function show(param1:int, param2:Boolean, param3:int) : void
      {
         this.§5214231648231661123423632234§ = param2;
         this.§implements catch catch§ &= ~8;
         if(this.§implements catch catch§ != 4 || this.§set package const§ != 1 || this.§5214231386231399123423632234§ != param3)
         {
            this.§set package return§ = true;
         }
         this.§5214231386231399123423632234§ = param3;
         this.§5214238700238713123423632234§ = getTimer() + param1 - this.§5214237863237876123423632234§;
         this.§5214239757239770123423632234§ = false;
         this.§set package const§ = 1;
         if(this.§implements catch catch§ == 1)
         {
            this.§implements catch catch§ = 2;
         }
      }
      
      public function §const for break§() : Boolean
      {
         return (this.§implements catch catch§ & 4) != 0;
      }
      
      private function §package for throw§() : BitmapData
      {
         return this.§package import§ == 2 && this.§5214231386231399123423632234§ == 2 ? §set import§ : this.icon;
      }
      
      public function §each use extends§() : Boolean
      {
         return this.§implements catch catch§ == 1;
      }
      
      private function §5214233910233923123423632234§(param1:BitmapData) : void
      {
         this.§false set final§(param1);
         §521423119502311963123423632234§.tx = this.x;
         §521423119502311963123423632234§.ty = this.y;
         this.§5214235465235478123423632234§.alphaMultiplier = this.§set package const§;
         param1.draw(this.§package for throw§(),§521423119502311963123423632234§,this.§5214235465235478123423632234§,null,null,true);
      }
      
      public function §5214233236233249123423632234§(param1:int, param2:int) : void
      {
         this.x = param1;
         this.y = param2;
         this.§set package return§ = true;
      }
      
      public function §false set final§(param1:BitmapData) : void
      {
         if(this.§implements catch catch§ == 1 || this.§implements catch catch§ == 2)
         {
            return;
         }
         §5214235790235803123423632234§.x = this.x;
         §5214235790235803123423632234§.y = this.y;
         param1.fillRect(§5214235790235803123423632234§,0);
      }
      
      public function get §521423120172312030123423632234§() : int
      {
         return this.§package import§;
      }
      
      public function §true package final§() : void
      {
         if(this.§5214231648231661123423632234§)
         {
            return;
         }
         if(this.§implements catch catch§ == 2)
         {
            this.§5214236039236052123423632234§.§5214238981238994123423632234§(this);
            this.§implements catch catch§ = 1;
            return;
         }
         if((this.§implements catch catch§ & (1 | 8)) != 0)
         {
            return;
         }
         this.§implements catch catch§ |= 8;
         this.§get if§.setMinValue(0);
         if(!this.§5214239757239770123423632234§)
         {
            this.§5214238700238713123423632234§ = 0;
            this.§get if§.init(getTimer());
            this.§5214239757239770123423632234§ = true;
         }
      }
      
      private function §default const catch§(param1:int, param2:int, param3:BitmapData) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc4_:Number = NaN;
         if(this.§5214239757239770123423632234§)
         {
            _loc4_ = this.§get if§.updateValue(param1,param2);
            if(_loc4_ != this.§set package const§)
            {
               this.§set package const§ = _loc4_;
               this.§5214233910233923123423632234§(param3);
               _loc5_ = true;
            }
            if((this.§implements catch catch§ & 8) != 0 && this.§set package const§ == 0)
            {
               this.§5214236039236052123423632234§.§5214238981238994123423632234§(this);
               this.§implements catch catch§ = 1;
            }
         }
         else
         {
            this.§get if§.setMinValue(0.2);
            this.§get if§.init(param1);
            this.§5214239757239770123423632234§ = true;
         }
         return _loc5_;
      }
      
      public function §import switch throw§() : void
      {
         this.§set package return§ = true;
      }
      
      public function §521423120402312053123423632234§(param1:int, param2:int, param3:BitmapData) : Boolean
      {
         var _loc4_:Boolean = false;
         if(this.§implements catch catch§ == 1)
         {
            return false;
         }
         if(this.§set package return§)
         {
            this.§5214233910233923123423632234§(param3);
            this.§set package return§ = false;
            _loc4_ = true;
         }
         if(param1 > this.§5214238700238713123423632234§)
         {
            _loc4_ = this.§default const catch§(param1,param2,param3) || _loc4_;
         }
         if(this.§implements catch catch§ == 2)
         {
            this.§implements catch catch§ = 4;
         }
         return _loc4_;
      }
   }
}

