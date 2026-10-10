# 2-bit Synchronous Counter

Digital System Design / Verilog project implementing a 2-bit synchronous binary counter using JK flip-flops.

## Counter sequence

`00 → 01 → 10 → 11 → 00 → ...`

- Both JK flip-flops share the same clock.
- `J1 = K1 = 1`
- `J2 = K2 = Q1`
- `Q1` is the LSB and `Q2` is the MSB.

## Project contents

- `rtl/` — Verilog RTL modules
- `tb/` — simulation testbench
- `schematic_diagram/` — circuit schematic
- Quartus project files (`.qpf`, `.qsf`)

Generated ModelSim/Quartus build files are intentionally excluded from this archive.
