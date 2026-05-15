package §5214237380237393123423632234§
{
   import §521423133902313403123423632234§.§5214235988236001123423632234§;
   import §521423133902313403123423632234§.ImageResourceLoadingWrapper;
   import §5214233087233100123423632234§.§include catch with§;
   import §521423602373123423632234§.§5214236462236475123423632234§;
   import §finally catch with§.§5214238074238087123423632234§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §if switch throw§ extends Sprite implements §5214235988236001123423632234§
   {
      
      private static var §5214232108232121123423632234§:Dictionary = new Dictionary();
      
      private var §52142345823471123423632234§:Bitmap = new Bitmap();
      
      private var §function package else§:Bitmap;
      
      private var §5214237788237801123423632234§:uint;
      
      public function §if switch throw§(param1:§include catch with§, param2:uint)
      {
         super();
         this.§5214237788237801123423632234§ = param2;
         var _loc3_:§include catch with§ = param1;
         if((_loc3_.§else for include§ & 1) != 0)
         {
            this.§5214233296233309123423632234§(param1);
         }
         else
         {
            var _loc4_:§include catch with§ = param1;
            if(_loc4_.§5214239618239631123423632234§.§521423137152313728123423632234§)
            {
               param1.§5214234169234182123423632234§(new ImageResourceLoadingWrapper(this));
            }
         }
         this.§function package else§ = this.§5214231608231621123423632234§(param2);
         addChild(this.§52142345823471123423632234§);
         addChild(this.§function package else§);
         this.§function package else§.x = (this.§52142345823471123423632234§.width - this.§function package else§.width) / 2;
         this.§function package else§.y = (this.§52142345823471123423632234§.height - this.§function package else§.height) / 2;
      }
      
      public function §catch use true§(param1:Number) : void
      {
         this.§function package else§.width = §5214236462236475123423632234§.§import const import§.width * param1;
         this.§function package else§.height = §5214236462236475123423632234§.§import const import§.height * param1;
         this.§function package else§.x = (this.§52142345823471123423632234§.width - this.§function package else§.width) / 2;
         this.§function package else§.y = (this.§52142345823471123423632234§.height - this.§function package else§.height) / 2;
      }
      
      public function get §set package case§() : Bitmap
      {
         return this.§52142345823471123423632234§;
      }
      
      private function §use for native§(param1:uint) : Bitmap
      {
         var _loc3_:BitmapData = §5214238074238087123423632234§.§5214235116235129123423632234§(§5214236462236475123423632234§.§import const import§,param1,0.75);
         var _loc2_:Bitmap = new Bitmap(_loc3_);
         _loc2_.smoothing = true;
         return _loc2_;
      }
      
      public function setPreviewResource(param1:§include catch with§) : void
      {
         §5214233296233309123423632234§(param1);
      }
      
      private function §5214233296233309123423632234§(param1:§include catch with§) : void
      {
         this.§52142345823471123423632234§.bitmapData = param1.data;
      }
      
      private function §5214231608231621123423632234§(param1:uint) : Bitmap
      {
         var _loc2_:Bitmap = §5214232108232121123423632234§[param1];
         if(_loc2_ == null)
         {
            _loc2_ = this.§use for native§(param1);
            §5214232108232121123423632234§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function §native switch true§(param1:uint) : void
      {
         var _loc2_:Bitmap = null;
         if(this.§5214237788237801123423632234§ != param1)
         {
            _loc2_ = this.§5214231608231621123423632234§(param1);
            addChild(_loc2_);
            _loc2_.x = this.§function package else§.x;
            _loc2_.y = this.§function package else§.y;
            _loc2_.width = this.§function package else§.width;
            _loc2_.height = this.§function package else§.height;
            removeChild(this.§function package else§);
            this.§function package else§ = _loc2_;
            this.§5214237788237801123423632234§ = param1;
         }
      }
   }
}

