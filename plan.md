To answer these research questions using the ORCHID dataset, you’ll need to design a strategy that leverages the **`referrals.csv`** and **`calc_deaths.csv`** datasets (and potentially some OPO Event tables for covariates), linking patient demographics and referral outcomes to organ procurement and OPO-level performance. Below is a breakdown of **where to start and how to proceed**:


---



---

### **Step 3: Construct Covariates**

To answer the disparity questions, extract or derive:

#### Race/Ethnicity Disparities:
- Use `race` from `referrals.csv`
- Optional: Link ZIP code to **socioeconomic status (SES)** via external datasets like ACS (American Community Survey) for income, education, etc.

#### Regional/OPO-Level Effects:
- OPO ID from `referrals.csv`
- CALC deaths from `calc_deaths.csv` for denominators
- Stratify or adjust for OPOs in models

#### Medical Factors:
- Cause of death, age, comorbidities (if inferable), clinical severity indicators (e.g., labs)

---

### **Step 4: Conduct Analyses by Question**

#### Are there racial/ethnic disparities in organ procurement rates after adjusting for medical and regional factors?

- **Outcome**: `procured` (binary)
- **Predictors**: race/ethnicity, age, sex, SES, OPO ID, medical variables
- **Method**: Logistic regression or mixed-effects model with random intercepts for OPOs
- **Adjust** for CALC death denominator at the OPO level if comparing procurement rates regionally

#### Does the likelihood of next-of-kin authorization vary by race or socioeconomic status?

- **Outcome**: `authorized` (binary)
- **Predictors**: race/ethnicity, SES (via ZIP or external linkage), age, sex, OPO
- Optional: restrict to those who were **approached**
- **Method**: Logistic regression or multilevel model

#### How does OPO performance impact procurement disparities?

- Aggregate metrics:
  - % authorized / % approached
  - % procured / % eligible referrals
  - Normalize with CALC deaths
- Stratify or model procurement likelihood by OPO, include OPO performance score or rates as predictors in patient-level models

---

### **Step 5: Visualize and Interpret**

- Bar plots: Procurement rate by race and OPO
- Funnel plots: OPO performance vs. CALC death-adjusted procurement
- Forest plots: Adjusted odds ratios from logistic regression

---

### **Step 6: Document Limitations**
- Acknowledge data censoring (e.g., missing counties in CALC deaths)
- Date shifting could prevent some time-based linkage
- SES approximated via ZIP code may introduce bias

---

Would you like me to help build SQL or R code templates to extract or analyze this data?