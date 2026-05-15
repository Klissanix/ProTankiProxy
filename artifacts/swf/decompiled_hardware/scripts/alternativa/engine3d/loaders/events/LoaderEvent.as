package alternativa.engine3d.loaders.events
{
   import flash.events.Event;
   
   public class LoaderEvent extends Event
   {
      
      public static const PART_OPEN:String = "partOpen";
      
      public static const PART_COMPLETE:String = "partComplete";
      
      private var f43136ef:int;
      
      private var d45bc9ca:int;
      
      private var _target:Object;
      
      public function LoaderEvent(param1:String, param2:int, param3:int, param4:Object = null)
      {
         super(param1);
         this.f43136ef = param2;
         this.d45bc9ca = param3;
         this._target = param4;
      }
      
      public function get partsTotal() : int
      {
         return this.f43136ef;
      }
      
      public function get currentPart() : int
      {
         return this.d45bc9ca;
      }
      
      override public function get target() : Object
      {
         return this._target;
      }
      
      override public function clone() : Event
      {
         return new LoaderEvent(type,this.f43136ef,this.d45bc9ca,this._target);
      }
      
      override public function toString() : String
      {
         return "[LoaderEvent type=" + type + ", partsTotal=" + this.f43136ef + ", currentPart=" + this.d45bc9ca + ", target=" + this._target + "]";
      }
   }
}

