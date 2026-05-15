package §package package false§
{
   import §5214231366231379123423632234§.§521423130562313069123423632234§;
   import §5214231366231379123423632234§.§default catch native§;
   import §5214238361238374123423632234§.§5214239411239424123423632234§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.collision.colliders.BoxBoxCollider;
   import alternativa.physics.collision.colliders.BoxRectCollider;
   import alternativa.physics.collision.colliders.BoxSphereCollider;
   import alternativa.physics.collision.colliders.BoxTriangleCollider;
   import §each var null§.§const throw§;
   import §each var null§.§do false§;
   import §each var null§.§function set class§;
   import §for catch for§.§521423136582313671123423632234§;
   import §for catch for§.§5214233991234004123423632234§;
   import §for catch for§.§5214234380234393123423632234§;
   import §for catch for§.§5214239739239752123423632234§;
   import §for catch for§.§do for with§;
   import §for catch for§.§final set null§;
   
   public class §static set true§ implements §5214234380234393123423632234§
   {
      
      private static const §5214237603237616123423632234§:Number = 0.01;
      
      private const §with set case§:Vector.<§final set null§> = new Vector.<§final set null§>(1 | 8);
      
      private const §get switch class§:§default catch native§ = new §default catch native§();
      
      private const §dynamic use while§:§5214233487233500123423632234§ = new §5214233487233500123423632234§();
      
      private const §5214235364235377123423632234§:Vector3 = new Vector3();
      
      private const §521423119292311942123423632234§:Vector3 = new Vector3();
      
      private const §5214233762233775123423632234§:§default catch native§ = new §default catch native§();
      
      private const §function const true§:§521423130562313069123423632234§ = new §521423130562313069123423632234§();
      
      private const §each use include§:Vector.<§function set class§> = new Vector.<§function set class§>();
      
      private var §5214233533233546123423632234§:§do for with§ = new §do for with§();
      
      private const §521423113622311375123423632234§:Number = 0.0001;
      
      private var §5214236903236916123423632234§:Vector.<§default set override§> = new Vector.<§default set override§>();
      
      private var §while package default§:§const throw§;
      
      public function §static set true§()
      {
         super();
         var _loc1_:Number = 0.000001;
         this.§static set override§(1,1,new BoxBoxCollider(_loc1_));
         this.§static set override§(1,4,new BoxRectCollider(_loc1_));
         this.§static set override§(1,8,new BoxTriangleCollider(_loc1_));
         this.§static set override§(1,2,new BoxSphereCollider());
         this.§5214234165234178123423632234§();
      }
      
      public function §5214231054231067123423632234§(param1:§521423136582313671123423632234§) : Boolean
      {
         return this.§5214239586239599123423632234§(param1,this.§5214233533233546123423632234§.§5214238053238066123423632234§);
      }
      
      final private function §try const for§(param1:§default set override§, param2:int, param3:Vector.<§do false§>) : void
      {
         var _loc7_:int = 0;
         var _loc14_:§default set override§ = null;
         var _loc9_:§const throw§ = null;
         var _loc10_:§const throw§ = null;
         var _loc12_:int = 0;
         var _loc13_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:§do false§ = null;
         var _loc8_:int = 0;
         var _loc11_:§function set class§ = null;
         var _loc6_:int = int(this.§5214236903236916123423632234§.length);
         _loc7_ = param2;
         while(_loc7_ < _loc6_)
         {
            _loc14_ = this.§5214236903236916123423632234§[_loc7_];
            _loc9_ = param1.§5214232783232796123423632234§;
            _loc10_ = _loc14_.§5214232783232796123423632234§;
            if(!(_loc9_.§5214231576231589123423632234§ && _loc10_.§5214231576231589123423632234§) && _loc9_.§catch for include§.§package catch for§(_loc10_.§catch for include§,0.01))
            {
               this.§var switch include§(param1.§521423122122312225123423632234§,_loc14_.§521423122122312225123423632234§,this.§each use include§);
               _loc12_ = int(this.§each use include§.length);
               if(_loc12_ > 0)
               {
                  _loc13_ = _loc9_.§default var default§ == null || _loc9_.§default var default§.considerBodies(_loc9_,_loc10_);
                  _loc4_ = _loc10_.§default var default§ == null || _loc10_.§default var default§.considerBodies(_loc10_,_loc9_);
                  if(_loc13_ && _loc4_)
                  {
                     _loc5_ = §do false§.§52142342923442123423632234§();
                     _loc5_.§5214234954234967123423632234§ = _loc9_;
                     _loc5_.§get var final§ = _loc10_;
                     _loc5_.§switch use function§(this.§each use include§);
                     param3[param3.length] = _loc5_;
                     param1.§5214238052238065123423632234§.push(_loc10_);
                     _loc14_.§5214238052238065123423632234§.push(_loc9_);
                  }
                  else
                  {
                     while(_loc8_ < _loc12_)
                     {
                        _loc11_ = this.§each use include§[_loc8_];
                        _loc11_.§5214238823101123423632234§();
                        _loc8_++;
                     }
                  }
                  this.§each use include§.length = 0;
               }
            }
            _loc7_++;
         }
      }
      
      final private function §5214231869231882123423632234§(param1:§default set override§, param2:Vector.<§do false§>) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:§do false§ = null;
         if(!param1.§5214232783232796123423632234§.§5214231576231589123423632234§)
         {
            _loc5_ = int(param1.§5214234549234562123423632234§.length);
            while(_loc4_ < _loc5_)
            {
               this.§521423126382312651123423632234§(this.§5214233533233546123423632234§.§5214238053238066123423632234§,param1.§5214234549234562123423632234§[_loc4_],this.§each use include§);
               _loc4_++;
            }
            if(this.§each use include§.length > 0)
            {
               _loc3_ = §do false§.§52142342923442123423632234§();
               _loc3_.§5214234954234967123423632234§ = param1.§5214232783232796123423632234§;
               _loc3_.§get var final§ = this.§while package default§;
               _loc3_.§switch use function§(this.§each use include§);
               this.§each use include§.length = 0;
               param2[param2.length] = _loc3_;
            }
         }
      }
      
      private function §null use null§(param1:§5214233991234004123423632234§, param2:Vector3, param3:Vector3, param4:Vector3, param5:int, param6:Number, param7:Number, param8:§5214239739239752123423632234§, param9:§default catch native§) : Boolean
      {
         var _loc16_:Number = NaN;
         var _loc14_:§5214233991234004123423632234§ = null;
         var _loc15_:int = 0;
         var _loc13_:int = 0;
         var _loc10_:§521423136582313671123423632234§ = null;
         var _loc12_:§5214233991234004123423632234§ = null;
         if(param1.§5214239176239189123423632234§ != null && this.§false switch null§(param2,param4,param5,this.§5214233533233546123423632234§.§include var false§,param1.§5214239176239189123423632234§,param8,param9))
         {
            return true;
         }
         if(param1.§try use each§ == -1)
         {
            return false;
         }
         switch(param1.§try use each§)
         {
            case 0:
               if(param4.x > -0.0001 && param4.x < 0.0001)
               {
                  _loc16_ = param7 + 1;
               }
               else
               {
                  _loc16_ = (param1.§521423129762312989123423632234§ - param2.x) / param4.x;
               }
               _loc12_ = param3.x < param1.§521423129762312989123423632234§ ? param1.§5214232730232743123423632234§ : param1.§implements use package§;
               break;
            case 1:
               if(param4.y > -0.0001 && param4.y < 0.0001)
               {
                  _loc16_ = param7 + 1;
               }
               else
               {
                  _loc16_ = (param1.§521423129762312989123423632234§ - param2.y) / param4.y;
               }
               _loc12_ = param3.y < param1.§521423129762312989123423632234§ ? param1.§5214232730232743123423632234§ : param1.§implements use package§;
               break;
            case 2:
               if(param4.z > -0.0001 && param4.z < 0.0001)
               {
                  _loc16_ = param7 + 1;
               }
               else
               {
                  _loc16_ = (param1.§521423129762312989123423632234§ - param2.z) / param4.z;
               }
               _loc12_ = param3.z < param1.§521423129762312989123423632234§ ? param1.§5214232730232743123423632234§ : param1.§implements use package§;
         }
         if(_loc16_ < param6 || _loc16_ > param7)
         {
            return this.§null use null§(_loc12_,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         var _loc11_:Boolean = this.§null use null§(_loc12_,param2,param3,param4,param5,param6,_loc16_,param8,param9);
         if(_loc11_)
         {
            return true;
         }
         this.§521423119292311942123423632234§.x = param2.x + _loc16_ * param4.x;
         this.§521423119292311942123423632234§.y = param2.y + _loc16_ * param4.y;
         this.§521423119292311942123423632234§.z = param2.z + _loc16_ * param4.z;
         if(param1.§5214237985237998123423632234§ != null)
         {
            _loc14_ = param1.§5214237985237998123423632234§.§5214238053238066123423632234§;
            while(_loc14_ != null && _loc14_.§try use each§ != -1)
            {
               switch(_loc14_.§try use each§)
               {
                  case 0:
                     _loc14_ = this.§521423119292311942123423632234§.x < _loc14_.§521423129762312989123423632234§ ? _loc14_.§5214232730232743123423632234§ : _loc14_.§implements use package§;
                     break;
                  case 1:
                     _loc14_ = this.§521423119292311942123423632234§.y < _loc14_.§521423129762312989123423632234§ ? _loc14_.§5214232730232743123423632234§ : _loc14_.§implements use package§;
                     break;
                  case 2:
                     _loc14_ = this.§521423119292311942123423632234§.z < _loc14_.§521423129762312989123423632234§ ? _loc14_.§5214232730232743123423632234§ : _loc14_.§implements use package§;
               }
            }
            if(_loc14_ != null && _loc14_.§5214239176239189123423632234§ != null)
            {
               _loc15_ = int(_loc14_.§5214239176239189123423632234§.length);
               while(_loc13_ < _loc15_)
               {
                  _loc10_ = this.§5214233533233546123423632234§.§include var false§[_loc14_.§5214239176239189123423632234§[_loc13_]];
                  if((_loc10_.collisionGroup & param5) != 0)
                  {
                     if(!(param8 != null && !param8.considerBody(_loc10_.§5214232783232796123423632234§)))
                     {
                        param9.§5214232932232945123423632234§ = _loc10_.§5214239358239371123423632234§(param2,param4,0.0001,param9.§5214233761233774123423632234§);
                        if(param9.§5214232932232945123423632234§ >= 0)
                        {
                           param9.§dynamic final§.copy(this.§521423119292311942123423632234§);
                           param9.§521423105112310524123423632234§ = _loc10_;
                           return true;
                        }
                     }
                  }
                  _loc13_++;
               }
            }
         }
         return this.§null use null§(_loc12_ == param1.§5214232730232743123423632234§ ? param1.§implements use package§ : param1.§5214232730232743123423632234§,param2,this.§521423119292311942123423632234§,param4,param5,_loc16_,param7,param8,param9);
      }
      
      public function §implements use else§(param1:Vector.<§do false§>) : void
      {
         var _loc5_:§default set override§ = null;
         var _loc4_:int = 0;
         var _loc6_:§5214239411239424123423632234§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(this.§5214236903236916123423632234§.length);
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§5214236903236916123423632234§[_loc4_];
            _loc5_.§521423137312313744123423632234§ = _loc5_.§521423124902312503123423632234§;
            _loc6_ = _loc5_.§5214232783232796123423632234§.§521423122212312234123423632234§;
            _loc5_.§521423124902312503123423632234§ = _loc6_.§521423192332123423632234§();
            _loc5_.§5214238052238065123423632234§.length = 0;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§5214236903236916123423632234§[_loc4_];
            _loc2_ = int(param1.length);
            this.§5214231869231882123423632234§(_loc5_,param1);
            if(_loc2_ != param1.length)
            {
               _loc5_.§521423124902312503123423632234§ = true;
            }
            _loc2_ = int(param1.length);
            this.§try const for§(_loc5_,_loc4_ + 1,param1);
            _loc4_++;
         }
      }
      
      public function §5214239358239371123423632234§(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:§5214239739239752123423632234§, param6:§default catch native§) : Boolean
      {
         var _loc7_:Boolean = this.§set use for§(param1,param2,param3,param4,param5,param6);
         var _loc8_:Boolean = this.§52142313723150123423632234§(param1,param2,param3,param4,param5,this.§5214233762233775123423632234§);
         if(!(_loc8_ || _loc7_))
         {
            return false;
         }
         if(_loc8_ && _loc7_)
         {
            if(param6.§5214232932232945123423632234§ > this.§5214233762233775123423632234§.§5214232932232945123423632234§)
            {
               param6.§catch const if§(this.§5214233762233775123423632234§);
            }
            this.§5214233762233775123423632234§.§false set final§();
            return true;
         }
         if(_loc7_)
         {
            this.§5214233762233775123423632234§.§false set final§();
            return true;
         }
         param6.§catch const if§(this.§5214233762233775123423632234§);
         this.§5214233762233775123423632234§.§false set final§();
         return true;
      }
      
      public function §52142394723960123423632234§(param1:Vector.<§521423136582313671123423632234§>, param2:§521423130562313069123423632234§ = null) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc4_ < _loc3_)
         {
            param1[_loc4_].§5214232783232796123423632234§ = this.§while package default§;
            _loc4_++;
         }
         this.§5214233533233546123423632234§.§521423122002312213123423632234§(param1,param2);
      }
      
      public function §var switch include§(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§, param3:Vector.<§function set class§>) : void
      {
         if((param1.collisionGroup & param2.collisionGroup) == 0)
         {
            return;
         }
         if(param1.§5214232783232796123423632234§ == param2.§5214232783232796123423632234§)
         {
            return;
         }
         if(!param1.§catch for include§.§package catch for§(param2.§catch for include§,0.01))
         {
            return;
         }
         var _loc4_:§final set null§ = this.§with set case§[param1.type | param2.type];
         _loc4_.getContacts(param1,param2,param3);
      }
      
      private function §5214239586239599123423632234§(param1:§521423136582313671123423632234§, param2:§5214233991234004123423632234§) : Boolean
      {
         var _loc7_:* = undefined;
         var _loc3_:* = undefined;
         var _loc5_:int = 0;
         var _loc8_:int = 0;
         var _loc4_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param2.§5214239176239189123423632234§ != null)
         {
            _loc7_ = this.§5214233533233546123423632234§.§include var false§;
            _loc3_ = param2.§5214239176239189123423632234§;
            _loc5_ = int(_loc3_.length);
            while(_loc8_ < _loc5_)
            {
               if(this.§set const try§(param1,_loc7_[_loc3_[_loc8_]]))
               {
                  return true;
               }
               _loc8_++;
            }
         }
         if(param2.§try use each§ == -1)
         {
            return false;
         }
         switch(param2.§try use each§)
         {
            case 0:
               _loc4_ = param1.§catch for include§.§false for use§;
               _loc6_ = param1.§catch for include§.§case package class§;
               break;
            case 1:
               _loc4_ = param1.§catch for include§.§use set return§;
               _loc6_ = param1.§catch for include§.§switch const final§;
               break;
            case 2:
               _loc4_ = param1.§catch for include§.§super const if§;
               _loc6_ = param1.§catch for include§.§const for get§;
         }
         if(param2.§5214237985237998123423632234§ != null && _loc4_ < param2.§521423129762312989123423632234§ && _loc6_ > param2.§521423129762312989123423632234§)
         {
            if(this.§5214239586239599123423632234§(param1,param2.§5214237985237998123423632234§.§5214238053238066123423632234§))
            {
               return true;
            }
         }
         if(_loc4_ < param2.§521423129762312989123423632234§)
         {
            if(this.§5214239586239599123423632234§(param1,param2.§5214232730232743123423632234§))
            {
               return true;
            }
         }
         if(_loc6_ > param2.§521423129762312989123423632234§)
         {
            if(this.§5214239586239599123423632234§(param1,param2.§implements use package§))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §521423126382312651123423632234§(param1:§5214233991234004123423632234§, param2:§521423136582313671123423632234§, param3:Vector.<§function set class§>) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc7_:int = 0;
         var _loc9_:int = 0;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param1.§5214239176239189123423632234§ != null)
         {
            _loc4_ = this.§5214233533233546123423632234§.§include var false§;
            _loc5_ = param1.§5214239176239189123423632234§;
            _loc7_ = int(_loc5_.length);
            while(_loc9_ < _loc7_)
            {
               this.§var switch include§(param2,_loc4_[_loc5_[_loc9_]],param3);
               _loc9_++;
            }
         }
         if(param1.§try use each§ == -1)
         {
            return;
         }
         switch(param1.§try use each§)
         {
            case 0:
               _loc6_ = param2.§catch for include§.§false for use§;
               _loc8_ = param2.§catch for include§.§case package class§;
               break;
            case 1:
               _loc6_ = param2.§catch for include§.§use set return§;
               _loc8_ = param2.§catch for include§.§switch const final§;
               break;
            case 2:
               _loc6_ = param2.§catch for include§.§super const if§;
               _loc8_ = param2.§catch for include§.§const for get§;
         }
         if(_loc6_ < param1.§521423129762312989123423632234§)
         {
            this.§521423126382312651123423632234§(param1.§5214232730232743123423632234§,param2,param3);
         }
         if(_loc8_ > param1.§521423129762312989123423632234§)
         {
            this.§521423126382312651123423632234§(param1.§implements use package§,param2,param3);
         }
         if(param1.§5214237985237998123423632234§ != null && _loc6_ < param1.§521423129762312989123423632234§ && _loc8_ > param1.§521423129762312989123423632234§)
         {
            this.§521423126382312651123423632234§(param1.§5214237985237998123423632234§.§5214238053238066123423632234§,param2,param3);
         }
      }
      
      private function §5214234165234178123423632234§() : void
      {
         this.§while package default§ = new §const throw§(1,new Matrix3(),10000000000);
         this.§while package default§.§set for implements§ = false;
      }
      
      public function destroy() : void
      {
         this.§5214233533233546123423632234§.§521423134522313465123423632234§();
         this.§5214233533233546123423632234§ = null;
         for each(var _loc1_ in this.§5214236903236916123423632234§)
         {
            _loc1_.destroy();
         }
         this.§5214236903236916123423632234§.length = 0;
         this.§while package default§ = null;
      }
      
      public function §5214235797235810123423632234§() : Vector.<§default set override§>
      {
         return this.§5214236903236916123423632234§;
      }
      
      private function §52142313723150123423632234§(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:§5214239739239752123423632234§, param6:§default catch native§) : Boolean
      {
         var _loc12_:int = 0;
         var _loc13_:§const throw§ = null;
         var _loc14_:§521423130562313069123423632234§ = null;
         var _loc11_:int = 0;
         var _loc10_:§521423136582313671123423632234§ = null;
         var _loc16_:Number = NaN;
         var _loc7_:Number = param1.x + param2.x * param4;
         var _loc8_:Number = param1.y + param2.y * param4;
         var _loc9_:Number = param1.z + param2.z * param4;
         if(_loc7_ < param1.x)
         {
            this.§function const true§.§false for use§ = _loc7_;
            this.§function const true§.§case package class§ = param1.x;
         }
         else
         {
            this.§function const true§.§false for use§ = param1.x;
            this.§function const true§.§case package class§ = _loc7_;
         }
         if(_loc8_ < param1.y)
         {
            this.§function const true§.§use set return§ = _loc8_;
            this.§function const true§.§switch const final§ = param1.y;
         }
         else
         {
            this.§function const true§.§use set return§ = param1.y;
            this.§function const true§.§switch const final§ = _loc8_;
         }
         if(_loc9_ < param1.z)
         {
            this.§function const true§.§super const if§ = _loc9_;
            this.§function const true§.§const for get§ = param1.z;
         }
         else
         {
            this.§function const true§.§super const if§ = param1.z;
            this.§function const true§.§const for get§ = _loc9_;
         }
         var _loc17_:Number = param4 + 1;
         var _loc15_:int = int(this.§5214236903236916123423632234§.length);
         while(_loc12_ < _loc15_)
         {
            _loc13_ = this.§5214236903236916123423632234§[_loc12_].§5214232783232796123423632234§;
            _loc14_ = _loc13_.§catch for include§;
            if(!(this.§function const true§.§case package class§ < _loc14_.§false for use§ || this.§function const true§.§false for use§ > _loc14_.§case package class§ || this.§function const true§.§switch const final§ < _loc14_.§use set return§ || this.§function const true§.§use set return§ > _loc14_.§switch const final§ || this.§function const true§.§const for get§ < _loc14_.§super const if§ || this.§function const true§.§super const if§ > _loc14_.§const for get§))
            {
               _loc11_ = 0;
               while(_loc11_ < _loc13_.§5214237167237180123423632234§)
               {
                  _loc10_ = _loc13_.§if package default§[_loc11_];
                  if((_loc10_.collisionGroup & param3) != 0)
                  {
                     _loc14_ = _loc10_.§catch for include§;
                     if(!(this.§function const true§.§case package class§ < _loc14_.§false for use§ || this.§function const true§.§false for use§ > _loc14_.§case package class§ || this.§function const true§.§switch const final§ < _loc14_.§use set return§ || this.§function const true§.§use set return§ > _loc14_.§switch const final§ || this.§function const true§.§const for get§ < _loc14_.§super const if§ || this.§function const true§.§super const if§ > _loc14_.§const for get§))
                     {
                        if(!(param5 != null && !param5.considerBody(_loc13_)))
                        {
                           _loc16_ = _loc10_.§5214239358239371123423632234§(param1,param2,0.0001,this.§5214235364235377123423632234§);
                           if(_loc16_ >= 0 && _loc16_ < _loc17_)
                           {
                              _loc17_ = _loc16_;
                              param6.§521423105112310524123423632234§ = _loc10_;
                              param6.§5214233761233774123423632234§.x = this.§5214235364235377123423632234§.x;
                              param6.§5214233761233774123423632234§.y = this.§5214235364235377123423632234§.y;
                              param6.§5214233761233774123423632234§.z = this.§5214235364235377123423632234§.z;
                           }
                        }
                     }
                  }
                  _loc11_++;
               }
            }
            _loc12_++;
         }
         if(_loc17_ > param4)
         {
            return false;
         }
         param6.§dynamic final§.x = param1.x + param2.x * _loc17_;
         param6.§dynamic final§.y = param1.y + param2.y * _loc17_;
         param6.§dynamic final§.z = param1.z + param2.z * _loc17_;
         param6.§5214232932232945123423632234§ = _loc17_;
         return true;
      }
      
      public function §set const try§(param1:§521423136582313671123423632234§, param2:§521423136582313671123423632234§) : Boolean
      {
         if((param1.collisionGroup & param2.collisionGroup) == 0)
         {
            return false;
         }
         if(param1.§5214232783232796123423632234§ == param2.§5214232783232796123423632234§)
         {
            return false;
         }
         if(!param1.§catch for include§.§package catch for§(param2.§catch for include§,0.01))
         {
            return false;
         }
         var _loc3_:§final set null§ = this.§with set case§[param1.type | param2.type];
         return _loc3_.haveCollision(param1,param2);
      }
      
      public function §521423114102311423123423632234§(param1:§default set override§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = this.§5214236903236916123423632234§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§5214236903236916123423632234§.length - 1;
            this.§5214236903236916123423632234§[_loc2_] = this.§5214236903236916123423632234§[_loc3_];
            this.§5214236903236916123423632234§.length = _loc3_;
         }
      }
      
      public function §use switch return§(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:§5214239739239752123423632234§ = null) : Boolean
      {
         var _loc6_:Boolean = this.§set use for§(param1,param2,param3,param4,param5,this.§get switch class§);
         this.§get switch class§.§false set final§();
         return _loc6_;
      }
      
      public function §5214239388239401123423632234§(param1:§default set override§) : void
      {
         param1.§521423124902312503123423632234§ = false;
         this.§5214236903236916123423632234§[§5214236903236916123423632234§.length] = param1;
      }
      
      private function §use use continue§(param1:Vector3, param2:Vector3, param3:§521423130562313069123423632234§, param4:§5214233487233500123423632234§) : Boolean
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         param4.§5214239002239015123423632234§ = -1;
         param4.§5214232042232055123423632234§ = 1e+308;
         for(; _loc5_ < 3; _loc5_++)
         {
            switch(_loc5_)
            {
               case 0:
                  if(!(param2.x < 0.0001 && param2.x > -0.0001))
                  {
                     _loc6_ = (param3.§false for use§ - param1.x) / param2.x;
                     _loc7_ = (param3.§case package class§ - param1.x) / param2.x;
                     break;
                  }
                  if(param1.x < param3.§false for use§ || param1.x > param3.§case package class§)
                  {
                     return false;
                  }
                  continue;
               case 1:
                  if(!(param2.y < 0.0001 && param2.y > -0.0001))
                  {
                     _loc6_ = (param3.§use set return§ - param1.y) / param2.y;
                     _loc7_ = (param3.§switch const final§ - param1.y) / param2.y;
                     break;
                  }
                  if(param1.y < param3.§use set return§ || param1.y > param3.§switch const final§)
                  {
                     return false;
                  }
                  continue;
               case 2:
                  if(!(param2.z < 0.0001 && param2.z > -0.0001))
                  {
                     _loc6_ = (param3.§super const if§ - param1.z) / param2.z;
                     _loc7_ = (param3.§const for get§ - param1.z) / param2.z;
                     break;
                  }
                  if(param1.z < param3.§super const if§ || param1.z > param3.§const for get§)
                  {
                     return false;
                  }
                  continue;
            }
            if(_loc6_ < _loc7_)
            {
               if(_loc6_ > param4.§5214239002239015123423632234§)
               {
                  param4.§5214239002239015123423632234§ = _loc6_;
               }
               if(_loc7_ < param4.§5214232042232055123423632234§)
               {
                  param4.§5214232042232055123423632234§ = _loc7_;
               }
            }
            else
            {
               if(_loc7_ > param4.§5214239002239015123423632234§)
               {
                  param4.§5214239002239015123423632234§ = _loc7_;
               }
               if(_loc6_ < param4.§5214232042232055123423632234§)
               {
                  param4.§5214232042232055123423632234§ = _loc6_;
               }
            }
            if(param4.§5214232042232055123423632234§ < param4.§5214239002239015123423632234§)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §in const include§(param1:§521423136582313671123423632234§, param2:Vector.<§function set class§>) : void
      {
         return this.§521423126382312651123423632234§(this.§5214233533233546123423632234§.§5214238053238066123423632234§,param1,param2);
      }
      
      private function §static set override§(param1:int, param2:int, param3:§final set null§) : void
      {
         this.§with set case§[param1 | param2] = param3;
      }
      
      public function §set use for§(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:§5214239739239752123423632234§, param6:§default catch native§) : Boolean
      {
         if(!this.§use use continue§(param1,param2,this.§5214233533233546123423632234§.§5214238053238066123423632234§.§521423130312313044123423632234§,this.§dynamic use while§))
         {
            return false;
         }
         if(this.§dynamic use while§.§5214232042232055123423632234§ < 0 || this.§dynamic use while§.§5214239002239015123423632234§ > param4)
         {
            return false;
         }
         if(this.§dynamic use while§.§5214239002239015123423632234§ <= 0)
         {
            this.§dynamic use while§.§5214239002239015123423632234§ = 0;
            this.§521423119292311942123423632234§.x = param1.x;
            this.§521423119292311942123423632234§.y = param1.y;
            this.§521423119292311942123423632234§.z = param1.z;
         }
         else
         {
            this.§521423119292311942123423632234§.x = param1.x + this.§dynamic use while§.§5214239002239015123423632234§ * param2.x;
            this.§521423119292311942123423632234§.y = param1.y + this.§dynamic use while§.§5214239002239015123423632234§ * param2.y;
            this.§521423119292311942123423632234§.z = param1.z + this.§dynamic use while§.§5214239002239015123423632234§ * param2.z;
         }
         if(this.§dynamic use while§.§5214232042232055123423632234§ > param4)
         {
            this.§dynamic use while§.§5214232042232055123423632234§ = param4;
         }
         var _loc7_:Boolean = this.§null use null§(this.§5214233533233546123423632234§.§5214238053238066123423632234§,param1,this.§521423119292311942123423632234§,param2,param3,this.§dynamic use while§.§5214239002239015123423632234§,this.§dynamic use while§.§5214232042232055123423632234§,param5,param6);
         return _loc7_ ? param6.§5214232932232945123423632234§ <= param4 : false;
      }
      
      final private function §false switch null§(param1:Vector3, param2:Vector3, param3:int, param4:Vector.<§521423136582313671123423632234§>, param5:Vector.<int>, param6:§5214239739239752123423632234§, param7:§default catch native§) : Boolean
      {
         var _loc12_:int = 0;
         var _loc9_:§521423136582313671123423632234§ = null;
         var _loc10_:Number = NaN;
         var _loc8_:int = int(param5.length);
         var _loc11_:Number = 1e+308;
         while(_loc12_ < _loc8_)
         {
            _loc9_ = param4[param5[_loc12_]];
            if((_loc9_.collisionGroup & param3) != 0)
            {
               if(!(param6 != null && !param6.considerBody(_loc9_.§5214232783232796123423632234§)))
               {
                  _loc10_ = _loc9_.§5214239358239371123423632234§(param1,param2,0.0001,this.§5214235364235377123423632234§);
                  if(_loc10_ > 0 && _loc10_ < _loc11_)
                  {
                     _loc11_ = _loc10_;
                     param7.§521423105112310524123423632234§ = _loc9_;
                     param7.§5214233761233774123423632234§.x = this.§5214235364235377123423632234§.x;
                     param7.§5214233761233774123423632234§.y = this.§5214235364235377123423632234§.y;
                     param7.§5214233761233774123423632234§.z = this.§5214235364235377123423632234§.z;
                  }
               }
            }
            _loc12_++;
         }
         if(_loc11_ == 1e+308)
         {
            return false;
         }
         param7.§dynamic final§.x = param1.x + param2.x * _loc11_;
         param7.§dynamic final§.y = param1.y + param2.y * _loc11_;
         param7.§dynamic final§.z = param1.z + param2.z * _loc11_;
         param7.§5214232932232945123423632234§ = _loc11_;
         return true;
      }
   }
}

