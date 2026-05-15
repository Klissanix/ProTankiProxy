package platform.client.fp10.core.type.impl
{
   import §521423128372312850123423632234§.§5214234683234696123423632234§;
   import §521423129502312963123423632234§.SpaceDestroyObjectError;
   import §5214234825234838123423632234§.ConnectionCloseStatus;
   import §5214234825234838123423632234§.ConnectionConnectParameters;
   import §5214234825234838123423632234§.§package switch native§;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.§dynamic use try§;
   import alternativa.osgi.service.network.INetworkService;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import platform.client.fp10.core.model.§5214235049235062123423632234§;
   import platform.client.fp10.core.model.§import use const§;
   import platform.client.fp10.core.model.§throw catch var§;
   import platform.client.fp10.core.network.§while const static§;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.type.*;
   
   public class Space implements §52142376523778123423632234§
   {
      
      public static var §5214234621234634123423632234§:LogService;
      
      public static var §5214239012239025123423632234§:IErrorMessageService;
      
      public static var §5214234412234425123423632234§:INetworkService;
      
      private static var §get set with§:§dynamic use try§;
      
      private var §null use break§:Long;
      
      private var §static set static§:Dictionary;
      
      private var §in var case§:Dictionary = new Dictionary();
      
      private var §var for in§:Vector.<§521423120252312038123423632234§>;
      
      private var connection:§package switch native§;
      
      private var listeners:Vector.<§521423128712312884123423632234§>;
      
      public function Space(param1:Long, param2:§5214234683234696123423632234§)
      {
         super();
         this.§static set static§ = new Dictionary();
         this.§null use break§ = param1;
         this.§var for in§ = new Vector.<§521423120252312038123423632234§>();
         §get set with§ ||= §5214234621234634123423632234§.getLogger("space");
         this.listeners = new Vector.<§521423128712312884123423632234§>();
         var _loc3_:GameClass = new GameClass(Long.ZERO,new Vector.<Long>());
         this.createObject(param1,_loc3_,"Space object");
      }
      
      public function toString() : String
      {
         return "";
      }
      
      public function get rootObject() : §521423120252312038123423632234§
      {
         return this.getObject(this.§null use break§);
      }
      
      private function removeObject(param1:GameObject) : void
      {
         §get set with§.debug("Space::removeObject() %1",[param1.id]);
         this.§var for in§.removeAt(this.§var for in§.indexOf(param1));
         delete this.§static set static§[param1.id];
         delete this.§in var case§[param1.name];
      }
      
      public function modelsDataReady(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:Vector.<§521423128712312884123423632234§> = this.listeners.concat();
         for each(var _loc3_ in _loc2_)
         {
            _loc3_.objectCreated(param1);
         }
      }
      
      public function createObject(param1:Long, param2:§5214232060232073123423632234§, param3:String) : §521423120252312038123423632234§
      {
         var _loc4_:GameObject = null;
         if(this.§static set static§[param1] != null)
         {
            §get set with§.error("Space [%1]: Object already exists. Object id: %2, object name: %3",[this.id,param1,param3]);
         }
         if(this.§static set static§[param1] == null)
         {
            _loc4_ = new GameObject(param1,GameClass(param2),param3,this);
            this.§static set static§[_loc4_.id] = _loc4_;
            this.§in var case§[_loc4_.name] = _loc4_;
            this.§var for in§[§var for in§.length] = _loc4_;
         }
         return this.§static set static§[param1];
      }
      
      public function get commandSender() : §while const static§
      {
         return this.connection;
      }
      
      public function connect(param1:String, param2:Vector.<int>) : void
      {
         this.connection.connect(new ConnectionConnectParameters(param1,param2));
      }
      
      public function get objects() : Vector.<§521423120252312038123423632234§>
      {
         return this.§var for in§;
      }
      
      private function c3572b2c() : void
      {
         var _loc1_:Vector.<§521423128712312884123423632234§> = this.listeners.concat();
         for each(var _loc2_ in _loc1_)
         {
            _loc2_.spaceClosed();
         }
      }
      
      public function get id() : Long
      {
         return this.§null use break§;
      }
      
      public function close() : void
      {
         §get set with§.debug("Closing space " + this);
         this.connection.close(ConnectionCloseStatus.SPACE_CLOSED);
         this.c3572b2c();
         §get set with§.debug("Space closed " + this);
      }
      
      private function a183ead(param1:§521423120252312038123423632234§) : void
      {
         var _loc2_:§5214235049235062123423632234§ = §5214235049235062123423632234§(param1.event(§5214235049235062123423632234§));
         _loc2_.objectUnloaded();
         §throw catch var§(param1.event(§throw catch var§)).objectUnloaded();
         _loc2_.objectUnloadedPost();
         §import use const§(param1.event(§import use const§)).objectUnloadedPost();
      }
      
      public function addEventListener(param1:§521423128712312884123423632234§) : void
      {
         if(this.listeners.indexOf(param1) == -1)
         {
            this.listeners.push(param1);
         }
      }
      
      public function getObjectByName(param1:String) : §521423120252312038123423632234§
      {
         return this.§in var case§[param1];
      }
      
      private function ed370e6(param1:GameObject) : void
      {
         var _loc2_:Vector.<§521423128712312884123423632234§> = this.listeners.concat();
         for each(var _loc3_ in _loc2_)
         {
            _loc3_.objectDestroyed(param1);
         }
      }
      
      private function c2c2e05e(param1:Error, param2:Long) : void
      {
         throw param1;
      }
      
      public function getObject(param1:Long) : §521423120252312038123423632234§
      {
         return this.§static set static§[param1];
      }
      
      public function destroyObject(param1:Long) : void
      {
         var _loc2_:SpaceDestroyObjectError = null;
         §get set with§.debug("Space [%1]: Destroying object [%2]",[this.id,param1]);
         var _loc3_:GameObject = this.§static set static§[param1];
         if(_loc3_ == null)
         {
            _loc2_ = new SpaceDestroyObjectError(this.id,param1);
         }
         if(_loc3_ != null)
         {
            try
            {
               this.a183ead(_loc3_);
               this.ed370e6(_loc3_);
            }
            catch(e:Error)
            {
               c2c2e05e(e,param1);
            }
            finally
            {
               this.removeObject(_loc3_);
            }
            §get set with§.debug("Space [%1]: Object [%2] has been destroyed",[this.id,param1]);
         }
      }
      
      public function removeEventListener(param1:§521423128712312884123423632234§) : void
      {
         var _loc2_:int = this.listeners.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.listeners.removeAt(_loc2_);
         }
      }
   }
}

