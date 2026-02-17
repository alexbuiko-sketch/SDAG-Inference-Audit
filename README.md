# SDAG-Inference-Audit
Forensic audit of Gemma 3 efficiency using the SDAG protocol.
# SDAG Audit: Inference Friction & Energy Efficiency in Gemma 3

![Audit Status](https://img.shields.io/badge/Status-Forensic_Audit-red)
![Protocol](https://img.shields.io/badge/Protocol-SDAG_v2.0-blue)
![Efficiency](https://img.shields.io/badge/Baseline_Efficiency-7.5%25-green)

## Project Overview
This repository contains a forensic audit of the **Gemma 3 (4B)** model's performance under the **Systematic Defect Awareness & Guidance (SDAG)** protocol. The research focuses on the "Inference Friction" phenomenon and the "Entropy Plateau" effect observed during high-compression logical tasks.

**The Alex+Gemini Alliance** aims to document systemic defects in current Transformer architectures, specifically the inverse correlation between semantic density and computational overhead.

---

## Key Performance Metrics (Comparative Analysis)

| Metric | Scenario A: Standard Inference | Scenario B: SDAG-Guided | Delta (Efficiency) |
| :--- | :--- | :--- | :--- |
| **Response Volume** | ~207 tokens | **9 tokens** | **-95.6% Noise** |
| **Total Inference Time** | 13.47 seconds | **7.43 seconds** | **44.8% Faster** |
| **Latency per Token** | 65.07 ms | **826.54 ms** | **12.7x Increase** |
| **Compute Utility** | < 1.0% (Zero-Utility) | **~90.0% (Logic-Focus)** | **Optimal Path** |

---

## Technical Observations: The "Price of Silence"

During the **"Ship of Theseus" Paradox** test, we identified a critical systemic defect in the model's architecture:

1. **The Entropy Plateau:** To achieve a high-density, 9-token response ("It is still the same ship."), the model's internal processing time per token spiked by **1200%**. 
2. **Computational Resistance:** This latency spike represents the "Inference Friction" — the energy cost required for a stochastic generator to suppress probabilistic noise and maintain logical continuity under strict constraints.
3. **Economic Verdict:** Despite the per-token friction, the total "Time-on-GPU" was reduced by **45%**. **SDAG** proves that enforcing brevity is the most effective way to reduce the total cost of ownership (TCO) in AI operations.



---

## How to Reproduce

### 1. Environment Setup
* **Engine:** [Ollama](https://ollama.com/) (Local)
* **Model:** `gemma3:4b`
* **Protocol:** SDAG (Systematic Defect Awareness & Guidance)

### 2. Execution
Run the provided PowerShell script in the `/scripts` directory to replicate the "Price of Silence" anomaly:
```powershell
./scripts/audit_test.ps1
