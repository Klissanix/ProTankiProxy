package alternativa.physics.contactislands
{
   import alternativa.math.Vector3;
   import §each var null§.§const throw§;
   import §each var null§.§do false§;
   import §each var null§.§function set class§;
   import §each var null§.§if var in§;
   
   public class ContactIsland
   {
      
      private static var §521423109472310960123423632234§:int;
      
      private static const §52142339523408123423632234§:int = 0;
      
      private static const §class set default§:int = 1;
      
      private static const §super switch return§:Vector.<ContactIsland> = new Vector.<ContactIsland>();
      
      private static const §5214235014235027123423632234§:Vector3 = new Vector3();
      
      public const §521423109502310963123423632234§:Vector.<§do false§> = new Vector.<§do false§>();
      
      private var §5214234570234583123423632234§:§if var in§;
      
      private const §5214238054238067123423632234§:Vector.<§function set class§> = new Vector.<§function set class§>();
      
      private const §package const use§:Vector.<§function set class§> = new Vector.<§function set class§>();
      
      private var §default set switch§:Vector.<§const throw§> = new Vector.<§const throw§>();
      
      private var §continue switch dynamic§:Vector.<§const throw§> = new Vector.<§const throw§>();
      
      private const §5214239968239981123423632234§:Vector.<§do false§> = new Vector.<§do false§>();
      
      private const §final use if§:ContactLevels = new ContactLevels();
      
      public function ContactIsland()
      {
         super();
      }
      
      public static function create() : ContactIsland
      {
         if(§521423109472310960123423632234§ == 0)
         {
            return new ContactIsland();
         }
         §521423109472310960123423632234§ = §521423109472310960123423632234§ - 1;
         var _loc1_:ContactIsland = §super switch return§[§521423109472310960123423632234§];
         §super switch return§[§521423109472310960123423632234§] = null;
         return _loc1_;
      }
      
      final private function cf04cc0(param1:§function set class§, param2:Vector3) : void
      {
         var _loc3_:Vector3 = param1.§continue switch native§.§5214232783232796123423632234§.§implements catch catch§.§get var dynamic§;
         var _loc4_:Vector3 = param1.§5214231362231375123423632234§;
         var _loc5_:Number = _loc3_.y * _loc4_.z - _loc3_.z * _loc4_.y;
         var _loc6_:Number = _loc3_.z * _loc4_.x - _loc3_.x * _loc4_.z;
         var _loc7_:Number = _loc3_.x * _loc4_.y - _loc3_.y * _loc4_.x;
         _loc4_ = param1.§continue switch native§.§5214232783232796123423632234§.§implements catch catch§.§native use function§;
         param2.x = _loc4_.x + _loc5_;
         param2.y = _loc4_.y + _loc6_;
         param2.z = _loc4_.z + _loc7_;
         _loc3_ = param1.§with const get§.§5214232783232796123423632234§.§implements catch catch§.§get var dynamic§;
         _loc4_ = param1.§else const false§;
         _loc5_ = _loc3_.y * _loc4_.z - _loc3_.z * _loc4_.y;
         _loc6_ = _loc3_.z * _loc4_.x - _loc3_.x * _loc4_.z;
         _loc7_ = _loc3_.x * _loc4_.y - _loc3_.y * _loc4_.x;
         _loc4_ = param1.§with const get§.§5214232783232796123423632234§.§implements catch catch§.§native use function§;
         param2.x -= _loc4_.x + _loc5_;
         param2.y -= _loc4_.y + _loc6_;
         param2.z -= _loc4_.z + _loc7_;
      }
      
      private function f6988dda(param1:Vector.<§do false§>, param2:Vector.<§function set class§>) : void
      {
         var _loc6_:int = 0;
         var _loc3_:§do false§ = null;
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = int(param1.length);
         while(_loc6_ < _loc8_)
         {
            _loc3_ = param1[_loc6_];
            _loc4_ = _loc3_.§each use include§;
            _loc5_ = int(_loc4_.length);
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               param2[param2.length] = _loc4_[_loc7_];
               _loc7_++;
            }
            _loc6_++;
         }
      }
      
      final private function e2c154d(param1:Vector.<§const throw§>, param2:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§const throw§ = null;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1[_loc4_];
            _loc5_.§set for implements§ = param2;
            _loc4_++;
         }
      }
      
      final private function a2532551(param1:Vector.<§function set class§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§function set class§ = null;
         var _loc2_:int = int(param1.length);
         _loc4_ = 1;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = _loc4_ * Math.random();
            _loc3_ = param1[_loc5_];
            param1[_loc5_] = param1[_loc4_];
            param1[_loc4_] = _loc3_;
            _loc4_++;
         }
      }
      
      final private function e57a8285(param1:§function set class§) : void
      {
         var _loc3_:Vector3 = §5214235014235027123423632234§;
         var _temp_2:* = this;
         var _temp_1:* = param1;
         var _loc7_:Vector3 = _loc3_;
         var _loc13_:§function set class§ = _temp_1;
         var _loc6_:ContactIsland = _temp_2;
         var _loc8_:Vector3 = _loc13_.§continue switch native§.§5214232783232796123423632234§.§5214235217235230123423632234§;
         var _loc9_:Vector3 = _loc13_.§5214231362231375123423632234§;
         var _loc10_:Number = _loc8_.y * _loc9_.z - _loc8_.z * _loc9_.y;
         var _loc11_:Number = _loc8_.z * _loc9_.x - _loc8_.x * _loc9_.z;
         var _loc12_:Number = _loc8_.x * _loc9_.y - _loc8_.y * _loc9_.x;
         _loc9_ = _loc13_.§continue switch native§.§5214232783232796123423632234§.§class package else§;
         _loc7_.x = _loc9_.x + _loc10_;
         _loc7_.y = _loc9_.y + _loc11_;
         _loc7_.z = _loc9_.z + _loc12_;
         _loc8_ = _loc13_.§with const get§.§5214232783232796123423632234§.§5214235217235230123423632234§;
         _loc9_ = _loc13_.§else const false§;
         _loc10_ = _loc8_.y * _loc9_.z - _loc8_.z * _loc9_.y;
         _loc11_ = _loc8_.z * _loc9_.x - _loc8_.x * _loc9_.z;
         _loc12_ = _loc8_.x * _loc9_.y - _loc8_.y * _loc9_.x;
         _loc9_ = _loc13_.§with const get§.§5214232783232796123423632234§.§class package else§;
         _loc7_.x -= _loc9_.x + _loc10_;
         _loc7_.y -= _loc9_.y + _loc11_;
         _loc7_.z -= _loc9_.z + _loc12_;
         undefined;
         var _loc4_:Number = _loc3_.x * param1.§5214233761233774123423632234§.x + _loc3_.y * param1.§5214233761233774123423632234§.y + _loc3_.z * param1.§5214233761233774123423632234§.z;
         var _loc2_:Number = param1.§continue implements§ - _loc4_;
         var _loc5_:Number = _loc2_ / param1.§5214236693236706123423632234§;
         if(param1.§continue switch native§.§5214232783232796123423632234§.§set for implements§)
         {
            param1.§continue switch native§.§5214232783232796123423632234§.§521423120572312070123423632234§(param1.§5214231362231375123423632234§,param1.§5214233761233774123423632234§,_loc5_);
         }
         if(param1.§with const get§.§5214232783232796123423632234§.§set for implements§)
         {
            param1.§with const get§.§5214232783232796123423632234§.§521423120572312070123423632234§(param1.§else const false§,param1.§5214233761233774123423632234§,-_loc5_);
         }
      }
      
      public function contactPhase(param1:int) : void
      {
         this.b43b4ffe(param1);
      }
      
      final private function a84ecf6(param1:int, param2:Vector.<§function set class§>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         while(_loc4_ < param1)
         {
            this.a2532551(param2);
            _loc3_ = int(param2.length);
            _loc5_ = 0;
            while(_loc5_ < _loc3_)
            {
               var _temp_1:* = this;
               var _loc11_:§function set class§ = param2[_loc5_];
               var _loc6_:ContactIsland = _temp_1;
               var _loc8_:Vector3 = alternativa.physics.contactislands.ContactIsland.§5214235014235027123423632234§;
               _loc6_.c3a52c20(_loc11_,_loc8_);
               var _loc9_:Number = _loc8_.x * _loc11_.§5214233761233774123423632234§.x + _loc8_.y * _loc11_.§5214233761233774123423632234§.y + _loc8_.z * _loc11_.§5214233761233774123423632234§.z;
               var _loc7_:Number = _loc11_.§continue implements§ - _loc9_;
               var _loc10_:Number = _loc7_ / _loc11_.§5214236693236706123423632234§;
               if(_loc11_.§continue switch native§.§5214232783232796123423632234§.§set for implements§)
               {
                  _loc11_.§continue switch native§.§5214232783232796123423632234§.§521423120572312070123423632234§(_loc11_.§5214231362231375123423632234§,_loc11_.§5214233761233774123423632234§,_loc10_);
               }
               if(_loc11_.§with const get§.§5214232783232796123423632234§.§set for implements§)
               {
                  _loc11_.§with const get§.§5214232783232796123423632234§.§521423120572312070123423632234§(_loc11_.§else const false§,_loc11_.§5214233761233774123423632234§,-_loc10_);
               }
               undefined;
               _loc5_++;
            }
            _loc4_++;
         }
      }
      
      public function init(param1:§if var in§) : void
      {
         var _loc5_:int = 0;
         var _loc2_:§do false§ = null;
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         this.§5214234570234583123423632234§ = param1;
         var _loc8_:int = int(this.§521423109502310963123423632234§.length);
         var _loc7_:Vector.<§function set class§> = this.§5214238054238067123423632234§;
         while(_loc5_ < _loc8_)
         {
            _loc2_ = this.§521423109502310963123423632234§[_loc5_];
            _loc3_ = _loc2_.§each use include§;
            _loc4_ = int(_loc3_.length);
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_[_loc7_.length] = _loc3_[_loc6_];
               _loc6_++;
            }
            _loc5_++;
         }
      }
      
      public function dispose() : void
      {
         this.§5214234570234583123423632234§ = null;
         this.§521423109502310963123423632234§.length = 0;
         this.§5214238054238067123423632234§.length = 0;
         this.§package const use§.length = 0;
         this.§default set switch§.length = 0;
         this.§continue switch dynamic§.length = 0;
         this.§5214239968239981123423632234§.length = 0;
         this.§final use if§.clear();
         §super switch return§[§521423109472310960123423632234§++] = this;
      }
      
      final private function d7de6b3(param1:int, param2:Vector.<§function set class§>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         while(_loc4_ < param1)
         {
            this.a2532551(param2);
            _loc3_ = int(param2.length);
            for(; _loc5_ < _loc3_; §§pop(),_loc5_++)
            {
               var _temp_2:* = this;
               var _temp_1:* = param2[_loc5_];
               var _loc18_:int = 1;
               var _loc16_:§function set class§ = _temp_1;
               var _loc6_:ContactIsland = _temp_2;
               var _loc8_:Vector3 = _loc16_.§5214233761233774123423632234§;
               var _loc21_:§const throw§ = _loc16_.§continue switch native§.§5214232783232796123423632234§;
               var _loc11_:§const throw§ = _loc16_.§with const get§.§5214232783232796123423632234§;
               var _loc24_:Vector3 = alternativa.physics.contactislands.ContactIsland.§5214235014235027123423632234§;
               _loc6_.cf04cc0(_loc16_,_loc24_);
               var _loc12_:Number = _loc24_.x * _loc8_.x + _loc24_.y * _loc8_.y + _loc24_.z * _loc8_.z;
               if(_loc18_ == 1)
               {
                  var _loc9_:Number = 0;
                  if(_loc12_ < 0)
                  {
                     _loc16_.§const package dynamic§ = false;
                  }
                  else if(_loc16_.§const package dynamic§)
                  {
                     §§push(undefined);
                     continue;
                  }
               }
               else
               {
                  _loc16_.§const package dynamic§ = true;
                  _loc9_ = _loc16_.§const for§;
               }
               var _loc7_:Number = _loc24_.dot(_loc16_.§52142382123834123423632234§);
               var _loc26_:Number = _loc24_.dot(_loc16_.§throw switch false§);
               var _loc25_:Number = _loc16_.§5214237689237702123423632234§ - _loc7_ / _loc16_.§finally var override§;
               var _loc23_:Number = _loc16_.§use var package§ - _loc26_ / _loc16_.§true catch extends§;
               var _loc19_:Number = _loc25_ * _loc25_ + _loc23_ * _loc23_;
               var _loc20_:Number = _loc16_.§throw for while§ * _loc16_.§include set static§;
               if(_loc19_ > _loc20_ * _loc20_)
               {
                  var _loc22_:Number = Number(Math.sqrt(_loc19_));
                  _loc25_ *= _loc20_ / _loc22_;
                  _loc23_ *= _loc20_ / _loc22_;
               }
               var _loc15_:Number = _loc25_ - _loc16_.§5214237689237702123423632234§;
               var _loc17_:Number = _loc23_ - _loc16_.§use var package§;
               _loc16_.§5214237689237702123423632234§ = _loc25_;
               _loc16_.§use var package§ = _loc23_;
               if(_loc21_.§set for implements§)
               {
                  _loc21_.§if use if§(_loc16_.§5214231362231375123423632234§,_loc16_.§52142382123834123423632234§,_loc15_);
                  _loc21_.§if use if§(_loc16_.§5214231362231375123423632234§,_loc16_.§throw switch false§,_loc17_);
               }
               if(_loc11_.§set for implements§)
               {
                  _loc11_.§if use if§(_loc16_.§else const false§,_loc16_.§52142382123834123423632234§,-_loc15_);
                  _loc11_.§if use if§(_loc16_.§else const false§,_loc16_.§throw switch false§,-_loc17_);
               }
               _loc6_.cf04cc0(_loc16_,_loc24_);
               _loc12_ = _loc24_.x * _loc8_.x + _loc24_.y * _loc8_.y + _loc24_.z * _loc8_.z;
               var _loc10_:Number = _loc9_ - _loc12_;
               var _loc14_:Number = _loc16_.§include set static§ + _loc10_ / _loc16_.§5214236693236706123423632234§;
               if(_loc14_ < 0)
               {
                  _loc14_ = 0;
               }
               var _loc13_:Number = _loc14_ - _loc16_.§include set static§;
               _loc16_.§include set static§ = _loc14_;
               if(_loc21_.§set for implements§)
               {
                  _loc21_.§if use if§(_loc16_.§5214231362231375123423632234§,_loc16_.§5214233761233774123423632234§,_loc13_);
               }
               if(_loc11_.§set for implements§)
               {
                  _loc11_.§if use if§(_loc16_.§else const false§,_loc16_.§5214233761233774123423632234§,-_loc13_);
               }
               §§push(undefined);
            }
            _loc4_++;
         }
      }
      
      final private function c30d2f65(param1:§function set class§, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc4_:Vector3 = param1.§5214233761233774123423632234§;
         var _loc15_:§const throw§ = param1.§continue switch native§.§5214232783232796123423632234§;
         var _loc7_:§const throw§ = param1.§with const get§.§5214232783232796123423632234§;
         var _loc18_:Vector3 = §5214235014235027123423632234§;
         var _temp_2:* = this;
         var _temp_1:* = param1;
         var _loc23_:Vector3 = _loc18_;
         var _loc29_:§function set class§ = _temp_1;
         var _loc21_:ContactIsland = _temp_2;
         var _loc24_:Vector3 = _loc29_.§continue switch native§.§5214232783232796123423632234§.§implements catch catch§.§get var dynamic§;
         var _loc25_:Vector3 = _loc29_.§5214231362231375123423632234§;
         var _loc26_:Number = _loc24_.y * _loc25_.z - _loc24_.z * _loc25_.y;
         var _loc27_:Number = _loc24_.z * _loc25_.x - _loc24_.x * _loc25_.z;
         var _loc28_:Number = _loc24_.x * _loc25_.y - _loc24_.y * _loc25_.x;
         _loc25_ = _loc29_.§continue switch native§.§5214232783232796123423632234§.§implements catch catch§.§native use function§;
         _loc23_.x = _loc25_.x + _loc26_;
         _loc23_.y = _loc25_.y + _loc27_;
         _loc23_.z = _loc25_.z + _loc28_;
         _loc24_ = _loc29_.§with const get§.§5214232783232796123423632234§.§implements catch catch§.§get var dynamic§;
         _loc25_ = _loc29_.§else const false§;
         _loc26_ = _loc24_.y * _loc25_.z - _loc24_.z * _loc25_.y;
         _loc27_ = _loc24_.z * _loc25_.x - _loc24_.x * _loc25_.z;
         _loc28_ = _loc24_.x * _loc25_.y - _loc24_.y * _loc25_.x;
         _loc25_ = _loc29_.§with const get§.§5214232783232796123423632234§.§implements catch catch§.§native use function§;
         _loc23_.x -= _loc25_.x + _loc26_;
         _loc23_.y -= _loc25_.y + _loc27_;
         _loc23_.z -= _loc25_.z + _loc28_;
         undefined;
         var _loc8_:Number = _loc18_.x * _loc4_.x + _loc18_.y * _loc4_.y + _loc18_.z * _loc4_.z;
         if(param2 == 1)
         {
            _loc5_ = 0;
            if(_loc8_ < 0)
            {
               param1.§const package dynamic§ = false;
            }
            else if(param1.§const package dynamic§)
            {
               return;
            }
         }
         else
         {
            param1.§const package dynamic§ = true;
            _loc5_ = param1.§const for§;
         }
         var _loc3_:Number = _loc18_.dot(param1.§52142382123834123423632234§);
         var _loc20_:Number = _loc18_.dot(param1.§throw switch false§);
         var _loc19_:Number = param1.§5214237689237702123423632234§ - _loc3_ / param1.§finally var override§;
         var _loc17_:Number = param1.§use var package§ - _loc20_ / param1.§true catch extends§;
         var _loc13_:Number = _loc19_ * _loc19_ + _loc17_ * _loc17_;
         var _loc14_:Number = param1.§throw for while§ * param1.§include set static§;
         if(_loc13_ > _loc14_ * _loc14_)
         {
            _loc16_ = Math.sqrt(_loc13_);
            _loc19_ *= _loc14_ / _loc16_;
            _loc17_ *= _loc14_ / _loc16_;
         }
         var _loc11_:Number = _loc19_ - param1.§5214237689237702123423632234§;
         var _loc12_:Number = _loc17_ - param1.§use var package§;
         param1.§5214237689237702123423632234§ = _loc19_;
         param1.§use var package§ = _loc17_;
         if(_loc15_.§set for implements§)
         {
            _loc15_.§if use if§(param1.§5214231362231375123423632234§,param1.§52142382123834123423632234§,_loc11_);
            _loc15_.§if use if§(param1.§5214231362231375123423632234§,param1.§throw switch false§,_loc12_);
         }
         if(_loc7_.§set for implements§)
         {
            _loc7_.§if use if§(param1.§else const false§,param1.§52142382123834123423632234§,-_loc11_);
            _loc7_.§if use if§(param1.§else const false§,param1.§throw switch false§,-_loc12_);
         }
         var _temp_7:* = this;
         var _temp_6:* = param1;
         var _loc30_:Vector3 = _loc18_;
         var _loc36_:§function set class§ = _temp_6;
         var _loc22_:ContactIsland = _temp_7;
         var _loc31_:Vector3 = _loc36_.§continue switch native§.§5214232783232796123423632234§.§implements catch catch§.§get var dynamic§;
         var _loc32_:Vector3 = _loc36_.§5214231362231375123423632234§;
         var _loc33_:Number = _loc31_.y * _loc32_.z - _loc31_.z * _loc32_.y;
         var _loc34_:Number = _loc31_.z * _loc32_.x - _loc31_.x * _loc32_.z;
         var _loc35_:Number = _loc31_.x * _loc32_.y - _loc31_.y * _loc32_.x;
         _loc32_ = _loc36_.§continue switch native§.§5214232783232796123423632234§.§implements catch catch§.§native use function§;
         _loc30_.x = _loc32_.x + _loc33_;
         _loc30_.y = _loc32_.y + _loc34_;
         _loc30_.z = _loc32_.z + _loc35_;
         _loc31_ = _loc36_.§with const get§.§5214232783232796123423632234§.§implements catch catch§.§get var dynamic§;
         _loc32_ = _loc36_.§else const false§;
         _loc33_ = _loc31_.y * _loc32_.z - _loc31_.z * _loc32_.y;
         _loc34_ = _loc31_.z * _loc32_.x - _loc31_.x * _loc32_.z;
         _loc35_ = _loc31_.x * _loc32_.y - _loc31_.y * _loc32_.x;
         _loc32_ = _loc36_.§with const get§.§5214232783232796123423632234§.§implements catch catch§.§native use function§;
         _loc30_.x -= _loc32_.x + _loc33_;
         _loc30_.y -= _loc32_.y + _loc34_;
         _loc30_.z -= _loc32_.z + _loc35_;
         undefined;
         _loc8_ = _loc18_.x * _loc4_.x + _loc18_.y * _loc4_.y + _loc18_.z * _loc4_.z;
         var _loc6_:Number = _loc5_ - _loc8_;
         var _loc10_:Number = param1.§include set static§ + _loc6_ / param1.§5214236693236706123423632234§;
         if(_loc10_ < 0)
         {
            _loc10_ = 0;
         }
         var _loc9_:Number = _loc10_ - param1.§include set static§;
         param1.§include set static§ = _loc10_;
         if(_loc15_.§set for implements§)
         {
            _loc15_.§if use if§(param1.§5214231362231375123423632234§,param1.§5214233761233774123423632234§,_loc9_);
         }
         if(_loc7_.§set for implements§)
         {
            _loc7_.§if use if§(param1.§else const false§,param1.§5214233761233774123423632234§,-_loc9_);
         }
      }
      
      private function a1fcfe73(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = int(this.§5214238054238067123423632234§.length);
         while(_loc3_ < param1)
         {
            this.a2532551(this.§5214238054238067123423632234§);
            for(; _loc4_ < _loc2_; §§pop(),_loc4_++)
            {
               var _temp_2:* = this;
               var _temp_1:* = this.§5214238054238067123423632234§[_loc4_];
               var _loc17_:int = 1;
               var _loc15_:§function set class§ = _temp_1;
               var _loc5_:ContactIsland = _temp_2;
               var _loc7_:Vector3 = _loc15_.§5214233761233774123423632234§;
               var _loc20_:§const throw§ = _loc15_.§continue switch native§.§5214232783232796123423632234§;
               var _loc10_:§const throw§ = _loc15_.§with const get§.§5214232783232796123423632234§;
               var _loc23_:Vector3 = alternativa.physics.contactislands.ContactIsland.§5214235014235027123423632234§;
               _loc5_.cf04cc0(_loc15_,_loc23_);
               var _loc11_:Number = _loc23_.x * _loc7_.x + _loc23_.y * _loc7_.y + _loc23_.z * _loc7_.z;
               if(_loc17_ == 1)
               {
                  var _loc8_:Number = 0;
                  if(_loc11_ < 0)
                  {
                     _loc15_.§const package dynamic§ = false;
                  }
                  else if(_loc15_.§const package dynamic§)
                  {
                     §§push(undefined);
                     continue;
                  }
               }
               else
               {
                  _loc15_.§const package dynamic§ = true;
                  _loc8_ = _loc15_.§const for§;
               }
               var _loc6_:Number = _loc23_.dot(_loc15_.§52142382123834123423632234§);
               var _loc25_:Number = _loc23_.dot(_loc15_.§throw switch false§);
               var _loc24_:Number = _loc15_.§5214237689237702123423632234§ - _loc6_ / _loc15_.§finally var override§;
               var _loc22_:Number = _loc15_.§use var package§ - _loc25_ / _loc15_.§true catch extends§;
               var _loc18_:Number = _loc24_ * _loc24_ + _loc22_ * _loc22_;
               var _loc19_:Number = _loc15_.§throw for while§ * _loc15_.§include set static§;
               if(_loc18_ > _loc19_ * _loc19_)
               {
                  var _loc21_:Number = Number(Math.sqrt(_loc18_));
                  _loc24_ *= _loc19_ / _loc21_;
                  _loc22_ *= _loc19_ / _loc21_;
               }
               var _loc14_:Number = _loc24_ - _loc15_.§5214237689237702123423632234§;
               var _loc16_:Number = _loc22_ - _loc15_.§use var package§;
               _loc15_.§5214237689237702123423632234§ = _loc24_;
               _loc15_.§use var package§ = _loc22_;
               if(_loc20_.§set for implements§)
               {
                  _loc20_.§if use if§(_loc15_.§5214231362231375123423632234§,_loc15_.§52142382123834123423632234§,_loc14_);
                  _loc20_.§if use if§(_loc15_.§5214231362231375123423632234§,_loc15_.§throw switch false§,_loc16_);
               }
               if(_loc10_.§set for implements§)
               {
                  _loc10_.§if use if§(_loc15_.§else const false§,_loc15_.§52142382123834123423632234§,-_loc14_);
                  _loc10_.§if use if§(_loc15_.§else const false§,_loc15_.§throw switch false§,-_loc16_);
               }
               _loc5_.cf04cc0(_loc15_,_loc23_);
               _loc11_ = _loc23_.x * _loc7_.x + _loc23_.y * _loc7_.y + _loc23_.z * _loc7_.z;
               var _loc9_:Number = _loc8_ - _loc11_;
               var _loc13_:Number = _loc15_.§include set static§ + _loc9_ / _loc15_.§5214236693236706123423632234§;
               if(_loc13_ < 0)
               {
                  _loc13_ = 0;
               }
               var _loc12_:Number = _loc13_ - _loc15_.§include set static§;
               _loc15_.§include set static§ = _loc13_;
               if(_loc20_.§set for implements§)
               {
                  _loc20_.§if use if§(_loc15_.§5214231362231375123423632234§,_loc15_.§5214233761233774123423632234§,_loc12_);
               }
               if(_loc10_.§set for implements§)
               {
                  _loc10_.§if use if§(_loc15_.§else const false§,_loc15_.§5214233761233774123423632234§,-_loc12_);
               }
               §§push(undefined);
            }
            _loc3_++;
         }
      }
      
      final private function f574be45(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = int(this.§5214238054238067123423632234§.length);
         while(_loc3_ < param1)
         {
            this.a2532551(this.§5214238054238067123423632234§);
            for(; _loc4_ < _loc2_; §§pop(),_loc4_++)
            {
               var _temp_2:* = this;
               var _temp_1:* = this.§5214238054238067123423632234§[_loc4_];
               var _loc17_:int = 0;
               var _loc15_:§function set class§ = _temp_1;
               var _loc5_:ContactIsland = _temp_2;
               var _loc7_:Vector3 = _loc15_.§5214233761233774123423632234§;
               var _loc20_:§const throw§ = _loc15_.§continue switch native§.§5214232783232796123423632234§;
               var _loc10_:§const throw§ = _loc15_.§with const get§.§5214232783232796123423632234§;
               var _loc23_:Vector3 = alternativa.physics.contactislands.ContactIsland.§5214235014235027123423632234§;
               _loc5_.cf04cc0(_loc15_,_loc23_);
               var _loc11_:Number = _loc23_.x * _loc7_.x + _loc23_.y * _loc7_.y + _loc23_.z * _loc7_.z;
               if(_loc17_ == 1)
               {
                  var _loc8_:Number = 0;
                  if(_loc11_ < 0)
                  {
                     _loc15_.§const package dynamic§ = false;
                  }
                  else if(_loc15_.§const package dynamic§)
                  {
                     §§push(undefined);
                     continue;
                  }
               }
               else
               {
                  _loc15_.§const package dynamic§ = true;
                  _loc8_ = _loc15_.§const for§;
               }
               var _loc6_:Number = _loc23_.dot(_loc15_.§52142382123834123423632234§);
               var _loc25_:Number = _loc23_.dot(_loc15_.§throw switch false§);
               var _loc24_:Number = _loc15_.§5214237689237702123423632234§ - _loc6_ / _loc15_.§finally var override§;
               var _loc22_:Number = _loc15_.§use var package§ - _loc25_ / _loc15_.§true catch extends§;
               var _loc18_:Number = _loc24_ * _loc24_ + _loc22_ * _loc22_;
               var _loc19_:Number = _loc15_.§throw for while§ * _loc15_.§include set static§;
               if(_loc18_ > _loc19_ * _loc19_)
               {
                  var _loc21_:Number = Number(Math.sqrt(_loc18_));
                  _loc24_ *= _loc19_ / _loc21_;
                  _loc22_ *= _loc19_ / _loc21_;
               }
               var _loc14_:Number = _loc24_ - _loc15_.§5214237689237702123423632234§;
               var _loc16_:Number = _loc22_ - _loc15_.§use var package§;
               _loc15_.§5214237689237702123423632234§ = _loc24_;
               _loc15_.§use var package§ = _loc22_;
               if(_loc20_.§set for implements§)
               {
                  _loc20_.§if use if§(_loc15_.§5214231362231375123423632234§,_loc15_.§52142382123834123423632234§,_loc14_);
                  _loc20_.§if use if§(_loc15_.§5214231362231375123423632234§,_loc15_.§throw switch false§,_loc16_);
               }
               if(_loc10_.§set for implements§)
               {
                  _loc10_.§if use if§(_loc15_.§else const false§,_loc15_.§52142382123834123423632234§,-_loc14_);
                  _loc10_.§if use if§(_loc15_.§else const false§,_loc15_.§throw switch false§,-_loc16_);
               }
               _loc5_.cf04cc0(_loc15_,_loc23_);
               _loc11_ = _loc23_.x * _loc7_.x + _loc23_.y * _loc7_.y + _loc23_.z * _loc7_.z;
               var _loc9_:Number = _loc8_ - _loc11_;
               var _loc13_:Number = _loc15_.§include set static§ + _loc9_ / _loc15_.§5214236693236706123423632234§;
               if(_loc13_ < 0)
               {
                  _loc13_ = 0;
               }
               var _loc12_:Number = _loc13_ - _loc15_.§include set static§;
               _loc15_.§include set static§ = _loc13_;
               if(_loc20_.§set for implements§)
               {
                  _loc20_.§if use if§(_loc15_.§5214231362231375123423632234§,_loc15_.§5214233761233774123423632234§,_loc12_);
               }
               if(_loc10_.§set for implements§)
               {
                  _loc10_.§if use if§(_loc15_.§else const false§,_loc15_.§5214233761233774123423632234§,-_loc12_);
               }
               §§push(undefined);
            }
            _loc3_++;
         }
      }
      
      public function collisionPhase(param1:int) : void
      {
         this.f574be45(param1);
      }
      
      final private function c3a52c20(param1:§function set class§, param2:Vector3) : void
      {
         var _loc3_:Vector3 = param1.§continue switch native§.§5214232783232796123423632234§.§5214235217235230123423632234§;
         var _loc4_:Vector3 = param1.§5214231362231375123423632234§;
         var _loc5_:Number = _loc3_.y * _loc4_.z - _loc3_.z * _loc4_.y;
         var _loc6_:Number = _loc3_.z * _loc4_.x - _loc3_.x * _loc4_.z;
         var _loc7_:Number = _loc3_.x * _loc4_.y - _loc3_.y * _loc4_.x;
         _loc4_ = param1.§continue switch native§.§5214232783232796123423632234§.§class package else§;
         param2.x = _loc4_.x + _loc5_;
         param2.y = _loc4_.y + _loc6_;
         param2.z = _loc4_.z + _loc7_;
         _loc3_ = param1.§with const get§.§5214232783232796123423632234§.§5214235217235230123423632234§;
         _loc4_ = param1.§else const false§;
         _loc5_ = _loc3_.y * _loc4_.z - _loc3_.z * _loc4_.y;
         _loc6_ = _loc3_.z * _loc4_.x - _loc3_.x * _loc4_.z;
         _loc7_ = _loc3_.x * _loc4_.y - _loc3_.y * _loc4_.x;
         _loc4_ = param1.§with const get§.§5214232783232796123423632234§.§class package else§;
         param2.x -= _loc4_.x + _loc5_;
         param2.y -= _loc4_.y + _loc6_;
         param2.z -= _loc4_.z + _loc7_;
      }
      
      final private function b43b4ffe(param1:int) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§function set class§ = null;
         this.a1fcfe73(param1);
         this.§final use if§.init(this.§521423109502310963123423632234§);
         this.§final use if§.getStaticLevel(this.§5214239968239981123423632234§,this.§continue switch dynamic§);
         if(this.§5214239968239981123423632234§.length > 0)
         {
            this.f6988dda(this.§5214239968239981123423632234§,this.§package const use§);
            this.d7de6b3(param1,this.§package const use§);
            this.a84ecf6(param1,this.§package const use§);
            while(this.§final use if§.hasContacts())
            {
               _loc3_ = this.§default set switch§;
               this.§default set switch§ = this.§continue switch dynamic§;
               this.§continue switch dynamic§ = _loc3_;
               this.§5214239968239981123423632234§.length = 0;
               this.§continue switch dynamic§.length = 0;
               this.§final use if§.getNextLevel(this.§default set switch§,this.§5214239968239981123423632234§,this.§continue switch dynamic§);
               this.e2c154d(this.§default set switch§,false);
               this.§package const use§.length = 0;
               this.f6988dda(this.§5214239968239981123423632234§,this.§package const use§);
               _loc2_ = int(this.§package const use§.length);
               while(_loc4_ < _loc2_)
               {
                  _loc5_ = this.§package const use§[_loc4_];
                  _loc5_.§do for class§(5,0.7,10,this.§5214234570234583123423632234§.§5214234686234699123423632234§);
                  _loc4_++;
               }
               this.d7de6b3(param1,this.§package const use§);
               this.a84ecf6(param1,this.§package const use§);
               this.e2c154d(this.§default set switch§,true);
            }
         }
         else
         {
            this.f6988dda(this.§521423109502310963123423632234§,this.§package const use§);
            this.d7de6b3(param1,this.§package const use§);
            this.a84ecf6(param1,this.§package const use§);
         }
      }
   }
}

