package §false set native§
{
   import §5214238576238589123423632234§.§521423128552312868123423632234§;
   import alternativa.tanks.models.service.ClanUserNotificationsManager;
   import alternativa.tanks.service.clan.user.ClanUserService;
   import fl.data.DataProvider;
   import flash.utils.Dictionary;
   import §override catch default§.Long;
   import platform.client.fp10.core.type.§521423120252312038123423632234§;
   
   public class §override package static§ extends DataProvider
   {
      
      public static var §switch use var§:ClanUserService;
      
      private static var §521423104032310416123423632234§:RegExp = /\-|\./;
      
      private static var §5214238082238095123423632234§:RegExp = /\*/g;
      
      private var §521423100972310110123423632234§:Function;
      
      private var §52142340423417123423632234§:Dictionary = new Dictionary();
      
      private var §521423135212313534123423632234§:String = "";
      
      private var §do class§:Object = ["id"];
      
      private var §5214232751232764123423632234§:Object = null;
      
      private var §521423119482311961123423632234§:String;
      
      private var §catch finally const§:RegExp;
      
      public function §override package static§()
      {
         super();
      }
      
      private static function §52142392023933123423632234§(param1:String) : RegExp
      {
         param1 = param1.replace(§521423104032310416123423632234§,"\\$&").replace(§5214238082238095123423632234§,".*");
         param1 = "^" + param1;
         return new RegExp(param1,"i");
      }
      
      public function §include package static§(param1:Long) : void
      {
         if(param1 in this.§52142340423417123423632234§)
         {
            super.removeItem(this.§52142340423417123423632234§[param1]);
            delete this.§52142340423417123423632234§[param1];
         }
      }
      
      public function §521423116042311617123423632234§(param1:String, param2:String) : void
      {
         if(param2 == "" && this.§521423135212313534123423632234§ != "")
         {
            this.§else for class§();
            return;
         }
         this.§521423119482311961123423632234§ = param1;
         this.§521423135212313534123423632234§ = param2;
         this.§catch finally const§ = §52142392023933123423632234§(this.§521423135212313534123423632234§);
         this.§5214239699239712123423632234§();
      }
      
      public function §52142326023273123423632234§() : void
      {
         super.sortOn(this.§do class§,this.§5214232751232764123423632234§);
      }
      
      override public function sortOn(param1:Object, param2:Object = null) : *
      {
         this.§do class§ = param1;
         this.§5214232751232764123423632234§ = param2;
         super.sortOn(this.§do class§,this.§5214232751232764123423632234§);
      }
      
      public function §5214239699239712123423632234§() : void
      {
         if(this.§521423135212313534123423632234§ != "")
         {
            super.removeAll();
            for each(var _loc1_ in this.§52142340423417123423632234§)
            {
               if(this.§static package package§(_loc1_))
               {
                  super.addItem(_loc1_);
               }
            }
         }
         this.§52142326023273123423632234§();
      }
      
      public function set §5214233046233059123423632234§(param1:Function) : void
      {
         this.§521423100972310110123423632234§ = param1;
      }
      
      public function §else for class§(param1:Boolean = true) : void
      {
         this.§521423135212313534123423632234§ = "";
         if(!param1)
         {
            return;
         }
         super.removeAll();
         for each(var _loc2_ in this.§52142340423417123423632234§)
         {
            super.addItem(_loc2_);
         }
         this.§52142326023273123423632234§();
      }
      
      private function §in switch set§(param1:Long) : String
      {
         var _loc3_:§521423120252312038123423632234§ = §switch use var§.getObjectById(param1);
         var _loc2_:§521423128552312868123423632234§ = _loc3_.adapt(§521423128552312868123423632234§) as §521423128552312868123423632234§;
         return _loc2_.§in switch set§();
      }
      
      private function §static package package§(param1:Object) : Boolean
      {
         return param1.hasOwnProperty(this.§521423119482311961123423632234§) && param1[this.§521423119482311961123423632234§].search(this.§catch finally const§) != -1;
      }
      
      public function get §5214233046233059123423632234§() : Function
      {
         return this.§521423100972310110123423632234§;
      }
      
      public function §521423999231012123423632234§(param1:Long, param2:String, param3:Boolean = true) : Object
      {
         var _loc4_:Object = {};
         _loc4_.id = param1;
         _loc4_.type = param2;
         _loc4_.name = this.§in switch set§(param1);
         _loc4_.isNew = ClanUserNotificationsManager.clanInIncomingNotifications(param1);
         this.§52142340423417123423632234§[param1] = _loc4_;
         super.addItem(this.§52142340423417123423632234§[param1]);
         if(param3)
         {
            this.§5214234287234300123423632234§();
         }
         return this.§52142340423417123423632234§[param1];
      }
      
      public function §5214234287234300123423632234§() : void
      {
         this.§5214239699239712123423632234§();
      }
      
      override public function getItemAt(param1:uint) : Object
      {
         var _loc2_:Object = super.getItemAt(param1);
         if(this.§521423100972310110123423632234§ != null)
         {
            this.§521423100972310110123423632234§(_loc2_);
         }
         return _loc2_;
      }
   }
}

