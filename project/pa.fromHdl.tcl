
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Microprocessor -dir "E:/URK96/Working/Project/FPGA/Microprocessor/project/planAhead_run_1" -part xc7z010clg400-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Top.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/CLK125M_CLK10M.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {CLK10Mto10K.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {BCD7Segment.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {RAM.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {IO.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Control.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ALU.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Top $srcset
add_files [list {Top.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7z010clg400-2
