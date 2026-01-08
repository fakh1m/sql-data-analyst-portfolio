# Case 3 — Cohort Retention Analysis

## 🧠 Objective
Analyze student retention behavior using **cohort analysis** based on
registration month and subsequent monthly activity.

The goal is to understand **how long students remain active after joining**
and identify retention patterns across different cohorts.

---

## 📊 Analysis Logic
1. Assign each student to a **cohort month** based on `registered_at`
2. Track student activity by **activity month**
3. Ensure:
   - Activity occurs **after registration**
   - Duplicate activity months per student are removed
4. Aggregate retained students per cohort and activity month

This structure allows retention to be observed over time
(e.g., Month 0, Month 1, Month 2 after signup).

---

## 📈 Key Metrics
- **Cohort Month**: Student registration month
- **Activity Month**: Month when student was active
- **Retained Students**: Students with at least one activity in a given month after registration

---

## 🔍 Key Insights

### 1️⃣ Strong Drop-off After Initial Month
Most cohorts show the highest activity in the **registration month**,
followed by a noticeable decline in subsequent months.

**Interpretation:**  
Initial engagement exists, but long-term retention is weak without intervention.

---

### 2️⃣ Small Core of Retained Users
Across cohorts, a smaller subset of students remains active consistently
over multiple months.

**Interpretation:**  
There is a **core loyal user segment** that could be leveraged for:
- advanced programs
- certifications
- mentoring or ambassador roles

---

### 3️⃣ Similar Retention Pattern Across Cohorts
Retention curves are relatively consistent between cohorts,
indicating the issue is **systemic**, not cohort-specific.

**Interpretation:**  
Improving retention likely requires **product or learning experience changes**
rather than targeting specific signup periods.

---

## 💡 Business Implications
- Introduce **early engagement interventions** (first 7–14 days)
- Use onboarding nudges, reminders, or progress-based incentives
- Identify retained users early for **long-term value programs**
- Track cohort retention as a **core KPI** for product health

---

## 🧪 Notes
- Retention is measured by **activity presence**, not duration
- This analysis can be extended to:
  - retention rate (%)
  - cohort heatmap visualization
  - segmentation by course or education level

---

## ✅ Summary
Cohort analysis reveals that while student acquisition is steady,
**retention declines quickly after signup**.
Improving early-stage engagement is key to sustaining long-term student activity.
