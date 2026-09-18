pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Bounded_Synchronized_Queues_Demo;
procedure Tests is
begin
   Assert (Bounded_Synchronized_Queues_Demo.Round_Trip);
   Put_Line ("PASS Bounded_Synchronized_Queues Enqueue/Dequeue");
   Put_Line ("All Bounded_Synchronized_Queues topic tests passed.");
end Tests;
