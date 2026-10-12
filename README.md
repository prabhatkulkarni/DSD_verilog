# Digital System Design — Verilog RTL

A growing collection of **Digital System Design (DSD)** exercises and projects implemented in **Verilog HDL**. The focus is on understanding circuit behaviour, writing RTL, and validating designs through simulation.

## Projects

| Project | What it covers | Included material |
|---|---|---|
| [01 — Synchronous Counter](./01_Synchronous_Counter/) | 2-bit synchronous counter and sequential state transitions | RTL, testbench area, schematic, and Quartus project files |
| [02 — Combinational Logic](./02_Combinational_Logic/) | Half Adder and Full Adder using dataflow and structural modelling | Source RTL, testbench, simulation material, and Quartus project files |
| [03 — Multiplexer / Demultiplexer](./03_Multiplexer_Demultiplexer/) | 2:1 and 4:1 multiplexer examples, including structural and direct implementations | Verilog source, Quartus project, simulation folder, and schematics |

## Tools

- **Verilog HDL** — RTL and testbench development
- **ModelSim Intel FPGA Edition** — functional simulation
- **Intel Quartus Prime Lite** — FPGA project setup and RTL analysis
- **Logisim Evolution** — exploring circuit behaviour and schematics

## Verification approach

For combinational designs, test all possible input combinations and compare DUT outputs against expected results. For example, a full adder has eight input combinations across `A`, `B`, and `Cin`.

For sequential designs, check state transitions at active clock edges and confirm reset behaviour. The completion status of each testbench should be recorded in the corresponding project folder as verification work progresses.

## Repository structure

```text
DSD_verilog/
├── 01_Synchronous_Counter/
│   ├── rtl/
│   ├── tb/
│   ├── schematic_diagram/
│   └── quartus/
├── 02_Combinational_Logic/
│   ├── src/
│   ├── tb/
│   ├── simulation/
│   └── schematic diagram/
├── 03_Multiplexer_Demultiplexer/
│   ├── src/
│   ├── simulation/
│   └── schematic_digram/
└── README.md
```

Folder names are kept as they currently exist in the repository; a later cleanup can standardize spelling and naming without changing the designs themselves.

## Learning roadmap

- [x] Half adder and full adder RTL
- [x] Dataflow and structural modelling examples
- [x] Self-checking full-adder simulation work
- [x] Multiplexer RTL examples
- [ ] Finish and document counter-level testbench coverage
- [ ] Add decoder and encoder implementations
- [ ] Add comparator and ALU designs
- [ ] Add a finite-state-machine sequence detector
- [ ] Add registers and a register file
- [ ] Explore a carry-lookahead adder

This repository records the process of learning digital design through implementation, simulation, debugging, and documentation. Project-level READMEs should be used for specific build and simulation commands.
