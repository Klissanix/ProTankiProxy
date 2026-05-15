package §5214233832233845123423632234§
{
   import §5214231307231320123423632234§.§class set return§;
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.LightAnimation;
   import §do const in§.§default use true§;
   import §finally catch with§.§true use package§;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import flash.media.Sound;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   
   public class §while var class§ implements §521423117662311779123423632234§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public var §override for while§:Sound;
      
      public var §521423130522313065123423632234§:Sound;
      
      public var §in catch false§:Sound;
      
      public var §5214239725239738123423632234§:TextureAnimation;
      
      public var §5214237185237198123423632234§:TextureAnimation;
      
      public var §set const final§:TextureAnimation;
      
      public var §extends var static§:TextureMaterial;
      
      public var §import package get§:TextureMaterial;
      
      public var §521423107932310806123423632234§:Vector.<TextureMaterial>;
      
      public var §in catch package§:LightAnimation;
      
      public function §while var class§(param1:§default use true§, param2:LightAnimation, param3:§class set return§)
      {
         super();
         var _loc5_:§include catch with§ = null;
         var _loc4_:TextureMaterial = null;
         this.§override for while§ = param1.§override for while§.§set const switch§;
         this.§521423130522313065123423632234§ = param1.§521423130522313065123423632234§.§set const switch§;
         this.§in catch false§ = param1.§in catch false§.§set const switch§;
         this.§5214239725239738123423632234§ = this.§521423110982311111123423632234§(param1.§521423133352313348123423632234§,param3.createFilter("fire_across"));
         this.§5214237185237198123423632234§ = this.§521423110982311111123423632234§(param1.§catch catch try§,param3.createFilter("fire_along"));
         this.§set const final§ = §true use package§.§in for native§(§5214235868235881123423632234§,param1.§do for else§);
         this.§extends var static§ = this.§52142377523788123423632234§(param1.§521423101632310176123423632234§,param3.createFilter("trail"));
         this.§import package get§ = this.§52142377523788123423632234§(param1.§5214234194234207123423632234§,param3.createFilter("sparkle"));
         this.§521423107932310806123423632234§ = new Vector.<TextureMaterial>();
         for each(_loc5_ in param1.§521423101492310162123423632234§)
         {
            _loc4_ = §5214235868235881123423632234§.getMaterial(_loc5_.data);
            this.§521423107932310806123423632234§.push(_loc4_);
         }
         this.§in catch package§ = param2;
      }
      
      private function §52142377523788123423632234§(param1:§include catch with§, param2:BitmapFilter) : TextureMaterial
      {
         var _loc3_:BitmapData = §true use package§.§5214235316235329123423632234§(param1.data,param2);
         return §5214235868235881123423632234§.getMaterial(_loc3_);
      }
      
      private function §521423110982311111123423632234§(param1:§if finally catch§, param2:BitmapFilter) : TextureAnimation
      {
         return §true use package§.§5214232982232995123423632234§(§5214235868235881123423632234§,param1,param2);
      }
      
      public function close() : void
      {
         var _loc1_:TextureMaterial = null;
         this.§override for while§ = null;
         this.§521423130522313065123423632234§ = null;
         this.§in catch false§ = null;
         §5214235868235881123423632234§.releaseMaterial(this.§5214239725239738123423632234§.material);
         §5214235868235881123423632234§.releaseMaterial(this.§5214237185237198123423632234§.material);
         §5214235868235881123423632234§.releaseMaterial(this.§set const final§.material);
         §5214235868235881123423632234§.releaseMaterial(this.§extends var static§);
         §5214235868235881123423632234§.releaseMaterial(this.§import package get§);
         for each(_loc1_ in this.§521423107932310806123423632234§)
         {
            §5214235868235881123423632234§.releaseMaterial(_loc1_);
         }
      }
   }
}

