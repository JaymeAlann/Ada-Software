
with Vehicle; with Ada.Text_IO;
procedure Main is

   Package vehicle1 is new Vehicle;
   Package vehicle2 is new Vehicle;

   Input : String(1..8) := (others => ' ');
   Last: Integer;

begin
   vehicle1.Set_Make("Ford");
   vehicle1.Set_Model("Escape");
   vehicle1.Set_Year("2004");
   vehicle1.Set_Licence("RGN 6594");
   vehicle1.Set_Type("SUV");

   vehicle1.PrintVehicle;

   Ada.Text_IO.Put_Line("Enter a Year: ");
   Ada.Text_IO.Get_Line(Input, Last);
   vehicle2.Set_Year(Input);

   Ada.Text_IO.Put_Line("Enter a Make: ");
   Ada.Text_IO.Get_Line(Input, Last);
   vehicle2.Set_Make(Input);

   Ada.Text_IO.Put_Line("Enter a Model: ");
   Ada.Text_IO.Get_Line(Input, Last);
   vehicle2.Set_Model(Input);

   Ada.Text_IO.Put_Line("Enter a Licence: ");
   Ada.Text_IO.Get_Line(Input, Last);
   vehicle2.Set_Licence(Input);

   Ada.Text_IO.Put_Line("Enter a Type: ");
   Ada.Text_IO.Get_Line(Input, Last);
   vehicle2.Set_Type(Input);

   vehicle2.PrintVehicle;

   null;

end Main;
