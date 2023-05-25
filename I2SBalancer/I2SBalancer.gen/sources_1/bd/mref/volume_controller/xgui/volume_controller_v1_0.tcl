# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AMPLIFICATION_EXPONENT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BITS_VOLUME" -parent ${Page_0}


}

proc update_PARAM_VALUE.AMPLIFICATION_EXPONENT { PARAM_VALUE.AMPLIFICATION_EXPONENT } {
	# Procedure called to update AMPLIFICATION_EXPONENT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AMPLIFICATION_EXPONENT { PARAM_VALUE.AMPLIFICATION_EXPONENT } {
	# Procedure called to validate AMPLIFICATION_EXPONENT
	return true
}

proc update_PARAM_VALUE.BITS_VOLUME { PARAM_VALUE.BITS_VOLUME } {
	# Procedure called to update BITS_VOLUME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BITS_VOLUME { PARAM_VALUE.BITS_VOLUME } {
	# Procedure called to validate BITS_VOLUME
	return true
}


proc update_MODELPARAM_VALUE.AMPLIFICATION_EXPONENT { MODELPARAM_VALUE.AMPLIFICATION_EXPONENT PARAM_VALUE.AMPLIFICATION_EXPONENT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AMPLIFICATION_EXPONENT}] ${MODELPARAM_VALUE.AMPLIFICATION_EXPONENT}
}

proc update_MODELPARAM_VALUE.BITS_VOLUME { MODELPARAM_VALUE.BITS_VOLUME PARAM_VALUE.BITS_VOLUME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BITS_VOLUME}] ${MODELPARAM_VALUE.BITS_VOLUME}
}

