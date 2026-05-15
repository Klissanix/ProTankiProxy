package alternativa.tanks.models.battle.assault
{
   import §5214231366231379123423632234§.§default catch native§;
   import §5214234043234056123423632234§.§if use dynamic§;
   import §5214235485235498123423632234§.CTFFlagState;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§5214234639234652123423632234§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.AnimatedSprite3D;
   import alternativa.tanks.engine3d.TextureAnimation;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import §const use implements§.§dynamic include§;
   import §do catch return§.§5214232252232265123423632234§;
   import §each var null§.§521423119402311953123423632234§;
   import §each var null§.§const throw§;
   import §each var null§.§function set class§;
   import §else switch default§.§5214235140235153123423632234§;
   import §else switch default§.§override for default§;
   import §extends var import§.§5214231658231671123423632234§;
   import §finally catch with§.§5214235507235520123423632234§;
   import §finally catch with§.§native switch false§;
   import §for catch for§.§521423136582313671123423632234§;
   import §for catch for§.§5214234380234393123423632234§;
   import §switch var native§.ModeLight;
   import §switch var native§.TeamLightColor;
   
   public class ASFlag implements §if use dynamic§, §5214234639234652123423632234§, §override for default§
   {
      
      public static var §52142380523818123423632234§:BattleService;
      
      private static const §521423101412310154123423632234§:int = 1000;
      
      public static var §5214239937239950123423632234§:ILightingEffectsService;
      
      private static const §5214232175232188123423632234§:§native switch false§ = new §5214235507235520123423632234§(95);
      
      private static const §5214232892232905123423632234§:§native switch false§ = new §5214235507235520123423632234§(400);
      
      private static const §set switch dynamic§:Vector.<§function set class§> = new Vector.<§function set class§>();
      
      private static const §521423137192313732123423632234§:Vector3 = new Vector3();
      
      private static const §5214235622235635123423632234§:§default catch native§ = new §default catch native§();
      
      private static const final:Vector3 = new Vector3();
      
      private static const §521423128872312900123423632234§:Vector3 = new Vector3();
      
      public var teamType:§5214231658231671123423632234§;
      
      public var §continue var use§:§521423136582313671123423632234§;
      
      private var §5214233873233886123423632234§:§5214239411239424123423632234§;
      
      private var §52142334723360123423632234§:String;
      
      private var §else switch do§:CTFFlagState;
      
      private var §52142385223865123423632234§:Vector3;
      
      private var skin:AnimatedSprite3D;
      
      private var startTime:int;
      
      private var §521423138292313842123423632234§:Number = 1;
      
      private var §null set each§:Boolean;
      
      private var §dynamic use switch§:§5214234380234393123423632234§;
      
      private var callback:§52142381823831123423632234§;
      
      private var §finally const implements§:OmniLight;
      
      private var §null use break§:int;
      
      public function ASFlag(param1:int, param2:§5214231658231671123423632234§, param3:Vector3, param4:int, param5:int, param6:TextureAnimation, param7:§5214234380234393123423632234§, param8:§52142381823831123423632234§)
      {
         super();
         this.§else switch do§ = CTFFlagState.AT_BASE;
         this.§null use break§ = param1;
         this.teamType = param2;
         this.§52142385223865123423632234§ = param3.clone();
         this.§else switch do§ = CTFFlagState.AT_BASE;
         this.§dynamic use switch§ = param7;
         this.callback = param8;
         this.createSkin(param4,param5,param6);
         this.e1cec72b(param2);
         this.setPosition(param3);
         this.startTime = 1000 * Math.random();
      }
      
      public function getId() : int
      {
         return this.§null use break§;
      }
      
      public function dropAt(param1:Vector3) : void
      {
         this.reset(CTFFlagState.DROPPED);
         this.setPosition(param1);
      }
      
      public function get carrier() : §5214239411239424123423632234§
      {
         return this.§5214233873233886123423632234§;
      }
      
      public function setLocalCarrier(param1:String, param2:§5214239411239424123423632234§) : void
      {
         this.§null set each§ = true;
         this.e1b52a1a(param1,param2,0.5);
      }
      
      private function e1b52a1a(param1:String, param2:§5214239411239424123423632234§, param3:Number) : void
      {
         this.§52142334723360123423632234§ = param1;
         this.§5214233873233886123423632234§ = param2;
         this.§else switch do§ = CTFFlagState.CARRIED;
         if(param2 != null)
         {
            this.skin.visible = true;
            this.c640bcea(param3);
         }
         else
         {
            this.skin.visible = false;
         }
      }
      
      public function returnToBase() : void
      {
         this.reset(CTFFlagState.AT_BASE);
         this.setPosition(this.§52142385223865123423632234§);
      }
      
      private function e1cec72b(param1:§5214231658231671123423632234§) : void
      {
         var _loc2_:ModeLight = §5214239937239950123423632234§.getLightForMode(§dynamic include§.§return package native§);
         var _loc3_:TeamLightColor = _loc2_.getLightForTeam(§5214231658231671123423632234§.§521423107532310766123423632234§);
         this.§finally const implements§ = new OmniLight(_loc3_.getColor(),_loc2_.getAttenuationBegin(),_loc2_.getAttenuationEnd());
         this.§finally const implements§.intensity = _loc3_.getIntensity();
      }
      
      private function reset(param1:CTFFlagState) : void
      {
         this.§else switch do§ = param1;
         this.§52142334723360123423632234§ = null;
         this.§5214233873233886123423632234§ = null;
         this.c640bcea(1);
         this.skin.visible = true;
      }
      
      public function addToScene() : void
      {
         var _loc1_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc1_.§5214231095231108123423632234§(this.skin);
         _loc1_.§5214231095231108123423632234§(this.§finally const implements§);
      }
      
      public function get state() : CTFFlagState
      {
         return this.§else switch do§;
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.skin.setFrameIndex(int((param1 - this.startTime) / 1000));
         if(this.§5214233873233886123423632234§ != null)
         {
            this.§5214233873233886123423632234§.§include switch break§().§521423120642312077123423632234§(final);
            final.z -= 50;
            this.setPosition(final);
         }
      }
      
      private function createSkin(param1:int, param2:int, param3:TextureAnimation) : void
      {
         var _loc4_:Number = param1 * §5214232892232905123423632234§.§521423128592312872123423632234§() / param2;
         this.skin = new AnimatedSprite3D(_loc4_,§5214232892232905123423632234§.§521423128592312872123423632234§());
         this.skin.softAttenuation = 10;
         this.skin.setAnimationData(param3);
         this.skin.setFrameIndex(0);
         this.skin.originY = 1;
         param3.material.resolution = 1;
         this.§continue var use§ = new §5214232252232265123423632234§(new Vector3(0.5 * §5214232175232188123423632234§.§521423128592312872123423632234§(),0.5 * §5214232175232188123423632234§.§521423128592312872123423632234§(),0.5 * §5214232892232905123423632234§.§521423128592312872123423632234§()),1,§521423119402311953123423632234§.§with catch class§);
      }
      
      public function setAlphaMultiplier(param1:Number) : void
      {
         this.§521423138292313842123423632234§ = param1 < 0.2 ? 0.2 : param1;
         this.c640bcea(this.§null set each§ ? 0.5 : 1);
      }
      
      public function checkTrigger(param1:§const throw§) : void
      {
         var _loc2_:§521423136582313671123423632234§ = null;
         var _loc4_:§function set class§ = null;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1.§5214237167237180123423632234§)
            {
               return;
            }
            _loc2_ = param1.§if package default§[0];
            this.§dynamic use switch§.§var switch include§(_loc2_,this.§continue var use§,§set switch dynamic§);
            if(§set switch dynamic§.length > 0)
            {
               _loc4_ = §set switch dynamic§[0];
               §521423137192313732123423632234§.copy(_loc4_.§dynamic final§);
               §521423128872312900123423632234§.x = this.§continue var use§.§try const throw§.§catch package continue§ - §521423137192313732123423632234§.x;
               §521423128872312900123423632234§.y = this.§continue var use§.§try const throw§.§include var break§ - §521423137192313732123423632234§.y;
               §521423128872312900123423632234§.z = this.§continue var use§.§try const throw§.§function var import§ - §521423137192313732123423632234§.z;
               if(!this.§dynamic use switch§.§set use for§(§521423137192313732123423632234§,§521423128872312900123423632234§,16,1,null,§5214235622235635123423632234§))
               {
                  break;
               }
               §521423137192313732123423632234§.x = _loc2_.§try const throw§.§catch package continue§;
               §521423137192313732123423632234§.y = _loc2_.§try const throw§.§include var break§;
               §521423137192313732123423632234§.z = _loc2_.§try const throw§.§function var import§;
               §521423128872312900123423632234§.x = this.§continue var use§.§try const throw§.§catch package continue§ - §521423137192313732123423632234§.x;
               §521423128872312900123423632234§.y = this.§continue var use§.§try const throw§.§include var break§ - §521423137192313732123423632234§.y;
               §521423128872312900123423632234§.z = this.§continue var use§.§catch for include§.§super const if§ - §521423137192313732123423632234§.z + 1;
               if(!this.§dynamic use switch§.§set use for§(§521423137192313732123423632234§,§521423128872312900123423632234§,16,1,null,§5214235622235635123423632234§))
               {
                  break;
               }
            }
            _loc3_++;
         }
         _loc5_ = 0;
         while(_loc5_ < §set switch dynamic§.length)
         {
            _loc4_ = §set switch dynamic§[_loc5_];
            _loc4_.§5214238823101123423632234§();
            _loc5_++;
         }
         §set switch dynamic§.length = 0;
         this.callback.onFlagTouch(this.§null use break§);
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.skin.x;
         param1.y = this.skin.y;
         param1.z = this.skin.z;
      }
      
      public function setRemoteCarrier(param1:String, param2:§5214239411239424123423632234§) : void
      {
         this.§null set each§ = false;
         this.e1b52a1a(param1,param2,1);
      }
      
      public function get carrierid() : String
      {
         return this.§52142334723360123423632234§;
      }
      
      private function c640bcea(param1:Number) : void
      {
         if(this.§else switch do§ == CTFFlagState.CARRIED)
         {
            this.skin.alpha = param1;
         }
         else
         {
            this.skin.alpha = this.§521423138292313842123423632234§;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§5214235140235153123423632234§ = §52142380523818123423632234§.getBattleScene3D();
         _loc1_.§5214233649233662123423632234§(this.skin);
         _loc1_.§5214233649233662123423632234§(this.§finally const implements§);
      }
      
      private function setPosition(param1:Vector3) : void
      {
         this.skin.x = param1.x;
         this.skin.y = param1.y;
         this.skin.z = param1.z;
         this.§continue var use§.§try const throw§.§catch package continue§ = param1.x;
         this.§continue var use§.§try const throw§.§include var break§ = param1.y;
         this.§continue var use§.§try const throw§.§function var import§ = param1.z + 0.5 * §5214232892232905123423632234§.§521423128592312872123423632234§();
         this.§continue var use§.§finally switch static§();
         this.§finally const implements§.x = param1.x;
         this.§finally const implements§.y = param1.y;
         this.§finally const implements§.z = param1.z + 0.75 * §5214232892232905123423632234§.§521423128592312872123423632234§();
      }
   }
}

