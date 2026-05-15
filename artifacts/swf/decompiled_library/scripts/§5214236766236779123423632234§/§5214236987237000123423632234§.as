package §5214236766236779123423632234§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.model.garage.Tank3DViewer;
   import alternativa.tanks.service.delaymountcategory.DelayMountCategoryService;
   import alternativa.tanks.service.delaymountcategory.IDelayMountCategoryService;
   import alternativa.tanks.service.garage.GarageService;
   import alternativa.tanks.service.garage.GarageServiceImpl;
   import alternativa.tanks.service.item.ItemService;
   import alternativa.tanks.service.item.ItemServiceImpl;
   import alternativa.tanks.service.item3d.ITank3DViewer;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsService;
   import alternativa.tanks.service.itempropertyparams.ItemPropertyParamsServiceImpl;
   import alternativa.tanks.service.temporaryitem.ITemporaryItemService;
   import alternativa.tanks.service.temporaryitem.TemporaryItemService;
   import alternativa.tanks.service.temporaryitemnotify.ITemporaryItemNotifyService;
   import alternativa.tanks.service.temporaryitemnotify.TemporaryItemNotifyService;
   import §native package final§.§throw var static§;
   
   public class §5214236987237000123423632234§ implements §throw var static§
   {
      
      public function §5214236987237000123423632234§()
      {
         super();
      }
      
      public function stop(param1:OSGi) : void
      {
      }
      
      public function start(param1:OSGi) : void
      {
         param1.registerService(ItemService,new ItemServiceImpl());
         param1.registerService(ItemPropertyParamsService,new ItemPropertyParamsServiceImpl());
         param1.registerService(ITemporaryItemService,new TemporaryItemService());
         param1.registerService(ITemporaryItemNotifyService,new TemporaryItemNotifyService());
         param1.registerService(GarageService,new GarageServiceImpl());
         param1.registerService(ITank3DViewer,new Tank3DViewer());
         param1.registerService(IDelayMountCategoryService,new DelayMountCategoryService());
      }
   }
}

