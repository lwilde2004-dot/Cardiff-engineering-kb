---
tags: [flashcards, materials-science, materials-testing, EN1213, exam2]
---

# Exam 2 — Materials MCQ Flashcards

<!-- Exam-targeted cards: NOT TRUE traps, calculations, mechanism ID, and wider wiki topics -->

---

## FC1 — Solid Solution Effect on Properties — Core

A Cu-25wt%Ni alloy is made. How do its mechanical properties change compared to pure copper, and why?
?
Strength INCREASES and ductility DECREASES.
The Ni atoms distort the Cu lattice (different atomic radius) → local strain fields impede dislocation movement → harder to deform plastically → higher strength, lower ductility.
Never: both increase, or strength decreases. Adding any solute always increases strength and always reduces ductility.

---

## FC2 — Dislocation Pinning: Smaller Atom — Core

Where should a SMALLER substitutional atom be placed relative to an edge dislocation to INCREASE the force needed to move it?
?
In the COMPRESSIVE region ABOVE the slip plane.
An edge dislocation has compressed lattice above the slip plane and tensile lattice below. A smaller atom fits more easily into the compressed region and relieves the local stress there — this lowers the overall energy, making it energetically favourable for the atom to sit there and act as a pin.
Exam trap: do NOT say "tensile region below" — that is where LARGER atoms go.

---

## FC3 — Dislocation Pinning: Larger Atom — Core

A statement reads: "Atoms in the crystal structure are replaced by larger atoms. The larger atoms reduce the stress in the TENSILE region around dislocations, therefore increasing the stress required to move them." Which strengthening mechanism is this?
?
Substitutional solid solution strengthening.
Larger atoms prefer the tensile region BELOW the slip plane (relieves tension). This pins the dislocation. The mechanism is substitutional (atoms replace lattice sites, not fit between them).
Note: if atoms fit BETWEEN lattice sites → interstitial solid solution strengthening (e.g. C in Fe).

---

## FC4 — Ceramic Brittleness — Core

Why are ceramic materials brittle? Choose the correct reason from these four options:
A) High-strength ionic/covalent bonds that do not allow dislocation motion
B) Secondary bonds that break easily
C) Very small grain sizes blocking dislocation motion
D) High dislocation density causing entanglement
?
A — Ionic/covalent bonds are strongly directional and very strong.
Slip would bring like-charged ions adjacent → electrostatic repulsion → bond breaks catastrophically rather than deforming plastically. Unlike metallic bonds (non-directional, allow slip), ionic/covalent bonds do not permit dislocation glide. There are essentially no mobile dislocations.
B is wrong (secondary bonds are weak and not the primary bonding in ceramics). C and D describe metallic strengthening mechanisms.

---

## FC5 — Ceramic Test Type and Strength — Application

A set of ceramic samples is to be tested. Which test type gives the HIGHEST measured average strength?
?
COMPRESSION.
Ceramics fail by crack propagation from surface defects. In tension, surface cracks open → low fracture stress. In bending, the tensile surface opens cracks → intermediate strength. In compression, cracks close (compressive stress holds crack faces together) → highest measured strength.
Order: Compression > Bending > Tension.
This is why ceramics are used in compression in structures (e.g. concrete, brick, tiles).

---

## FC6 — Reading Phase Diagram: Composition of a Phase — Application

On a binary phase diagram, an alloy of 30 wt% Ag is at 900°C and sits in a two-phase (α + Liquid) region. The α-phase boundary at 900°C is at 9 wt% Ag and the liquidus is at 71.9 wt% Ag. What is the composition of the liquid phase?
?
71.9 wt% Ag.
To find the COMPOSITION of a phase: draw a horizontal tie-line at that temperature and read where it meets the boundary of the phase you want.
The liquid phase composition = where the tie-line meets the LIQUIDUS = 71.9 wt% Ag.
Do NOT use the lever rule — that gives the FRACTION, not the composition.

---

## FC7 — Lever Rule Calculation: Phase Fraction — Formula

