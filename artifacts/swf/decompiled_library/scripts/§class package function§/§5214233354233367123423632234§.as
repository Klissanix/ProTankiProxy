package §class package function§
{
   import alternativa.osgi.OSGi;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214234168234181123423632234§;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.registry.§override for break§;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   import platform.client.fp10.core.type.§5214232060232073123423632234§;
   import platform.client.fp10.core.type.§52142376523778123423632234§;
   import platform.client.fp10.core.type.impl.Space;
   
   public class §5214233354233367123423632234§
   {
      
      private static var §final package implements§:§override for break§;
      
      private static var §while package native§:SpaceRegistry;
      
      public function §5214233354233367123423632234§()
      {
         super();
      }
      
      public static function destroyObject(param1:Long) : void
      {
         var _loc2_:§52142376523778123423632234§ = §while package native§.currentSpace;
         _loc2_.destroyObject(param1);
      }
      
      public static function createObject(param1:Long, param2:Long, param3:Long) : §521423120252312038123423632234§
      {
         var _loc5_:§52142376523778123423632234§ = §while package native§.getSpace(param3);
         if(_loc5_ == null)
         {
            _loc5_ = new Space(param3,null);
            §while package native§.addSpace(_loc5_);
         }
         if(_loc5_.rootObject && _loc5_.rootObject.id == param1)
         {
            _loc5_.destroyObject(param1);
         }
         var _loc4_:§5214232060232073123423632234§ = §final package implements§.getClass(param2);
         if(_loc4_ == null)
         {
            throw new Error("Class not found exception class=" + param2 + ", object=" + param1);
         }
         return _loc5_.createObject(param1,_loc4_,"");
      }
      
      public static function unloadSpace(param1:Long) : void
      {
         var _loc2_:§52142376523778123423632234§ = §while package native§.getSpace(param1);
         for each(var _loc3_ in _loc2_.objects)
         {
            _loc2_.destroyObject(_loc3_.id);
         }
      }
      
      public static function getObject(param1:Long, param2:Long, param3:Long) : §521423120252312038123423632234§
      {
         var _loc5_:§52142376523778123423632234§ = §while package native§.getSpace(param3);
         var _loc4_:§5214232060232073123423632234§ = §final package implements§.getClass(param2);
         if(_loc4_ == null)
         {
            throw new Error("Class not found exception class=" + param2 + ", object=" + param1);
         }
         return _loc5_.getObject(param1);
      }
      
      public static function init() : void
      {
         §final package implements§ = §override for break§(OSGi.getInstance().getService(§override for break§));
         §while package native§ = SpaceRegistry(OSGi.getInstance().getService(SpaceRegistry));
         §final package implements§.createClass(Long.ZERO,new Vector.<Long>(0));
         §final package implements§.createClass(§for switch import§.strToId("battle_bonus"),new <Long>[Long.getLong(-872532560,127564657),Long.getLong(1335037927,1781554167)]);
      }
      
      public static function notifyObjectLoadListeners(param1:§521423120252312038123423632234§ = null) : void
      {
         if(param1 == null)
         {
            var _loc3_:Model = Model;
            param1 = platform.client.fp10.core.model.impl.Model.§5214232533232546123423632234§;
         }
         var _loc2_:§5214235049235062123423632234§ = §5214235049235062123423632234§(param1.event(§5214235049235062123423632234§));
         _loc2_.objectLoaded();
         §do set function§(param1.event(§do set function§)).objectLoaded();
         _loc2_.objectLoadedPost();
         §5214234168234181123423632234§(param1.event(§5214234168234181123423632234§)).objectLoadedPost();
      }
      
      public static function notifyObjectLoadListenersAndPopIt() : void
      {
         notifyObjectLoadListeners();
         Model.popObject();
      }
   }
}

