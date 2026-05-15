package §521423130732313086123423632234§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import §5214233087233100123423632234§.§include catch with§;
   import §5214238876238889123423632234§.§try use continue§;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import §do package if§.ItemCategoryEnum;
   import §in use function§.Item3DModelBase;
   import §in use function§.§class break§;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.impl.Model;
   import §var for each§.§521423111222311135123423632234§;
   
   public class Item3DModel extends Item3DModelBase implements §class break§, §5214235049235062123423632234§, §5214235988236001123423632234§
   {
      
      public static var §521423120472312060123423632234§:ItemService;
      
      public static var §52142339723410123423632234§:ITank3DViewer;
      
      private var §const catch implements§:Boolean;
      
      private var §finally var false§:Long;
      
      public function Item3DModel()
      {
         super();
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function objectLoaded() : void
      {
         var _loc2_:§5214233863233876123423632234§ = null;
         var _loc1_:§include catch with§ = null;
         var _loc3_:ItemCategoryEnum = §521423120472312060123423632234§.getCategory(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§);
         switch(_loc3_)
         {
            case ItemCategoryEnum.ARMOR:
               _loc2_ = §try use continue§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§try use continue§)).getResource3DS();
               §52142339723410123423632234§.setArmor(_loc2_);
               break;
            case ItemCategoryEnum.WEAPON:
               _loc2_ = §try use continue§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§try use continue§)).getResource3DS();
               §52142339723410123423632234§.setWeapon(_loc2_);
               break;
            case ItemCategoryEnum.COLOR:
               _loc1_ = §521423111222311135123423632234§(platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§.adapt(§521423111222311135123423632234§)).getColoring();
               var _loc4_:§include catch with§;
               this.§finally var false§ = (_loc4_ = _loc1_).§5214239618239631123423632234§.id;
               this.§const catch implements§ = getInitParam().mounted;
               var _loc5_:§include catch with§ = _loc1_;
               var _loc6_:§include catch with§;
               if((_loc5_.§else for include§ & 1) == 0 && (_loc6_ = _loc1_).§5214239618239631123423632234§.§521423137152313728123423632234§)
               {
                  _loc1_.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
                  if(!§const catch implements§)
                  {
                     §52142339723410123423632234§.isPreviewingColor = true;
                  }
                  break;
               }
               if(getInitParam().mounted)
               {
                  §52142339723410123423632234§.setColor(_loc1_.data);
                  break;
               }
               §52142339723410123423632234§.setPreviewColor(_loc1_.data);
         }
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         if(this.§finally var false§ == param1.§5214239618239631123423632234§.id)
         {
            if(this.§const catch implements§)
            {
               §52142339723410123423632234§.setColor(param1.data);
            }
            else if(§52142339723410123423632234§.isPreviewingColor)
            {
               §52142339723410123423632234§.setPreviewColor(param1.data);
            }
         }
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
      }
   }
}