Using the same diagram: α-boundary at 9 wt% Ag, liquidus at 71.9 wt% Ag, alloy composition 30 wt% Ag. How much of the LIQUID phase is present?
?
f_liquid = (X₀ − X_α) / (X_liquid − X_α) = (30 − 9) / (71.9 − 9) = 21 / 62.9 = 0.334 = 33.4 wt%
f_α = 1 − 0.334 = 66.6 wt%

Method: the lever rule gives fractions (amounts), not compositions.
f_phase = (opposite arm length) / (total tie-line length)
The "opposite arm" for liquid = distance from α boundary to alloy composition (X₀ − X_α).

---

## FC8 — Lever Rule: δ Phase Fraction — Application

On the Cu-Sn phase diagram, a 20 wt% Sn alloy at 400°C is in a two-phase region. The boundary on one side (α side) is at approximately 11 wt% Sn and the boundary on the δ side is at 36 wt% Sn. How much δ phase is present?
?
f_δ = (X₀ − X_α) / (X_δ − X_α) = (20 − 11) / (36 − 11) = 9 / 25 = 0.36 = 36 wt%
<!--SR:!2026-05-18,4,270-->

This is the fraction you are asked for (the "δ" phase fraction). Always check which phase fraction is requested — the lever rule formula is (opposite boundary − alloy composition) / (total tie-line length).

---

## FC9 — Rule of Mixtures Calculation — Formula

A unidirectional CFRP composite has Vf = 0.64, Ef = 275 GPa, Em = 4 GPa. Calculate the longitudinal modulus.
?
Longitudinal (parallel to fibres):
Ec = Vf·Ef + (1−Vf)·Em = 0.64×275 + 0.36×4 = 176 + 1.44 = 177.4 GPa ≈ 177 GPa.

This uses the assumption of UNIFORM STRAIN in fibre and matrix (upper bound — fibres and matrix deform by the same amount).
For transverse: 1/Ec = Vf/Ef + Vm/Em → assumes UNIFORM STRESS (lower bound).

---

## FC10 — Fracture Toughness Calculation: Stress — Formula

A vehicle component has an edge crack of 8 mm length. The material has KIC = 29 MPa√m and a flaw shape factor Y = 1.13. What stress would cause fracture?
?
σ = KIC / (Y × √(π × a))
a = 8 mm = 0.008 m (full length for edge crack)
σ = 29 / (1.13 × √(π × 0.008))
√(π × 0.008) = √(0.02513) = 0.1585
σ = 29 / (1.13 × 0.1585) = 29 / 0.1791 = 162 MPa

---

## FC11 — Fracture Toughness Calculation: Crack Size — Formula

A plate of 2024-T851 aluminium alloy (Kc = 25 MPa√m) is subjected to 250 MPa tensile stress. What is the maximum permissible edge crack size? (Y = 1.11)
?
a = (KIC / (Y × σ))² / π
a = (25 / (1.11 × 250))² / π
= (25 / 277.5)² / π
= (0.09009)² / π
= 0.008116 / π
= 0.00258 m = 2.58 mm ≈ 2.5 mm

---

## FC12 — Fatigue Crack Initiation: NOT TRUE — Core

Which of the following statements about fatigue crack INITIATION is NOT TRUE?
A) Caused by dislocations accumulating on slip planes
B) Occurs NORMAL to the applied stress
C) Affected by surface finish and notches
D) Involves intrusions and extrusions at the surface
?
B — "Occurs normal to the applied stress" is NOT TRUE for initiation.
Stage I (initiation) occurs along SLIP PLANES at approximately 45° to the applied stress — following the maximum shear stress direction. Intrusions and extrusions form at the surface on these planes.
It is Stage II (PROPAGATION) that grows perpendicular (normal) to the maximum principal stress — leaving beach marks and striations.
C and D are both true: surface finish matters (notches reduce life) and intrusions/extrusions are the initiation mechanism.
<!--SR:!2026-05-17,3,250-->

---

## FC13 — Fatigue Crack Propagation: NOT TRUE — Core

