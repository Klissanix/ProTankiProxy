package §try use default§
{
   import §5214233087233100123423632234§.§if finally catch§;
   import §5214233087233100123423632234§.§include catch with§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.objects.tank.skintexturesregistry.TankSkinTextureRegistry;
   import alternativa.tanks.engine3d.TrackMaterial;
   import alternativa.tanks.engine3d.§implements for finally§;
   import alternativa.tanks.materials.TrackMaterial;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import §super catch default§.§5214238293238306123423632234§;
   import §super catch default§.§super package each§;
   import §var for each§.§521423111222311135123423632234§;
   
   public class §5214234534234547123423632234§ implements §do use finally§
   {
      
      public static var §521423119962312009123423632234§:TextureMaterialRegistry;
      
      public static var §in switch null§:TankSkinTextureRegistry;
      
      public function §5214234534234547123423632234§()
      {
         super();
      }
      
      public function §override switch break§(param1:§5214238293238306123423632234§, param2:§521423111222311135123423632234§) : §super package each§
      {
         var _loc10_:TextureMaterial = null;
         var _loc7_:TextureMaterial = null;
         var _loc5_:§if finally catch§ = null;
         var _loc9_:§include catch with§ = null;
         var _loc8_:alternativa.tanks.materials.TrackMaterial = null;
         var _loc4_:alternativa.tanks.materials.TrackMaterial = null;
         var _loc6_:§implements for finally§ = null;
         if(param2.isAnimated())
         {
            _loc5_ = param2.getAnimatedColoring();
            _loc10_ = §521423119962312009123423632234§.getAnimatedPaint(_loc5_,param1.§521423117862311799123423632234§());
            _loc7_ = §521423119962312009123423632234§.getAnimatedPaint(_loc5_,param1.§package var const§());
         }
         else
         {
            _loc9_ = param2.getColoring();
            _loc10_ = §521423119962312009123423632234§.getPaint(_loc9_,param1.§521423117862311799123423632234§());
            _loc7_ = §521423119962312009123423632234§.getPaint(_loc9_,param1.§package var const§());
         }
         var _loc11_:GPUCapabilities = GPUCapabilities;
         if(projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§)
         {
            _loc8_ = new alternativa.tanks.materials.TrackMaterial(param1.§521423117862311799123423632234§().§521423134562313469123423632234§);
            _loc4_ = new alternativa.tanks.materials.TrackMaterial(param1.§521423117862311799123423632234§().§521423134562313469123423632234§);
         }
         else
         {
            _loc6_ = §implements for finally§(OSGi.getInstance().getService(§implements for finally§));
            _loc8_ = new alternativa.tanks.materials.TrackMaterial(_loc6_.getTexture(param1.§521423117862311799123423632234§().§521423134562313469123423632234§,true));
            _loc4_ = new alternativa.tanks.materials.TrackMaterial(_loc6_.getTexture(param1.§521423117862311799123423632234§().§521423134562313469123423632234§,true));
            _loc8_.resolution = _loc4_.resolution = 5;
         }
         §521423119962312009123423632234§.addMaterial(_loc8_);
         §521423119962312009123423632234§.addMaterial(_loc4_);
         var _loc3_:BitmapData = §in switch null§.getTexture(param1.§package var const§(),null);
         return new §super package each§(_loc10_,_loc7_,_loc8_,_loc4_,new alternativa.tanks.engine3d.TrackMaterial(_loc3_,true));
      }
      
      public function §521423136882313701123423632234§(param1:§5214238293238306123423632234§, param2:§include catch with§) : §super package each§
      {
         var _loc5_:TextureMaterial = §521423119962312009123423632234§.getPaint(param2,param1.§521423117862311799123423632234§());
         var _loc4_:TextureMaterial = §521423119962312009123423632234§.getPaint(param2,param1.§package var const§());
         var _loc3_:BitmapData = §in switch null§.getTexture(param1.§package var const§(),param2.data);
         return new §super package each§(_loc5_,_loc4_,null,null,new alternativa.tanks.engine3d.TrackMaterial(_loc3_,true));
      }
   }
}

