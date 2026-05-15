package alternativa.tanks.services.tankregistry
{
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §set package in§.ClientObject;
   
   public class TankUsersRegistryImpl implements TankUsersRegistry
   {
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      private const users:Dictionary = new Dictionary();
      
      private var §52142326123274123423632234§:Vector.<ClientObject>;
      
      private var §5214236712236725123423632234§:int;
      
      private var §5214233072233085123423632234§:ClientObject;
      
      public function TankUsersRegistryImpl()
      {
         super();
      }
      
      public function getLocalUser() : ClientObject
      {
         return this.§5214233072233085123423632234§;
      }
      
      public function existLocalUser() : Boolean
      {
         return this.§5214233072233085123423632234§ != null;
      }
      
      public function removeUser(param1:ClientObject) : void
      {
         this.§52142326123274123423632234§ = null;
         if(this.users[param1.id])
         {
            delete this.users[param1.id];
            --this.§5214236712236725123423632234§;
         }
         if(§52142329523308123423632234§.userName == param1.id)
         {
            this.§5214233072233085123423632234§ = null;
         }
      }
      
      public function getUsers() : Vector.<ClientObject>
      {
         if(this.§52142326123274123423632234§ == null)
         {
            this.§52142326123274123423632234§ = new Vector.<ClientObject>();
            for each(var _loc1_ in this.users)
            {
               this.§52142326123274123423632234§[§52142326123274123423632234§.length] = _loc1_;
            }
         }
         return this.§52142326123274123423632234§;
      }
      
      public function getUser(param1:String) : ClientObject
      {
         return this.users[param1];
      }
      
      public function getUserCount() : int
      {
         return this.§5214236712236725123423632234§;
      }
      
      public function addUser(param1:ClientObject) : void
      {
         this.§52142326123274123423632234§ = null;
         if(!this.users[param1.id])
         {
            this.users[param1.id] = param1;
            ++this.§5214236712236725123423632234§;
         }
         if(§52142329523308123423632234§.userName == param1.id)
         {
            this.§5214233072233085123423632234§ = param1;
         }
      }
   }
}

