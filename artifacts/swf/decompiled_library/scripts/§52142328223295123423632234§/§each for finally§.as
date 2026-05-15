package §52142328223295123423632234§
{
   import §5214236859236872123423632234§.§521423108852310898123423632234§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.sfx.LightAnimation;
   import §finally catch with§.§true use package§;
   import flash.media.Sound;
   import §native catch break§.§return switch function§;
   import platform.client.fp10.core.type.§521423117662311779123423632234§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import §true for else§.§5214232096232109123423632234§;
   
   public class §each for finally§ implements §521423117662311779123423632234§
   {
      
      public static var §5214235868235881123423632234§:EffectsMaterialRegistry;
      
      public var §with var continue§:TextureAnimation;
      
      public var §var for for§:TextureAnimation;
      
      public var §5214233500233513123423632234§:TextureMaterial;
      
      public var §52142322423237123423632234§:TextureMaterial;
      
      public var §switch finally dynamic§:TextureMaterial;
      
      public var §5214234328234341123423632234§:TextureMaterial;
      
      public var §in catch package§:LightAnimation;
      
      public var §5214238606238619123423632234§:LightAnimation;
      
      public var §5214232585232598123423632234§:Sound;
      
      public var §521423130522313065123423632234§:Sound;
      
      public var §5214235870235883123423632234§:Sound;
      
      public var §52142350823521123423632234§:Sound;
      
      public var §5214236030236043123423632234§:Vector.<Sound>;
      
      public var §default catch false§:Sound;
      
      public function §each for finally§(param1:§521423120252312038123423632234§, param2:§521423108852310898123423632234§)
      {
         var _loc3_:Mesh = null;
         super();
         this.§with var continue§ = §true use package§.§in for native§(§5214235868235881123423632234§,param2.§521423137142313727123423632234§);
         this.§var for for§ = §true use package§.§in for native§(§5214235868235881123423632234§,param2.§do for else§);
         this.§5214233500233513123423632234§ = §5214235868235881123423632234§.getMaterial(param2.§null true§.data);
         this.§52142322423237123423632234§ = §5214235868235881123423632234§.getMaterial(param2.§with switch package§.data);
         this.§switch finally dynamic§ = §5214235868235881123423632234§.getMaterial(param2.§5214231873231886123423632234§.data);
         this.§5214234328234341123423632234§ = §5214235868235881123423632234§.getMaterial(param2.§5214238181238194123423632234§.data);
         var _loc4_:§return switch function§ = §return switch function§(param1.adapt(§return switch function§));
         this.§in catch package§ = _loc4_.getLightAnimation("shot");
         this.§5214238606238619123423632234§ = _loc4_.getLightAnimation("hit");
         this.§5214232585232598123423632234§ = param2.§5214232585232598123423632234§.§set const switch§;
         this.§521423130522313065123423632234§ = param2.§521423130522313065123423632234§.§set const switch§;
         this.§5214235870235883123423632234§ = param2.§5214235870235883123423632234§.§set const switch§;
         this.§52142350823521123423632234§ = param2.§52142350823521123423632234§.§set const switch§;
         this.§5214236030236043123423632234§ = new <Sound>[param2.§5214233482233495123423632234§.§set const switch§,param2.§5214234914234927123423632234§.§set const switch§,param2.§override use finally§.§set const switch§,param2.§case switch finally§.§set const switch§];
         this.§default catch false§ = param2.§default catch false§.§set const switch§;
         if(§5214232096232109123423632234§.§class package set§ == null)
         {
            _loc3_ = param2.§521423100712310084123423632234§.§5214237990238003123423632234§[0] as Mesh;
            if(_loc3_.sorting != 2)
            {
               _loc3_.sorting = 2;
               _loc3_.calculateFacesNormals(true);
               _loc3_.optimizeForDynamicBSP();
            }
            §5214232096232109123423632234§.§try const const§ = param2.§521423100712310084123423632234§.§finally for break§(0);
            §5214232096232109123423632234§.§class package set§ = _loc3_;
         }
      }
      
      public function close() : void
      {
         var _loc1_:int = 0;
         §5214235868235881123423632234§.releaseMaterial(this.§with var continue§.material);
         §5214235868235881123423632234§.releaseMaterial(this.§var for for§.material);
         §5214235868235881123423632234§.releaseMaterial(this.§5214233500233513123423632234§);
         §5214235868235881123423632234§.releaseMaterial(this.§52142322423237123423632234§);
         §5214235868235881123423632234§.releaseMaterial(this.§switch finally dynamic§);
         §5214235868235881123423632234§.releaseMaterial(this.§5214234328234341123423632234§);
         this.§5214238606238619123423632234§ = null;
         this.§in catch package§ = null;
         while(_loc1_ < this.§5214236030236043123423632234§.length)
         {
            this.§5214236030236043123423632234§[_loc1_] = null;
            _loc1_++;
         }
         this.§52142350823521123423632234§ = null;
         this.§5214232585232598123423632234§ = null;
         this.§521423130522313065123423632234§ = null;
         this.§5214235870235883123423632234§ = null;
         this.§default catch false§ = null;
      }
   }
}

