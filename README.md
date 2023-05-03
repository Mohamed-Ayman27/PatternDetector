## Overlapping Pattern Detector
This project implements an overlapping pattern detector module using Verilog HDL. The module is designed to detect the pattern "11010" in a continuous bit stream, starting from the left. The module is designed to operate in the overlapping style of pattern detectors, which allows it to detect patterns that span across two consecutive bytes. The project also includes a detailed discussion on implementing the module on an FPGA Xilinx Spartan-6.

## Table of Contents
- [Introduction](#introduction)
- [Design Overview](#design-overview)
- [Implementation on FPGA Xilinx Spartan-6](#implementation-on-fpga-xilinx-spartan-6)
- [Conclusion](#conclusion)

## Introduction
The pattern detector module is a fundamental building block for many digital systems that perform data analysis, image processing, and signal processing tasks. The goal of this project is to design and implement a pattern detector module that can detect the pattern "11010" in a continuous bit stream.

The module is implemented using Verilog HDL, a hardware description language used to model digital circuits. The design is tested using simulation tools to verify its correct operation. Additionally, this project also includes a discussion on implementing the pattern detector module on an FPGA Xilinx Spartan-6.

## Design Overview
The pattern detector module is implemented using sequential logic, which allows it to detect the pattern in a continuous bit stream. The module has two primary inputs: the clock signal and the input bit stream. The module also has two outputs: the pattern detected signal and the pattern matched signal.

The clock signal is used to synchronize the internal operations of the module. The input bit stream is a continuous stream of bits that are inputted into the module. The pattern detected signal is an output that indicates whether the pattern "11010" has been detected. The pattern matched signal is an output that indicates whether the current input matches the pattern "11010".

The design of the pattern detector module follows the overlapping style of pattern detectors. This allows the module to detect patterns that span across two consecutive bytes. The module uses a shift register to hold the last four bits of the input stream. The shift register is shifted by one bit on each clock cycle.

The module then compares the last five bits of the shift register with the pattern "11010". If the last five bits match the pattern, the module sets the pattern detected signal to 1. If the last four bits match the pattern, the module sets the pattern matched signal to 1.

The pattern detector module is tested using Verilog simulation tools. The test bench provides a sample input bit stream, and the simulation waveform displays the output signals of the module.

## Implementation on FPGA Xilinx Spartan-6
The pattern detector module can be implemented on an FPGA Xilinx Spartan-6. The Spartan-6 is a popular FPGA device used in many digital systems due to its high-performance and low-power consumption.

To implement the pattern detector module on the Spartan-6, the Verilog HDL code is synthesized using a synthesis tool such as Xilinx ISE. The synthesized netlist is then mapped onto the Spartan-6 using a place-and-route tool.

The Spartan-6 has multiple configurable logic blocks (CLBs) that can be used to implement the pattern detector module. The CLBs contain look-up tables (LUTs), flip-flops, and multiplexers that can be programmed to perform the desired logic functions.

The input bit stream is connected to one of the Spartan-6 input pins. The clock signal is connected to a clock input pin on the Spartan-6. The pattern detected and pattern matched signals are connected to two output pins on the Spartan-6.

Once the design is implemented on the Spartan-6, it 
can be tested using a hardware debugger or a logic analyzer. The hardware debugger allows the designer to observe the internal signals of the design and verify its correct operation. The logic analyzer captures the input and output signals of the design and displays them in a waveform format for further analysis.

## Conclusion
In conclusion, the pattern detector module is a useful building block for many digital systems. This project implemented an overlapping pattern detector module using Verilog HDL and discussed its implementation on an FPGA Xilinx Spartan-6. The module was designed to detect the pattern "11010" in a continuous bit stream, starting from the left. The design followed the sequential logic approach, which allowed it to detect the pattern in a continuous bit stream. The implementation on the Spartan-6 involved synthesizing the Verilog code and mapping it onto the FPGA. The module was then tested using a hardware debugger or a logic analyzer. Overall, this project provides a valuable insight into the design and implementation of pattern detector modules using Verilog HDL and FPGA devices.
