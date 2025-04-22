# 🔐 4-to-2 Priority Encoder with Valid Bit (Verilog)

Hey! This is my custom implementation of a 4-to-2 Priority Encoder using Verilog.  
I built and tested this myself — from logic design, Boolean expressions, Verilog coding to simulation and validation.  
Feeling super proud of how it turned out!

---

## 🚀 What This Does

This module takes 4 inputs and gives a 2-bit output showing the highest-priority input that's high.  
I also added a `valid` signal to tell if any input is active at all.

> Priority Order: `I3 > I2 > I1 > I0`

If multiple inputs are `1`, the encoder chooses the one with the highest priority.

---

## 🔧 Inputs & Outputs

| Signal | Type     | Meaning                        |
|--------|----------|--------------------------------|
| `a`    | Input     | I3 - Highest priority input   |
| `b`    | Input     | I2                            |
| `c`    | Input     | I1                            |
| `d`    | Input     | I0 - Lowest priority input    |
| `y1`   | Output    | MSB of output                 |
| `y0`   | Output    | LSB of output                 |
| `v`    | Output    | Valid - 1 if any input is high |

---

## 🧠 Truth Table

| I3 (a) | I2 (b) | I1 (c) | I0 (d) | y1 | y0 | Valid (v) |
|--------|--------|--------|--------|----|----|------------|
|   0    |   0    |   0    |   0    | x  | x  |     0      |
|   0    |   0    |   0    |   1    | 0  | 0  |     1      |
|   0    |   0    |   1    |   x    | 0  | 1  |     1      |
|   0    |   1    |   x    |   x    | 1  | 0  |     1      |
|   1    |   x    |   x    |   x    | 1  | 1  |     1      |

(`x` means "don’t care" — it’s ignored if a higher-priority input is active.)

---

## 💻 Verilog Code

```verilog
module FourtoTwoEncoder (
  input a, b, c, d,
  output y1, y0, v
);

assign v  = a | b | c | d;
assign y1 = a | b;
assign y0 = a | (c & ~a & ~b) | (~a & ~b & ~d);

endmodule
