package §5214235524235537123423632234§
{
   import §521423100242310037123423632234§.§5214233003233016123423632234§;
   import §521423100242310037123423632234§.§521423542367123423632234§;
   import §521423100242310037123423632234§.§5214237320237333123423632234§;
   import §521423100242310037123423632234§.§catch null§;
   import §521423100242310037123423632234§.§if package else§;
   import §521423100242310037123423632234§.§import catch while§;
   import §5214233785233798123423632234§.§521423133302313343123423632234§;
   import §5214233785233798123423632234§.§5214238529238542123423632234§;
   import §catch catch native§.PremiumIcons;
   import §else const import§.StatisticsListUserLabel;
   import fl.controls.listClasses.CellRenderer;
   import fl.controls.listClasses.ListData;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.Sprite;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import §try const default§.§5214234011234024123423632234§;
   
   public class §try final§ extends CellRenderer
   {
      
      public static var §return set get§:IBattleInfoService;
      
      public static var §finally const case§:Boolean;
      
      private static const §5214235146235159123423632234§:uint = 16777215;
      
      private static const §5214233125233138123423632234§:uint = 11184810;
      
      private static const §finally default§:uint = 15976448;
      
      private static const §continue set do§:uint = 10921638;
      
      private static const §import else§:String = "—";
      
      private var §5214234691234704123423632234§:DisplayObject;
      
      public function §try final§()
      {
         super();
         this.mouseChildren = true;
         this.buttonMode = this.useHandCursor = false;
      }
      
      private static function §521423133022313315123423632234§(param1:DisplayObjectContainer, param2:String, param3:uint, param4:String, param5:int, param6:int) : §5214238529238542123423632234§
      {
         var _loc7_:§5214238529238542123423632234§ = new §5214238529238542123423632234§();
         _loc7_.mouseEnabled = false;
         _loc7_.autoSize = "none";
         _loc7_.text = param2;
         _loc7_.color = param3;
         _loc7_.align = param4;
         _loc7_.x = param6;
         _loc7_.width = param5;
         _loc7_.height = 20;
         param1.addChild(_loc7_);
         return _loc7_;
      }
      
      private static function §switch for const§(param1:DisplayObjectContainer, param2:int, param3:uint, param4:int, param5:int, param6:§5214234011234024123423632234§) : void
      {
         var _loc11_:String = null;
         var _loc12_:Bitmap = null;
         var _loc10_:Shape = null;
         var _loc8_:int = 0;
         var _loc7_:* = param3;
         if(param6.§5214236992237005123423632234§)
         {
            if(param4 > 0 || param5 > 0)
            {
               _loc7_ = 15976448;
               _loc11_ = §521423133302313343123423632234§.§get catch catch§(param4 + param5,false);
            }
            else
            {
               _loc7_ = param3;
               _loc11_ = "—";
            }
         }
         else if(param5 > 0)
         {
            _loc7_ = 16777215;
            _loc11_ = §521423133302313343123423632234§.§get catch catch§(param5,false);
         }
         else if(param6.§5214239243239256123423632234§)
         {
            _loc7_ = 10921638;
            if(param4 > 0)
            {
               _loc11_ = §521423133302313343123423632234§.§get catch catch§(param4,false);
            }
            else
            {
               _loc11_ = "—";
            }
         }
         else
         {
            _loc7_ = param3;
            _loc11_ = "—";
         }
         var _loc9_:§5214238529238542123423632234§ = §521423133022313315123423632234§(param1,_loc11_,_loc7_,"right",70,param2);
         if(param6.§5214239243239256123423632234§ && !param6.§5214236992237005123423632234§ && param5 <= 0)
         {
            if(param4 > 0)
            {
               _loc10_ = new Shape();
               param1.addChild(_loc10_);
               _loc8_ = _loc9_.textWidth;
               _loc10_.x = _loc9_.x + 70 - _loc8_ - 2;
               _loc10_.y = _loc9_.y + 9;
               _loc10_.graphics.clear();
               _loc10_.graphics.beginFill(10921638);
               _loc10_.graphics.drawRect(0,0,_loc8_,1);
               _loc10_.graphics.endFill();
            }
            _loc12_ = new Bitmap(PremiumIcons.§do switch do§);
            param1.addChild(_loc12_);
            _loc12_.x = param2 + 70 + 4;
            _loc12_.y = 20 - 2 - _loc12_.height >> 1;
         }
      }
      
      private function myIcon(param1:Object) : Sprite
      {
         var _loc2_:DisplayObject = null;
         var _loc9_:* = 0;
         var _loc10_:§5214238529238542123423632234§ = null;
         var _loc7_:§each var break§;
         switch((_loc7_ = §each var break§(param1)).type)
         {
            case 0:
               _loc2_ = _loc7_.§5214239243239256123423632234§ ? new §catch null§() : new §521423542367123423632234§();
               break;
            case 1:
               _loc2_ = _loc7_.§5214239243239256123423632234§ ? new §5214237320237333123423632234§() : new §import catch while§();
               break;
            case 2:
               _loc2_ = _loc7_.§5214239243239256123423632234§ ? new §5214233003233016123423632234§() : new §if package else§();
         }
         var _loc8_:Sprite = new Sprite();
         _loc8_.addChild(_loc2_);
         if(!param1.loaded)
         {
            _loc9_ = 11184810;
         }
         else
         {
            _loc9_ = param1.suspicious ? 16048128 : 16777215;
         }
         var _loc5_:StatisticsListUserLabel = new StatisticsListUserLabel(_loc7_.id);
         if(!param1.loaded)
         {
            _loc5_.§5214234846234859123423632234§(11184810,true);
         }
         else if(param1.suspicious)
         {
            _loc5_.§5214234846234859123423632234§(16048128,true);
         }
         else
         {
            _loc5_.§5214234846234859123423632234§(16777215,§return set get§.isSpectatorMode());
         }
         var _loc6_:int = 15;
         _loc5_.x = _loc6_ - 14;
         _loc8_.addChild(_loc5_);
         _loc6_ += 180;
         if(_loc7_.type != 2)
         {
            _loc10_ = §521423133022313315123423632234§(_loc8_,_loc7_.score.toString(),_loc9_,"right",50,_loc6_);
            _loc6_ += _loc10_.width;
         }
         _loc10_ = §521423133022313315123423632234§(_loc8_,_loc7_.kills.toString(),_loc9_,"right",80,_loc6_);
         _loc6_ += _loc10_.width;
         _loc10_ = §521423133022313315123423632234§(_loc8_,_loc7_.deaths.toString(),_loc9_,"right",80,_loc6_);
         _loc6_ += _loc10_.width;
         var _loc4_:Number = _loc7_.kills / _loc7_.deaths;
         var _loc3_:String = _loc7_.deaths == 0 || _loc7_.kills == 0 ? "—" : _loc4_.toFixed(2);
         _loc10_ = §521423133022313315123423632234§(_loc8_,_loc3_,_loc9_,"right",70,_loc6_);
         _loc6_ += _loc10_.width;
         if(_loc7_.reward > -1)
         {
            _loc10_ = §521423133022313315123423632234§(_loc8_,§521423133302313343123423632234§.§get catch catch§(_loc7_.reward,false),_loc9_,"right",70,_loc6_);
            _loc6_ += _loc10_.width;
            if(§finally const case§)
            {
               §switch for const§(_loc8_,_loc6_,_loc9_,_loc7_.premiumBonusReward,_loc7_.newbiesAbonementBonusReward,_loc5_);
            }
         }
         _loc2_.width = width;
         _loc2_.height = 20 - 2;
         return _loc8_;
      }
      
      override protected function drawIcon() : void
      {
         var _loc1_:DisplayObject = icon;
         var _loc2_:Object = getStyleValue("icon");
         if(_loc2_ != null)
         {
            icon = getDisplayObjectInstance(_loc2_);
         }
         if(icon != null)
         {
            addChildAt(icon,1);
         }
         if(_loc1_ != null && _loc1_ != icon && _loc1_.parent == this)
         {
            removeChild(_loc1_);
         }
      }
      
      override protected function drawBackground() : void
      {
      }
      
      override protected function drawLayout() : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         this.§5214234691234704123423632234§ = this.myIcon(_data);
      }
      
      override public function set listData(param1:ListData) : void
      {
         _listData = param1;
         label = _listData.label;
         if(this.§5214234691234704123423632234§ != null)
         {
            setStyle("icon",this.§5214234691234704123423632234§);
         }
      }
   }
}

