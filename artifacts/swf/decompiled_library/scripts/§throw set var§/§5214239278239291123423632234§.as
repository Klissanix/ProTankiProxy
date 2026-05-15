package §throw set var§
{
   import §5214231817231830123423632234§.§5214233863233876123423632234§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.services.validator.§5214232026232039123423632234§;
   import alternativa.tanks.services.validator.Vector3Validator;
   import §super catch default§.§import for default§;
   
   public class §5214239278239291123423632234§ extends §import for default§ implements §5214232026232039123423632234§
   {
      
      private static const §true set super§:RegExp = /box.*/i;
      
      private static const §5214237140237153123423632234§:RegExp = /(box.*|fmnt|muzzle.*)/i;
      
      public var §521423138432313856123423632234§:Vector3;
      
      public var §switch switch function§:Vector.<Vector3>;
      
      public var §default catch in§:Vector3;
      
      private var §finally const class§:Vector.<Vector3Validator>;
      
      private var §52142398423997123423632234§:Vector.<§5214235894235907123423632234§>;
      
      public var §5214234356234369123423632234§:Vector.<Mesh> = new Vector.<Mesh>();
      
      public function §5214239278239291123423632234§(param1:§5214233863233876123423632234§)
      {
         super(param1);
         this.§native catch const§(param1);
         this.§521423138432313856123423632234§ = §5214234925234938123423632234§(param1);
         this.§switch switch function§ = this.§5214232660232673123423632234§(param1);
         this.§default catch in§ = this.§521423133172313330123423632234§(param1);
         this.§52142398423997123423632234§ = this.§catch const function§(param1);
         this.§case package final§();
      }
      
      private static function §5214234925234938123423632234§(param1:§5214233863233876123423632234§) : Vector3
      {
         var _loc2_:Object3D = null;
         var _loc3_:Vector.<Object3D> = param1.§function const with§(/fmnt/i);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_[0];
            return new Vector3(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         throw new Error();
      }
      
      public function §521423124892312502123423632234§() : Vector.<§5214235894235907123423632234§>
      {
         return this.§52142398423997123423632234§;
      }
      
      private function §5214232660232673123423632234§(param1:§5214233863233876123423632234§) : Vector.<Vector3>
      {
         var _loc3_:Vector3 = null;
         var _loc4_:Vector.<Vector3> = new Vector.<Vector3>();
         var _loc2_:Vector.<Object3D> = param1.§function const with§(/muzzle.*/);
         if(_loc2_ != null)
         {
            _loc2_.sort(this.§with for for§);
            for each(var _loc5_ in _loc2_)
            {
               _loc3_ = new Vector3(_loc5_.x,_loc5_.y,_loc5_.z);
               _loc4_[_loc4_.length] = _loc3_;
            }
            return _loc4_;
         }
         throw new Error();
      }
      
      private function §with for for§(param1:Object3D, param2:Object3D) : Number
      {
         if(param1.name <= param2.name)
         {
            return -1;
         }
         return 1;
      }
      
      private function §native catch const§(param1:§5214233863233876123423632234§) : void
      {
         for each(var _loc2_ in param1.§5214237990238003123423632234§)
         {
            if(_loc2_ is Mesh && !§5214237140237153123423632234§.test(_loc2_.name))
            {
               this.§5214234356234369123423632234§.push(§521423128902312903123423632234§(Mesh(_loc2_)));
            }
         }
      }
      
      private function §521423133172313330123423632234§(param1:§5214233863233876123423632234§) : Vector3
      {
         var _loc2_:Object3D = null;
         var _loc3_:Vector.<Object3D> = param1.§function const with§(/laser/i);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_[0];
            return new Vector3(_loc2_.x,_loc2_.y,_loc2_.z);
         }
         return this.§switch switch function§[0];
      }
      
      public function getType() : int
      {
         return 10;
      }
      
      private function §case package final§() : void
      {
         this.§finally const class§ = new Vector.<Vector3Validator>(this.§switch switch function§.length);
         var _loc1_:int = 0;
         while(_loc1_ < this.§switch switch function§.length)
         {
            this.§finally const class§[_loc1_] = new Vector3Validator(this.§switch switch function§[_loc1_]);
            _loc1_++;
         }
      }
      
      public function hasIncorrectData() : Boolean
      {
         for each(var _loc1_ in this.§finally const class§)
         {
            if(!_loc1_.isValid())
            {
               return true;
            }
         }
         return false;
      }
      
      private function §catch const function§(param1:§5214233863233876123423632234§) : Vector.<§5214235894235907123423632234§>
      {
         var _loc5_:Vector.<Object3D> = param1.§function const with§(§true set super§);
         var _loc3_:Vector.<§5214235894235907123423632234§> = new Vector.<§5214235894235907123423632234§>();
         if(_loc5_ != null && _loc5_.length != 0)
         {
            for each(var _loc2_ in _loc5_)
            {
               _loc3_.push(new §5214235894235907123423632234§(_loc2_));
            }
         }
         else
         {
            for each(var _loc4_ in this.§5214234356234369123423632234§)
            {
               _loc3_.push(new §5214235894235907123423632234§(_loc4_));
            }
         }
         return _loc3_;
      }
   }
}

