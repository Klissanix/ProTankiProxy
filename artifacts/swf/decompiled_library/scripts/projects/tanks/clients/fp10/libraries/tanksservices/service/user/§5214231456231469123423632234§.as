package projects.tanks.clients.fp10.libraries.tanksservices.service.user
{
   import flash.events.IEventDispatcher;
   import §throw package function§.BattleLinkData;
   
   public interface §5214231456231469123423632234§ extends IEventDispatcher
   {
      
      function get rank() : int;
      
      function get uid() : String;
      
      function hasPremium() : Boolean;
      
      function get serverNumber() : int;
      
      function incrementVisibleLabelsCounter() : void;
      
      function decrementVisibleLabelsCounter() : void;
      
      function updateLastAccessTime() : void;
      
      function hasData() : Boolean;
      
      function get online() : Boolean;
      
      function hasBattleLink() : Boolean;
      
      function get battleLink() : BattleLinkData;
   }
}

