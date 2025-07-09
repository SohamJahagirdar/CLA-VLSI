# CLA-VLSI

# 🧮 CLA-VLSI: 4-bit Carry Look-Ahead Adder

A **4-bit Carry Look-Ahead (CLA) Adder** computes the sum of two 4-bit binary numbers and outputs a 4-bit sum along with a 5th carry-out bit. Unlike the **Ripple Carry Adder**, which processes carries sequentially, the CLA adder computes all carries in parallel using generate and propagate logic, significantly reducing propagation delay.

---

## 📘 CLA Block Structure

The CLA adder consists of three main blocks:
1. **Propagate (`pi`)**
2. **Generate (`gi`)**
3. **Carry (`ci`)**

### ➤ Propagate and Generate Logic

Given two input bits `ai` and `bi`:
pi = ai ⊕ bi
gi = ai ⋅ bi

### ➤ Carry Equations

Using `pi` and `gi`, the carry outputs are:
c1 = (p0 ⋅ c0) + g0
c2 = (p1 ⋅ p0 ⋅ c0) + (p1 ⋅ g0) + g1
c3 = (p2 ⋅ p1 ⋅ p0 ⋅ c0) + (p2 ⋅ p1 ⋅ g0) + (p2 ⋅ g1) + g2
c4 = (p3 ⋅ p2 ⋅ p1 ⋅ p0 ⋅ c0) + (p3 ⋅ p2 ⋅ p1 ⋅ g0) + (p3 ⋅ p2 ⋅ g1) + (p3 ⋅ g2) + g3

### ➤ Final Sum

Each sum bit is calculated as:
Si = pi ⊕ ci

## 🧩 Gate-Level Representation

The CLA circuit is implemented using a combination of:
- **XOR gates** (for `pi` and `Si`)
- **AND gates** (for intermediate propagate products)
- **OR gates** (for carry computation)

This results in a fully combinational logic circuit with significantly faster performance compared to sequential carry propagation.

---

## 🖼️ CLA Circuit Diagram
[4-bit CLA Logic Diagram](./cla_diagram.png "Carry Look-Ahead Adder Circuit")
That will render the image like this (once pushed to GitHub):