Which of the following is NOT a characteristic of fatigue crack propagation?
A) Crack grows along slip planes
B) Crack growth is perpendicular to maximum stress
C) Stress intensity at crack tip is the most important factor
D) Stress amplitude and R-ratio are also important
?
A — "Grows along slip planes" is Stage I INITIATION, not Stage II propagation.
Stage II propagation grows PERPENDICULAR to the maximum principal stress (Mode I crack opening), driven by the stress intensity range ΔK = Kmax − Kmin.
Paris Law: da/dN = C(ΔK)^m quantifies the growth rate.
B, C, and D are all true for Stage II propagation.

---

## FC14 — Creep Mechanism from Description — Core

Which type of creep involves dislocation GLIDING between slip planes and CLIMBING over obstacles?
?
Dislocation creep.
At elevated temperature, thermal energy allows dislocations to climb (move perpendicular to their slip plane, driven by vacancy diffusion) as well as glide. Climbing allows dislocations to bypass obstacles such as precipitates — enabling continued deformation at stresses below the room-temperature yield stress.
Dislocation creep dominates at HIGH stress and MODERATE-HIGH temperature (T/Tm 0.3–0.6).
Diffusion creep (Nabarro-Herring): atom diffusion through grains — very high T, low stress.
Coble creep: diffusion along grain boundaries — lower T than Nabarro-Herring.

---

## FC15 — Creep Stages — Core

Describe the three stages of a creep curve and state which stage engineering components spend most of their service life in.
?
Stage I (Primary): rapid initial deformation at decreasing strain rate — work hardening dominates over recovery.
Stage II (Secondary / steady-state): constant MINIMUM strain rate — balance between work hardening and thermally activated recovery. Components spend most service life here.
Stage III (Tertiary): accelerating strain rate → fracture — caused by necking, grain boundary cavitation, or microstructural damage accumulation.
Engineering design uses the secondary creep rate and rupture time from this stage.

---

## FC16 — Creep Rupture Relationship — Core

What is the relationship between stress and rupture time in creep testing?
?
There is a LINEAR relationship between LOG(stress) and LOG(rupture time).
On a log-log plot, creep rupture data falls on a straight line — this is used to extrapolate from short test durations to predict long-term service life.
Trap: the relationship is NOT linear on a linear scale, and NOT linear between stress and log(time).
<!--SR:!2026-05-15,1,230-->

---

## FC17 — Homologous Temperature — Core

What is homologous temperature and why does it matter for creep?
?
Homologous temperature = T/Tm where both T (service temperature) and Tm (melting point) are in Kelvin.
Creep becomes significant when T/Tm > 0.4.
Examples:
- Lead: Tm = 601 K → T/Tm at 20°C = 293/601 = 0.49 → lead CREEPS AT ROOM TEMPERATURE
- Steel: Tm ≈ 1811 K → creep significant above ~450°C
- Aluminium: Tm ≈ 933 K → creep significant above ~100°C
This is why turbine blades, boiler tubes, and nuclear components are designed against creep.

---

## FC18 — Process Annealing: NOT TRUE — Core

Which of these statements about PROCESS ANNEALING is NOT TRUE?
A) Temperature is increased to just below the ferrite-austenite region (below A1)
B) Cooling takes place in a furnace
C) The ferrite phase recrystallises
D) Used for cold-worked components (extrusion, drawing)
?
B — "Cooling takes place in a furnace" is NOT TRUE for process annealing.
Process annealing (recrystallisation annealing) involves air cooling — not slow furnace cooling. Furnace cooling is used in FULL ANNEALING (which heats above A3 and produces coarse pearlite).
Process annealing heats just below A1 to allow recrystallisation of ferrite without forming austenite, then air cools. Used specifically to soften cold-worked metals (work hardening reversed by recrystallisation).

---

## FC19 — Jominy Test: NOT TRUE — Core

Which of the following is NOT TRUE about the Jominy end-quench test?
A) All variables except material are kept constant
B) The specimen is heated and then cooled at different rates along its length
C) Hardness x mm from the quenched end corresponds to hardness x mm below the surface of a bar
D) Results cannot be used to predict hardness of components with different diameters to the test piece
?
D — Results CAN be used to predict hardness in bars of different diameters using equivalence charts.
The Jominy test is specifically designed to allow prediction of hardness profiles in real components of various sizes. Equivalence charts relate the cooling rate at a given depth in a bar of known diameter to the equivalent Jominy distance.
B is true: one end quenches very fast, the other end cools slowly → a continuous range of cooling rates along one specimen.

