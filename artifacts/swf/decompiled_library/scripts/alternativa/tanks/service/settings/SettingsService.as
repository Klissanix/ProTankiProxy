package alternativa.tanks.service.settings
{
   import alternativa.osgi.service.display.IDisplay;
   import flash.events.EventDispatcher;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class SettingsService extends EventDispatcher implements ISettingsService
   {
      
      public static var §if catch include§:IStorageService;
      
      public static var display:IDisplay;
      
      private static const §in use throw§:Number = 0.7;
      
      private static const §521423122182312231123423632234§:int = 8;
      
      private var email:String;
      
      private var emailConfirmed:Boolean;
      
      private var §5214232793232806123423632234§:Boolean;
      
      private var §try set with§:Boolean = false;
      
      private var §include set else§:Boolean;
      
      public function SettingsService()
      {
         display.updateUiScale(uiScale2x ? 2 : 1);
         super();
      }
      
      private static function e6756527(param1:Boolean, param2:Number) : void
      {
         SoundMixer.soundTransform = new SoundTransform(param1 ? 0 : param2);
      }
      
      public function get refreshRate() : int
      {
         return this.getInt(SettingEnum.§5214235542235555123423632234§,60);
      }
      
      public function isEmailConfirmed() : Boolean
      {
         return this.emailConfirmed;
      }
      
      public function set muteSound(param1:Boolean) : void
      {
         SettingsService.e6756527(param1,this.soundVolume);
         this.setClientSetting(SettingEnum.§5214236593236606123423632234§,param1);
      }
      
      public function get isPasswordSet() : Boolean
      {
         return this.§try set with§;
      }
      
      public function get showDecals() : Boolean
      {
         return this.getBoolean(SettingEnum.§5214231100231113123423632234§,true);
      }
      
      public function set soundVolume(param1:Number) : void
      {
         e6756527(this.muteSound,param1);
         this.setClientSetting(SettingEnum.§5214238972238985123423632234§,param1);
      }
      
      public function setClientSetting(param1:SettingEnum, param2:Object) : void
      {
         var _loc3_:SharedObject = §if catch include§.getStorage();
         _loc3_.data[param1.name] = param2;
         _loc3_.flush();
         dispatchEvent(new SettingsServiceEvent("SettingsServiceEvent.SETTINGS_CHANGED",param1));
      }
      
      public function isNeedEmailRemind() : Boolean
      {
         return !this.isEmailConfirmed();
      }
      
      public function get softParticles() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§521423107242310737123423632234§,false);
      }
      
      public function get soundVolume() : Number
      {
         return this.getNumber(SettingEnum.§5214238972238985123423632234§,0.7);
      }
      
      private function f22eaacc(param1:SettingEnum) : Boolean
      {
         return §if catch include§.getStorage().data[param1.name] != null;
      }
      
      public function set isPasswordSet(param1:Boolean) : void
      {
         this.§try set with§ = param1;
      }
      
      public function getEmail() : String
      {
         return this.email != null ? this.email : "";
      }
      
      public function get showChat() : Boolean
      {
         return this.getBoolean(SettingEnum.§5214238844238857123423632234§,true);
      }
      
      public function setEmailConfirmed(param1:Boolean) : void
      {
         this.emailConfirmed = param1;
      }
      
      public function get dynamicLighting() : Boolean
      {
         var _loc1_:Boolean = this.dynamicShadows || this.ssao || this.softParticles;
         var _loc2_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§null var catch§,_loc1_);
      }
      
      public function initSoundValue() : void
      {
         e6756527(this.muteSound,this.soundVolume);
      }
      
      public function get shadows() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§default finally switch§,true);
      }
      
      public function get mouseYInverseShaftAim() : Boolean
      {
         return this.getBoolean(SettingEnum.§5214233995234008123423632234§,false);
      }
      
      public function get mipMapping() : Boolean
      {
         return this.getBoolean(SettingEnum.§5214236950236963123423632234§,true);
      }
      
      public function get alternatePaintBlend() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && this.getBoolean(SettingEnum.§521423114362311449123423632234§,false);
      }
      
      public function get ssao() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§for case§,false);
      }
      
      public function get inverseBackDriving() : Boolean
      {
         return this.getBoolean(SettingEnum.§implements catch super§,false);
      }
      
      public function get alternateCamera() : Boolean
      {
         return this.getBoolean(SettingEnum.§5214238215238228123423632234§,false);
      }
      
      public function set forceDisabledTankShadows(param1:Boolean) : void
      {
         §include set else§ = param1;
      }
      
      public function get muteSound() : Boolean
      {
         return this.getBoolean(SettingEnum.§5214236593236606123423632234§,false);
      }
      
      public function get dynamicShadows() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§true switch import§,false);
      }
      
      public function get antialiasing() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§do for catch§,false);
      }
      
      public function get mouseYInverse() : Boolean
      {
         return this.getBoolean(SettingEnum.§521423136022313615123423632234§,false);
      }
      
      public function get fog() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§52142358023593123423632234§,true);
      }
      
      public function set refreshRate(param1:int) : void
      {
         this.setClientSetting(SettingEnum.§5214235542235555123423632234§,param1);
      }
      
      private function b1ecb017(param1:SettingEnum, param2:Boolean) : void
      {
         §if catch include§.getStorage().data[param1.name] = param2;
      }
      
      public function setEmail(param1:String, param2:Boolean) : void
      {
         this.email = param1;
         this.emailConfirmed = param2;
      }
      
      public function get mouseControl() : Boolean
      {
         return this.getBoolean(SettingEnum.§null use extends§,true);
      }
      
      public function isEmailSet() : Boolean
      {
         return this.email != null && this.email != "";
      }
      
      public function get adaptiveFPS() : Boolean
      {
         return this.getBoolean(SettingEnum.§521423123062312319123423632234§,false);
      }
      
      public function get showSkyBox() : Boolean
      {
         return this.getBoolean(SettingEnum.§for static§,true);
      }
      
      public function get snowParticles() : Boolean
      {
         return §5214232793232806123423632234§;
      }
      
      public function get showFPS() : Boolean
      {
         return this.getBoolean(SettingEnum.§var use function§,true);
      }
      
      private function getNumber(param1:SettingEnum, param2:Number = 0) : Number
      {
         var _loc3_:Number = Number(§if catch include§.getStorage().data[param1.name]);
         return isNaN(_loc3_) ? param2 : _loc3_;
      }
      
      public function get mouseSensitivity() : int
      {
         return this.getNumber(SettingEnum.§switch var with§,8);
      }
      
      public function get dust() : Boolean
      {
         var _loc1_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§521423107242310737123423632234§,false) && this.getBoolean(SettingEnum.§catch switch set§,false);
      }
      
      public function get uiScale2x() : Boolean
      {
         return this.getBoolean(SettingEnum.§521423126132312626123423632234§,false);
      }
      
      public function get forceDisabledTankShadows() : Boolean
      {
         return §include set else§;
      }
      
      public function get bgSound() : Boolean
      {
         return this.getBoolean(SettingEnum.§5214237738237751123423632234§,true);
      }
      
      private function getInt(param1:SettingEnum, param2:int) : int
      {
         var _loc3_:* = §if catch include§.getStorage().data[param1.name];
         return _loc3_ == null ? param2 : int(_loc3_);
      }
      
      public function get showDamage() : Boolean
      {
         return this.getBoolean(SettingEnum.SHOW_DAMAGE,true);
      }
      
      public function set snowParticles(param1:Boolean) : void
      {
         §5214232793232806123423632234§ = param1;
      }
      
      public function get graphicsAutoQuality() : Boolean
      {
         if(this.f22eaacc(SettingEnum.§5214236420236433123423632234§))
         {
            var _loc1_:GPUCapabilities = GPUCapabilities;
            return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§ && this.getBoolean(SettingEnum.§5214236420236433123423632234§,false);
         }
         var _loc3_:GPUCapabilities = GPUCapabilities;
         return projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§super use var§ && !projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities.§return const§;
      }
      
      private function getBoolean(param1:SettingEnum, param2:Boolean) : Boolean
      {
         var _loc3_:* = §if catch include§.getStorage().data[param1.name];
         return _loc3_ == null ? param2 : Boolean(_loc3_);
      }
   }
}

