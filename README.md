# mips-mcu

A 32-bit MIPS CPU Core designed in SystemVerilog and deployed to an Artix-7 Baysis 3 FPGA.

```sh
. otter-mcu/
├── README.md
├── docs/
│   ├── design_specification.pdf
│   ├── user_manual.pdf
│   └── ...
├── rtl/
│   ├── my_module.sv
│   ├── another_module.sv
│   └── ...
├── tb/
│   ├── testbench.sv
│   ├── test_vectors/
│   │   ├── test_vector_1.sv
│   │   ├── test_vector_2.sv
│   │   └── ...
│   ├── simulations/
│   │   ├── modelsim/
│   │   │   ├── work/
│   │   │   ├── compile.do
│   │   │   └── ...
│   │   ├── xilinx_sim/
│   │   │   ├── project/
│   │   │   ├── ...
│   │   │   └── sim.do
│   │   └── ...
└── synthesis/
    ├── xilinx/
    │   ├── project.xpr
    │   ├── constraints/
    │   │   ├── my_constraints.xdc
    │   │   └── ...
    │   └── ...
    ├── quartus/
    │   ├── project.qpf
    │   ├── constraints/
    │   │   ├── my_constraints.sdc
    │   │   └── ...
    │   └── ...
    └── ...
```