---

## FC20 — Vickers Hardness: NOT TRUE — Core

Which of the following statements about Vickers indentation testing is NOT TRUE?
A) It can tell us if material properties meet the required specification
B) It can tell us if the component received the correct heat treatment
C) It is normally performed in situ (on the installed component)
D) It is a non-destructive test
?
C — Vickers is NOT normally performed in situ.
Vickers requires: a polished flat surface, a controlled-load indenter, and measurement of the indent diagonal under a microscope. This is a laboratory test. In situ testing on installed components is done using portable methods such as Leeb rebound hardness or ultrasonic testing.
D is true: Vickers leaves only a small indent; the part can still be used — it is classified as non-destructive.

---

## FC21 — NDT Method Identification — Core

Which NDT method is NOT suitable for finding cracks in a steel pressure vessel in situ during a plant shutdown?
A) Eddy current
B) Scanning electron microscopy (SEM)
C) Magnetic particle inspection
D) Dye penetrant
?
B — SEM is NOT suitable in situ.
SEM requires: a vacuum chamber, a polished or conductive specimen, and laboratory infrastructure. It cannot be used on an installed vessel.
Eddy current, magnetic particle, and dye penetrant are all portable, in-situ methods routinely used on plant equipment during shutdowns. Ultrasonic testing (not listed) is also in-situ.

---

## FC22 — Ductile vs Brittle Fracture Appearance — Core

Describe the fracture surface appearance and failure behaviour of ductile vs brittle fracture.
?
Ductile fracture:
- Large plastic deformation before fracture (cup-and-cone morphology in tension)
- Fracture surface is dull, fibrous, with a shear lip
- Cracks are STABLE — grow slowly as load increases (warning before final failure)

Brittle fracture:
- Little or no plastic deformation — sudden, catastrophic, no warning
- Fracture surface is bright, crystalline/granular (cleavage); chevron markings point toward crack origin
- Cracks are UNSTABLE — propagate without increase in applied stress
- More likely at: low temperature, high strain rate, thick sections, triaxial stress states

---

## FC23 — Carbon Content and Steel Properties — Core

Which of the following does NOT increase with increasing carbon content in steel?
A) Yield strength
B) Percentage of cementite
C) Ductility
D) Tensile strength
?
C — Ductility DECREASES with increasing carbon content.
More carbon → more cementite (Fe₃C) → harder, stronger → but more brittle. As carbon increases: yield strength ↑, UTS ↑, hardness ↑, cementite % ↑, but ductility (% elongation) ↓ and toughness ↓.
Low carbon steel (~0.2% C): ductile, weldable, structural use.
High carbon steel (~0.8% C): hard, wear-resistant, springs and cutting tools but brittle.

---

## FC24 — Edge Dislocation Structure — Core

In an edge dislocation, where is the compressive stress region and where is the tensile stress region? Why does this matter for strengthening?
?
ABOVE the slip plane (on the side with the extra half-plane of atoms): COMPRESSIVE stress — atoms are squeezed together by the inserted half-plane.
BELOW the slip plane: TENSILE stress — lattice is stretched to accommodate the missing atoms.
This matters for strengthening: solute atoms migrate to the stress region that best relieves their own misfit strain — smaller atoms go above (compressive), larger atoms go below (tensile). This lowers energy, pins the dislocation, and increases the stress needed to move it (solid solution strengthening).

---

## FC25 — Bond Type from Description — Core

Which bond type is described by: "A metal atom loses an electron and donates it to a non-metallic atom. The resulting electrostatic forces form a strong, stiff, non-directional bond"?
?
IONIC bonding — but the description contains an ERROR.
Ionic bonds ARE strong and stiff, but they ARE directional (the charge distribution is not uniform around the ions — ions of opposite charge attract but same-charge ions repel). Ionic bonds are actually DIRECTIONAL in nature, which is why ionic materials are brittle.
If the question says "non-directional" and asks which bond type: METALLIC bonding is truly non-directional (the electron cloud is uniform around metal cation cores). Ionic bonding is sometimes loosely called non-directional in some textbooks — if this appears in an exam, the answer they likely want is Ionic.
<!--SR:!2026-05-15,1,230-->

