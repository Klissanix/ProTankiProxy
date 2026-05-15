package §521423123232312336123423632234§
{
   import alternativa.tanks.service.IEntranceClientFacade;
   import §const default§.§5214231772231785123423632234§;
   import §const default§.BlockValidatorModelBase;
   import flash.net.SharedObject;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class BlockValidatorModel extends BlockValidatorModelBase implements §5214231772231785123423632234§
   {
      
      public static var §5214239171239184123423632234§:IEntranceClientFacade;
      
      public static var §if catch include§:IStorageService;
      
      public function BlockValidatorModel()
      {
         super();
      }
      
      public function youAreBlocked(param1:String) : void
      {
         §5214239171239184123423632234§.blockValidationAlert(param1);
         var _loc2_:SharedObject = §if catch include§.getStorage();
         _loc2_.data.userHash = null;
         _loc2_.flush();
      }
      
      public function youWereKicked(param1:String, param2:int, param3:int, param4:int) : void
      {
         §5214239171239184123423632234§.kickValidationAlert(param1,param2,param3,param4);
         var _loc5_:SharedObject = §if catch include§.getStorage();
         _loc5_.data.userHash = null;
         _loc5_.flush();
      }
   }
}

