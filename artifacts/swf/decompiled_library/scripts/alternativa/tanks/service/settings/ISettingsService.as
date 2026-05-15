package alternativa.tanks.service.settings
{
   import flash.events.IEventDispatcher;
   
   public interface ISettingsService extends IEventDispatcher
   {
      
      function setEmailConfirmed(param1:Boolean) : void;
      
      function get showChat() : Boolean;
      
      function get mouseControl() : Boolean;
      
      function get alternatePaintBlend() : Boolean;
      
      function isNeedEmailRemind() : Boolean;
      
      function get showSkyBox() : Boolean;
      
      function get inverseBackDriving() : Boolean;
      
      function set soundVolume(param1:Number) : void;
      
      function get alternateCamera() : Boolean;
      
      function isEmailConfirmed() : Boolean;
      
      function set snowParticles(param1:Boolean) : void;
      
      function get soundVolume() : Number;
      
      function get dynamicLighting() : Boolean;
      
      function get showDamage() : Boolean;
      
      function setEmail(param1:String, param2:Boolean) : void;
      
      function initSoundValue() : void;
      
      function get showFPS() : Boolean;
      
      function get mouseSensitivity() : int;
      
      function get ssao() : Boolean;
      
      function isEmailSet() : Boolean;
      
      function get bgSound() : Boolean;
      
      function get graphicsAutoQuality() : Boolean;
      
      function set forceDisabledTankShadows(param1:Boolean) : void;
      
      function get adaptiveFPS() : Boolean;
      
      function get fog() : Boolean;
      
      function get refreshRate() : int;
      
      function getEmail() : String;
      
      function get isPasswordSet() : Boolean;
      
      function get showDecals() : Boolean;
      
      function get dynamicShadows() : Boolean;
      
      function get mipMapping() : Boolean;
      
      function set muteSound(param1:Boolean) : void;
      
      function get antialiasing() : Boolean;
      
      function setClientSetting(param1:SettingEnum, param2:Object) : void;
      
      function get mouseYInverse() : Boolean;
      
      function get mouseYInverseShaftAim() : Boolean;
      
      function set refreshRate(param1:int) : void;
      
      function get forceDisabledTankShadows() : Boolean;
      
      function get muteSound() : Boolean;
      
      function get uiScale2x() : Boolean;
      
      function set isPasswordSet(param1:Boolean) : void;
      
      function get dust() : Boolean;
      
      function get softParticles() : Boolean;
      
      function get snowParticles() : Boolean;
      
      function get shadows() : Boolean;
   }
}

