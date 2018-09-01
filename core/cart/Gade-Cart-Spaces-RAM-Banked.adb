with Gade.Cart.Banked.RAM.Blank;

package body Gade.Cart.Spaces.RAM.Banked is

   function Create
     (Size : RAM_Size_Type;
      Path : String) return Handler_Access
   is
      Handler : constant Handler_Access := new Handler_Type;
   begin
      Banked.Initialize (Handler.all, Size, Path);
      return Handler;
   end Create;

   procedure Initialize
     (Handler : out Handler_Type'Class;
      Size    : RAM_Size_Type;
      Path    : String)
   is
   begin
      Handler.Memory_Bank := new Memory_RAM_Bank_Type;
      Handler.Memory_Bank.Initialize (Size, Path);
      Handler.Reset;
   end Initialize;

   overriding
   procedure Reset (Handler : in out Handler_Type) is
   begin
      Handler.Switch_Banks (0);
      Handler.Disable;
   end Reset;

   overriding
   procedure Read
     (Handler : in out Handler_Type;
      GB      : in out Gade.GB.GB_Type;
      Address : Word;
      Content : out Byte)
   is
      pragma Unreferenced (GB);
      Bank_Address : constant RAM_Bank_Address := To_Bank_Address (Address);
   begin
      Handler.Current_Bank.Read (Bank_Address, Content);
   end Read;

   overriding
   procedure Write
     (Handler : in out Handler_Type;
      GB      : in out Gade.GB.GB_Type;
      Address : Word;
      Content : Byte)
   is
      pragma Unreferenced (GB);
      Bank_Address : constant RAM_Bank_Address := To_Bank_Address (Address);
   begin
      Handler.Current_Bank.Write (Bank_Address, Content);
   end Write;

   overriding
   procedure Switch_Banks
     (Handler : in out Handler_Type;
      Bank    : RAM_Bank_Range)
   is
   begin
      Handler.Memory_Bank.Set_Bank (Bank);
   end Switch_Banks;

   overriding
   procedure Set_Enabled
     (Handler : in out Handler_Type;
      Enabled : Boolean)
   is
      State_Changed : constant Boolean := Handler.Enabled /= Enabled;
   begin
      if State_Changed and Enabled then
         Handler.Enable;
      elsif State_Changed and not Enabled then
         Handler.Disable;
      end if;
   end Set_Enabled;

   procedure Enable (Handler : in out Handler_Type) is
   begin
      Handler.Enabled := True;
      Handler.Current_Bank := RAM_Bank_Access (Handler.Memory_Bank);
   end Enable;

   procedure Disable (Handler : in out Handler_Type) is
   begin
      Handler.Enabled := False;
      Handler.Current_Bank :=
        RAM_Bank_Access (Gade.Cart.Banked.RAM.Blank.Singleton);
   end Disable;

   overriding
   procedure Save (Handler : Handler_Type) is
   begin
      Handler.Memory_Bank.Save;
   end Save;

end Gade.Cart.Spaces.RAM.Banked;

