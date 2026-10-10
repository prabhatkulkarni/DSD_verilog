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
## Schematic Diagram 
<img width="870" height="403" alt="image" src="https://github.com/user-attachments/assets/465a8ed8-67a7-4379-93bd-47381cef5b05" />
This is schematic Diagram for  2 bit synchronous counter
[Screencast From 2026-10-10 16-51-22.webm](https://github.com/user-attachments/assets/2c9bf4ee-e890-41ad-81f4-af8707ed36c7)
This is logisim-evolution simulator where I learn the significance who synchronous counter work ,it show case the vedio of it.
