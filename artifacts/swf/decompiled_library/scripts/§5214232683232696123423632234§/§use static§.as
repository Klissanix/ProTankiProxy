package §5214232683232696123423632234§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.model.ChatSettingsTracker;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import §extends var import§.§5214231658231671123423632234§;
   import flash.events.KeyboardEvent;
   import platform.client.fp10.core.model.§do set function§;
   import platform.client.fp10.core.model.§throw catch var§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §super override§.§5214232410232423123423632234§;
   import §super override§.§finally var with§;
   
   public class §use static§ extends §finally var with§ implements §5214232410232423123423632234§, §do set function§, §throw catch var§
   {
      
      public static var §5214235917235930123423632234§:IDisplay;
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §case const default§:BattleGUIService;
      
      public static var §52142329523308123423632234§:IUserPropertiesService;
      
      private var §get catch false§:§if package final§;
      
      private var §5214234610234623123423632234§:String;
      
      private var §5214234870234883123423632234§:§default for try§;
      
      private var §true var include§:ChatSettingsTracker;
      
      public function §use static§()
      {
         super();
         this.§get catch false§ = new §if package final§();
      }
      
      public function objectLoaded() : void
      {
         this.§get catch false§.§false set final§();
         this.§get catch false§.locked = false;
         this.§get catch false§.addEventListener("sendMessage",this.§5214237468237481123423632234§);
         §case const default§.getGuiContainer().addChild(this.§get catch false§);
         §5214235917235930123423632234§.stage.addEventListener("keyUp",this.§521423135372313550123423632234§);
         this.§5214234610234623123423632234§ = "";
         this.§5214234870234883123423632234§ = new §default for try§(this.§get catch false§);
         this.§true var include§ = new ChatSettingsTracker(this.§get catch false§);
      }
      
      public function §while var var§(param1:String) : void
      {
         this.§get catch false§.§while var var§(param1);
      }
      
      private function §5214238373238386123423632234§(param1:String, param2:String, param3:§5214231658231671123423632234§, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = param1 == null;
         if(_loc5_)
         {
         }
         this.§get catch false§.§use set var§(param1,param3,param2 + "\n",param4,_loc5_);
      }
      
      public function objectUnloaded() : void
      {
         this.§get catch false§.removeEventListener("sendMessage",this.§5214237468237481123423632234§);
         this.§get catch false§.§false set final§();
         if(this.§get catch false§.parent != null)
         {
            this.§get catch false§.parent.removeChild(this.§get catch false§);
         }
         this.§5214234870234883123423632234§.close();
         this.§true var include§.close();
         §5214235917235930123423632234§.stage.removeEventListener("keyUp",this.§521423135372313550123423632234§);
      }
      
      public function §521423115292311542123423632234§(param1:String) : void
      {
         this.§5214234610234623123423632234§ = param1;
      }
      
      public function §5214235134235147123423632234§(param1:String, param2:String, param3:§5214231658231671123423632234§) : void
      {
         this.§5214238373238386123423632234§(param1,param2,param3,true);
      }
      
      public function §521423138682313881123423632234§(param1:String, param2:String) : void
      {
         this.§get catch false§.§use set var§(null,§5214231658231671123423632234§.§dynamic use false§,param2 + "\n",true,true);
      }
      
      public function §5214238882238895123423632234§(param1:String, param2:String, param3:§5214231658231671123423632234§) : void
      {
         this.§5214238373238386123423632234§(param1,param2,param3);
      }
      
      private function §5214237468237481123423632234§(param1:§5214233756233769123423632234§) : void
      {
         §521423120492312062123423632234§.§5214235910235923123423632234§(param1.message,param1.§52142396323976123423632234§);
      }
      
      private function §521423135372313550123423632234§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13 && param1.keyLocation != 4)
         {
            if(§return set get§.isSpectatorMode())
            {
               this.§get catch false§.§5214232404232417123423632234§(this.§5214234610234623123423632234§);
            }
            this.§get catch false§.§final const true§();
         }
      }
      
      public function §implements set native§() : §if package final§
      {
         return this.§get catch false§;
      }
   }
}

