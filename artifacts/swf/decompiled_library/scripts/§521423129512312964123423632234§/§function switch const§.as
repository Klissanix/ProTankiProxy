package §521423129512312964123423632234§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class §function switch const§ extends EventDispatcher
   {
      
      public var §package use each§:Vector.<BitmapData>;
      
      private var §5214237295237308123423632234§:Vector.<ByteArray>;
      
      private var §5214233499233512123423632234§:Dictionary = new Dictionary();
      
      private var §521423140012314014123423632234§:int;
      
      private var §5214239223105123423632234§:int;
      
      private var §case var continue§:int;
      
      private var §5214238420238433123423632234§:Boolean;
      
      private var §override package with§:int;
      
      public function §function switch const§()
      {
         super();
      }
      
      private function §default set for§(param1:int) : ImageLoader
      {
         var _loc2_:ImageLoader = new ImageLoader(param1);
         _loc2_.contentLoaderInfo.addEventListener("complete",this.§5214239461239474123423632234§);
         _loc2_.loadBytes(this.§5214237295237308123423632234§[this.§case var continue§]);
         return _loc2_;
      }
      
      private function §5214233690233703123423632234§() : void
      {
         this.§5214238420238433123423632234§ = false;
         this.§5214237295237308123423632234§ = null;
         dispatchEvent(new Event("complete"));
      }
      
      private function §dynamic const default§() : void
      {
         var _loc1_:ImageLoader = null;
         while(this.§5214239223105123423632234§ < this.§521423140012314014123423632234§ && this.§case var continue§ < this.§5214237295237308123423632234§.length)
         {
            _loc1_ = this.§default set for§(this.§case var continue§);
            this.§5214233499233512123423632234§[_loc1_] = true;
            ++this.§5214239223105123423632234§;
            ++this.§case var continue§;
         }
      }
      
      public function §5214235194235207123423632234§(param1:Vector.<ByteArray>, param2:int) : void
      {
         if(this.§5214238420238433123423632234§)
         {
            throw new Error("Already running");
         }
         if(param1 == null)
         {
            throw new ArgumentError("Parameter imageDatas is null");
         }
         this.§5214237295237308123423632234§ = param1;
         this.§521423140012314014123423632234§ = param2;
         this.§5214238420238433123423632234§ = true;
         this.§package use each§ = new Vector.<BitmapData>(param1.length);
         this.§override package with§ = 0;
         this.§5214239223105123423632234§ = 0;
         this.§case var continue§ = 0;
         if(param1.length > 0)
         {
            this.§dynamic const default§();
         }
         else
         {
            setTimeout(this.§5214233690233703123423632234§,0);
         }
      }
      
      private function §5214239461239474123423632234§(param1:Event) : void
      {
         var _loc2_:ImageLoader = ImageLoader(LoaderInfo(param1.target).loader);
         --this.§5214239223105123423632234§;
         ++this.§override package with§;
         delete this.§5214233499233512123423632234§[_loc2_];
         this.§package use each§[_loc2_.index] = Bitmap(_loc2_.content).bitmapData;
         if(this.§override package with§ == this.§5214237295237308123423632234§.length)
         {
            this.§5214233690233703123423632234§();
         }
         else
         {
            this.§dynamic const default§();
         }
      }
   }
}

import flash.display.Loader;

class ImageLoader extends Loader
{
   
   public var index:int;
   
   public function ImageLoader(param1:int)
   {
      super();
      this.index = param1;
   }
}
