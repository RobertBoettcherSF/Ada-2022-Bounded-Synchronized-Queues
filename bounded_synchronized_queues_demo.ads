--  Ada 2022 topic: Ada.Containers.Bounded_Synchronized_Queues.
pragma Ada_2022;
with Ada.Containers.Synchronized_Queue_Interfaces;
with Ada.Containers.Bounded_Synchronized_Queues;
package Bounded_Synchronized_Queues_Demo is
   package Int_QI is new Ada.Containers.Synchronized_Queue_Interfaces
     (Element_Type => Integer);
   package Int_Queues is new Ada.Containers.Bounded_Synchronized_Queues
     (Queue_Interfaces => Int_QI,
      Default_Capacity => 4);
   function Round_Trip return Boolean;
end Bounded_Synchronized_Queues_Demo;
