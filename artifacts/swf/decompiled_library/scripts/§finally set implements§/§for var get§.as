package §finally set implements§
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   
   public class §for var get§ extends ProgressEvent
   {
      
      public static const §import do§:String = "loaderProgress";
      
      private var §break var static§:int;
      
      private var §5214232205232218123423632234§:int;
      
      private var §521423118902311903123423632234§:Number = 0;
      
      public function §for var get§(param1:String, param2:int, param3:int, param4:Number = 0, param5:uint = 0, param6:uint = 0)
      {
         super(param1,false,false,param5,param6);
         this.§break var static§ = param2;
         this.§5214232205232218123423632234§ = param3;
         this.§521423118902311903123423632234§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §for var get§(type,this.§break var static§,this.§5214232205232218123423632234§,this.§521423118902311903123423632234§,bytesLoaded,bytesTotal);
      }
      
      public function get §5214232037232050123423632234§() : Number
      {
         return this.§521423118902311903123423632234§;
      }
      
      public function get §5214237134237147123423632234§() : int
      {
         return this.§5214232205232218123423632234§;
      }
      
      override public function toString() : String
      {
         return "[LoaderProgressEvent partsTotal=" + this.§break var static§ + ", currentPart=" + this.§5214232205232218123423632234§ + ", totalProgress=" + this.§521423118902311903123423632234§.toFixed(2) + "]";
      }
      
      public function get §5214239535239548123423632234§() : int
      {
         return this.§break var static§;
      }
   }
}

