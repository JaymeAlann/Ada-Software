private with Ada.Strings.Unbounded;
generic
package Vehicle is

   Type Vehicle is private;
  
   
   procedure Set_Make(In_Make : String);
   function Get_Make return String;
   
   procedure Set_Model(In_Model : STring);
   function Get_Model return String;
   
   procedure Set_Year(In_Year : String);
   function Get_Year return String;
   
   procedure Set_Licence(In_Licence : String);
   function Get_Licence return String;
   
   procedure Set_Type(In_V_Type : String);
   function Get_Type return String;
   
   procedure PrintVehicle;
   
private 
   
   package Unbounded renames Ada.Strings.Unbounded;
   
   Type Vehicle is
      record
         Make : Unbounded.Unbounded_String;
         Model : Unbounded.Unbounded_String;
         Year : Unbounded.Unbounded_String;
         V_Type : Unbounded.Unbounded_String;
         V_Licence : Unbounded.Unbounded_String;
      end record;
   
   pragma Inline (Get_Make);
   pragma Inline (Set_Make);
   
   pragma Inline (Get_Model);
   pragma Inline (Set_Model);
   
   pragma Inline (Get_Year);
   pragma Inline (Set_Year);
   
   pragma Inline (Get_Licence);
   pragma Inline (Set_Licence);
   
   pragma Inline (Get_Type);
   pragma Inline (Set_Type);

end Vehicle;
