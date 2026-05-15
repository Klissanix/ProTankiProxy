package §5214233392233405123423632234§
{
   import §521423100242310037123423632234§.§521423139032313916123423632234§;
   import alternativa.tanks.models.battle.battlefield.BattleType;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkManager;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkingField;
   import §const use try§.§5214233408233421123423632234§;
   import §const use try§.§extends var default§;
   import flash.display.Sprite;
   import §throw set continue§.§switch const continue§;
   
   public class §throw var extends§ extends Sprite
   {
      
      private static const §5214237076237089123423632234§:int = 1;
      
      private static const §try set break§:int = 1;
      
      private static const §521423125352312548123423632234§:int = 3;
      
      private static const §dynamic catch if§:int = 30;
      
      private var §default use in§:BattleType;
      
      private var §false package break§:§521423139032313916123423632234§;
      
      private var §5214231183231196123423632234§:§use package while§;
      
      private var §521423128812312894123423632234§:WinkingField;
      
      private var §5214231436231449123423632234§:§extends var default§;
      
      private var §import const switch§:§5214233408233421123423632234§;
      
      private var §false use extends§:int;
      
      private var §do set switch§:int;
      
      public function §throw var extends§(param1:BattleType, param2:int, param3:§switch const continue§, param4:int, param5:Boolean)
      {
         super();
         this.§default use in§ = param1;
         this.§false use extends§ = param3.§5214239290239303123423632234§;
         this.§do set switch§ = param3.§do set switch§;
         this.§false package break§ = new §521423139032313916123423632234§();
         addChild(this.§false package break§);
         this.§5214231183231196123423632234§ = new §use package while§(5);
         this.§5214231183231196123423632234§.§in package static§(param2);
         addChild(this.§5214231183231196123423632234§);
         this.§default for get§(param5);
         if(this.§false use extends§ > 0)
         {
            var _temp_4:* = this;
            var _temp_3:* = §§findproperty(§extends var default§);
            var _temp_2:* = 30;
            var _temp_1:* = 1;
            var _loc6_:WinkManager = WinkManager;
            _temp_4.§5214231436231449123423632234§ = new §extends var default§(_temp_2,_temp_1,alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkManager._instance,false);
            this.§5214231436231449123423632234§.value = param4;
            addChild(this.§5214231436231449123423632234§);
         }
      }
      
      public function §5214239263239276123423632234§() : void
      {
         this.§5214231436231449123423632234§.§class set final§();
      }
      
      public function §5214238658238671123423632234§(param1:int) : void
      {
         if(this.§5214231436231449123423632234§ != null)
         {
            this.§5214231436231449123423632234§.visible = false;
         }
         var _temp_4:* = this;
         var _temp_3:* = §§findproperty(§5214233408233421123423632234§);
         var _temp_2:* = 30;
         var _temp_1:* = 1;
         var _loc2_:WinkManager = WinkManager;
         _temp_4.§import const switch§ = new §5214233408233421123423632234§(_temp_2,_temp_1,alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkManager._instance,false);
         this.§import const switch§.§extends package do§(param1);
         addChild(this.§import const switch§);
      }
      
      public function §package finally use§(param1:int) : void
      {
         this.§5214231183231196123423632234§.§in package static§(param1);
      }
      
      public function §5214238569238582123423632234§(param1:int) : void
      {
         if(this.§521423128812312894123423632234§ != null)
         {
            if(param1 >= this.§do set switch§ - this.§each const else§())
            {
               this.§521423128812312894123423632234§.startWink();
            }
         }
      }
      
      public function §false catch use§() : void
      {
         if(this.§521423128812312894123423632234§ != null)
         {
            this.§521423128812312894123423632234§.stopWink();
         }
         if(this.§5214231436231449123423632234§ != null)
         {
            this.§5214231436231449123423632234§.value = 0;
            this.§5214231436231449123423632234§.stopWink();
         }
         if(this.§import const switch§ != null)
         {
            this.§import const switch§.value = 0;
            this.§import const switch§.stopWink();
         }
      }
      
      public function §521423104852310498123423632234§() : void
      {
         if(this.§5214231436231449123423632234§ != null)
         {
            this.§5214231436231449123423632234§.visible = true;
         }
         removeChild(this.§import const switch§);
         this.§import const switch§ = null;
      }
      
      public function §default for get§(param1:Boolean) : void
      {
         if(this.§521423128812312894123423632234§ == null && param1 && this.§do set switch§ > 0)
         {
            var _temp_6:* = this;
            var _temp_5:* = §§findproperty(WinkingField);
            var _temp_4:* = this.§each const else§();
            var _temp_3:* = this.§52142384723860123423632234§();
            var _loc2_:WinkManager = WinkManager;
            _temp_6.§521423128812312894123423632234§ = new WinkingField(_temp_4,_temp_3,alternativa.tanks.models.battle.gui.gui.statistics.field.wink.WinkManager._instance);
            this.§521423128812312894123423632234§.value = this.§do set switch§;
            addChild(this.§521423128812312894123423632234§);
         }
      }
      
      private function §52142384723860123423632234§() : int
      {
         switch(this.§default use in§)
         {
            case BattleType.CTF:
               return 7;
            case BattleType.CP:
            case BattleType.AS:
               break;
            default:
               return 2;
         }
         return 10;
      }
      
      private function §each const else§() : int
      {
         switch(this.§default use in§)
         {
            case BattleType.CTF:
               return 1;
            case BattleType.CP:
               return 1;
            default:
               return 3;
         }
      }
      
      public function reset() : void
      {
         if(this.§521423128812312894123423632234§ != null)
         {
            this.§521423128812312894123423632234§.value = this.§do set switch§;
         }
         if(this.§5214231436231449123423632234§ != null)
         {
            this.§5214231436231449123423632234§.value = this.§false use extends§;
         }
         if(this.§import const switch§ != null)
         {
            this.§521423104852310498123423632234§();
         }
      }
      
      public function §5214237758237771123423632234§(param1:int) : void
      {
         this.§5214231436231449123423632234§.§extends package do§(param1);
      }
      
      public function §521423101812310194123423632234§() : void
      {
         this.§5214231183231196123423632234§.x = 14;
         this.§5214231183231196123423632234§.y = 11;
         var _loc1_:Number = this.§5214231183231196123423632234§.width + this.§5214231183231196123423632234§.x;
         if(this.§521423128812312894123423632234§ != null)
         {
            this.§521423128812312894123423632234§.x = _loc1_ + 6;
            this.§521423128812312894123423632234§.y = 11;
            _loc1_ = this.§521423128812312894123423632234§.width + this.§521423128812312894123423632234§.x;
         }
         if(this.§5214231436231449123423632234§ != null)
         {
            this.§5214231436231449123423632234§.x = _loc1_ + 10;
            this.§5214231436231449123423632234§.y = 11;
            _loc1_ = this.§5214231436231449123423632234§.width + this.§5214231436231449123423632234§.x;
         }
         if(this.§import const switch§ != null)
         {
            if(this.§5214231436231449123423632234§ != null)
            {
               this.§import const switch§.x = this.§5214231436231449123423632234§.x;
               this.§import const switch§.y = this.§5214231436231449123423632234§.y;
            }
            else
            {
               this.§import const switch§.x = _loc1_ + 10;
               this.§import const switch§.y = 11;
               _loc1_ = this.§import const switch§.width + this.§import const switch§.x;
            }
         }
         this.§false package break§.width = 12 + _loc1_;
      }
   }
}

