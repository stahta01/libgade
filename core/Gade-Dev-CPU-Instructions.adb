with Gade.GB;
with Gade.GB.Memory_Map;      use Gade.GB.Memory_Map;
with Gade.Dev.CPU.Arithmetic; use Gade.Dev.CPU.Arithmetic;
with Gade.Dev.CPU.Logic;      use Gade.Dev.CPU.Logic;
with Ada.Text_IO;
with Ada.Integer_Text_IO;

with Gade.Dev.CPU.Bitwise;    use Gade.Dev.CPU.Bitwise;

package body Gade.Dev.CPU.Instructions is

   procedure ADC_A_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, Read_Byte(GB, GB.CPU.Regs.HL), GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_off_HL;

   procedure ADC_A_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.A, GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_A;

   procedure ADC_A_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.B, GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_B;

   procedure ADC_A_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.C, GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_C;

   procedure ADC_A_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.D, GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_D;

   procedure ADC_A_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.E, GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_E;

   procedure ADC_A_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.H, GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_H;

   procedure ADC_A_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.L, GB.CPU.Regs.A, ADC_Carry);
   end ADC_A_L;

   procedure ADC_A_n (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, Read_Byte(GB, GB.CPU.PC), GB.CPU.Regs.A, ADC_Carry);
      GB.CPU.PC := GB.CPU.PC + 1;
   end ADC_A_n;

   procedure ADD_A_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, Read_Byte(GB, GB.CPU.Regs.HL), GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_off_HL;

   procedure ADD_A_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.A, GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_A;

   procedure ADD_A_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.B, GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_B;

   procedure ADD_A_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.C, GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_C;

   procedure ADD_A_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.D, GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_D;

   procedure ADD_A_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.E, GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_E;

   procedure ADD_A_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.H, GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_H;

   procedure ADD_A_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.L, GB.CPU.Regs.A, ADD_Carry);
   end ADD_A_L;

   procedure ADD_A_n (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, Read_Byte(GB, GB.CPU.PC), GB.CPU.Regs.A, ADD_Carry);
      GB.CPU.PC := GB.CPU.PC + 1;
   end ADD_A_n;

   procedure ADD_HL_BC (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.BC, GB.CPU.Regs.HL);
   end ADD_HL_BC;

   procedure ADD_HL_DE (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.DE, GB.CPU.Regs.HL);
   end ADD_HL_DE;

   procedure ADD_HL_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.HL, GB.CPU.Regs.HL);
   end ADD_HL_HL;

   procedure ADD_HL_SP (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Add(GB.CPU, GB.CPU.Regs.SP, GB.CPU.Regs.HL);
   end ADD_HL_SP;

   procedure ADD_SP_n (GB : in out Gade.GB.GB_Type) is
     n : Byte;
   begin
     n := Read_Byte(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 1;
     Do_Add(GB.CPU, GB.CPU.Regs.SP, n);
   end ADD_SP_n;

   procedure AND_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, Read_Byte(GB, GB.CPU.Regs.HL));
   end AND_off_HL;

   procedure AND_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, GB.CPU.Regs.A);
   end AND_A;

   procedure AND_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, GB.CPU.Regs.B);
   end AND_B;

   procedure AND_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, GB.CPU.Regs.C);
   end AND_C;

   procedure AND_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, GB.CPU.Regs.D);
   end AND_D;

   procedure AND_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, GB.CPU.Regs.E);
   end AND_E;

   procedure AND_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, GB.CPU.Regs.H);
   end AND_H;

   procedure AND_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, GB.CPU.Regs.L);
   end AND_L;

   procedure AND_n (GB : in out Gade.GB.GB_Type) is
   begin
      Do_AND(GB.CPU, Read_Byte(GB, GB.CPU.PC));
      GB.CPU.PC := GB.CPU.PC + 1;
   end AND_n;

   procedure BIT_0_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_0_off_HL;

   procedure BIT_0_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, GB.CPU.Regs.A);
   end BIT_0_A;

   procedure BIT_0_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, GB.CPU.Regs.B);
   end BIT_0_B;

   procedure BIT_0_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, GB.CPU.Regs.C);
   end BIT_0_C;

   procedure BIT_0_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, GB.CPU.Regs.D);
   end BIT_0_D;

   procedure BIT_0_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, GB.CPU.Regs.E);
   end BIT_0_E;

   procedure BIT_0_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, GB.CPU.Regs.H);
   end BIT_0_H;

   procedure BIT_0_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 0, GB.CPU.Regs.L);
   end BIT_0_L;

   procedure BIT_1_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_1_off_HL;

   procedure BIT_1_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, GB.CPU.Regs.A);
   end BIT_1_A;

   procedure BIT_1_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, GB.CPU.Regs.B);
   end BIT_1_B;

   procedure BIT_1_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, GB.CPU.Regs.C);
   end BIT_1_C;

   procedure BIT_1_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, GB.CPU.Regs.D);
   end BIT_1_D;

   procedure BIT_1_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, GB.CPU.Regs.E);
   end BIT_1_E;

   procedure BIT_1_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, GB.CPU.Regs.H);
   end BIT_1_H;

   procedure BIT_1_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 1, GB.CPU.Regs.L);
   end BIT_1_L;

   procedure BIT_2_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_2_off_HL;

   procedure BIT_2_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, GB.CPU.Regs.A);
   end BIT_2_A;

   procedure BIT_2_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, GB.CPU.Regs.B);
   end BIT_2_B;

   procedure BIT_2_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, GB.CPU.Regs.C);
   end BIT_2_C;

   procedure BIT_2_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, GB.CPU.Regs.D);
   end BIT_2_D;

   procedure BIT_2_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, GB.CPU.Regs.E);
   end BIT_2_E;

   procedure BIT_2_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, GB.CPU.Regs.H);
   end BIT_2_H;

   procedure BIT_2_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 2, GB.CPU.Regs.L);
   end BIT_2_L;

   procedure BIT_3_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_3_off_HL;

   procedure BIT_3_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, GB.CPU.Regs.A);
   end BIT_3_A;

   procedure BIT_3_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, GB.CPU.Regs.B);
   end BIT_3_B;

   procedure BIT_3_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, GB.CPU.Regs.C);
   end BIT_3_C;

   procedure BIT_3_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, GB.CPU.Regs.D);
   end BIT_3_D;

   procedure BIT_3_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, GB.CPU.Regs.E);
   end BIT_3_E;

   procedure BIT_3_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, GB.CPU.Regs.H);
   end BIT_3_H;

   procedure BIT_3_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 3, GB.CPU.Regs.L);
   end BIT_3_L;

   procedure BIT_4_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_4_off_HL;

   procedure BIT_4_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, GB.CPU.Regs.A);
   end BIT_4_A;

   procedure BIT_4_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, GB.CPU.Regs.B);
   end BIT_4_B;

   procedure BIT_4_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, GB.CPU.Regs.C);
   end BIT_4_C;

   procedure BIT_4_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, GB.CPU.Regs.D);
   end BIT_4_D;

   procedure BIT_4_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, GB.CPU.Regs.E);
   end BIT_4_E;

   procedure BIT_4_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, GB.CPU.Regs.H);
   end BIT_4_H;

   procedure BIT_4_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 4, GB.CPU.Regs.L);
   end BIT_4_L;

   procedure BIT_5_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_5_off_HL;

   procedure BIT_5_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, GB.CPU.Regs.A);
   end BIT_5_A;

   procedure BIT_5_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, GB.CPU.Regs.B);
   end BIT_5_B;

   procedure BIT_5_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, GB.CPU.Regs.C);
   end BIT_5_C;

   procedure BIT_5_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, GB.CPU.Regs.D);
   end BIT_5_D;

   procedure BIT_5_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, GB.CPU.Regs.E);
   end BIT_5_E;

   procedure BIT_5_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, GB.CPU.Regs.H);
   end BIT_5_H;

   procedure BIT_5_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 5, GB.CPU.Regs.L);
   end BIT_5_L;

   procedure BIT_6_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_6_off_HL;

   procedure BIT_6_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, GB.CPU.Regs.A);
   end BIT_6_A;

   procedure BIT_6_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, GB.CPU.Regs.B);
   end BIT_6_B;

   procedure BIT_6_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, GB.CPU.Regs.C);
   end BIT_6_C;

   procedure BIT_6_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, GB.CPU.Regs.D);
   end BIT_6_D;

   procedure BIT_6_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, GB.CPU.Regs.E);
   end BIT_6_E;

   procedure BIT_6_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, GB.CPU.Regs.H);
   end BIT_6_H;

   procedure BIT_6_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 6, GB.CPU.Regs.L);
   end BIT_6_L;

   procedure BIT_7_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, Read_Byte(GB, GB.CPU.Regs.HL));
   end BIT_7_off_HL;

   procedure BIT_7_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, GB.CPU.Regs.A);
   end BIT_7_A;

   procedure BIT_7_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, GB.CPU.Regs.B);
   end BIT_7_B;

   procedure BIT_7_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, GB.CPU.Regs.C);
   end BIT_7_C;

   procedure BIT_7_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, GB.CPU.Regs.D);
   end BIT_7_D;

   procedure BIT_7_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, GB.CPU.Regs.E);
   end BIT_7_E;

   procedure BIT_7_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, GB.CPU.Regs.H);
   end BIT_7_H;

   procedure BIT_7_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Bit(GB.CPU, 7, GB.CPU.Regs.L);
   end BIT_7_L;

   procedure CALL_off_nn (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC + 2);
      GB.CPU.PC := Read_Word(GB, GB.CPU.PC);
   end CALL_off_nn;

   procedure CALL_C_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_C) then
       GB.CPU.Branch_Taken := True;
       Push(GB, GB.CPU.PC);
       GB.CPU.PC := Addr;
     end if;
   end CALL_C_off_nn;

   procedure CALL_NC_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_NC) then
       GB.CPU.Branch_Taken := True;
       Push(GB, GB.CPU.PC);
       GB.CPU.PC := Addr;
     end if;
   end CALL_NC_off_nn;

   procedure CALL_NZ_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_NZ) then
       GB.CPU.Branch_Taken := True;
       Push(GB, GB.CPU.PC);
       GB.CPU.PC := Addr;
     end if;
   end CALL_NZ_off_nn;

   procedure CALL_Z_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_Z) then
       GB.CPU.Branch_Taken := True;
       Push(GB, GB.CPU.PC);
       GB.CPU.PC := Addr;
     end if;
   end CALL_Z_off_nn;

   procedure CCF (GB : in out Gade.GB.GB_Type) is
   begin
      Reset(GB.CPU.Regs.F.N);
      Reset(GB.CPU.Regs.F.H);
      Set_Value(GB.CPU.Regs.F.C, not Is_Set(GB.CPU.Regs.F.C));
   end CCF;

   procedure CP_off_HL (GB : in out Gade.GB.GB_Type) is
     Value, Dummy : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Sub(GB.CPU, Value, Dummy, SUB_Carry);
   end CP_off_HL;

   procedure CP_A (GB : in out Gade.GB.GB_Type) is
     Dummy : Byte;
   begin
     Do_Sub(GB.CPU, GB.CPU.Regs.A, Dummy, SUB_Carry);
   end CP_A;

   procedure CP_B (GB : in out Gade.GB.GB_Type) is
     Dummy : Byte;
   begin
     Do_Sub(GB.CPU, GB.CPU.Regs.B, Dummy, SUB_Carry);
   end CP_B;

   procedure CP_C (GB : in out Gade.GB.GB_Type) is
     Dummy : Byte;
   begin
     Do_Sub(GB.CPU, GB.CPU.Regs.C, Dummy, SUB_Carry);
   end CP_C;

   procedure CP_D (GB : in out Gade.GB.GB_Type) is
     Dummy : Byte;
   begin
     Do_Sub(GB.CPU, GB.CPU.Regs.D, Dummy, SUB_Carry);
   end CP_D;

   procedure CP_E (GB : in out Gade.GB.GB_Type) is
     Dummy : Byte;
   begin
     Do_Sub(GB.CPU, GB.CPU.Regs.E, Dummy, SUB_Carry);
   end CP_E;

   procedure CP_H (GB : in out Gade.GB.GB_Type) is
     Dummy : Byte;
   begin
     Do_Sub(GB.CPU, GB.CPU.Regs.H, Dummy, SUB_Carry);
   end CP_H;

   procedure CP_L (GB : in out Gade.GB.GB_Type) is
     Dummy : Byte;
   begin
     Do_Sub(GB.CPU, GB.CPU.Regs.L, Dummy, SUB_Carry);
   end CP_L;

   procedure CP_n (GB : in out Gade.GB.GB_Type) is
     Value, Dummy : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 1;
     Do_Sub(GB.CPU, Value, Dummy, SUB_Carry);
   end CP_n;

   procedure CPL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := not GB.CPU.Regs.A;
      Set(GB.CPU.Regs.F.H);
      Set(GB.CPU.Regs.F.N);
   end CPL;

   procedure DAA (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Daa(GB.CPU);
   end DAA;

   procedure DEC_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Inc_Dec(GB.CPU, DEC, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end DEC_off_HL;

   procedure DEC_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, DEC, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end DEC_A;

   procedure DEC_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, DEC, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end DEC_B;

   procedure DEC_BC (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.BC := GB.CPU.Regs.BC - 1;
   end DEC_BC;

   procedure DEC_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, DEC, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end DEC_C;

   procedure DEC_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, DEC, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end DEC_D;

   procedure DEC_DE (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.DE := GB.CPU.Regs.DE - 1;
   end DEC_DE;

   procedure DEC_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, DEC, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end DEC_E;

   procedure DEC_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, DEC, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end DEC_H;

   procedure DEC_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.HL := GB.CPU.Regs.HL - 1;
   end DEC_HL;

   procedure DEC_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, DEC, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end DEC_L;

   procedure DEC_SP (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.SP := GB.CPU.Regs.SP - 1;
   end DEC_SP;

   procedure DI (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.IFF := IE_DI;
   end DI;

   procedure EI (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.IFF := IE_EI;
   end EI;

   procedure HALT (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Halted := True;
   end HALT;

   procedure INC_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Inc_Dec(GB.CPU, INC, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end INC_off_HL;

   procedure INC_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, INC, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end INC_A;

   procedure INC_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, INC, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end INC_B;

   procedure INC_BC (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.BC := GB.CPU.Regs.BC + 1;
   end INC_BC;

   procedure INC_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, INC, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end INC_C;

   procedure INC_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, INC, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end INC_D;

   procedure INC_DE (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.DE := GB.CPU.Regs.DE + 1;
   end INC_DE;

   procedure INC_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, INC, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end INC_E;

   procedure INC_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, INC, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end INC_H;

   procedure INC_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.HL := GB.CPU.Regs.HL + 1;
   end INC_HL;

   procedure INC_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Inc_Dec(GB.CPU, INC, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end INC_L;

   procedure INC_SP (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.SP := GB.CPU.Regs.SP + 1;
   end INC_SP;

   procedure JP_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.PC := GB.CPU.Regs.HL;
   end JP_off_HL;

   procedure JP_off_nn (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.PC := Read_Word(GB, GB.CPU.PC);
   end JP_off_nn;

   procedure JP_C_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_C) then
       GB.CPU.Branch_Taken := True;
       GB.CPU.PC := Addr;
     end if;
   end JP_C_off_nn;

   procedure JP_NC_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_NC) then
       GB.CPU.Branch_Taken := True;
       GB.CPU.PC := Addr;
     end if;
   end JP_NC_off_nn;

   procedure JP_NZ_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_NZ) then
       GB.CPU.Branch_Taken := True;
       GB.CPU.PC := Addr;
     end if;
   end JP_NZ_off_nn;

   procedure JP_Z_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : constant Word := Read_Word(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 2;
     if Check_Condition(GB.CPU, C_Z) then
       GB.CPU.Branch_Taken := True;
       GB.CPU.PC := Addr;
     end if;
   end JP_Z_off_nn;

   procedure JR_off_PC_e (GB : in out Gade.GB.GB_Type) is
     Offset : constant Byte := Read_Byte(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 1;
     Add_Offset(GB.CPU, GB.CPU.PC, Offset, False);
   end JR_off_PC_e;

   procedure JR_C_off_PC_e (GB : in out Gade.GB.GB_Type) is
     Offset : constant Byte := Read_Byte(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 1;
     if Check_Condition(GB.CPU, C_C) then
       GB.CPU.Branch_Taken := True;
       Add_Offset(GB.CPU, GB.CPU.PC, Offset, False);
     end if;
   end JR_C_off_PC_e;

   procedure JR_NC_off_PC_e (GB : in out Gade.GB.GB_Type) is
     Offset : constant Byte := Read_Byte(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 1;
     if Check_Condition(GB.CPU, C_NC) then
       GB.CPU.Branch_Taken := True;
       Add_Offset(GB.CPU, GB.CPU.PC, Offset, False);
     end if;
   end JR_NC_off_PC_e;

   procedure JR_NZ_off_PC_e (GB : in out Gade.GB.GB_Type) is
     Offset : constant Byte := Read_Byte(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 1;
     if Check_Condition(GB.CPU, C_NZ) then
       GB.CPU.Branch_Taken := True;
       Add_Offset(GB.CPU, GB.CPU.PC, Offset, False);
     end if;
   end JR_NZ_off_PC_e;

   procedure JR_Z_off_PC_e (GB : in out Gade.GB.GB_Type) is
     Offset : constant Byte := Read_Byte(GB, GB.CPU.PC);
   begin
     GB.CPU.PC := GB.CPU.PC + 1;
     if Check_Condition(GB.CPU, C_Z) then
       GB.CPU.Branch_Taken := True;
       Add_Offset(GB.CPU, GB.CPU.PC, Offset, False);
     end if;
   end JR_Z_off_PC_e;

   procedure LD_off_BC_A (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.BC, GB.CPU.Regs.A);
   end LD_off_BC_A;

   procedure LD_off_C_A (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, 16#FF00# + Word(GB.CPU.Regs.C), GB.CPU.Regs.A);
   end LD_off_C_A;

   procedure LD_off_DE_A (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.DE, GB.CPU.Regs.A);
   end LD_off_DE_A;

   procedure LD_off_HL_A (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.HL, GB.CPU.Regs.A);
   end LD_off_HL_A;

   procedure LD_off_HL_B (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.HL, GB.CPU.Regs.B);
   end LD_off_HL_B;

   procedure LD_off_HL_C (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.HL, GB.CPU.Regs.C);
   end LD_off_HL_C;

   procedure LD_off_HL_D (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.HL, GB.CPU.Regs.D);
   end LD_off_HL_D;

   procedure LD_off_HL_E (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.HL, GB.CPU.Regs.E);
   end LD_off_HL_E;

   procedure LD_off_HL_H (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.HL, GB.CPU.Regs.H);
   end LD_off_HL_H;

   procedure LD_off_HL_L (GB : in out Gade.GB.GB_Type) is
   begin
      Write_Byte(GB, GB.CPU.Regs.HL, GB.CPU.Regs.L);
   end LD_off_HL_L;

   procedure LD_off_HL_n (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 1;
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end LD_off_HL_n;

   procedure LD_off_nn_A (GB : in out Gade.GB.GB_Type) is
     Addr : Word;
   begin
     Addr := Read_Word(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 2;
     Write_Byte(GB, Addr, GB.CPU.Regs.A);
   end LD_off_nn_A;

   procedure LD_off_nn_SP (GB : in out Gade.GB.GB_Type) is
     Addr : Word;
   begin
     Addr := Read_Word(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 2;
     Write_Word(GB, Addr, GB.CPU.Regs.SP);
   end LD_off_nn_SP;

   procedure LD_A_off_BC (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := Read_Byte(GB, GB.CPU.Regs.BC);
   end LD_A_off_BC;

   procedure LD_A_off_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := Read_Byte(GB, 16#FF00# + Word(GB.CPU.Regs.C));
   end LD_A_off_C;

   procedure LD_A_off_DE (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := Read_Byte(GB, GB.CPU.Regs.DE);
   end LD_A_off_DE;

   procedure LD_A_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := Read_Byte(GB, GB.CPU.Regs.HL);
   end LD_A_off_HL;

   procedure LD_A_off_nn (GB : in out Gade.GB.GB_Type) is
     Addr : Word;
   begin
     Addr := Read_Word(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 2;
     GB.CPU.Regs.A := Read_Byte(GB, Addr);
   end LD_A_off_nn;

   procedure LD_A_A (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := GB.CPU.Regs.A;
   end LD_A_A;

   procedure LD_A_B (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := GB.CPU.Regs.B;
   end LD_A_B;

   procedure LD_A_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := GB.CPU.Regs.C;
   end LD_A_C;

   procedure LD_A_D (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := GB.CPU.Regs.D;
   end LD_A_D;

   procedure LD_A_E (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := GB.CPU.Regs.E;
   end LD_A_E;

   procedure LD_A_H (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := GB.CPU.Regs.H;
   end LD_A_H;

   procedure LD_A_L (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := GB.CPU.Regs.L;
   end LD_A_L;

   procedure LD_A_n (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.A := Read_Byte(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 1;
   end LD_A_n;

   procedure LD_B_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := Read_Byte(GB, GB.CPU.Regs.HL);
   end LD_B_off_HL;

   procedure LD_B_A (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := GB.CPU.Regs.A;
   end LD_B_A;

   procedure LD_B_B (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := GB.CPU.Regs.B;
   end LD_B_B;

   procedure LD_B_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := GB.CPU.Regs.C;
   end LD_B_C;

   procedure LD_B_D (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := GB.CPU.Regs.D;
   end LD_B_D;

   procedure LD_B_E (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := GB.CPU.Regs.E;
   end LD_B_E;

   procedure LD_B_H (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := GB.CPU.Regs.H;
   end LD_B_H;

   procedure LD_B_L (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := GB.CPU.Regs.L;
   end LD_B_L;

   procedure LD_B_n (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.B := Read_Byte(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 1;
   end LD_B_n;

   procedure LD_BC_nn (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.BC := Read_Word(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 2;
   end LD_BC_nn;

   procedure LD_C_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := Read_Byte(GB, GB.CPU.Regs.HL);
   end LD_C_off_HL;

   procedure LD_C_A (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := GB.CPU.Regs.A;
   end LD_C_A;

   procedure LD_C_B (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := GB.CPU.Regs.B;
   end LD_C_B;

   procedure LD_C_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := GB.CPU.Regs.C;
   end LD_C_C;

   procedure LD_C_D (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := GB.CPU.Regs.D;
   end LD_C_D;

   procedure LD_C_E (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := GB.CPU.Regs.E;
   end LD_C_E;

   procedure LD_C_H (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := GB.CPU.Regs.H;
   end LD_C_H;

   procedure LD_C_L (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := GB.CPU.Regs.L;
   end LD_C_L;

   procedure LD_C_n (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.C := Read_Byte(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 1;
   end LD_C_n;

   procedure LD_D_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := Read_Byte(GB, GB.CPU.Regs.HL);
   end LD_D_off_HL;

   procedure LD_D_A (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := GB.CPU.Regs.A;
   end LD_D_A;

   procedure LD_D_B (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := GB.CPU.Regs.B;
   end LD_D_B;

   procedure LD_D_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := GB.CPU.Regs.C;
   end LD_D_C;

   procedure LD_D_D (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := GB.CPU.Regs.D;
   end LD_D_D;

   procedure LD_D_E (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := GB.CPU.Regs.E;
   end LD_D_E;

   procedure LD_D_H (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := GB.CPU.Regs.H;
   end LD_D_H;

   procedure LD_D_L (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := GB.CPU.Regs.L;
   end LD_D_L;

   procedure LD_D_n (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.D := Read_Byte(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 1;
   end LD_D_n;

   procedure LD_DE_nn (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.DE := Read_Word(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 2;
   end LD_DE_nn;

   procedure LD_E_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := Read_Byte(GB, GB.CPU.Regs.HL);
   end LD_E_off_HL;

   procedure LD_E_A (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := GB.CPU.Regs.A;
   end LD_E_A;

   procedure LD_E_B (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := GB.CPU.Regs.B;
   end LD_E_B;

   procedure LD_E_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := GB.CPU.Regs.C;
   end LD_E_C;

   procedure LD_E_D (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := GB.CPU.Regs.D;
   end LD_E_D;

   procedure LD_E_E (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := GB.CPU.Regs.E;
   end LD_E_E;

   procedure LD_E_H (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := GB.CPU.Regs.H;
   end LD_E_H;

   procedure LD_E_L (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := GB.CPU.Regs.L;
   end LD_E_L;

   procedure LD_E_n (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.E := Read_Byte(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 1;
   end LD_E_n;

   procedure LD_H_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := Read_Byte(GB, GB.CPU.Regs.HL);
   end LD_H_off_HL;

   procedure LD_H_A (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := GB.CPU.Regs.A;
   end LD_H_A;

   procedure LD_H_B (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := GB.CPU.Regs.B;
   end LD_H_B;

   procedure LD_H_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := GB.CPU.Regs.C;
   end LD_H_C;

   procedure LD_H_D (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := GB.CPU.Regs.D;
   end LD_H_D;

   procedure LD_H_E (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := GB.CPU.Regs.E;
   end LD_H_E;

   procedure LD_H_H (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := GB.CPU.Regs.H;
   end LD_H_H;

   procedure LD_H_L (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := GB.CPU.Regs.L;
   end LD_H_L;

   procedure LD_H_n (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.H := Read_Byte(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 1;
   end LD_H_n;

   procedure LD_HL_nn (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.HL := Read_Word(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 2;
   end LD_HL_nn;

   procedure LD_L_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := Read_Byte(GB, GB.CPU.Regs.HL);
   end LD_L_off_HL;

   procedure LD_L_A (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := GB.CPU.Regs.A;
   end LD_L_A;

   procedure LD_L_B (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := GB.CPU.Regs.B;
   end LD_L_B;

   procedure LD_L_C (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := GB.CPU.Regs.C;
   end LD_L_C;

   procedure LD_L_D (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := GB.CPU.Regs.D;
   end LD_L_D;

   procedure LD_L_E (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := GB.CPU.Regs.E;
   end LD_L_E;

   procedure LD_L_H (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := GB.CPU.Regs.H;
   end LD_L_H;

   procedure LD_L_L (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := GB.CPU.Regs.L;
   end LD_L_L;

   procedure LD_L_n (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.L := Read_Byte(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 1;
   end LD_L_n;

   procedure LD_SP_HL (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.SP := GB.CPU.Regs.HL;
   end LD_SP_HL;

   procedure LD_SP_nn (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Regs.SP := Read_Word(GB, GB.CPU.PC);
      GB.CPU.PC := GB.CPU.PC + 2;
   end LD_SP_nn;

   procedure LDD_off_HL_A (GB : in out Gade.GB.GB_Type) is
   begin
      LD_off_HL_A(GB);
      DEC_HL(GB);
   end LDD_off_HL_A;

   procedure LDD_A_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      LD_A_off_HL(GB);
      DEC_HL(GB);
   end LDD_A_off_HL;

   procedure LDH_off_n_A (GB : in out Gade.GB.GB_Type) is
     n    : Byte;
     Addr : Word;
   begin
     n := Read_Byte(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 1;
     Addr := 16#FF00# + Word(n);
     Write_Byte(GB, Addr, GB.CPU.Regs.A);
   end LDH_off_n_A;

   procedure LDH_A_off_n (GB : in out Gade.GB.GB_Type) is
     n    : Byte;
     Addr : Word;
   begin
     n := Read_Byte(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 1;
     Addr := 16#FF00# + Word(n);
     GB.CPU.Regs.A := Read_Byte(GB, Addr);
   end LDH_A_off_n;

   procedure LDHL_SP_n (GB : in out Gade.GB.GB_Type) is
     n    : Byte;
     Addr : Word;
   begin
     n := Read_Byte(GB, GB.CPU.PC);
     GB.CPU.PC := GB.CPU.PC + 1;
     Addr := GB.CPU.Regs.SP;
     Do_Add(GB.CPU, Addr, n);
     GB.CPU.Regs.HL := Addr;
   end LDHL_SP_n;

   procedure LDI_off_HL_A (GB : in out Gade.GB.GB_Type) is
   begin
      LD_off_HL_A(GB);
      INC_HL(GB);
   end LDI_off_HL_A;

   procedure LDI_A_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      LD_A_off_HL(GB);
      INC_HL(GB);
   end LDI_A_off_HL;

   procedure NOP (GB : in out Gade.GB.GB_Type) is
   begin
      null;
   end NOP;

   procedure OR_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, Read_Byte(GB, GB.CPU.Regs.HL));
   end OR_off_HL;

   procedure OR_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, GB.CPU.Regs.A);
   end OR_A;

   procedure OR_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, GB.CPU.Regs.B);
   end OR_B;

   procedure OR_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, GB.CPU.Regs.C);
   end OR_C;

   procedure OR_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, GB.CPU.Regs.D);
   end OR_D;

   procedure OR_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, GB.CPU.Regs.E);
   end OR_E;

   procedure OR_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, GB.CPU.Regs.H);
   end OR_H;

   procedure OR_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, GB.CPU.Regs.L);
   end OR_L;

   procedure OR_n (GB : in out Gade.GB.GB_Type) is
   begin
      Do_OR(GB.CPU, Read_Byte(GB, GB.CPU.PC));
      GB.CPU.PC := GB.CPU.PC + 1;
   end OR_n;

   procedure POP_AF (GB : in out Gade.GB.GB_Type) is
   begin
      Pop(GB, GB.CPU.Regs.AF);
      GB.CPU.Regs.AF := GB.CPU.Regs.AF and 16#FFF0#;
   end POP_AF;

   procedure POP_BC (GB : in out Gade.GB.GB_Type) is
   begin
      Pop(GB, GB.CPU.Regs.BC);
   end POP_BC;

   procedure POP_DE (GB : in out Gade.GB.GB_Type) is
   begin
      Pop(GB, GB.CPU.Regs.DE);
   end POP_DE;

   procedure POP_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Pop(GB, GB.CPU.Regs.HL);
   end POP_HL;

   procedure PUSH_AF (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.Regs.AF);
   end PUSH_AF;

   procedure PUSH_BC (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.Regs.BC);
   end PUSH_BC;

   procedure PUSH_DE (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.Regs.DE);
   end PUSH_DE;

   procedure PUSH_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.Regs.HL);
   end PUSH_HL;

   procedure RES_0_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 0, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_0_off_HL;

   procedure RES_0_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 0, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_0_A;

   procedure RES_0_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 0, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_0_B;

   procedure RES_0_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 0, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_0_C;

   procedure RES_0_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 0, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_0_D;

   procedure RES_0_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 0, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_0_E;

   procedure RES_0_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 0, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_0_H;

   procedure RES_0_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 0, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_0_L;

   procedure RES_1_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 1, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_1_off_HL;

   procedure RES_1_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 1, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_1_A;

   procedure RES_1_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 1, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_1_B;

   procedure RES_1_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 1, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_1_C;

   procedure RES_1_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 1, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_1_D;

   procedure RES_1_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 1, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_1_E;

   procedure RES_1_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 1, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_1_H;

   procedure RES_1_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 1, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_1_L;

   procedure RES_2_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 2, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_2_off_HL;

   procedure RES_2_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 2, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_2_A;

   procedure RES_2_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 2, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_2_B;

   procedure RES_2_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 2, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_2_C;

   procedure RES_2_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 2, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_2_D;

   procedure RES_2_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 2, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_2_E;

   procedure RES_2_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 2, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_2_H;

   procedure RES_2_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 2, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_2_L;

   procedure RES_3_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 3, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_3_off_HL;

   procedure RES_3_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 3, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_3_A;

   procedure RES_3_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 3, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_3_B;

   procedure RES_3_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 3, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_3_C;

   procedure RES_3_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 3, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_3_D;

   procedure RES_3_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 3, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_3_E;

   procedure RES_3_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 3, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_3_H;

   procedure RES_3_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 3, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_3_L;

   procedure RES_4_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 4, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_4_off_HL;

   procedure RES_4_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 4, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_4_A;

   procedure RES_4_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 4, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_4_B;

   procedure RES_4_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 4, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_4_C;

   procedure RES_4_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 4, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_4_D;

   procedure RES_4_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 4, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_4_E;

   procedure RES_4_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 4, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_4_H;

   procedure RES_4_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 4, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_4_L;

   procedure RES_5_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 5, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_5_off_HL;

   procedure RES_5_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 5, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_5_A;

   procedure RES_5_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 5, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_5_B;

   procedure RES_5_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 5, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_5_C;

   procedure RES_5_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 5, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_5_D;

   procedure RES_5_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 5, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_5_E;

   procedure RES_5_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 5, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_5_H;

   procedure RES_5_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 5, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_5_L;

   procedure RES_6_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 6, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_6_off_HL;

   procedure RES_6_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 6, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_6_A;

   procedure RES_6_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 6, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_6_B;

   procedure RES_6_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 6, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_6_C;

   procedure RES_6_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 6, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_6_D;

   procedure RES_6_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 6, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_6_E;

   procedure RES_6_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 6, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_6_H;

   procedure RES_6_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 6, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_6_L;

   procedure RES_7_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_RES, 7, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RES_7_off_HL;

   procedure RES_7_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 7, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end RES_7_A;

   procedure RES_7_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 7, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end RES_7_B;

   procedure RES_7_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 7, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end RES_7_C;

   procedure RES_7_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 7, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end RES_7_D;

   procedure RES_7_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 7, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end RES_7_E;

   procedure RES_7_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 7, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end RES_7_H;

   procedure RES_7_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_RES, 7, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end RES_7_L;

   procedure RET (GB : in out Gade.GB.GB_Type) is
   begin
      Pop(GB, GB.CPU.PC);
   end RET;

   procedure RET_C (GB : in out Gade.GB.GB_Type) is
   begin
      if Check_Condition(GB.CPU, C_C) then
        GB.CPU.Branch_Taken := True;
        Pop(GB, GB.CPU.PC);
      end if;
   end RET_C;

   procedure RET_NC (GB : in out Gade.GB.GB_Type) is
   begin
      if Check_Condition(GB.CPU, C_NC) then
        GB.CPU.Branch_Taken := True;
        Pop(GB, GB.CPU.PC);
      end if;
   end RET_NC;

   procedure RET_NZ (GB : in out Gade.GB.GB_Type) is
   begin
      if Check_Condition(GB.CPU, C_NZ) then
        GB.CPU.Branch_Taken := True;
        Pop(GB, GB.CPU.PC);
      end if;
   end RET_NZ;

   procedure RET_Z (GB : in out Gade.GB.GB_Type) is
   begin
      if Check_Condition(GB.CPU, C_Z) then
        GB.CPU.Branch_Taken := True;
        Pop(GB, GB.CPU.PC);
      end if;
   end RET_Z;

   procedure RETI (GB : in out Gade.GB.GB_Type) is
   begin
      Pop(GB, GB.CPU.PC);
      EI(GB);
   end RETI;

   procedure RL_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_RL(GB.CPU, True, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RL_off_HL;

   procedure RL_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, True, GB.CPU.Regs.A);
   end RL_A;

   procedure RL_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, True, GB.CPU.Regs.B);
   end RL_B;

   procedure RL_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, True, GB.CPU.Regs.C);
   end RL_C;

   procedure RL_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, True, GB.CPU.Regs.D);
   end RL_D;

   procedure RL_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, True, GB.CPU.Regs.E);
   end RL_E;

   procedure RL_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, True, GB.CPU.Regs.H);
   end RL_H;

   procedure RL_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, True, GB.CPU.Regs.L);
   end RL_L;

   procedure RLA (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RL(GB.CPU, False, GB.CPU.Regs.A);
   end RLA;

   procedure RLC_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_RLC(GB.CPU, True, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RLC_off_HL;

   procedure RLC_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, True, GB.CPU.Regs.A);
   end RLC_A;

   procedure RLC_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, True, GB.CPU.Regs.B);
   end RLC_B;

   procedure RLC_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, True, GB.CPU.Regs.C);
   end RLC_C;

   procedure RLC_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, True, GB.CPU.Regs.D);
   end RLC_D;

   procedure RLC_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, True, GB.CPU.Regs.E);
   end RLC_E;

   procedure RLC_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, True, GB.CPU.Regs.H);
   end RLC_H;

   procedure RLC_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, True, GB.CPU.Regs.L);
   end RLC_L;

   procedure RLCA (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RLC(GB.CPU, False, GB.CPU.Regs.A);
   end RLCA;

   procedure RR_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_RR(GB.CPU, True, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RR_off_HL;

   procedure RR_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, True, GB.CPU.Regs.A);
   end RR_A;

   procedure RR_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, True, GB.CPU.Regs.B);
   end RR_B;

   procedure RR_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, True, GB.CPU.Regs.C);
   end RR_C;

   procedure RR_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, True, GB.CPU.Regs.D);
   end RR_D;

   procedure RR_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, True, GB.CPU.Regs.E);
   end RR_E;

   procedure RR_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, True, GB.CPU.Regs.H);
   end RR_H;

   procedure RR_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, True, GB.CPU.Regs.L);
   end RR_L;

   procedure RRA (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RR(GB.CPU, False, GB.CPU.Regs.A);
   end RRA;

   procedure RRC_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_RRC(GB.CPU, True, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end RRC_off_HL;

   procedure RRC_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, True, GB.CPU.Regs.A);
   end RRC_A;

   procedure RRC_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, True, GB.CPU.Regs.B);
   end RRC_B;

   procedure RRC_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, True, GB.CPU.Regs.C);
   end RRC_C;

   procedure RRC_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, True, GB.CPU.Regs.D);
   end RRC_D;

   procedure RRC_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, True, GB.CPU.Regs.E);
   end RRC_E;

   procedure RRC_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, True, GB.CPU.Regs.H);
   end RRC_H;

   procedure RRC_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, True, GB.CPU.Regs.L);
   end RRC_L;

   procedure RRCA (GB : in out Gade.GB.GB_Type) is
   begin
      Do_RRC(GB.CPU, False, GB.CPU.Regs.A);
   end RRCA;

   procedure RST_0H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#0#;
   end RST_0H;

   procedure RST_10H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#10#;
   end RST_10H;

   procedure RST_18H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#18#;
   end RST_18H;

   procedure RST_20H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#20#;
   end RST_20H;

   procedure RST_28H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#28#;
   end RST_28H;

   procedure RST_30H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#30#;
   end RST_30H;

   procedure RST_38H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#38#;
   end RST_38H;

   procedure RST_8H (GB : in out Gade.GB.GB_Type) is
   begin
      Push(GB, GB.CPU.PC);
      GB.CPU.PC := 16#8#;
   end RST_8H;

   procedure SBC_A_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, Read_Byte(GB, GB.CPU.Regs.HL), GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_off_HL;

   procedure SBC_A_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.A, GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_A;

   procedure SBC_A_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.B, GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_B;

   procedure SBC_A_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.C, GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_C;

   procedure SBC_A_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.D, GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_D;

   procedure SBC_A_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.E, GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_E;

   procedure SBC_A_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.H, GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_H;

   procedure SBC_A_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.L, GB.CPU.Regs.A, SBC_Carry);
   end SBC_A_L;

   procedure SBC_A_n (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, Read_Byte(GB, GB.CPU.PC), GB.CPU.Regs.A, SBC_Carry);
      GB.CPU.PC := GB.CPU.PC + 1;
   end SBC_A_n;

   procedure SCF (GB : in out Gade.GB.GB_Type) is
   begin
      Reset(GB.CPU.Regs.F.N);
      Reset(GB.CPU.Regs.F.H);
      Set(GB.CPU.Regs.F.C);
   end SCF;

   procedure SET_0_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 0, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_0_off_HL;

   procedure SET_0_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 0, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_0_A;

   procedure SET_0_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 0, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_0_B;

   procedure SET_0_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 0, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_0_C;

   procedure SET_0_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 0, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_0_D;

   procedure SET_0_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 0, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_0_E;

   procedure SET_0_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 0, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_0_H;

   procedure SET_0_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 0, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_0_L;

   procedure SET_1_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 1, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_1_off_HL;

   procedure SET_1_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 1, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_1_A;

   procedure SET_1_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 1, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_1_B;

   procedure SET_1_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 1, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_1_C;

   procedure SET_1_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 1, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_1_D;

   procedure SET_1_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 1, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_1_E;

   procedure SET_1_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 1, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_1_H;

   procedure SET_1_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 1, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_1_L;

   procedure SET_2_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 2, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_2_off_HL;

   procedure SET_2_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 2, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_2_A;

   procedure SET_2_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 2, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_2_B;

   procedure SET_2_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 2, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_2_C;

   procedure SET_2_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 2, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_2_D;

   procedure SET_2_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 2, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_2_E;

   procedure SET_2_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 2, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_2_H;

   procedure SET_2_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 2, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_2_L;

   procedure SET_3_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 3, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_3_off_HL;

   procedure SET_3_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 3, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_3_A;

   procedure SET_3_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 3, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_3_B;

   procedure SET_3_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 3, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_3_C;

   procedure SET_3_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 3, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_3_D;

   procedure SET_3_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 3, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_3_E;

   procedure SET_3_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 3, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_3_H;

   procedure SET_3_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 3, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_3_L;

   procedure SET_4_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 4, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_4_off_HL;

   procedure SET_4_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 4, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_4_A;

   procedure SET_4_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 4, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_4_B;

   procedure SET_4_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 4, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_4_C;

   procedure SET_4_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 4, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_4_D;

   procedure SET_4_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 4, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_4_E;

   procedure SET_4_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 4, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_4_H;

   procedure SET_4_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 4, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_4_L;

   procedure SET_5_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 5, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_5_off_HL;

   procedure SET_5_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 5, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_5_A;

   procedure SET_5_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 5, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_5_B;

   procedure SET_5_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 5, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_5_C;

   procedure SET_5_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 5, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_5_D;

   procedure SET_5_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 5, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_5_E;

   procedure SET_5_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 5, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_5_H;

   procedure SET_5_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 5, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_5_L;

   procedure SET_6_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 6, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_6_off_HL;

   procedure SET_6_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 6, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_6_A;

   procedure SET_6_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 6, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_6_B;

   procedure SET_6_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 6, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_6_C;

   procedure SET_6_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 6, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_6_D;

   procedure SET_6_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 6, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_6_E;

   procedure SET_6_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 6, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_6_H;

   procedure SET_6_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 6, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_6_L;

   procedure SET_7_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Set_Bit(GB.CPU, SR_SET, 7, Value, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SET_7_off_HL;

   procedure SET_7_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 7, GB.CPU.Regs.A, GB.CPU.Regs.A);
   end SET_7_A;

   procedure SET_7_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 7, GB.CPU.Regs.B, GB.CPU.Regs.B);
   end SET_7_B;

   procedure SET_7_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 7, GB.CPU.Regs.C, GB.CPU.Regs.C);
   end SET_7_C;

   procedure SET_7_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 7, GB.CPU.Regs.D, GB.CPU.Regs.D);
   end SET_7_D;

   procedure SET_7_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 7, GB.CPU.Regs.E, GB.CPU.Regs.E);
   end SET_7_E;

   procedure SET_7_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 7, GB.CPU.Regs.H, GB.CPU.Regs.H);
   end SET_7_H;

   procedure SET_7_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Set_Bit(GB.CPU, SR_SET, 7, GB.CPU.Regs.L, GB.CPU.Regs.L);
   end SET_7_L;

   procedure SLA_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_SL(GB.CPU, S_A, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SLA_off_HL;

   procedure SLA_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SL(GB.CPU, S_A, GB.CPU.Regs.A);
   end SLA_A;

   procedure SLA_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SL(GB.CPU, S_A, GB.CPU.Regs.B);
   end SLA_B;

   procedure SLA_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SL(GB.CPU, S_A, GB.CPU.Regs.C);
   end SLA_C;

   procedure SLA_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SL(GB.CPU, S_A, GB.CPU.Regs.D);
   end SLA_D;

   procedure SLA_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SL(GB.CPU, S_A, GB.CPU.Regs.E);
   end SLA_E;

   procedure SLA_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SL(GB.CPU, S_A, GB.CPU.Regs.H);
   end SLA_H;

   procedure SLA_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SL(GB.CPU, S_A, GB.CPU.Regs.L);
   end SLA_L;

   procedure SWAP_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_Swap(GB.CPU, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SWAP_off_HL;

   procedure SWAP_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Swap(GB.CPU, GB.CPU.Regs.A);
   end SWAP_A;

   procedure SWAP_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Swap(GB.CPU, GB.CPU.Regs.B);
   end SWAP_B;

   procedure SWAP_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Swap(GB.CPU, GB.CPU.Regs.C);
   end SWAP_C;

   procedure SWAP_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Swap(GB.CPU, GB.CPU.Regs.D);
   end SWAP_D;

   procedure SWAP_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Swap(GB.CPU, GB.CPU.Regs.E);
   end SWAP_E;

   procedure SWAP_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Swap(GB.CPU, GB.CPU.Regs.H);
   end SWAP_H;

   procedure SWAP_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Swap(GB.CPU, GB.CPU.Regs.L);
   end SWAP_L;

   procedure SRA_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_SR(GB.CPU, S_A, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SRA_off_HL;

   procedure SRA_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_A, GB.CPU.Regs.A);
   end SRA_A;

   procedure SRA_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_A, GB.CPU.Regs.B);
   end SRA_B;

   procedure SRA_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_A, GB.CPU.Regs.C);
   end SRA_C;

   procedure SRA_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_A, GB.CPU.Regs.D);
   end SRA_D;

   procedure SRA_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_A, GB.CPU.Regs.E);
   end SRA_E;

   procedure SRA_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_A, GB.CPU.Regs.H);
   end SRA_H;

   procedure SRA_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_A, GB.CPU.Regs.L);
   end SRA_L;

   procedure SRL_off_HL (GB : in out Gade.GB.GB_Type) is
     Value : Byte;
   begin
     Value := Read_Byte(GB, GB.CPU.Regs.HL);
     Do_SR(GB.CPU, S_L, Value);
     Write_Byte(GB, GB.CPU.Regs.HL, Value);
   end SRL_off_HL;

   procedure SRL_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_L, GB.CPU.Regs.A);
   end SRL_A;

   procedure SRL_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_L, GB.CPU.Regs.B);
   end SRL_B;

   procedure SRL_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_L, GB.CPU.Regs.C);
   end SRL_C;

   procedure SRL_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_L, GB.CPU.Regs.D);
   end SRL_D;

   procedure SRL_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_L, GB.CPU.Regs.E);
   end SRL_E;

   procedure SRL_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_L, GB.CPU.Regs.H);
   end SRL_H;

   procedure SRL_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_SR(GB.CPU, S_L, GB.CPU.Regs.L);
   end SRL_L;

   procedure STOP (GB : in out Gade.GB.GB_Type) is
   begin
      GB.CPU.Halted := True;
   end STOP;

   procedure SUB_A_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, Read_Byte(GB, GB.CPU.Regs.HL), GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_off_HL;

   procedure SUB_A_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.A, GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_A;

   procedure SUB_A_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.B, GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_B;

   procedure SUB_A_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.C, GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_C;

   procedure SUB_A_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.D, GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_D;

   procedure SUB_A_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.E, GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_E;

   procedure SUB_A_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.H, GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_H;

   procedure SUB_A_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, GB.CPU.Regs.L, GB.CPU.Regs.A, SUB_Carry);
   end SUB_A_L;

   procedure SUB_A_n (GB : in out Gade.GB.GB_Type) is
   begin
      Do_Sub(GB.CPU, Read_Byte(GB, GB.CPU.PC), GB.CPU.Regs.A, SUB_Carry);
      GB.CPU.PC := GB.CPU.PC + 1;
   end SUB_A_n;

   procedure XOR_off_HL (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, Read_Byte(GB, GB.CPU.Regs.HL));
   end XOR_off_HL;

   procedure XOR_A (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, GB.CPU.Regs.A);
   end XOR_A;

   procedure XOR_B (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, GB.CPU.Regs.B);
   end XOR_B;

   procedure XOR_C (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, GB.CPU.Regs.C);
   end XOR_C;

   procedure XOR_D (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, GB.CPU.Regs.D);
   end XOR_D;

   procedure XOR_E (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, GB.CPU.Regs.E);
   end XOR_E;

   procedure XOR_H (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, GB.CPU.Regs.H);
   end XOR_H;

   procedure XOR_L (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, GB.CPU.Regs.L);
   end XOR_L;

   procedure XOR_n (GB : in out Gade.GB.GB_Type) is
   begin
      Do_XOR(GB.CPU, Read_Byte(GB, GB.CPU.PC));
      GB.CPU.PC := GB.CPU.PC + 1;
   end XOR_n;

end Gade.Dev.CPU.Instructions;
