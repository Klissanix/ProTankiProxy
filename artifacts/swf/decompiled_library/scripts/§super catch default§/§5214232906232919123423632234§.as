package §super catch default§
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.services.validator.§5214232026232039123423632234§;
   import §finally catch with§.§final function§;
   import §finally catch with§.§override package set§;
   
   public class §5214232906232919123423632234§ extends §import for default§ implements §5214232026232039123423632234§
   {
      
      public var §while for override§:Vector3;
      
      private var §throw for with§:§override package set§;
      
      private var §catch package override§:Number;
      
      private var §5214236958236971123423632234§:§override package set§;
      
      public var §class const dynamic§:Mesh;
      
      public function §5214232906232919123423632234§(param1:§5214233863233876123423632234§)
      {
         super(param1);
         var _loc2_:Vector.<Object3D> = param1.§function const with§(/mount/i);
         if(_loc2_ == null)
         {
            throw new ArgumentError();
         }
         var _loc3_:Object3D = _loc2_[0];
         this.§while for override§ = new Vector3(_loc3_.x,_loc3_.y,_loc3_.z);
         this.§throw for with§ = new §final function§(_loc3_.x);
         this.§catch package override§ = _loc3_.y;
         this.§5214236958236971123423632234§ = new §final function§(_loc3_.z);
         this.§class const dynamic§ = §521423128902312903123423632234§(this.§each use default§(param1));
      }
      
      public function §use for return§() : Number
      {
         return this.§throw for with§.§function const super§();
      }
      
      public function §5214237481237494123423632234§() : Number
      {
         return this.§5214236958236971123423632234§.§function const super§();
      }
      
      private function §each use default§(param1:§5214233863233876123423632234§) : Mesh
      {
         var _loc2_:Vector.<Object3D> = param1.§function const with§(/hull/i);
         if(_loc2_ == null)
         {
            throw new ArgumentError();
         }
         return Mesh(_loc2_[0]);
      }
      
      public function §5214237654237667123423632234§() : Number
      {
         return this.§catch package override§;
      }
      
      public function hasIncorrectData() : Boolean
      {
         return this.§while for override§.x != this.§throw for with§.§function const super§() || this.§while for override§.z != this.§5214236958236971123423632234§.§function const super§();
      }
      
      public function getType() : int
      {
         return 8;
      }
   }
}

