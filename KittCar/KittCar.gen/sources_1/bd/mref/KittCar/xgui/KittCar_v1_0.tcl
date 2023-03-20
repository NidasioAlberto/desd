# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "REGISTER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TAIL_LENGTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.REGISTER_WIDTH { PARAM_VALUE.REGISTER_WIDTH } {
	# Procedure called to update REGISTER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGISTER_WIDTH { PARAM_VALUE.REGISTER_WIDTH } {
	# Procedure called to validate REGISTER_WIDTH
	return true
}

proc update_PARAM_VALUE.TAIL_LENGTH { PARAM_VALUE.TAIL_LENGTH } {
	# Procedure called to update TAIL_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TAIL_LENGTH { PARAM_VALUE.TAIL_LENGTH } {
	# Procedure called to validate TAIL_LENGTH
	return true
}


proc update_MODELPARAM_VALUE.REGISTER_WIDTH { MODELPARAM_VALUE.REGISTER_WIDTH PARAM_VALUE.REGISTER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGISTER_WIDTH}] ${MODELPARAM_VALUE.REGISTER_WIDTH}
}

proc update_MODELPARAM_VALUE.TAIL_LENGTH { MODELPARAM_VALUE.TAIL_LENGTH PARAM_VALUE.TAIL_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TAIL_LENGTH}] ${MODELPARAM_VALUE.TAIL_LENGTH}
}

