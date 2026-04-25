---
title: Trusses and Frames
module: EN1213
topic: mechanics/statics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Trusses and Frames - Wu]]"
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Analysis Methods for Trusses - Wu]]"
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Frame Analysis - Wu]]"
module_index: "[[/_modules/EN1213]]"
tags: [statics, mechanics]
---

# Trusses and Frames

Structures composed of connected rigid bodies introduce internal forces at the joints between members. Truss and frame analysis extends equilibrium principles to determine these internal forces, which govern whether individual members will fail in tension or compression. Lectured by Dr Zhangming Wu as part of EN1213/1214/1218.

---

## Two-Force and Three-Force Bodies

Before analysing a complete structure, identifying **two-force** and **three-force bodies** within it simplifies the problem greatly.

**Two-force body** — loaded at exactly two points:
> If only two forces act on a body in equilibrium, they must be equal and opposite and share the same line of action.

This means the force direction is known along the line joining the two load points — only the magnitude needs to be found. Truss members are treated as two-force bodies.

**Three-force body** — loaded at exactly three points:
> If only three forces act on a body in equilibrium, their lines of action must intersect at a single point OR must all be parallel.

This geometry constraint reduces the number of unknowns and is frequently exploited in frame analysis.

---

## Truss Structures

A **truss** is a structure formed from straight members joined at their endpoints (nodes). Key assumptions:
- All joints are frictionless pins
- Loads are applied at joints only
- Member weight is neglected
- Each member carries axial force only — tension (+) or compression (−)

A **simple truss** is built from a basic triangle by adding two members and one joint at each step: `m = 2j − 3` where m = members and j = joints.

### Method of Joints

Isolate each joint as a particle in [[statics-fundamentals|equilibrium]]. At each joint:

$$\sum F_x = 0 \qquad \sum F_y = 0$$

Start from a joint with at most two unknown member forces. The sign convention is:
- **Tension** → force pulls away from the joint
- **Compression** → force pushes toward the joint

Work through each joint in sequence until all member forces are determined.

### Method of Sections

Cut the truss along a section that passes through the members of interest. Apply equilibrium to either half, treating cut members as forces applied at the cut. A maximum of three unknowns can be solved from one cut (three equations of equilibrium).

Choosing the moment point cleverly — at the intersection of two unknown force lines of action — eliminates those unknowns and isolates the third, allowing direct solution.

---

## Frame Analysis

A **frame** contains at least one member that is **not** a two-force body (it carries loads at points other than its ends, or its geometry is not straight). Frames are structures designed to carry loads; **machines** are frames designed to transmit or transform forces.

Method:
1. Draw FBD of the whole structure and solve for external reactions at supports
2. Disassemble into individual members
3. Apply Newton's Third Law at each joint — the force on member A from member B is equal and opposite to the force on member B from member A
4. Solve each member's FBD using [[statics-fundamentals|equilibrium equations]], looking for two-force bodies first

Internal pin forces often have both x and y components and must be included as unknowns until the equilibrium equations resolve them.

---

## Links

- [[EN1213/mechanics/wiki/statics/statics-fundamentals|Statics Fundamentals — Forces and Moments]]
- [[EN1213/mechanics/wiki/statics/friction|Friction]]
- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain]]
- [[_modules/EN1213|EN1213 Module Index]]
