package §5214237330237343123423632234§
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.utils.getDefinitionByName;
   import §null package if§.§try use finally§;
   
   public class MediatorBase implements §try use finally§
   {
      
      protected static var §5214239228239241123423632234§:Class;
      
      protected static const §5214237840237853123423632234§:Boolean = §var get§();
      
      protected var §dynamic const return§:Object;
      
      protected var §final package with§:Boolean;
      
      public function MediatorBase()
      {
         super();
      }
      
      protected static function §var get§() : Boolean
      {
         try
         {
            §5214239228239241123423632234§ = getDefinitionByName("mx.core::UIComponent") as Class;
         }
         catch(error:Error)
         {
         }
         return §5214239228239241123423632234§ != null;
      }
      
      public function §finally catch var§() : void
      {
         this.§final package with§ = false;
         if(§5214237840237853123423632234§ && this.§dynamic const return§ is §5214239228239241123423632234§ && !this.§dynamic const return§["initialized"])
         {
            IEventDispatcher(this.§dynamic const return§).addEventListener("creationComplete",this.§521423133972313410123423632234§,false,0,true);
         }
         else
         {
            this.onRegister();
         }
      }
      
      public function onRegister() : void
      {
      }
      
      public function §5214237173237186123423632234§() : void
      {
         this.§final package with§ = true;
         this.§do package package§();
      }
      
      public function §do package package§() : void
      {
      }
      
      public function §5214235117235130123423632234§() : Object
      {
         return this.§dynamic const return§;
      }
      
      public function §5214236222236235123423632234§(param1:Object) : void
      {
         this.§dynamic const return§ = param1;
      }
      
      protected function §521423133972313410123423632234§(param1:Event) : void
      {
         IEventDispatcher(param1.target).removeEventListener("creationComplete",this.§521423133972313410123423632234§);
         if(!this.§final package with§)
         {
            this.onRegister();
         }
      }
   }
}

