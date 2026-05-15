package §with set for§
{
   import flash.system.ApplicationDomain;
   import §null package if§.§try finally catch§;
   import org.swiftsuspenders.Injector;
   
   public class SwiftSuspendersInjector extends Injector implements §try finally catch§
   {
      
      protected static const §with const break§:XML = <types>
				<type name='org.robotlegs.mvcs::Actor'>
					<field name='eventDispatcher'/>
				</type>
				<type name='org.robotlegs.mvcs::Command'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
					<field name='injector'/>
					<field name='commandMap'/>
				</type>
				<type name='org.robotlegs.mvcs::Mediator'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
				</type>
			</types>;
      
      public function SwiftSuspendersInjector(param1:XML = null)
      {
         var _loc2_:XML = null;
         if(param1)
         {
            for each(_loc2_ in §with const break§.children())
            {
               param1.appendChild(_loc2_);
            }
         }
         super(param1);
      }
      
      public function §false var include§(param1:ApplicationDomain = null) : §try finally catch§
      {
         var _loc2_:SwiftSuspendersInjector = new SwiftSuspendersInjector();
         _loc2_.§false case§(param1);
         _loc2_.§52142312923142123423632234§(this);
         return _loc2_;
      }
      
      public function get applicationDomain() : ApplicationDomain
      {
         return §with const switch§();
      }
      
      public function set applicationDomain(param1:ApplicationDomain) : void
      {
         §false case§(param1);
      }
   }
}

