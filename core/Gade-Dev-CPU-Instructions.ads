limited with Gade.GB;

package Gade.Dev.CPU.Instructions is

   ADC_A_off_HL_Name : aliased constant String := "ADC A,(HL)";
   procedure ADC_A_off_HL (GB : in out Gade.GB.GB_Type);

   ADC_A_A_Name : aliased constant String := "ADC A,A";
   procedure ADC_A_A (GB : in out Gade.GB.GB_Type);

   ADC_A_B_Name : aliased constant String := "ADC A,B";
   procedure ADC_A_B (GB : in out Gade.GB.GB_Type);

   ADC_A_C_Name : aliased constant String := "ADC A,C";
   procedure ADC_A_C (GB : in out Gade.GB.GB_Type);

   ADC_A_D_Name : aliased constant String := "ADC A,D";
   procedure ADC_A_D (GB : in out Gade.GB.GB_Type);

   ADC_A_E_Name : aliased constant String := "ADC A,E";
   procedure ADC_A_E (GB : in out Gade.GB.GB_Type);

   ADC_A_H_Name : aliased constant String := "ADC A,H";
   procedure ADC_A_H (GB : in out Gade.GB.GB_Type);

   ADC_A_L_Name : aliased constant String := "ADC A,L";
   procedure ADC_A_L (GB : in out Gade.GB.GB_Type);

   ADC_A_n_Name : aliased constant String := "ADC A,n";
   procedure ADC_A_n (GB : in out Gade.GB.GB_Type);

   ADD_A_off_HL_Name : aliased constant String := "ADD A,(HL)";
   procedure ADD_A_off_HL (GB : in out Gade.GB.GB_Type);

   ADD_A_A_Name : aliased constant String := "ADD A,A";
   procedure ADD_A_A (GB : in out Gade.GB.GB_Type);

   ADD_A_B_Name : aliased constant String := "ADD A,B";
   procedure ADD_A_B (GB : in out Gade.GB.GB_Type);

   ADD_A_C_Name : aliased constant String := "ADD A,C";
   procedure ADD_A_C (GB : in out Gade.GB.GB_Type);

   ADD_A_D_Name : aliased constant String := "ADD A,D";
   procedure ADD_A_D (GB : in out Gade.GB.GB_Type);

   ADD_A_E_Name : aliased constant String := "ADD A,E";
   procedure ADD_A_E (GB : in out Gade.GB.GB_Type);

   ADD_A_H_Name : aliased constant String := "ADD A,H";
   procedure ADD_A_H (GB : in out Gade.GB.GB_Type);

   ADD_A_L_Name : aliased constant String := "ADD A,L";
   procedure ADD_A_L (GB : in out Gade.GB.GB_Type);

   ADD_A_n_Name : aliased constant String := "ADD A,n";
   procedure ADD_A_n (GB : in out Gade.GB.GB_Type);

   ADD_HL_BC_Name : aliased constant String := "ADD HL,BC";
   procedure ADD_HL_BC (GB : in out Gade.GB.GB_Type);

   ADD_HL_DE_Name : aliased constant String := "ADD HL,DE";
   procedure ADD_HL_DE (GB : in out Gade.GB.GB_Type);

   ADD_HL_HL_Name : aliased constant String := "ADD HL,HL";
   procedure ADD_HL_HL (GB : in out Gade.GB.GB_Type);

   ADD_HL_SP_Name : aliased constant String := "ADD HL,SP";
   procedure ADD_HL_SP (GB : in out Gade.GB.GB_Type);

   ADD_SP_n_Name : aliased constant String := "ADD SP,n";
   procedure ADD_SP_n (GB : in out Gade.GB.GB_Type);

   AND_off_HL_Name : aliased constant String := "AND (HL)";
   procedure AND_off_HL (GB : in out Gade.GB.GB_Type);

   AND_A_Name : aliased constant String := "AND A";
   procedure AND_A (GB : in out Gade.GB.GB_Type);

   AND_B_Name : aliased constant String := "AND B";
   procedure AND_B (GB : in out Gade.GB.GB_Type);

   AND_C_Name : aliased constant String := "AND C";
   procedure AND_C (GB : in out Gade.GB.GB_Type);

   AND_D_Name : aliased constant String := "AND D";
   procedure AND_D (GB : in out Gade.GB.GB_Type);

   AND_E_Name : aliased constant String := "AND E";
   procedure AND_E (GB : in out Gade.GB.GB_Type);

   AND_H_Name : aliased constant String := "AND H";
   procedure AND_H (GB : in out Gade.GB.GB_Type);

   AND_L_Name : aliased constant String := "AND L";
   procedure AND_L (GB : in out Gade.GB.GB_Type);

   AND_n_Name : aliased constant String := "AND n";
   procedure AND_n (GB : in out Gade.GB.GB_Type);

   BIT_0_off_HL_Name : aliased constant String := "BIT 0,(HL)";
   procedure BIT_0_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_0_A_Name : aliased constant String := "BIT 0,A";
   procedure BIT_0_A (GB : in out Gade.GB.GB_Type);

   BIT_0_B_Name : aliased constant String := "BIT 0,B";
   procedure BIT_0_B (GB : in out Gade.GB.GB_Type);

   BIT_0_C_Name : aliased constant String := "BIT 0,C";
   procedure BIT_0_C (GB : in out Gade.GB.GB_Type);

   BIT_0_D_Name : aliased constant String := "BIT 0,D";
   procedure BIT_0_D (GB : in out Gade.GB.GB_Type);

   BIT_0_E_Name : aliased constant String := "BIT 0,E";
   procedure BIT_0_E (GB : in out Gade.GB.GB_Type);

   BIT_0_H_Name : aliased constant String := "BIT 0,H";
   procedure BIT_0_H (GB : in out Gade.GB.GB_Type);

   BIT_0_L_Name : aliased constant String := "BIT 0,L";
   procedure BIT_0_L (GB : in out Gade.GB.GB_Type);

   BIT_1_off_HL_Name : aliased constant String := "BIT 1,(HL)";
   procedure BIT_1_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_1_A_Name : aliased constant String := "BIT 1,A";
   procedure BIT_1_A (GB : in out Gade.GB.GB_Type);

   BIT_1_B_Name : aliased constant String := "BIT 1,B";
   procedure BIT_1_B (GB : in out Gade.GB.GB_Type);

   BIT_1_C_Name : aliased constant String := "BIT 1,C";
   procedure BIT_1_C (GB : in out Gade.GB.GB_Type);

   BIT_1_D_Name : aliased constant String := "BIT 1,D";
   procedure BIT_1_D (GB : in out Gade.GB.GB_Type);

   BIT_1_E_Name : aliased constant String := "BIT 1,E";
   procedure BIT_1_E (GB : in out Gade.GB.GB_Type);

   BIT_1_H_Name : aliased constant String := "BIT 1,H";
   procedure BIT_1_H (GB : in out Gade.GB.GB_Type);

   BIT_1_L_Name : aliased constant String := "BIT 1,L";
   procedure BIT_1_L (GB : in out Gade.GB.GB_Type);

   BIT_2_off_HL_Name : aliased constant String := "BIT 2,(HL)";
   procedure BIT_2_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_2_A_Name : aliased constant String := "BIT 2,A";
   procedure BIT_2_A (GB : in out Gade.GB.GB_Type);

   BIT_2_B_Name : aliased constant String := "BIT 2,B";
   procedure BIT_2_B (GB : in out Gade.GB.GB_Type);

   BIT_2_C_Name : aliased constant String := "BIT 2,C";
   procedure BIT_2_C (GB : in out Gade.GB.GB_Type);

   BIT_2_D_Name : aliased constant String := "BIT 2,D";
   procedure BIT_2_D (GB : in out Gade.GB.GB_Type);

   BIT_2_E_Name : aliased constant String := "BIT 2,E";
   procedure BIT_2_E (GB : in out Gade.GB.GB_Type);

   BIT_2_H_Name : aliased constant String := "BIT 2,H";
   procedure BIT_2_H (GB : in out Gade.GB.GB_Type);

   BIT_2_L_Name : aliased constant String := "BIT 2,L";
   procedure BIT_2_L (GB : in out Gade.GB.GB_Type);

   BIT_3_off_HL_Name : aliased constant String := "BIT 3,(HL)";
   procedure BIT_3_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_3_A_Name : aliased constant String := "BIT 3,A";
   procedure BIT_3_A (GB : in out Gade.GB.GB_Type);

   BIT_3_B_Name : aliased constant String := "BIT 3,B";
   procedure BIT_3_B (GB : in out Gade.GB.GB_Type);

   BIT_3_C_Name : aliased constant String := "BIT 3,C";
   procedure BIT_3_C (GB : in out Gade.GB.GB_Type);

   BIT_3_D_Name : aliased constant String := "BIT 3,D";
   procedure BIT_3_D (GB : in out Gade.GB.GB_Type);

   BIT_3_E_Name : aliased constant String := "BIT 3,E";
   procedure BIT_3_E (GB : in out Gade.GB.GB_Type);

   BIT_3_H_Name : aliased constant String := "BIT 3,H";
   procedure BIT_3_H (GB : in out Gade.GB.GB_Type);

   BIT_3_L_Name : aliased constant String := "BIT 3,L";
   procedure BIT_3_L (GB : in out Gade.GB.GB_Type);

   BIT_4_off_HL_Name : aliased constant String := "BIT 4,(HL)";
   procedure BIT_4_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_4_A_Name : aliased constant String := "BIT 4,A";
   procedure BIT_4_A (GB : in out Gade.GB.GB_Type);

   BIT_4_B_Name : aliased constant String := "BIT 4,B";
   procedure BIT_4_B (GB : in out Gade.GB.GB_Type);

   BIT_4_C_Name : aliased constant String := "BIT 4,C";
   procedure BIT_4_C (GB : in out Gade.GB.GB_Type);

   BIT_4_D_Name : aliased constant String := "BIT 4,D";
   procedure BIT_4_D (GB : in out Gade.GB.GB_Type);

   BIT_4_E_Name : aliased constant String := "BIT 4,E";
   procedure BIT_4_E (GB : in out Gade.GB.GB_Type);

   BIT_4_H_Name : aliased constant String := "BIT 4,H";
   procedure BIT_4_H (GB : in out Gade.GB.GB_Type);

   BIT_4_L_Name : aliased constant String := "BIT 4,L";
   procedure BIT_4_L (GB : in out Gade.GB.GB_Type);

   BIT_5_off_HL_Name : aliased constant String := "BIT 5,(HL)";
   procedure BIT_5_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_5_A_Name : aliased constant String := "BIT 5,A";
   procedure BIT_5_A (GB : in out Gade.GB.GB_Type);

   BIT_5_B_Name : aliased constant String := "BIT 5,B";
   procedure BIT_5_B (GB : in out Gade.GB.GB_Type);

   BIT_5_C_Name : aliased constant String := "BIT 5,C";
   procedure BIT_5_C (GB : in out Gade.GB.GB_Type);

   BIT_5_D_Name : aliased constant String := "BIT 5,D";
   procedure BIT_5_D (GB : in out Gade.GB.GB_Type);

   BIT_5_E_Name : aliased constant String := "BIT 5,E";
   procedure BIT_5_E (GB : in out Gade.GB.GB_Type);

   BIT_5_H_Name : aliased constant String := "BIT 5,H";
   procedure BIT_5_H (GB : in out Gade.GB.GB_Type);

   BIT_5_L_Name : aliased constant String := "BIT 5,L";
   procedure BIT_5_L (GB : in out Gade.GB.GB_Type);

   BIT_6_off_HL_Name : aliased constant String := "BIT 6,(HL)";
   procedure BIT_6_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_6_A_Name : aliased constant String := "BIT 6,A";
   procedure BIT_6_A (GB : in out Gade.GB.GB_Type);

   BIT_6_B_Name : aliased constant String := "BIT 6,B";
   procedure BIT_6_B (GB : in out Gade.GB.GB_Type);

   BIT_6_C_Name : aliased constant String := "BIT 6,C";
   procedure BIT_6_C (GB : in out Gade.GB.GB_Type);

   BIT_6_D_Name : aliased constant String := "BIT 6,D";
   procedure BIT_6_D (GB : in out Gade.GB.GB_Type);

   BIT_6_E_Name : aliased constant String := "BIT 6,E";
   procedure BIT_6_E (GB : in out Gade.GB.GB_Type);

   BIT_6_H_Name : aliased constant String := "BIT 6,H";
   procedure BIT_6_H (GB : in out Gade.GB.GB_Type);

   BIT_6_L_Name : aliased constant String := "BIT 6,L";
   procedure BIT_6_L (GB : in out Gade.GB.GB_Type);

   BIT_7_off_HL_Name : aliased constant String := "BIT 7,(HL)";
   procedure BIT_7_off_HL (GB : in out Gade.GB.GB_Type);

   BIT_7_A_Name : aliased constant String := "BIT 7,A";
   procedure BIT_7_A (GB : in out Gade.GB.GB_Type);

   BIT_7_B_Name : aliased constant String := "BIT 7,B";
   procedure BIT_7_B (GB : in out Gade.GB.GB_Type);

   BIT_7_C_Name : aliased constant String := "BIT 7,C";
   procedure BIT_7_C (GB : in out Gade.GB.GB_Type);

   BIT_7_D_Name : aliased constant String := "BIT 7,D";
   procedure BIT_7_D (GB : in out Gade.GB.GB_Type);

   BIT_7_E_Name : aliased constant String := "BIT 7,E";
   procedure BIT_7_E (GB : in out Gade.GB.GB_Type);

   BIT_7_H_Name : aliased constant String := "BIT 7,H";
   procedure BIT_7_H (GB : in out Gade.GB.GB_Type);

   BIT_7_L_Name : aliased constant String := "BIT 7,L";
   procedure BIT_7_L (GB : in out Gade.GB.GB_Type);

   CALL_off_nn_Name : aliased constant String := "CALL (nn)";
   procedure CALL_off_nn (GB : in out Gade.GB.GB_Type);

   CALL_C_off_nn_Name : aliased constant String := "CALL C,(nn)";
   procedure CALL_C_off_nn (GB : in out Gade.GB.GB_Type);

   CALL_NC_off_nn_Name : aliased constant String := "CALL NC,(nn)";
   procedure CALL_NC_off_nn (GB : in out Gade.GB.GB_Type);

   CALL_NZ_off_nn_Name : aliased constant String := "CALL NZ,(nn)";
   procedure CALL_NZ_off_nn (GB : in out Gade.GB.GB_Type);

   CALL_Z_off_nn_Name : aliased constant String := "CALL Z,(nn)";
   procedure CALL_Z_off_nn (GB : in out Gade.GB.GB_Type);

   CCF_Name : aliased constant String := "CCF";
   procedure CCF (GB : in out Gade.GB.GB_Type);

   CP_off_HL_Name : aliased constant String := "CP (HL)";
   procedure CP_off_HL (GB : in out Gade.GB.GB_Type);

   CP_A_Name : aliased constant String := "CP A";
   procedure CP_A (GB : in out Gade.GB.GB_Type);

   CP_B_Name : aliased constant String := "CP B";
   procedure CP_B (GB : in out Gade.GB.GB_Type);

   CP_C_Name : aliased constant String := "CP C";
   procedure CP_C (GB : in out Gade.GB.GB_Type);

   CP_D_Name : aliased constant String := "CP D";
   procedure CP_D (GB : in out Gade.GB.GB_Type);

   CP_E_Name : aliased constant String := "CP E";
   procedure CP_E (GB : in out Gade.GB.GB_Type);

   CP_H_Name : aliased constant String := "CP H";
   procedure CP_H (GB : in out Gade.GB.GB_Type);

   CP_L_Name : aliased constant String := "CP L";
   procedure CP_L (GB : in out Gade.GB.GB_Type);

   CP_n_Name : aliased constant String := "CP n";
   procedure CP_n (GB : in out Gade.GB.GB_Type);

   CPL_Name : aliased constant String := "CPL";
   procedure CPL (GB : in out Gade.GB.GB_Type);

   DAA_Name : aliased constant String := "DAA";
   procedure DAA (GB : in out Gade.GB.GB_Type);

   DEC_off_HL_Name : aliased constant String := "DEC (HL)";
   procedure DEC_off_HL (GB : in out Gade.GB.GB_Type);

   DEC_A_Name : aliased constant String := "DEC A";
   procedure DEC_A (GB : in out Gade.GB.GB_Type);

   DEC_B_Name : aliased constant String := "DEC B";
   procedure DEC_B (GB : in out Gade.GB.GB_Type);

   DEC_BC_Name : aliased constant String := "DEC BC";
   procedure DEC_BC (GB : in out Gade.GB.GB_Type);

   DEC_C_Name : aliased constant String := "DEC C";
   procedure DEC_C (GB : in out Gade.GB.GB_Type);

   DEC_D_Name : aliased constant String := "DEC D";
   procedure DEC_D (GB : in out Gade.GB.GB_Type);

   DEC_DE_Name : aliased constant String := "DEC DE";
   procedure DEC_DE (GB : in out Gade.GB.GB_Type);

   DEC_E_Name : aliased constant String := "DEC E";
   procedure DEC_E (GB : in out Gade.GB.GB_Type);

   DEC_H_Name : aliased constant String := "DEC H";
   procedure DEC_H (GB : in out Gade.GB.GB_Type);

   DEC_HL_Name : aliased constant String := "DEC HL";
   procedure DEC_HL (GB : in out Gade.GB.GB_Type);

   DEC_L_Name : aliased constant String := "DEC L";
   procedure DEC_L (GB : in out Gade.GB.GB_Type);

   DEC_SP_Name : aliased constant String := "DEC SP";
   procedure DEC_SP (GB : in out Gade.GB.GB_Type);

   DI_Name : aliased constant String := "DI";
   procedure DI (GB : in out Gade.GB.GB_Type);

   EI_Name : aliased constant String := "EI";
   procedure EI (GB : in out Gade.GB.GB_Type);

   HALT_Name : aliased constant String := "HALT";
   procedure HALT (GB : in out Gade.GB.GB_Type);

   INC_off_HL_Name : aliased constant String := "INC (HL)";
   procedure INC_off_HL (GB : in out Gade.GB.GB_Type);

   INC_A_Name : aliased constant String := "INC A";
   procedure INC_A (GB : in out Gade.GB.GB_Type);

   INC_B_Name : aliased constant String := "INC B";
   procedure INC_B (GB : in out Gade.GB.GB_Type);

   INC_BC_Name : aliased constant String := "INC BC";
   procedure INC_BC (GB : in out Gade.GB.GB_Type);

   INC_C_Name : aliased constant String := "INC C";
   procedure INC_C (GB : in out Gade.GB.GB_Type);

   INC_D_Name : aliased constant String := "INC D";
   procedure INC_D (GB : in out Gade.GB.GB_Type);

   INC_DE_Name : aliased constant String := "INC DE";
   procedure INC_DE (GB : in out Gade.GB.GB_Type);

   INC_E_Name : aliased constant String := "INC E";
   procedure INC_E (GB : in out Gade.GB.GB_Type);

   INC_H_Name : aliased constant String := "INC H";
   procedure INC_H (GB : in out Gade.GB.GB_Type);

   INC_HL_Name : aliased constant String := "INC HL";
   procedure INC_HL (GB : in out Gade.GB.GB_Type);

   INC_L_Name : aliased constant String := "INC L";
   procedure INC_L (GB : in out Gade.GB.GB_Type);

   INC_SP_Name : aliased constant String := "INC SP";
   procedure INC_SP (GB : in out Gade.GB.GB_Type);

   JP_off_HL_Name : aliased constant String := "JP (HL)";
   procedure JP_off_HL (GB : in out Gade.GB.GB_Type);

   JP_off_nn_Name : aliased constant String := "JP (nn)";
   procedure JP_off_nn (GB : in out Gade.GB.GB_Type);

   JP_C_off_nn_Name : aliased constant String := "JP C,(nn)";
   procedure JP_C_off_nn (GB : in out Gade.GB.GB_Type);

   JP_NC_off_nn_Name : aliased constant String := "JP NC,(nn)";
   procedure JP_NC_off_nn (GB : in out Gade.GB.GB_Type);

   JP_NZ_off_nn_Name : aliased constant String := "JP NZ,(nn)";
   procedure JP_NZ_off_nn (GB : in out Gade.GB.GB_Type);

   JP_Z_off_nn_Name : aliased constant String := "JP Z,(nn)";
   procedure JP_Z_off_nn (GB : in out Gade.GB.GB_Type);

   JR_off_PC_e_Name : aliased constant String := "JR (PC+e)";
   procedure JR_off_PC_e (GB : in out Gade.GB.GB_Type);

   JR_C_off_PC_e_Name : aliased constant String := "JR C,(PC+e)";
   procedure JR_C_off_PC_e (GB : in out Gade.GB.GB_Type);

   JR_NC_off_PC_e_Name : aliased constant String := "JR NC,(PC+e)";
   procedure JR_NC_off_PC_e (GB : in out Gade.GB.GB_Type);

   JR_NZ_off_PC_e_Name : aliased constant String := "JR NZ,(PC+e)";
   procedure JR_NZ_off_PC_e (GB : in out Gade.GB.GB_Type);

   JR_Z_off_PC_e_Name : aliased constant String := "JR Z,(PC+e)";
   procedure JR_Z_off_PC_e (GB : in out Gade.GB.GB_Type);

   LD_off_BC_A_Name : aliased constant String := "LD (BC),A";
   procedure LD_off_BC_A (GB : in out Gade.GB.GB_Type);

   LD_off_C_A_Name : aliased constant String := "LD (C),A";
   procedure LD_off_C_A (GB : in out Gade.GB.GB_Type);

   LD_off_DE_A_Name : aliased constant String := "LD (DE),A";
   procedure LD_off_DE_A (GB : in out Gade.GB.GB_Type);

   LD_off_HL_A_Name : aliased constant String := "LD (HL),A";
   procedure LD_off_HL_A (GB : in out Gade.GB.GB_Type);

   LD_off_HL_B_Name : aliased constant String := "LD (HL),B";
   procedure LD_off_HL_B (GB : in out Gade.GB.GB_Type);

   LD_off_HL_C_Name : aliased constant String := "LD (HL),C";
   procedure LD_off_HL_C (GB : in out Gade.GB.GB_Type);

   LD_off_HL_D_Name : aliased constant String := "LD (HL),D";
   procedure LD_off_HL_D (GB : in out Gade.GB.GB_Type);

   LD_off_HL_E_Name : aliased constant String := "LD (HL),E";
   procedure LD_off_HL_E (GB : in out Gade.GB.GB_Type);

   LD_off_HL_H_Name : aliased constant String := "LD (HL),H";
   procedure LD_off_HL_H (GB : in out Gade.GB.GB_Type);

   LD_off_HL_L_Name : aliased constant String := "LD (HL),L";
   procedure LD_off_HL_L (GB : in out Gade.GB.GB_Type);

   LD_off_HL_n_Name : aliased constant String := "LD (HL),n";
   procedure LD_off_HL_n (GB : in out Gade.GB.GB_Type);

   LD_off_nn_A_Name : aliased constant String := "LD (nn),A";
   procedure LD_off_nn_A (GB : in out Gade.GB.GB_Type);

   LD_off_nn_SP_Name : aliased constant String := "LD (nn),SP";
   procedure LD_off_nn_SP (GB : in out Gade.GB.GB_Type);

   LD_A_off_BC_Name : aliased constant String := "LD A,(BC)";
   procedure LD_A_off_BC (GB : in out Gade.GB.GB_Type);

   LD_A_off_C_Name : aliased constant String := "LD A,(C)";
   procedure LD_A_off_C (GB : in out Gade.GB.GB_Type);

   LD_A_off_DE_Name : aliased constant String := "LD A,(DE)";
   procedure LD_A_off_DE (GB : in out Gade.GB.GB_Type);

   LD_A_off_HL_Name : aliased constant String := "LD A,(HL)";
   procedure LD_A_off_HL (GB : in out Gade.GB.GB_Type);

   LD_A_off_nn_Name : aliased constant String := "LD A,(nn)";
   procedure LD_A_off_nn (GB : in out Gade.GB.GB_Type);

   LD_A_A_Name : aliased constant String := "LD A,A";
   procedure LD_A_A (GB : in out Gade.GB.GB_Type);

   LD_A_B_Name : aliased constant String := "LD A,B";
   procedure LD_A_B (GB : in out Gade.GB.GB_Type);

   LD_A_C_Name : aliased constant String := "LD A,C";
   procedure LD_A_C (GB : in out Gade.GB.GB_Type);

   LD_A_D_Name : aliased constant String := "LD A,D";
   procedure LD_A_D (GB : in out Gade.GB.GB_Type);

   LD_A_E_Name : aliased constant String := "LD A,E";
   procedure LD_A_E (GB : in out Gade.GB.GB_Type);

   LD_A_H_Name : aliased constant String := "LD A,H";
   procedure LD_A_H (GB : in out Gade.GB.GB_Type);

   LD_A_L_Name : aliased constant String := "LD A,L";
   procedure LD_A_L (GB : in out Gade.GB.GB_Type);

   LD_A_n_Name : aliased constant String := "LD A,n";
   procedure LD_A_n (GB : in out Gade.GB.GB_Type);

   LD_B_off_HL_Name : aliased constant String := "LD B,(HL)";
   procedure LD_B_off_HL (GB : in out Gade.GB.GB_Type);

   LD_B_A_Name : aliased constant String := "LD B,A";
   procedure LD_B_A (GB : in out Gade.GB.GB_Type);

   LD_B_B_Name : aliased constant String := "LD B,B";
   procedure LD_B_B (GB : in out Gade.GB.GB_Type);

   LD_B_C_Name : aliased constant String := "LD B,C";
   procedure LD_B_C (GB : in out Gade.GB.GB_Type);

   LD_B_D_Name : aliased constant String := "LD B,D";
   procedure LD_B_D (GB : in out Gade.GB.GB_Type);

   LD_B_E_Name : aliased constant String := "LD B,E";
   procedure LD_B_E (GB : in out Gade.GB.GB_Type);

   LD_B_H_Name : aliased constant String := "LD B,H";
   procedure LD_B_H (GB : in out Gade.GB.GB_Type);

   LD_B_L_Name : aliased constant String := "LD B,L";
   procedure LD_B_L (GB : in out Gade.GB.GB_Type);

   LD_B_n_Name : aliased constant String := "LD B,n";
   procedure LD_B_n (GB : in out Gade.GB.GB_Type);

   LD_BC_nn_Name : aliased constant String := "LD BC,nn";
   procedure LD_BC_nn (GB : in out Gade.GB.GB_Type);

   LD_C_off_HL_Name : aliased constant String := "LD C,(HL)";
   procedure LD_C_off_HL (GB : in out Gade.GB.GB_Type);

   LD_C_A_Name : aliased constant String := "LD C,A";
   procedure LD_C_A (GB : in out Gade.GB.GB_Type);

   LD_C_B_Name : aliased constant String := "LD C,B";
   procedure LD_C_B (GB : in out Gade.GB.GB_Type);

   LD_C_C_Name : aliased constant String := "LD C,C";
   procedure LD_C_C (GB : in out Gade.GB.GB_Type);

   LD_C_D_Name : aliased constant String := "LD C,D";
   procedure LD_C_D (GB : in out Gade.GB.GB_Type);

   LD_C_E_Name : aliased constant String := "LD C,E";
   procedure LD_C_E (GB : in out Gade.GB.GB_Type);

   LD_C_H_Name : aliased constant String := "LD C,H";
   procedure LD_C_H (GB : in out Gade.GB.GB_Type);

   LD_C_L_Name : aliased constant String := "LD C,L";
   procedure LD_C_L (GB : in out Gade.GB.GB_Type);

   LD_C_n_Name : aliased constant String := "LD C,n";
   procedure LD_C_n (GB : in out Gade.GB.GB_Type);

   LD_D_off_HL_Name : aliased constant String := "LD D,(HL)";
   procedure LD_D_off_HL (GB : in out Gade.GB.GB_Type);

   LD_D_A_Name : aliased constant String := "LD D,A";
   procedure LD_D_A (GB : in out Gade.GB.GB_Type);

   LD_D_B_Name : aliased constant String := "LD D,B";
   procedure LD_D_B (GB : in out Gade.GB.GB_Type);

   LD_D_C_Name : aliased constant String := "LD D,C";
   procedure LD_D_C (GB : in out Gade.GB.GB_Type);

   LD_D_D_Name : aliased constant String := "LD D,D";
   procedure LD_D_D (GB : in out Gade.GB.GB_Type);

   LD_D_E_Name : aliased constant String := "LD D,E";
   procedure LD_D_E (GB : in out Gade.GB.GB_Type);

   LD_D_H_Name : aliased constant String := "LD D,H";
   procedure LD_D_H (GB : in out Gade.GB.GB_Type);

   LD_D_L_Name : aliased constant String := "LD D,L";
   procedure LD_D_L (GB : in out Gade.GB.GB_Type);

   LD_D_n_Name : aliased constant String := "LD D,n";
   procedure LD_D_n (GB : in out Gade.GB.GB_Type);

   LD_DE_nn_Name : aliased constant String := "LD DE,nn";
   procedure LD_DE_nn (GB : in out Gade.GB.GB_Type);

   LD_E_off_HL_Name : aliased constant String := "LD E,(HL)";
   procedure LD_E_off_HL (GB : in out Gade.GB.GB_Type);

   LD_E_A_Name : aliased constant String := "LD E,A";
   procedure LD_E_A (GB : in out Gade.GB.GB_Type);

   LD_E_B_Name : aliased constant String := "LD E,B";
   procedure LD_E_B (GB : in out Gade.GB.GB_Type);

   LD_E_C_Name : aliased constant String := "LD E,C";
   procedure LD_E_C (GB : in out Gade.GB.GB_Type);

   LD_E_D_Name : aliased constant String := "LD E,D";
   procedure LD_E_D (GB : in out Gade.GB.GB_Type);

   LD_E_E_Name : aliased constant String := "LD E,E";
   procedure LD_E_E (GB : in out Gade.GB.GB_Type);

   LD_E_H_Name : aliased constant String := "LD E,H";
   procedure LD_E_H (GB : in out Gade.GB.GB_Type);

   LD_E_L_Name : aliased constant String := "LD E,L";
   procedure LD_E_L (GB : in out Gade.GB.GB_Type);

   LD_E_n_Name : aliased constant String := "LD E,n";
   procedure LD_E_n (GB : in out Gade.GB.GB_Type);

   LD_H_off_HL_Name : aliased constant String := "LD H,(HL)";
   procedure LD_H_off_HL (GB : in out Gade.GB.GB_Type);

   LD_H_A_Name : aliased constant String := "LD H,A";
   procedure LD_H_A (GB : in out Gade.GB.GB_Type);

   LD_H_B_Name : aliased constant String := "LD H,B";
   procedure LD_H_B (GB : in out Gade.GB.GB_Type);

   LD_H_C_Name : aliased constant String := "LD H,C";
   procedure LD_H_C (GB : in out Gade.GB.GB_Type);

   LD_H_D_Name : aliased constant String := "LD H,D";
   procedure LD_H_D (GB : in out Gade.GB.GB_Type);

   LD_H_E_Name : aliased constant String := "LD H,E";
   procedure LD_H_E (GB : in out Gade.GB.GB_Type);

   LD_H_H_Name : aliased constant String := "LD H,H";
   procedure LD_H_H (GB : in out Gade.GB.GB_Type);

   LD_H_L_Name : aliased constant String := "LD H,L";
   procedure LD_H_L (GB : in out Gade.GB.GB_Type);

   LD_H_n_Name : aliased constant String := "LD H,n";
   procedure LD_H_n (GB : in out Gade.GB.GB_Type);

   LD_HL_nn_Name : aliased constant String := "LD HL,nn";
   procedure LD_HL_nn (GB : in out Gade.GB.GB_Type);

   LD_L_off_HL_Name : aliased constant String := "LD L,(HL)";
   procedure LD_L_off_HL (GB : in out Gade.GB.GB_Type);

   LD_L_A_Name : aliased constant String := "LD L,A";
   procedure LD_L_A (GB : in out Gade.GB.GB_Type);

   LD_L_B_Name : aliased constant String := "LD L,B";
   procedure LD_L_B (GB : in out Gade.GB.GB_Type);

   LD_L_C_Name : aliased constant String := "LD L,C";
   procedure LD_L_C (GB : in out Gade.GB.GB_Type);

   LD_L_D_Name : aliased constant String := "LD L,D";
   procedure LD_L_D (GB : in out Gade.GB.GB_Type);

   LD_L_E_Name : aliased constant String := "LD L,E";
   procedure LD_L_E (GB : in out Gade.GB.GB_Type);

   LD_L_H_Name : aliased constant String := "LD L,H";
   procedure LD_L_H (GB : in out Gade.GB.GB_Type);

   LD_L_L_Name : aliased constant String := "LD L,L";
   procedure LD_L_L (GB : in out Gade.GB.GB_Type);

   LD_L_n_Name : aliased constant String := "LD L,n";
   procedure LD_L_n (GB : in out Gade.GB.GB_Type);

   LD_SP_HL_Name : aliased constant String := "LD SP,HL";
   procedure LD_SP_HL (GB : in out Gade.GB.GB_Type);

   LD_SP_nn_Name : aliased constant String := "LD SP,nn";
   procedure LD_SP_nn (GB : in out Gade.GB.GB_Type);

   LDD_off_HL_A_Name : aliased constant String := "LDD (HL),A";
   procedure LDD_off_HL_A (GB : in out Gade.GB.GB_Type);

   LDD_A_off_HL_Name : aliased constant String := "LDD A,(HL)";
   procedure LDD_A_off_HL (GB : in out Gade.GB.GB_Type);

   LDH_off_n_A_Name : aliased constant String := "LDH (n),A";
   procedure LDH_off_n_A (GB : in out Gade.GB.GB_Type);

   LDH_A_off_n_Name : aliased constant String := "LDH A,(n)";
   procedure LDH_A_off_n (GB : in out Gade.GB.GB_Type);

   LDHL_SP_n_Name : aliased constant String := "LDHL SP,n";
   procedure LDHL_SP_n (GB : in out Gade.GB.GB_Type);

   LDI_off_HL_A_Name : aliased constant String := "LDI (HL),A";
   procedure LDI_off_HL_A (GB : in out Gade.GB.GB_Type);

   LDI_A_off_HL_Name : aliased constant String := "LDI A,(HL)";
   procedure LDI_A_off_HL (GB : in out Gade.GB.GB_Type);

   NOP_Name : aliased constant String := "NOP";
   procedure NOP (GB : in out Gade.GB.GB_Type);

   OR_off_HL_Name : aliased constant String := "OR (HL)";
   procedure OR_off_HL (GB : in out Gade.GB.GB_Type);

   OR_A_Name : aliased constant String := "OR A";
   procedure OR_A (GB : in out Gade.GB.GB_Type);

   OR_B_Name : aliased constant String := "OR B";
   procedure OR_B (GB : in out Gade.GB.GB_Type);

   OR_C_Name : aliased constant String := "OR C";
   procedure OR_C (GB : in out Gade.GB.GB_Type);

   OR_D_Name : aliased constant String := "OR D";
   procedure OR_D (GB : in out Gade.GB.GB_Type);

   OR_E_Name : aliased constant String := "OR E";
   procedure OR_E (GB : in out Gade.GB.GB_Type);

   OR_H_Name : aliased constant String := "OR H";
   procedure OR_H (GB : in out Gade.GB.GB_Type);

   OR_L_Name : aliased constant String := "OR L";
   procedure OR_L (GB : in out Gade.GB.GB_Type);

   OR_n_Name : aliased constant String := "OR n";
   procedure OR_n (GB : in out Gade.GB.GB_Type);

   POP_AF_Name : aliased constant String := "POP AF";
   procedure POP_AF (GB : in out Gade.GB.GB_Type);

   POP_BC_Name : aliased constant String := "POP BC";
   procedure POP_BC (GB : in out Gade.GB.GB_Type);

   POP_DE_Name : aliased constant String := "POP DE";
   procedure POP_DE (GB : in out Gade.GB.GB_Type);

   POP_HL_Name : aliased constant String := "POP HL";
   procedure POP_HL (GB : in out Gade.GB.GB_Type);

   PUSH_AF_Name : aliased constant String := "PUSH AF";
   procedure PUSH_AF (GB : in out Gade.GB.GB_Type);

   PUSH_BC_Name : aliased constant String := "PUSH BC";
   procedure PUSH_BC (GB : in out Gade.GB.GB_Type);

   PUSH_DE_Name : aliased constant String := "PUSH DE";
   procedure PUSH_DE (GB : in out Gade.GB.GB_Type);

   PUSH_HL_Name : aliased constant String := "PUSH HL";
   procedure PUSH_HL (GB : in out Gade.GB.GB_Type);

   RES_0_off_HL_Name : aliased constant String := "RES 0,(HL)";
   procedure RES_0_off_HL (GB : in out Gade.GB.GB_Type);

   RES_0_A_Name : aliased constant String := "RES 0,A";
   procedure RES_0_A (GB : in out Gade.GB.GB_Type);

   RES_0_B_Name : aliased constant String := "RES 0,B";
   procedure RES_0_B (GB : in out Gade.GB.GB_Type);

   RES_0_C_Name : aliased constant String := "RES 0,C";
   procedure RES_0_C (GB : in out Gade.GB.GB_Type);

   RES_0_D_Name : aliased constant String := "RES 0,D";
   procedure RES_0_D (GB : in out Gade.GB.GB_Type);

   RES_0_E_Name : aliased constant String := "RES 0,E";
   procedure RES_0_E (GB : in out Gade.GB.GB_Type);

   RES_0_H_Name : aliased constant String := "RES 0,H";
   procedure RES_0_H (GB : in out Gade.GB.GB_Type);

   RES_0_L_Name : aliased constant String := "RES 0,L";
   procedure RES_0_L (GB : in out Gade.GB.GB_Type);

   RES_1_off_HL_Name : aliased constant String := "RES 1,(HL)";
   procedure RES_1_off_HL (GB : in out Gade.GB.GB_Type);

   RES_1_A_Name : aliased constant String := "RES 1,A";
   procedure RES_1_A (GB : in out Gade.GB.GB_Type);

   RES_1_B_Name : aliased constant String := "RES 1,B";
   procedure RES_1_B (GB : in out Gade.GB.GB_Type);

   RES_1_C_Name : aliased constant String := "RES 1,C";
   procedure RES_1_C (GB : in out Gade.GB.GB_Type);

   RES_1_D_Name : aliased constant String := "RES 1,D";
   procedure RES_1_D (GB : in out Gade.GB.GB_Type);

   RES_1_E_Name : aliased constant String := "RES 1,E";
   procedure RES_1_E (GB : in out Gade.GB.GB_Type);

   RES_1_H_Name : aliased constant String := "RES 1,H";
   procedure RES_1_H (GB : in out Gade.GB.GB_Type);

   RES_1_L_Name : aliased constant String := "RES 1,L";
   procedure RES_1_L (GB : in out Gade.GB.GB_Type);

   RES_2_off_HL_Name : aliased constant String := "RES 2,(HL)";
   procedure RES_2_off_HL (GB : in out Gade.GB.GB_Type);

   RES_2_A_Name : aliased constant String := "RES 2,A";
   procedure RES_2_A (GB : in out Gade.GB.GB_Type);

   RES_2_B_Name : aliased constant String := "RES 2,B";
   procedure RES_2_B (GB : in out Gade.GB.GB_Type);

   RES_2_C_Name : aliased constant String := "RES 2,C";
   procedure RES_2_C (GB : in out Gade.GB.GB_Type);

   RES_2_D_Name : aliased constant String := "RES 2,D";
   procedure RES_2_D (GB : in out Gade.GB.GB_Type);

   RES_2_E_Name : aliased constant String := "RES 2,E";
   procedure RES_2_E (GB : in out Gade.GB.GB_Type);

   RES_2_H_Name : aliased constant String := "RES 2,H";
   procedure RES_2_H (GB : in out Gade.GB.GB_Type);

   RES_2_L_Name : aliased constant String := "RES 2,L";
   procedure RES_2_L (GB : in out Gade.GB.GB_Type);

   RES_3_off_HL_Name : aliased constant String := "RES 3,(HL)";
   procedure RES_3_off_HL (GB : in out Gade.GB.GB_Type);

   RES_3_A_Name : aliased constant String := "RES 3,A";
   procedure RES_3_A (GB : in out Gade.GB.GB_Type);

   RES_3_B_Name : aliased constant String := "RES 3,B";
   procedure RES_3_B (GB : in out Gade.GB.GB_Type);

   RES_3_C_Name : aliased constant String := "RES 3,C";
   procedure RES_3_C (GB : in out Gade.GB.GB_Type);

   RES_3_D_Name : aliased constant String := "RES 3,D";
   procedure RES_3_D (GB : in out Gade.GB.GB_Type);

   RES_3_E_Name : aliased constant String := "RES 3,E";
   procedure RES_3_E (GB : in out Gade.GB.GB_Type);

   RES_3_H_Name : aliased constant String := "RES 3,H";
   procedure RES_3_H (GB : in out Gade.GB.GB_Type);

   RES_3_L_Name : aliased constant String := "RES 3,L";
   procedure RES_3_L (GB : in out Gade.GB.GB_Type);

   RES_4_off_HL_Name : aliased constant String := "RES 4,(HL)";
   procedure RES_4_off_HL (GB : in out Gade.GB.GB_Type);

   RES_4_A_Name : aliased constant String := "RES 4,A";
   procedure RES_4_A (GB : in out Gade.GB.GB_Type);

   RES_4_B_Name : aliased constant String := "RES 4,B";
   procedure RES_4_B (GB : in out Gade.GB.GB_Type);

   RES_4_C_Name : aliased constant String := "RES 4,C";
   procedure RES_4_C (GB : in out Gade.GB.GB_Type);

   RES_4_D_Name : aliased constant String := "RES 4,D";
   procedure RES_4_D (GB : in out Gade.GB.GB_Type);

   RES_4_E_Name : aliased constant String := "RES 4,E";
   procedure RES_4_E (GB : in out Gade.GB.GB_Type);

   RES_4_H_Name : aliased constant String := "RES 4,H";
   procedure RES_4_H (GB : in out Gade.GB.GB_Type);

   RES_4_L_Name : aliased constant String := "RES 4,L";
   procedure RES_4_L (GB : in out Gade.GB.GB_Type);

   RES_5_off_HL_Name : aliased constant String := "RES 5,(HL)";
   procedure RES_5_off_HL (GB : in out Gade.GB.GB_Type);

   RES_5_A_Name : aliased constant String := "RES 5,A";
   procedure RES_5_A (GB : in out Gade.GB.GB_Type);

   RES_5_B_Name : aliased constant String := "RES 5,B";
   procedure RES_5_B (GB : in out Gade.GB.GB_Type);

   RES_5_C_Name : aliased constant String := "RES 5,C";
   procedure RES_5_C (GB : in out Gade.GB.GB_Type);

   RES_5_D_Name : aliased constant String := "RES 5,D";
   procedure RES_5_D (GB : in out Gade.GB.GB_Type);

   RES_5_E_Name : aliased constant String := "RES 5,E";
   procedure RES_5_E (GB : in out Gade.GB.GB_Type);

   RES_5_H_Name : aliased constant String := "RES 5,H";
   procedure RES_5_H (GB : in out Gade.GB.GB_Type);

   RES_5_L_Name : aliased constant String := "RES 5,L";
   procedure RES_5_L (GB : in out Gade.GB.GB_Type);

   RES_6_off_HL_Name : aliased constant String := "RES 6,(HL)";
   procedure RES_6_off_HL (GB : in out Gade.GB.GB_Type);

   RES_6_A_Name : aliased constant String := "RES 6,A";
   procedure RES_6_A (GB : in out Gade.GB.GB_Type);

   RES_6_B_Name : aliased constant String := "RES 6,B";
   procedure RES_6_B (GB : in out Gade.GB.GB_Type);

   RES_6_C_Name : aliased constant String := "RES 6,C";
   procedure RES_6_C (GB : in out Gade.GB.GB_Type);

   RES_6_D_Name : aliased constant String := "RES 6,D";
   procedure RES_6_D (GB : in out Gade.GB.GB_Type);

   RES_6_E_Name : aliased constant String := "RES 6,E";
   procedure RES_6_E (GB : in out Gade.GB.GB_Type);

   RES_6_H_Name : aliased constant String := "RES 6,H";
   procedure RES_6_H (GB : in out Gade.GB.GB_Type);

   RES_6_L_Name : aliased constant String := "RES 6,L";
   procedure RES_6_L (GB : in out Gade.GB.GB_Type);

   RES_7_off_HL_Name : aliased constant String := "RES 7,(HL)";
   procedure RES_7_off_HL (GB : in out Gade.GB.GB_Type);

   RES_7_A_Name : aliased constant String := "RES 7,A";
   procedure RES_7_A (GB : in out Gade.GB.GB_Type);

   RES_7_B_Name : aliased constant String := "RES 7,B";
   procedure RES_7_B (GB : in out Gade.GB.GB_Type);

   RES_7_C_Name : aliased constant String := "RES 7,C";
   procedure RES_7_C (GB : in out Gade.GB.GB_Type);

   RES_7_D_Name : aliased constant String := "RES 7,D";
   procedure RES_7_D (GB : in out Gade.GB.GB_Type);

   RES_7_E_Name : aliased constant String := "RES 7,E";
   procedure RES_7_E (GB : in out Gade.GB.GB_Type);

   RES_7_H_Name : aliased constant String := "RES 7,H";
   procedure RES_7_H (GB : in out Gade.GB.GB_Type);

   RES_7_L_Name : aliased constant String := "RES 7,L";
   procedure RES_7_L (GB : in out Gade.GB.GB_Type);

   RET_Name : aliased constant String := "RET";
   procedure RET (GB : in out Gade.GB.GB_Type);

   RET_C_Name : aliased constant String := "RET C";
   procedure RET_C (GB : in out Gade.GB.GB_Type);

   RET_NC_Name : aliased constant String := "RET NC";
   procedure RET_NC (GB : in out Gade.GB.GB_Type);

   RET_NZ_Name : aliased constant String := "RET NZ";
   procedure RET_NZ (GB : in out Gade.GB.GB_Type);

   RET_Z_Name : aliased constant String := "RET Z";
   procedure RET_Z (GB : in out Gade.GB.GB_Type);

   RETI_Name : aliased constant String := "RETI";
   procedure RETI (GB : in out Gade.GB.GB_Type);

   RL_off_HL_Name : aliased constant String := "RL (HL)";
   procedure RL_off_HL (GB : in out Gade.GB.GB_Type);

   RL_A_Name : aliased constant String := "RL A";
   procedure RL_A (GB : in out Gade.GB.GB_Type);

   RL_B_Name : aliased constant String := "RL B";
   procedure RL_B (GB : in out Gade.GB.GB_Type);

   RL_C_Name : aliased constant String := "RL C";
   procedure RL_C (GB : in out Gade.GB.GB_Type);

   RL_D_Name : aliased constant String := "RL D";
   procedure RL_D (GB : in out Gade.GB.GB_Type);

   RL_E_Name : aliased constant String := "RL E";
   procedure RL_E (GB : in out Gade.GB.GB_Type);

   RL_H_Name : aliased constant String := "RL H";
   procedure RL_H (GB : in out Gade.GB.GB_Type);

   RL_L_Name : aliased constant String := "RL L";
   procedure RL_L (GB : in out Gade.GB.GB_Type);

   RLA_Name : aliased constant String := "RLA";
   procedure RLA (GB : in out Gade.GB.GB_Type);

   RLC_off_HL_Name : aliased constant String := "RLC (HL)";
   procedure RLC_off_HL (GB : in out Gade.GB.GB_Type);

   RLC_A_Name : aliased constant String := "RLC A";
   procedure RLC_A (GB : in out Gade.GB.GB_Type);

   RLC_B_Name : aliased constant String := "RLC B";
   procedure RLC_B (GB : in out Gade.GB.GB_Type);

   RLC_C_Name : aliased constant String := "RLC C";
   procedure RLC_C (GB : in out Gade.GB.GB_Type);

   RLC_D_Name : aliased constant String := "RLC D";
   procedure RLC_D (GB : in out Gade.GB.GB_Type);

   RLC_E_Name : aliased constant String := "RLC E";
   procedure RLC_E (GB : in out Gade.GB.GB_Type);

   RLC_H_Name : aliased constant String := "RLC H";
   procedure RLC_H (GB : in out Gade.GB.GB_Type);

   RLC_L_Name : aliased constant String := "RLC L";
   procedure RLC_L (GB : in out Gade.GB.GB_Type);

   RLCA_Name : aliased constant String := "RLCA";
   procedure RLCA (GB : in out Gade.GB.GB_Type);

   RR_off_HL_Name : aliased constant String := "RR (HL)";
   procedure RR_off_HL (GB : in out Gade.GB.GB_Type);

   RR_A_Name : aliased constant String := "RR A";
   procedure RR_A (GB : in out Gade.GB.GB_Type);

   RR_B_Name : aliased constant String := "RR B";
   procedure RR_B (GB : in out Gade.GB.GB_Type);

   RR_C_Name : aliased constant String := "RR C";
   procedure RR_C (GB : in out Gade.GB.GB_Type);

   RR_D_Name : aliased constant String := "RR D";
   procedure RR_D (GB : in out Gade.GB.GB_Type);

   RR_E_Name : aliased constant String := "RR E";
   procedure RR_E (GB : in out Gade.GB.GB_Type);

   RR_H_Name : aliased constant String := "RR H";
   procedure RR_H (GB : in out Gade.GB.GB_Type);

   RR_L_Name : aliased constant String := "RR L";
   procedure RR_L (GB : in out Gade.GB.GB_Type);

   RRA_Name : aliased constant String := "RRA";
   procedure RRA (GB : in out Gade.GB.GB_Type);

   RRC_off_HL_Name : aliased constant String := "RRC (HL)";
   procedure RRC_off_HL (GB : in out Gade.GB.GB_Type);

   RRC_A_Name : aliased constant String := "RRC A";
   procedure RRC_A (GB : in out Gade.GB.GB_Type);

   RRC_B_Name : aliased constant String := "RRC B";
   procedure RRC_B (GB : in out Gade.GB.GB_Type);

   RRC_C_Name : aliased constant String := "RRC C";
   procedure RRC_C (GB : in out Gade.GB.GB_Type);

   RRC_D_Name : aliased constant String := "RRC D";
   procedure RRC_D (GB : in out Gade.GB.GB_Type);

   RRC_E_Name : aliased constant String := "RRC E";
   procedure RRC_E (GB : in out Gade.GB.GB_Type);

   RRC_H_Name : aliased constant String := "RRC H";
   procedure RRC_H (GB : in out Gade.GB.GB_Type);

   RRC_L_Name : aliased constant String := "RRC L";
   procedure RRC_L (GB : in out Gade.GB.GB_Type);

   RRCA_Name : aliased constant String := "RRCA";
   procedure RRCA (GB : in out Gade.GB.GB_Type);

   RST_0H_Name : aliased constant String := "RST 0H";
   procedure RST_0H (GB : in out Gade.GB.GB_Type);

   RST_10H_Name : aliased constant String := "RST 10H";
   procedure RST_10H (GB : in out Gade.GB.GB_Type);

   RST_18H_Name : aliased constant String := "RST 18H";
   procedure RST_18H (GB : in out Gade.GB.GB_Type);

   RST_20H_Name : aliased constant String := "RST 20H";
   procedure RST_20H (GB : in out Gade.GB.GB_Type);

   RST_28H_Name : aliased constant String := "RST 28H";
   procedure RST_28H (GB : in out Gade.GB.GB_Type);

   RST_30H_Name : aliased constant String := "RST 30H";
   procedure RST_30H (GB : in out Gade.GB.GB_Type);

   RST_38H_Name : aliased constant String := "RST 38H";
   procedure RST_38H (GB : in out Gade.GB.GB_Type);

   RST_8H_Name : aliased constant String := "RST 8H";
   procedure RST_8H (GB : in out Gade.GB.GB_Type);

   SBC_A_off_HL_Name : aliased constant String := "SBC A,(HL)";
   procedure SBC_A_off_HL (GB : in out Gade.GB.GB_Type);

   SBC_A_A_Name : aliased constant String := "SBC A,A";
   procedure SBC_A_A (GB : in out Gade.GB.GB_Type);

   SBC_A_B_Name : aliased constant String := "SBC A,B";
   procedure SBC_A_B (GB : in out Gade.GB.GB_Type);

   SBC_A_C_Name : aliased constant String := "SBC A,C";
   procedure SBC_A_C (GB : in out Gade.GB.GB_Type);

   SBC_A_D_Name : aliased constant String := "SBC A,D";
   procedure SBC_A_D (GB : in out Gade.GB.GB_Type);

   SBC_A_E_Name : aliased constant String := "SBC A,E";
   procedure SBC_A_E (GB : in out Gade.GB.GB_Type);

   SBC_A_H_Name : aliased constant String := "SBC A,H";
   procedure SBC_A_H (GB : in out Gade.GB.GB_Type);

   SBC_A_L_Name : aliased constant String := "SBC A,L";
   procedure SBC_A_L (GB : in out Gade.GB.GB_Type);

   SBC_A_n_Name : aliased constant String := "SBC A,n";
   procedure SBC_A_n (GB : in out Gade.GB.GB_Type);

   SCF_Name : aliased constant String := "SCF";
   procedure SCF (GB : in out Gade.GB.GB_Type);

   SET_0_off_HL_Name : aliased constant String := "SET 0,(HL)";
   procedure SET_0_off_HL (GB : in out Gade.GB.GB_Type);

   SET_0_A_Name : aliased constant String := "SET 0,A";
   procedure SET_0_A (GB : in out Gade.GB.GB_Type);

   SET_0_B_Name : aliased constant String := "SET 0,B";
   procedure SET_0_B (GB : in out Gade.GB.GB_Type);

   SET_0_C_Name : aliased constant String := "SET 0,C";
   procedure SET_0_C (GB : in out Gade.GB.GB_Type);

   SET_0_D_Name : aliased constant String := "SET 0,D";
   procedure SET_0_D (GB : in out Gade.GB.GB_Type);

   SET_0_E_Name : aliased constant String := "SET 0,E";
   procedure SET_0_E (GB : in out Gade.GB.GB_Type);

   SET_0_H_Name : aliased constant String := "SET 0,H";
   procedure SET_0_H (GB : in out Gade.GB.GB_Type);

   SET_0_L_Name : aliased constant String := "SET 0,L";
   procedure SET_0_L (GB : in out Gade.GB.GB_Type);

   SET_1_off_HL_Name : aliased constant String := "SET 1,(HL)";
   procedure SET_1_off_HL (GB : in out Gade.GB.GB_Type);

   SET_1_A_Name : aliased constant String := "SET 1,A";
   procedure SET_1_A (GB : in out Gade.GB.GB_Type);

   SET_1_B_Name : aliased constant String := "SET 1,B";
   procedure SET_1_B (GB : in out Gade.GB.GB_Type);

   SET_1_C_Name : aliased constant String := "SET 1,C";
   procedure SET_1_C (GB : in out Gade.GB.GB_Type);

   SET_1_D_Name : aliased constant String := "SET 1,D";
   procedure SET_1_D (GB : in out Gade.GB.GB_Type);

   SET_1_E_Name : aliased constant String := "SET 1,E";
   procedure SET_1_E (GB : in out Gade.GB.GB_Type);

   SET_1_H_Name : aliased constant String := "SET 1,H";
   procedure SET_1_H (GB : in out Gade.GB.GB_Type);

   SET_1_L_Name : aliased constant String := "SET 1,L";
   procedure SET_1_L (GB : in out Gade.GB.GB_Type);

   SET_2_off_HL_Name : aliased constant String := "SET 2,(HL)";
   procedure SET_2_off_HL (GB : in out Gade.GB.GB_Type);

   SET_2_A_Name : aliased constant String := "SET 2,A";
   procedure SET_2_A (GB : in out Gade.GB.GB_Type);

   SET_2_B_Name : aliased constant String := "SET 2,B";
   procedure SET_2_B (GB : in out Gade.GB.GB_Type);

   SET_2_C_Name : aliased constant String := "SET 2,C";
   procedure SET_2_C (GB : in out Gade.GB.GB_Type);

   SET_2_D_Name : aliased constant String := "SET 2,D";
   procedure SET_2_D (GB : in out Gade.GB.GB_Type);

   SET_2_E_Name : aliased constant String := "SET 2,E";
   procedure SET_2_E (GB : in out Gade.GB.GB_Type);

   SET_2_H_Name : aliased constant String := "SET 2,H";
   procedure SET_2_H (GB : in out Gade.GB.GB_Type);

   SET_2_L_Name : aliased constant String := "SET 2,L";
   procedure SET_2_L (GB : in out Gade.GB.GB_Type);

   SET_3_off_HL_Name : aliased constant String := "SET 3,(HL)";
   procedure SET_3_off_HL (GB : in out Gade.GB.GB_Type);

   SET_3_A_Name : aliased constant String := "SET 3,A";
   procedure SET_3_A (GB : in out Gade.GB.GB_Type);

   SET_3_B_Name : aliased constant String := "SET 3,B";
   procedure SET_3_B (GB : in out Gade.GB.GB_Type);

   SET_3_C_Name : aliased constant String := "SET 3,C";
   procedure SET_3_C (GB : in out Gade.GB.GB_Type);

   SET_3_D_Name : aliased constant String := "SET 3,D";
   procedure SET_3_D (GB : in out Gade.GB.GB_Type);

   SET_3_E_Name : aliased constant String := "SET 3,E";
   procedure SET_3_E (GB : in out Gade.GB.GB_Type);

   SET_3_H_Name : aliased constant String := "SET 3,H";
   procedure SET_3_H (GB : in out Gade.GB.GB_Type);

   SET_3_L_Name : aliased constant String := "SET 3,L";
   procedure SET_3_L (GB : in out Gade.GB.GB_Type);

   SET_4_off_HL_Name : aliased constant String := "SET 4,(HL)";
   procedure SET_4_off_HL (GB : in out Gade.GB.GB_Type);

   SET_4_A_Name : aliased constant String := "SET 4,A";
   procedure SET_4_A (GB : in out Gade.GB.GB_Type);

   SET_4_B_Name : aliased constant String := "SET 4,B";
   procedure SET_4_B (GB : in out Gade.GB.GB_Type);

   SET_4_C_Name : aliased constant String := "SET 4,C";
   procedure SET_4_C (GB : in out Gade.GB.GB_Type);

   SET_4_D_Name : aliased constant String := "SET 4,D";
   procedure SET_4_D (GB : in out Gade.GB.GB_Type);

   SET_4_E_Name : aliased constant String := "SET 4,E";
   procedure SET_4_E (GB : in out Gade.GB.GB_Type);

   SET_4_H_Name : aliased constant String := "SET 4,H";
   procedure SET_4_H (GB : in out Gade.GB.GB_Type);

   SET_4_L_Name : aliased constant String := "SET 4,L";
   procedure SET_4_L (GB : in out Gade.GB.GB_Type);

   SET_5_off_HL_Name : aliased constant String := "SET 5,(HL)";
   procedure SET_5_off_HL (GB : in out Gade.GB.GB_Type);

   SET_5_A_Name : aliased constant String := "SET 5,A";
   procedure SET_5_A (GB : in out Gade.GB.GB_Type);

   SET_5_B_Name : aliased constant String := "SET 5,B";
   procedure SET_5_B (GB : in out Gade.GB.GB_Type);

   SET_5_C_Name : aliased constant String := "SET 5,C";
   procedure SET_5_C (GB : in out Gade.GB.GB_Type);

   SET_5_D_Name : aliased constant String := "SET 5,D";
   procedure SET_5_D (GB : in out Gade.GB.GB_Type);

   SET_5_E_Name : aliased constant String := "SET 5,E";
   procedure SET_5_E (GB : in out Gade.GB.GB_Type);

   SET_5_H_Name : aliased constant String := "SET 5,H";
   procedure SET_5_H (GB : in out Gade.GB.GB_Type);

   SET_5_L_Name : aliased constant String := "SET 5,L";
   procedure SET_5_L (GB : in out Gade.GB.GB_Type);

   SET_6_off_HL_Name : aliased constant String := "SET 6,(HL)";
   procedure SET_6_off_HL (GB : in out Gade.GB.GB_Type);

   SET_6_A_Name : aliased constant String := "SET 6,A";
   procedure SET_6_A (GB : in out Gade.GB.GB_Type);

   SET_6_B_Name : aliased constant String := "SET 6,B";
   procedure SET_6_B (GB : in out Gade.GB.GB_Type);

   SET_6_C_Name : aliased constant String := "SET 6,C";
   procedure SET_6_C (GB : in out Gade.GB.GB_Type);

   SET_6_D_Name : aliased constant String := "SET 6,D";
   procedure SET_6_D (GB : in out Gade.GB.GB_Type);

   SET_6_E_Name : aliased constant String := "SET 6,E";
   procedure SET_6_E (GB : in out Gade.GB.GB_Type);

   SET_6_H_Name : aliased constant String := "SET 6,H";
   procedure SET_6_H (GB : in out Gade.GB.GB_Type);

   SET_6_L_Name : aliased constant String := "SET 6,L";
   procedure SET_6_L (GB : in out Gade.GB.GB_Type);

   SET_7_off_HL_Name : aliased constant String := "SET 7,(HL)";
   procedure SET_7_off_HL (GB : in out Gade.GB.GB_Type);

   SET_7_A_Name : aliased constant String := "SET 7,A";
   procedure SET_7_A (GB : in out Gade.GB.GB_Type);

   SET_7_B_Name : aliased constant String := "SET 7,B";
   procedure SET_7_B (GB : in out Gade.GB.GB_Type);

   SET_7_C_Name : aliased constant String := "SET 7,C";
   procedure SET_7_C (GB : in out Gade.GB.GB_Type);

   SET_7_D_Name : aliased constant String := "SET 7,D";
   procedure SET_7_D (GB : in out Gade.GB.GB_Type);

   SET_7_E_Name : aliased constant String := "SET 7,E";
   procedure SET_7_E (GB : in out Gade.GB.GB_Type);

   SET_7_H_Name : aliased constant String := "SET 7,H";
   procedure SET_7_H (GB : in out Gade.GB.GB_Type);

   SET_7_L_Name : aliased constant String := "SET 7,L";
   procedure SET_7_L (GB : in out Gade.GB.GB_Type);

   SLA_off_HL_Name : aliased constant String := "SLA (HL)";
   procedure SLA_off_HL (GB : in out Gade.GB.GB_Type);

   SLA_A_Name : aliased constant String := "SLA A";
   procedure SLA_A (GB : in out Gade.GB.GB_Type);

   SLA_B_Name : aliased constant String := "SLA B";
   procedure SLA_B (GB : in out Gade.GB.GB_Type);

   SLA_C_Name : aliased constant String := "SLA C";
   procedure SLA_C (GB : in out Gade.GB.GB_Type);

   SLA_D_Name : aliased constant String := "SLA D";
   procedure SLA_D (GB : in out Gade.GB.GB_Type);

   SLA_E_Name : aliased constant String := "SLA E";
   procedure SLA_E (GB : in out Gade.GB.GB_Type);

   SLA_H_Name : aliased constant String := "SLA H";
   procedure SLA_H (GB : in out Gade.GB.GB_Type);

   SLA_L_Name : aliased constant String := "SLA L";
   procedure SLA_L (GB : in out Gade.GB.GB_Type);

   SWAP_off_HL_Name : aliased constant String := "SWAP (HL)";
   procedure SWAP_off_HL (GB : in out Gade.GB.GB_Type);

   SWAP_A_Name : aliased constant String := "SWAP A";
   procedure SWAP_A (GB : in out Gade.GB.GB_Type);

   SWAP_B_Name : aliased constant String := "SWAP B";
   procedure SWAP_B (GB : in out Gade.GB.GB_Type);

   SWAP_C_Name : aliased constant String := "SWAP C";
   procedure SWAP_C (GB : in out Gade.GB.GB_Type);

   SWAP_D_Name : aliased constant String := "SWAP D";
   procedure SWAP_D (GB : in out Gade.GB.GB_Type);

   SWAP_E_Name : aliased constant String := "SWAP E";
   procedure SWAP_E (GB : in out Gade.GB.GB_Type);

   SWAP_H_Name : aliased constant String := "SWAP H";
   procedure SWAP_H (GB : in out Gade.GB.GB_Type);

   SWAP_L_Name : aliased constant String := "SWAP L";
   procedure SWAP_L (GB : in out Gade.GB.GB_Type);

   SRA_off_HL_Name : aliased constant String := "SRA (HL)";
   procedure SRA_off_HL (GB : in out Gade.GB.GB_Type);

   SRA_A_Name : aliased constant String := "SRA A";
   procedure SRA_A (GB : in out Gade.GB.GB_Type);

   SRA_B_Name : aliased constant String := "SRA B";
   procedure SRA_B (GB : in out Gade.GB.GB_Type);

   SRA_C_Name : aliased constant String := "SRA C";
   procedure SRA_C (GB : in out Gade.GB.GB_Type);

   SRA_D_Name : aliased constant String := "SRA D";
   procedure SRA_D (GB : in out Gade.GB.GB_Type);

   SRA_E_Name : aliased constant String := "SRA E";
   procedure SRA_E (GB : in out Gade.GB.GB_Type);

   SRA_H_Name : aliased constant String := "SRA H";
   procedure SRA_H (GB : in out Gade.GB.GB_Type);

   SRA_L_Name : aliased constant String := "SRA L";
   procedure SRA_L (GB : in out Gade.GB.GB_Type);

   SRL_off_HL_Name : aliased constant String := "SRL (HL)";
   procedure SRL_off_HL (GB : in out Gade.GB.GB_Type);

   SRL_A_Name : aliased constant String := "SRL A";
   procedure SRL_A (GB : in out Gade.GB.GB_Type);

   SRL_B_Name : aliased constant String := "SRL B";
   procedure SRL_B (GB : in out Gade.GB.GB_Type);

   SRL_C_Name : aliased constant String := "SRL C";
   procedure SRL_C (GB : in out Gade.GB.GB_Type);

   SRL_D_Name : aliased constant String := "SRL D";
   procedure SRL_D (GB : in out Gade.GB.GB_Type);

   SRL_E_Name : aliased constant String := "SRL E";
   procedure SRL_E (GB : in out Gade.GB.GB_Type);

   SRL_H_Name : aliased constant String := "SRL H";
   procedure SRL_H (GB : in out Gade.GB.GB_Type);

   SRL_L_Name : aliased constant String := "SRL L";
   procedure SRL_L (GB : in out Gade.GB.GB_Type);

   STOP_Name : aliased constant String := "STOP";
   procedure STOP (GB : in out Gade.GB.GB_Type);

   SUB_A_off_HL_Name : aliased constant String := "SUB A,(HL)";
   procedure SUB_A_off_HL (GB : in out Gade.GB.GB_Type);

   SUB_A_A_Name : aliased constant String := "SUB A,A";
   procedure SUB_A_A (GB : in out Gade.GB.GB_Type);

   SUB_A_B_Name : aliased constant String := "SUB A,B";
   procedure SUB_A_B (GB : in out Gade.GB.GB_Type);

   SUB_A_C_Name : aliased constant String := "SUB A,C";
   procedure SUB_A_C (GB : in out Gade.GB.GB_Type);

   SUB_A_D_Name : aliased constant String := "SUB A,D";
   procedure SUB_A_D (GB : in out Gade.GB.GB_Type);

   SUB_A_E_Name : aliased constant String := "SUB A,E";
   procedure SUB_A_E (GB : in out Gade.GB.GB_Type);

   SUB_A_H_Name : aliased constant String := "SUB A,H";
   procedure SUB_A_H (GB : in out Gade.GB.GB_Type);

   SUB_A_L_Name : aliased constant String := "SUB A,L";
   procedure SUB_A_L (GB : in out Gade.GB.GB_Type);

   SUB_A_n_Name : aliased constant String := "SUB A,n";
   procedure SUB_A_n (GB : in out Gade.GB.GB_Type);

   XOR_off_HL_Name : aliased constant String := "XOR (HL)";
   procedure XOR_off_HL (GB : in out Gade.GB.GB_Type);

   XOR_A_Name : aliased constant String := "XOR A";
   procedure XOR_A (GB : in out Gade.GB.GB_Type);

   XOR_B_Name : aliased constant String := "XOR B";
   procedure XOR_B (GB : in out Gade.GB.GB_Type);

   XOR_C_Name : aliased constant String := "XOR C";
   procedure XOR_C (GB : in out Gade.GB.GB_Type);

   XOR_D_Name : aliased constant String := "XOR D";
   procedure XOR_D (GB : in out Gade.GB.GB_Type);

   XOR_E_Name : aliased constant String := "XOR E";
   procedure XOR_E (GB : in out Gade.GB.GB_Type);

   XOR_H_Name : aliased constant String := "XOR H";
   procedure XOR_H (GB : in out Gade.GB.GB_Type);

   XOR_L_Name : aliased constant String := "XOR L";
   procedure XOR_L (GB : in out Gade.GB.GB_Type);

   XOR_n_Name : aliased constant String := "XOR n";
   procedure XOR_n (GB : in out Gade.GB.GB_Type);

end Gade.Dev.CPU.Instructions;