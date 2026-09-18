pragma Ada_2022;

with Ada.Containers; use Ada.Containers;

package body Bounded_Synchronized_Queues_Demo is

   function Round_Trip return Boolean is
      Q       : Int_Queues.Queue;
      A, B, C : Integer;
   begin
      Q.Enqueue (1);
      Q.Enqueue (2);
      Q.Enqueue (3);
      if Q.Current_Use /= 3 then
         return False;
      end if;
      Q.Dequeue (A);
      Q.Dequeue (B);
      Q.Dequeue (C);
      return A = 1 and then B = 2 and then C = 3
        and then Q.Current_Use = 0
        and then Q.Peak_Use = 3;
   end Round_Trip;

end Bounded_Synchronized_Queues_Demo;
