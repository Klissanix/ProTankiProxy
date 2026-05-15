package projects.tanks.clients.flash.commons.models.gpu
{
   import flash.display.Stage;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.setTimeout;
   
   public class GPUCapabilities extends EventDispatcher
   {
      
      private static var §super use var§:Boolean;
      
      private static var §return const§:Boolean;
      
      private var stage:Stage;
      
      private var §5214234272234285123423632234§:Boolean;
      
      public function GPUCapabilities(param1:Stage, param2:String = null, param3:String = null)
      {
         super();
         this.stage = param1;
         if(param2 != null)
         {
            §super use var§ = param2 == "true";
            §return const§ = param3 == "true";
            §5214234272234285123423632234§ = true;
         }
      }
      
      public static function get constrained() : Boolean
      {
         return §return const§;
      }
      
      public static function get gpuEnabled() : Boolean
      {
         return §super use var§;
      }
      
      private function a16aaa14(param1:ErrorEvent) : void
      {
         this.removeListeners();
         this.b197e8a5();
      }
      
      private function b197e8a5() : void
      {
         dispatchEvent(new Event("complete"));
      }
      
      public function detect() : void
      {
         if(this.c5e34231() && !§5214234272234285123423632234§)
         {
            this.b4ec640a();
         }
         else
         {
            this.e774da73();
         }
      }
      
      private function d1453c6e(param1:Event) : void
      {
         this.removeListeners();
         this.b60a4b41();
         this.b197e8a5();
      }
      
      private function f46e3e16() : Object
      {
         return this.stage["stage3Ds"][0];
      }
      
      private function e648a607() : void
      {
         §return const§ = true;
         var _loc1_:Object = this.f46e3e16();
         _loc1_.addEventListener("context3DCreate",this.d1453c6e);
         _loc1_.addEventListener("error",this.a16aaa14);
         _loc1_.requestContext3D("auto","baselineConstrained");
      }
      
      private function a3052d80(param1:Event) : void
      {
         this.removeListeners();
         this.b60a4b41();
         if(!§super use var§ && this.c2e9b945())
         {
            this.e648a607();
         }
         else
         {
            this.b197e8a5();
         }
      }
      
      private function removeListeners() : void
      {
         var _loc1_:Object = this.f46e3e16();
         _loc1_.removeEventListener("context3DCreate",this.a3052d80);
         _loc1_.removeEventListener("context3DCreate",this.d1453c6e);
         _loc1_.removeEventListener("error",this.a16aaa14);
      }
      
      private function b4ec640a() : void
      {
         var _loc1_:Object = this.f46e3e16();
         _loc1_.addEventListener("context3DCreate",this.a3052d80);
         _loc1_.addEventListener("error",this.a16aaa14);
         _loc1_.requestContext3D("auto");
      }
      
      private function c5e34231() : Boolean
      {
         return this.stage.hasOwnProperty("stage3Ds");
      }
      
      private function c2e9b945() : Boolean
      {
         var _loc1_:Object = this.f46e3e16();
         return _loc1_.requestContext3D.length > 1;
      }
      
      private function e774da73() : void
      {
         setTimeout(this.b197e8a5,0);
      }
      
      private function b60a4b41() : void
      {
         var _loc3_:Object = this.f46e3e16();
         var _loc1_:Object = _loc3_.context3D;
         var _loc2_:String = _loc1_.driverInfo;
         §super use var§ = _loc2_.toLowerCase().indexOf("software") == -1;
         _loc1_.dispose();
      }
   }
}

