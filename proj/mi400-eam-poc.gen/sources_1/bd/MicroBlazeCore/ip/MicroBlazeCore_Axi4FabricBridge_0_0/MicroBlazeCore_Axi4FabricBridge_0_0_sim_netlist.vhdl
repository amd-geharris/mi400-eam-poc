-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Sep  6 10:11:05 2024
-- Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top MicroBlazeCore_Axi4FabricBridge_0_0 -prefix
--               MicroBlazeCore_Axi4FabricBridge_0_0_ MicroBlazeCore_Axi4FabricBridge_0_0_sim_netlist.vhdl
-- Design      : MicroBlazeCore_Axi4FabricBridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MicroBlazeCore_Axi4FabricBridge_0_0_Axi4FabricBridge is
  port (
    sMcuInputControl : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC
  );
end MicroBlazeCore_Axi4FabricBridge_0_0_Axi4FabricBridge;

architecture STRUCTURE of MicroBlazeCore_Axi4FabricBridge_0_0_Axi4FabricBridge is
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal axi_awaddr_0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_read__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_write__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair1";
begin
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07070707FF0F0F0F"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => S_AXI_RREADY,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => \state_read__0\(0)
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state_read(0),
      I1 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800F800F800F80"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => S_AXI_RREADY,
      I5 => \^axi_rvalid_reg_0\,
      O => \state_read__0\(1)
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \FSM_sequential_state_read[1]_i_1_n_0\,
      D => \state_read__0\(0),
      Q => state_read(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \FSM_sequential_state_read[1]_i_1_n_0\,
      D => \state_read__0\(1),
      Q => state_read(1),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F07FF0F"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      I2 => state_write(1),
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      O => \state_write__0\(0)
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F80"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(0),
      I3 => state_write(1),
      I4 => S_AXI_WVALID,
      O => \state_write__0\(1)
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \FSM_sequential_state_write[1]_i_1_n_0\,
      D => \state_write__0\(0),
      Q => state_write(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \FSM_sequential_state_write[1]_i_1_n_0\,
      D => \state_write__0\(1),
      Q => state_write(1),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => S_AXI_RREADY,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => S_AXI_AWVALID,
      I3 => \^axi_awready_reg_0\,
      O => axi_awaddr_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr_0,
      D => S_AXI_AWADDR(0),
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awaddr_0,
      D => S_AXI_AWADDR(1),
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(1),
      I3 => S_AXI_WVALID,
      I4 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF3838C3FF0000"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => S_AXI_BREADY,
      I4 => \^s_axi_bvalid\,
      I5 => S_AXI_WVALID,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => S_AXI_RREADY,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => S_AXI_WSTRB(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => S_AXI_WSTRB(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => S_AXI_WSTRB(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_AWADDR(1),
      I2 => axi_awaddr(2),
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_AWADDR(0),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => S_AXI_WSTRB(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(0),
      Q => sMcuInputControl(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(10),
      Q => sMcuInputControl(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(11),
      Q => sMcuInputControl(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(12),
      Q => sMcuInputControl(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(13),
      Q => sMcuInputControl(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(14),
      Q => sMcuInputControl(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(15),
      Q => sMcuInputControl(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(16),
      Q => sMcuInputControl(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(17),
      Q => sMcuInputControl(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(18),
      Q => sMcuInputControl(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(19),
      Q => sMcuInputControl(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(1),
      Q => sMcuInputControl(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(20),
      Q => sMcuInputControl(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(21),
      Q => sMcuInputControl(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(22),
      Q => sMcuInputControl(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(23),
      Q => sMcuInputControl(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(24),
      Q => sMcuInputControl(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(25),
      Q => sMcuInputControl(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(26),
      Q => sMcuInputControl(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(27),
      Q => sMcuInputControl(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(28),
      Q => sMcuInputControl(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(29),
      Q => sMcuInputControl(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(2),
      Q => sMcuInputControl(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(30),
      Q => sMcuInputControl(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(31),
      Q => sMcuInputControl(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(3),
      Q => sMcuInputControl(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(4),
      Q => sMcuInputControl(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(5),
      Q => sMcuInputControl(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(6),
      Q => sMcuInputControl(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(7),
      Q => sMcuInputControl(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(8),
      Q => sMcuInputControl(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(9),
      Q => sMcuInputControl(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MicroBlazeCore_Axi4FabricBridge_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    sMcuOutputControl : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sMcuInputControl : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MicroBlazeCore_Axi4FabricBridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of MicroBlazeCore_Axi4FabricBridge_0_0 : entity is "MicroBlazeCore_Axi4FabricBridge_0_0,Axi4FabricBridge,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of MicroBlazeCore_Axi4FabricBridge_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of MicroBlazeCore_Axi4FabricBridge_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of MicroBlazeCore_Axi4FabricBridge_0_0 : entity is "Axi4FabricBridge,Vivado 2024.1";
end MicroBlazeCore_Axi4FabricBridge_0_0;

architecture STRUCTURE of MicroBlazeCore_Axi4FabricBridge_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MicroBlazeCore_clk_wiz_1_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN MicroBlazeCore_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.MicroBlazeCore_Axi4FabricBridge_0_0_Axi4FabricBridge
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_arready_reg_0 => S_AXI_ARREADY,
      axi_awready_reg_0 => S_AXI_AWREADY,
      axi_rvalid_reg_0 => S_AXI_RVALID,
      sMcuInputControl(31 downto 0) => sMcuInputControl(31 downto 0)
    );
end STRUCTURE;
