pragma Ada_2012;
with Ada.Text_IO;
package body Vehicle is

   Make, Model, Year, Licence, V_Type : Unbounded.Unbounded_String;

   --------------
   -- Set_Make --
   --------------

   procedure Set_Make (In_Make : String) is
   begin
      Make := Unbounded.To_Unbounded_String(In_Make);
   end Set_Make;

   --------------
   -- Get_Make --
   --------------

   function Get_Make return String is
   begin
      return Unbounded.To_String (Make);
   end Get_Make;

   ---------------
   -- Set_Model --
   ---------------

   procedure Set_Model (In_Model : STring) is
   begin
      Model := Unbounded.To_Unbounded_String(In_Model);
   end Set_Model;

   ---------------
   -- Get_Model --
   ---------------

   function Get_Model return String is
   begin
      return Unbounded.To_String (Model);
   end Get_Model;

   --------------
   -- Set_Year --
   --------------

   procedure Set_Year (In_Year : String) is
   begin
      Year := Unbounded.To_Unbounded_String(In_Year);
   end Set_Year;

   --------------
   -- Get_Year --
   --------------

   function Get_Year return String is
   begin
      return Unbounded.To_String (Year);
   end Get_Year;

   -----------------
   -- Set_Licence --
   -----------------

   procedure Set_Licence (In_Licence : String) is
   begin
      Licence := Unbounded.To_Unbounded_String(In_Licence);
   end Set_Licence;

   -----------------
   -- Get_Licence --
   -----------------

   function Get_Licence return String is
   begin
     return Unbounded.To_String (Licence);
   end Get_Licence;

   --------------
   -- Set_Type --
   --------------

   procedure Set_Type ( In_V_Type : String) is
   begin
     V_Type := Unbounded.To_Unbounded_String(In_V_Type);
   end Set_Type;

   --------------
   -- Get_Type --
   --------------

   function Get_Type return String is
   begin
      return Unbounded.To_String (V_Type);
   end Get_Type;

   procedure PrintVehicle is
   begin
      Ada.Text_IO.Put_Line(Get_Year & " " & Get_Make & " " & Get_Model
                           & " " & Get_Licence & " " & Get_Type);
   end PrintVehicle;

end Vehicle;
