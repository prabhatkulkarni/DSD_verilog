# Digital System Design — Verilog RTL

A growing collection of **Digital System Design (DSD)** exercises and projects implemented in **Verilog HDL**. The focus is on understanding digital circuits, writing RTL, and validating behaviour through simulation.

## Projects

| Project | What it covers | Status |
|---|---|---|
| [01 — 2-bit Synchronous Counter](./01_Synchronous_Counter/) | JK flip-flops, synchronous state transitions, counter schematic | RTL and supporting materials added; counter-level testbench is still in progress |
| [02 — Combinational Logic](./02_Combinational_Logic/) | Half Adder and Full Adder implementations using dataflow and structural modelling | Full Adder self-checking simulation completed |

## Tools

- **Verilog HDL** — RTL and testbench development
- **ModelSim Intel FPGA Edition** — functional simulation
- **Intel Quartus Prime Lite** — FPGA project setup and RTL analysis
- **Logisim Evolution** — exploring circuit behaviour and schematics

## Verification Approach

For combinational designs, the goal is to test every possible input combination and compare DUT outputs against expected results. The Full Adder testbench checks both implementations against the expected Sum and Carry for all eight input combinations.

For sequential designs, the next step is to complete counter-level testbench coverage and verify the state sequence across active clock edges.

## Repository Structure

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
└── README.md
```

## Planned Learning Path

- [x] Half Adder
- [x] Full Adder — dataflow implementation
- [x] Full Adder — structural implementation
- [x] Self-checking Full Adder testbench
- [ ] 2-bit synchronous counter testbench
- [ ] Multiplexer and decoder
- [ ] Comparator and ALU
- [ ] Sequence detector (FSM)
- [ ] Register file
- [ ] Carry-lookahead adder

This repository documents the process of learning digital design through implementation, simulation, debugging, and documentation.
