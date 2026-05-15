package §521423138092313822123423632234§
{
   import §5214231074231087123423632234§.CaptchaLocation;
   import §521423119782311991123423632234§.§52142399872310000123423632234§;
   import §521423138252313838123423632234§.§521423105982310611123423632234§;
   import alternativa.tanks.service.IEntranceServerFacade;
   import §const set break§.§521423120242312037123423632234§;
   import §function var super§.§52142351423527123423632234§;
   import §get finally catch§.§set continue§;
   import §get package override§.§521423138332313846123423632234§;
   import §override catch default§.Long;
   import platform.client.fp10.core.registry.ModelRegistry;
   import §while default§.§521423132342313247123423632234§;
   
   public class EntranceServerFacade implements IEntranceServerFacade
   {
      
      public static var modelRegistry:ModelRegistry;
      
      public function EntranceServerFacade()
      {
         super();
      }
      
      public function checkCaptcha(param1:String, param2:CaptchaLocation) : void
      {
         var _loc3_:§521423138332313846123423632234§ = §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136)));
         _loc3_.checkCaptcha(param1,param2);
      }
      
      public function startExternalLoginUser(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:§521423120242312037123423632234§ = §521423120242312037123423632234§(modelRegistry.getModel(Long.getLong(-1611753053,1203020323)));
         _loc4_.startExternalLoginUser(param1,param2,param3);
      }
      
      public function loginByHash(param1:String) : void
      {
         var _loc2_:§521423105982310611123423632234§ = §521423105982310611123423632234§(modelRegistry.getModel(Long.getLong(-1582638604,1055394219)));
         _loc2_.loginByHash(param1);
      }
      
      public function login(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc4_:§52142399872310000123423632234§ = §52142399872310000123423632234§(modelRegistry.getModel(Long.getLong(-1738786988,1039389)));
         _loc4_.login(param1,param2,param3);
      }
      
      public function sendEmailRestoreMessage(param1:String) : void
      {
         var _loc2_:§52142351423527123423632234§ = §52142351423527123423632234§(modelRegistry.getModel(Long.getLong(-237126694,276241304)));
         _loc2_.sendUsersRestorePasswordLink(param1);
      }
      
      public function checkInviteCode(param1:String) : void
      {
         var _loc2_:§set continue§ = §set continue§(modelRegistry.getModel(Long.getLong(173516462,-2051629596)));
         _loc2_.checkInvite(param1);
      }
      
      public function registerUserThroughPassword(param1:String, param2:String, param3:String, param4:Boolean, param5:String, param6:String) : void
      {
         var _loc7_:§521423132342313247123423632234§ = §521423132342313247123423632234§(modelRegistry.getModel(Long.getLong(808768360,-1972488364)));
         _loc7_.register(param1,param2,param3,param4,param5,param6);
      }
      
      public function getNewCaptcha(param1:CaptchaLocation) : void
      {
         var _loc2_:§521423138332313846123423632234§ = §521423138332313846123423632234§(modelRegistry.getModel(Long.getLong(1035543632,549574136)));
         _loc2_.getNewCaptcha(param1);
      }
      
      public function changePasswordAndEmail(param1:String, param2:String) : void
      {
         var _loc3_:§52142351423527123423632234§ = §52142351423527123423632234§(modelRegistry.getModel(Long.getLong(-237126694,276241304)));
         _loc3_.changePasswordAndEmail(param1,param2);
      }
      
      public function finishExternalRegisterUser(param1:String, param2:String) : void
      {
         var _loc3_:§521423120242312037123423632234§ = §521423120242312037123423632234§(modelRegistry.getModel(Long.getLong(-1611753053,1203020323)));
         _loc3_.finishExternalRegisterUser(param1,param2);
      }
      
      public function checkCallsign(param1:String) : void
      {
         var _loc2_:§521423132342313247123423632234§ = §521423132342313247123423632234§(modelRegistry.getModel(Long.getLong(808768360,-1972488364)));
         _loc2_.checkCallsign(param1);
      }
      
      public function startExternalRegisterUser(param1:String, param2:Boolean, param3:String) : void
      {
         var _loc4_:§521423120242312037123423632234§ = §521423120242312037123423632234§(modelRegistry.getModel(Long.getLong(-1611753053,1203020323)));
         _loc4_.startExternalRegisterUser(param1,param2,param3);
      }
      
      public function loginExternal(param1:String, param2:String) : void
      {
         var _loc3_:§521423120242312037123423632234§ = §521423120242312037123423632234§(modelRegistry.getModel(Long.getLong(-1611753053,1203020323)));
         _loc3_.login(param1,param2);
      }
   }
}

