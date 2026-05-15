package alternativa.engine3d.loaders.events
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   
   public class LoaderProgressEvent extends ProgressEvent
   {
      
      public static const LOADER_PROGRESS:String = "loaderProgress";
      
      private var ee09398:int;
      
      private var c4596cca:int;
      
      private var b391de5a:Number = 0;
      
      public function LoaderProgressEvent(param1:String, param2:int, param3:int, param4:Number = 0, param5:uint = 0, param6:uint = 0)
      {
         super(param1,false,false,param5,param6);
         this.ee09398 = param2;
         this.c4596cca = param3;
         this.b391de5a = param4;
      }
      
      public function get filesTotal() : int
      {
         return this.ee09398;
      }
      
      public function get filesLoaded() : int
      {
         return this.c4596cca;
      }
      
      public function get totalProgress() : Number
      {
         return this.b391de5a;
      }
      
      override public function clone() : Event
      {
         return new LoaderProgressEvent(type,this.ee09398,this.c4596cca,this.b391de5a,bytesLoaded,bytesTotal);
      }
      
      override public function toString() : String
      {
         return "[LoaderProgressEvent filesTotal=" + this.ee09398 + ", filesLoaded=" + this.c4596cca + ", totalProgress=" + this.b391de5a.toFixed(2) + "]";
      }
   }
}

