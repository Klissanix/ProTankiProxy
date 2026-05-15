package alternativa.tanks.gui
{
   import alternativa.tanks.model.item.upgradable.UpgradableItemPropertyValue;
   import assets.§if use implements§;
   import flash.display.Sprite;
   import §implements for each§.§5214237300237313123423632234§;
   import §true switch true§.§5214231141231154123423632234§;
   import §var break§.UpgradeColors;
   
   public class ModInfoRow extends Sprite
   {
      
      private static const §5214232896232909123423632234§:int = 13;
      
      private var §with true§:Boolean = false;
      
      public var §5214234426234439123423632234§:Vector.<§5214231141231154123423632234§>;
      
      public var §5214234342234355123423632234§:§5214231141231154123423632234§;
      
      public var §default for final§:§if use implements§;
      
      public var §5214236045236058123423632234§:§5214237300237313123423632234§;
      
      public var §extends static§:UpgradeIndicator;
      
      public const h:int = 17;
      
      public const §switch use native§:int = 10;
      
      public var §for set case§:int;
      
      private var §5214237781237794123423632234§:int = 0;
      
      private var _width:int;
      
      public function ModInfoRow(param1:int, param2:int)
      {
         var _loc3_:§5214231141231154123423632234§ = null;
         super();
         this._width = param2;
         this.§5214234426234439123423632234§ = new Vector.<§5214231141231154123423632234§>(8);
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            _loc3_ = new §5214231141231154123423632234§();
            _loc3_.color = 16777215;
            _loc3_.align = "center";
            _loc3_.text = "ABC123";
            _loc3_.sharpness = 50;
            _loc3_.thickness = -50;
            addChild(_loc3_);
            this.§5214234426234439123423632234§[_loc4_] = _loc3_;
            _loc3_.y = 17 - _loc3_.height >> 1;
            _loc4_++;
         }
         this.§5214234342234355123423632234§ = new §5214231141231154123423632234§();
         this.§5214234342234355123423632234§.color = 16777215;
         this.§5214234342234355123423632234§.align = "right";
         this.§5214234342234355123423632234§.text = "ABC123";
         this.§5214234342234355123423632234§.sharpness = 50;
         this.§5214234342234355123423632234§.thickness = -50;
         addChild(this.§5214234342234355123423632234§);
         this.§5214234342234355123423632234§.y = 17 - this.§5214234342234355123423632234§.height >> 1;
         this.§default for final§ = new §if use implements§();
         addChild(this.§default for final§);
         this.§default for final§.y = 17 - this.§default for final§.height >> 1;
         this.§5214236045236058123423632234§ = new §5214237300237313123423632234§();
         addChild(this.§5214236045236058123423632234§);
         this.§5214236045236058123423632234§.y = (17 - this.§5214236045236058123423632234§.height >> 1) + 1;
         this.§extends static§ = new UpgradeIndicator(param1);
         addChild(this.§extends static§);
         this.§extends static§.y = (17 - this.§extends static§.height >> 1) + 1;
      }
      
      public function unselect() : void
      {
         var _loc1_:§5214231141231154123423632234§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < 8)
         {
            _loc1_ = this.§5214234426234439123423632234§[_loc2_] as §5214231141231154123423632234§;
            _loc1_.color = 16777215;
            _loc1_.sharpness = 50;
            _loc1_.thickness = -50;
            _loc2_++;
         }
         this.§5214234342234355123423632234§.color = 16777215;
         this.§5214234342234355123423632234§.sharpness = 50;
         this.§5214234342234355123423632234§.thickness = -50;
         this.§with true§ = false;
      }
      
      public function getPositions() : Vector.<Number>
      {
         var _loc1_:§5214231141231154123423632234§ = null;
         var _loc2_:Vector.<Number> = new Vector.<Number>(this.§5214237781237794123423632234§,true);
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214237781237794123423632234§)
         {
            _loc1_ = this.§5214234426234439123423632234§[_loc3_];
            _loc2_[_loc3_] = _loc1_.x + _loc1_.width * 0.5;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function updatePositions() : void
      {
         var _loc1_:§5214231141231154123423632234§ = null;
         var _loc2_:int = this._width;
         this.§default for final§.x = _loc2_ - this.§default for final§.width - 10;
         this.§5214234342234355123423632234§.x = this.§default for final§.x - 3 - this.§5214234342234355123423632234§.width;
         var _loc4_:Number = this.§default for final§.x - 3 - this.§for set case§;
         this.§5214236045236058123423632234§.x = _loc4_ - 10 - 13;
         this.§extends static§.x = this.§5214236045236058123423632234§.x - this.§extends static§.width - 10;
         var _loc5_:Number = (this.§extends static§.x - 2 * 10) / this.§5214237781237794123423632234§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5214237781237794123423632234§)
         {
            _loc1_ = this.§5214234426234439123423632234§[_loc3_];
            _loc1_.x = Math.round(10 + _loc5_ * _loc3_ + (_loc5_ - _loc1_.width) / 2);
            _loc3_++;
         }
      }
      
      public function select() : void
      {
         var _loc1_:§5214231141231154123423632234§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < 8)
         {
            _loc1_ = this.§5214234426234439123423632234§[_loc2_] as §5214231141231154123423632234§;
            _loc1_.color = 16777215;
            _loc1_.sharpness = -100;
            _loc1_.thickness = 100;
            _loc2_++;
         }
         this.§5214234342234355123423632234§.sharpness = -100;
         this.§5214234342234355123423632234§.thickness = 100;
         this.§with true§ = true;
      }
      
      public function setLabelsNum(param1:int) : void
      {
         this.§5214237781237794123423632234§ = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5214234426234439123423632234§.length)
         {
            if(_loc2_ < param1)
            {
               (this.§5214234426234439123423632234§[_loc2_] as §5214231141231154123423632234§).visible = true;
            }
            else
            {
               (this.§5214234426234439123423632234§[_loc2_] as §5214231141231154123423632234§).visible = false;
            }
            _loc2_++;
         }
      }
      
      public function setLabelsText(param1:Vector.<UpgradableItemPropertyValue>) : void
      {
         var _loc2_:UpgradableItemPropertyValue = null;
         var _loc4_:int = 0;
         var _loc5_:§5214231141231154123423632234§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1[_loc3_];
            _loc4_ = UpgradeColors.getColorForValue(_loc2_);
            _loc5_ = this.§5214234426234439123423632234§[_loc3_];
            _loc5_.text = _loc2_.getValue();
            _loc5_.color = _loc4_;
            _loc3_++;
         }
      }
   }
}

