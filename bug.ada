```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Data'Range loop
      -- Incorrect: Attempting to access an element outside the bounds
      -- if I is greater than My_Data'Last
      Put_Line(My_Data(I + 1));
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Index out of bounds");
end Example;
```