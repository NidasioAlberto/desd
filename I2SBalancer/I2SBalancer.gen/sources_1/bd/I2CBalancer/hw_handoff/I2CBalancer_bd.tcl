
################################################################
# This is a generated script based on design: I2CBalancer
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source I2CBalancer_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name I2CBalancer

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set rx_lrck_0 [ create_bd_port -dir O rx_lrck_0 ]
  set rx_mclk_0 [ create_bd_port -dir O rx_mclk_0 ]
  set rx_sclk_0 [ create_bd_port -dir O rx_sclk_0 ]
  set rx_sdin_0 [ create_bd_port -dir I rx_sdin_0 ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {} \
 ] $sys_clock
  set tx_lrck_0 [ create_bd_port -dir O tx_lrck_0 ]
  set tx_mclk_0 [ create_bd_port -dir O tx_mclk_0 ]
  set tx_sclk_0 [ create_bd_port -dir O tx_sclk_0 ]
  set tx_sdout_0 [ create_bd_port -dir O tx_sdout_0 ]

  # Create instance: axis_dual_i2s_0, and set properties
  set axis_dual_i2s_0 [ create_bd_cell -type ip -vlnv DigiLAB:ip:axis_dual_i2s:1.0 axis_dual_i2s_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {149.337} \
   CONFIG.CLKOUT1_PHASE_ERROR {122.577} \
   CONFIG.CLKOUT2_JITTER {201.826} \
   CONFIG.CLKOUT2_PHASE_ERROR {122.577} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {22.579} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {7.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {31} \
   CONFIG.NUM_OUT_CLKS {2} \
 ] $clk_wiz_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axis_dual_i2s_0_m_axis [get_bd_intf_pins axis_dual_i2s_0/m_axis] [get_bd_intf_pins axis_dual_i2s_0/s_axis]

  # Create port connections
  connect_bd_net -net axis_dual_i2s_0_rx_lrck [get_bd_ports rx_lrck_0] [get_bd_pins axis_dual_i2s_0/rx_lrck]
  connect_bd_net -net axis_dual_i2s_0_rx_mclk [get_bd_ports rx_mclk_0] [get_bd_pins axis_dual_i2s_0/rx_mclk]
  connect_bd_net -net axis_dual_i2s_0_rx_sclk [get_bd_ports rx_sclk_0] [get_bd_pins axis_dual_i2s_0/rx_sclk]
  connect_bd_net -net axis_dual_i2s_0_tx_lrck [get_bd_ports tx_lrck_0] [get_bd_pins axis_dual_i2s_0/tx_lrck]
  connect_bd_net -net axis_dual_i2s_0_tx_mclk [get_bd_ports tx_mclk_0] [get_bd_pins axis_dual_i2s_0/tx_mclk]
  connect_bd_net -net axis_dual_i2s_0_tx_sclk [get_bd_ports tx_sclk_0] [get_bd_pins axis_dual_i2s_0/tx_sclk]
  connect_bd_net -net axis_dual_i2s_0_tx_sdout [get_bd_ports tx_sdout_0] [get_bd_pins axis_dual_i2s_0/tx_sdout]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins axis_dual_i2s_0/aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins axis_dual_i2s_0/i2s_clk] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked] [get_bd_pins proc_sys_reset_1/dcm_locked]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axis_dual_i2s_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins axis_dual_i2s_0/i2s_resetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net reset_0_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net rx_sdin_0_1 [get_bd_ports rx_sdin_0] [get_bd_pins axis_dual_i2s_0/rx_sdin]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


