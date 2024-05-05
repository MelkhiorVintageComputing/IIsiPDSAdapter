# PDS Adapter for the Macintosh IIsi

This repository contains recreated PDS adapters for the Macintosh IIsi.

They include a small switch to select the FPU clock, either the CPU clock (20 MHz) or the on-board oscillator (whatever 5V, DIP-8 or DIP-14 oscillator is soldered).

## PLCC

MC68882 FPU tested and working at 20 MHz (system clock)

MC68882 FPU tested and working at 25 MHz (on-board oscillator).

MC68882 FPU tested at 32 MHz, but if the adapter is stand-alone Error 11 occurs when using the FPU. When a [IIsiFPGA](https://github.com/rdolbeau/IIsiFPGA) is plugged in the second slot, 32 MHz seems to work reliably. Current hypothesis is some signal integrity issue when no PDS board is plugged in the adapter.

## PGA

MC68882 FPU tested and working at 20 MHz (system clock)

MC68882 FPU tested and working at 40 MHz (on-board oscillator), using a genuine XC68882RC40

Also known to work at 40 MHz with a IIsiFPGA in the second slot.

## PGA-DUAL

MC68882 FPU tested and working at 20 MHz (system clock) alongside a IIsiFPGA ans IIsiSEthernet, although [with some questions about signal integrity and/or timings](https://68kmla.org/bb/index.php?threads/sethernet-and-sethernet-30-a-new-take-on-pds-ethernet.45888/post-531637).
