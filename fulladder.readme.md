# Full Adder using Verilog

## 📌 Description

This project implements a **Full Adder** using Verilog HDL.

A Full Adder is a digital circuit that adds three 1-bit binary inputs and produces a Sum and Carry output.

## 🔌 Inputs

* `A` – First input
* `B` – Second input
* `Cin` – Carry input

## 📤 Outputs

* `Sum` – Sum output
* `Cout` – Carry output

## 🧮 Logic Equations

```text
Sum  = A XOR B XOR Cin

Cout = (A AND B) OR (B AND Cin) OR (A AND Cin)
```

## 📊 Truth Table

| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## 📁 Project Structure

```text
Full-Adder-Verilog/
│
├── src/
│   └── full_adder.v
│
├── testbench/
│   └── full_adder_tb.v
│
├── simulation/
│   └── expected_output.txt
│
└── README.md
```

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado

## ▶️ Simulation using Icarus Verilog

Compile the design and testbench:

```bash
iverilog -o full_adder_sim src/full_adder.v testbench/full_adder_tb.v
```

Run the simulation:

```bash
vvp full_adder_sim
```

## ✅ Expected Output

```text
A B Cin | Sum Cout
-------------------
0 0  0  |  0    0
0 0  1  |  1    0
0 1  0  |  1    0
0 1  1  |  0    1
1 0  0  |  1    0
1 0  1  |  0    1
1 1  0  |  0    1
1 1  1  |  1    1
```

## 📚 Learning Outcomes

* Understanding Full Adder logic
* Writing Verilog modules
* Creating a Verilog testbench
* Understanding truth tables
* Running digital logic simulations
* Verifying outputs
