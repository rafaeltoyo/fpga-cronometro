transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documents/cronometro/cont_100/cont_100.vhd}
vcom -93 -work work {D:/Documents/cronometro/cont_16/cont_16.vhd}

