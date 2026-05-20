---
title: Probability and Statistics
module: EN1211
topic: probability-statistics
type: wiki
source: "[[EN1211/raw/probability-statistics/EN1211 - Probability and Statistics - Staff]]"
tags: [EN1211, maths, probability, statistics]
---

# Probability and Statistics

Statistics provides methods to collect, organise, and analyse data to draw conclusions. Probability quantifies uncertainty. Together they underpin quality control, reliability engineering, experimental design, and data analysis throughout engineering.

---

## 1. Key Definitions

- **Population:** the complete set of all items/events of interest
- **Sample:** a subset of the population used for analysis
- **Variable:** a quantity that can take different values (e.g. bolt length)
- **Event:** a specific outcome or set of outcomes

---

## 2. Data Representation

**Frequency table:** tallies occurrences of each value or class interval.

**Histogram:** bar chart where bar area ∝ frequency; bar height = frequency density = frequency/class width.

**Cumulative frequency curve (ogive):** plot of cumulative frequency vs upper class boundary; use to find median, quartiles.

---

## 3. Measures of Central Tendency

| Measure | Definition | Formula |
|---|---|---|
| Mean (x̄) | Arithmetic average | x̄ = Σx/n = Σfx/Σf (grouped) |
| Median | Middle value when ordered | 50th percentile |
| Mode | Most frequent value | — |

For grouped data: x̄ = Σ(fₘ·xₘ)/Σf where xₘ = class midpoint, fₘ = class frequency.

---

## 4. Measures of Dispersion

| Measure | Definition | Formula |
|---|---|---|
| Range | Max − Min | — |
| Variance (σ²) | Mean squared deviation from mean | σ² = Σ(x−x̄)²/n = Σx²/n − x̄² |
| Standard deviation (σ) | √(variance) | σ = √(Σ(x−x̄)²/n) |

**Sample variance** uses (n−1) in denominator (Bessel's correction for unbiased estimate):
s² = Σ(x−x̄)²/(n−1)

---

## 5. Probability Rules

**P(A):** probability of event A occurring, 0 ≤ P(A) ≤ 1

**Complement:** P(A') = 1 − P(A)

**Addition rule:**
P(A ∪ B) = P(A) + P(B) − P(A ∩ B)
For mutually exclusive events (A ∩ B = ∅): P(A ∪ B) = P(A) + P(B)

**Multiplication rule:**
P(A ∩ B) = P(A|B) × P(B)
For independent events: P(A ∩ B) = P(A) × P(B)

**Conditional probability:** P(A|B) = P(A ∩ B) / P(B)

---

## 6. Probability Distributions

### Discrete: Binomial Distribution
Models n independent trials, each with probability p of success. Number of successes X:

$$P(X = r) = \binom{n}{r} p^r (1-p)^{n-r}$$

Mean = np;  Variance = np(1−p)

**Use when:** fixed number of trials; two outcomes (success/fail); constant probability; independent trials.

### Discrete: Poisson Distribution
Models rare events with average rate λ per interval:

$$P(X = r) = \frac{\lambda^r e^{-\lambda}}{r!}$$

Mean = Variance = λ

**Use when:** counting events in a fixed time/space; events occur independently; average rate is constant.

### Continuous: Normal Distribution
Symmetric bell curve; mean μ, standard deviation σ:
$$X \sim N(\mu, \sigma^2)$$

**Standardise:** Z = (X − μ)/σ ~ N(0,1) — then use standard normal tables.

**68-95-99.7 rule:** 68% within ±1σ; 95% within ±2σ; 99.7% within ±3σ of mean.

---

## 7. Hypothesis Testing (Basic)

1. State null hypothesis H₀ and alternative H₁
2. Choose significance level α (typically 0.05)
3. Calculate test statistic from sample data
4. Find p-value (probability of result as extreme as observed, given H₀)
5. If p-value < α: **reject H₀**; if p-value ≥ α: **fail to reject H₀**

---

## Links
- [[EN1211/wiki/INDEX|Module Index]]