---

## FC26 — Modulus from Stress-Strain Curve — Application

Four stress-strain curves are shown. How do you identify which material has the highest Young's modulus?
?
Young's modulus = slope (gradient) of the ELASTIC (initial linear) region of the curve.
The material with the STEEPEST initial linear slope has the highest E.
This is INDEPENDENT of:
- Where the yield point is (that gives strength)
- The area under the curve (that gives toughness)
- The maximum stress (that gives UTS)
Common trap: the material with highest UTS is not necessarily the stiffest. E.g. a rubber band stretches a lot at low stress (low E) but a steel wire is stiff (high E) even at lower absolute force.

---

## FC27 — Hardness to Strength Comparison — Application

Four aluminium alloys are tested with Vickers hardness: 7075-T6 = 174 HV, 6082-T6 = 98 HV, 6061-T6 = 64 HV, 5052-H38 = 81 HV. Which has the highest strength?
?
7075-T6 — it has the highest hardness (174 HV).
Hardness and UTS are directly proportional for metals of the same class: UTS ≈ 3.3 × HV.
7075-T6: UTS ≈ 3.3 × 174 ≈ 574 MPa (actual ≈ 570 MPa — very accurate).
This is a precipitation-hardened aerospace alloy (Zn-Mg-Cu system), used in aircraft structures.
Ranking: 7075-T6 > 6082-T6 > 5052-H38 > 6061-T6.

---

## FC28 — Glass Transition Temperature — Definition

What is the glass transition temperature (Tg) and how does it differ from a melting point?
?
Tg is the temperature below which an amorphous material (glass, polymer) is rigid and brittle, and above which it becomes soft and viscous (rubbery for polymers, fluid for glass).
It is NOT a melting point — there is no latent heat and no sudden change of state. It is a gradual transition in a non-crystalline material that was cooled too rapidly to crystallise.
Below Tg: glassy, rigid, brittle; above Tg: viscous flow possible.
Engineering relevance: defines the service temperature limit of amorphous polymers (e.g. PMMA Tg ≈ 105°C; polycarbonate Tg ≈ 147°C). Glass fractures easily because of surface cracks — stress concentration at crack tips causes catastrophic failure.

---

## FC29 — Hall-Petch Relationship — Formula

State the Hall-Petch relationship and explain what it means for grain refinement as a strengthening mechanism.
?
σ_y = σ_0 + k · d^(−½)
σ_y = yield strength, σ_0 = friction stress (intrinsic lattice resistance), k = Hall-Petch slope (material constant), d = average grain diameter.
Smaller grain size (smaller d) → d^(−½) is larger → higher yield strength.
Mechanism: grain boundaries are regions of crystallographic mismatch — dislocations cannot easily cross them. More grain boundaries (smaller grains) means more obstacles → higher stress needed to propagate slip.
Grain refinement is unique among strengthening mechanisms in that it BOTH increases strength AND maintains (or improves) toughness. All other mechanisms that increase strength also reduce ductility.

---

## FC30 — Phase Diagram: Eutectic vs Eutectoid — Definition

Distinguish a eutectic reaction from a eutectoid reaction, giving the specific compositions and temperatures for the iron-carbon system.
?
Eutectic: a LIQUID phase transforms to two SOLID phases simultaneously on cooling at a fixed temperature and composition (the eutectic point — lowest melting point on the diagram).
Example (Fe-C): at 4.3 wt%C and 1148°C → L → austenite + cementite.

Eutectoid: a single SOLID phase transforms to two different SOLID phases simultaneously on cooling at a fixed temperature and composition.
Example (Fe-C): at 0.76 wt%C and 727°C → austenite (γ) → ferrite (α) + cementite (Fe₃C) = PEARLITE.

The eutectoid is the basis of steel heat treatment — heating above 727°C reforms austenite, then the cooling rate controls whether pearlite, bainite, or martensite forms.
