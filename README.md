# Investigating Disparities, Clinical Variables, and Predictive Modeling in Organ Procurement
> Benzon Carlitos Salazar

## 1. Introduction and Background

Organ transplantation is a life-saving procedure that relies on the efficient procurement and allocation of donated 
organs. However, disparities in organ procurement outcomes, the influence of clinical variables, and the ability to 
predict procurement success remain critical challenges in the field. Despite extensive research on organ allocation, 
there is a limited understanding of how systemic factors such as **race, geography, clinical parameters, and 
organizational efficiency** impact procurement outcomes.  

This project seeks to explore three major research questions:  
1. **Disparities in Organ Procurement Outcomes** – Do race, socioeconomic status, and geography impact organ procurement rates?  
2. **Influence of Clinical Variables on Procurement Success** – Which medical and laboratory parameters are most 
predictive of procurement success?  
3. **Predictive Modeling for Organ Procurement Success** – Can machine learning models predict whether an organ will be 
successfully procured?  

The project will leverage the **Organ Retrieval and Collection of Health Information for Donation (ORCHID) dataset**, a 
unique multi-center dataset covering over **133,101 deceased donor referrals** across six **Organ Procurement 
Organizations (OPOs)** in the U.S. The dataset includes demographic, clinical, and procedural information on organ 
procurement.

The dataset can be found on PhysioNet, here: [PhysioNet: Organ Retrieval and Collection of Health Information for Donation (ORCHID)](https://physionet.org/content/orchid/2.0.0/).

## 2. Objectives  

The overarching goal of this study is to provide data-driven insights to improve organ procurement efficiency and equity. 
The specific objectives are:  

### **Objective 1: Identifying Disparities in Organ Procurement Outcomes**
- Assess **racial, demographics, and regional (via socioeconomic proxy)** disparities in organ procurement rates.  
- Quantify disparities by controlling for confounders such as **cause of death, age, and OPO region**.  
- Identify whether certain racial/ethnic groups experience lower **authorization or procurement rates**.  

### **Objective 2: Evaluating the Influence of Clinical Variables on Procurement Success**
- Analyze the impact of **laboratory markers (chemistry, hematology, arterial blood gas tests)** on procurement success.  
- Determine which clinical variables serve as the **best predictors** for organ viability.  
- Explore potential **thresholds for medical suitability** based on procurement outcomes.  

### **Objective 3: Building a Predictive Model for Organ Procurement Success**
- Develop **machine learning models** to predict procurement success based on **demographics, clinical status, and referral process characteristics**.  
- Compare traditional statistical models (logistic regression) with **advanced models** (random forest, XGBoost, deep learning).  
- Generate an **interpretable decision-support tool** for OPOs.  

## 3. Research Questions and Core Issues

### **Research Question 1: Disparities in Organ Procurement**  
- Are there racial/ethnic disparities in **organ procurement rates** after adjusting for medical and regional factors?  
- Does the likelihood of **next-of-kin authorization** vary by race or socioeconomic status?  
- How does **OPO performance** impact procurement disparities?  

#### **Core Issues:**  
- **Data Bias:** Referral processes might already be biased toward certain groups.  
- **Confounding Factors:** Differences in health status across races might influence procurement.  
- **Transparency:** Some OPOs may underreport cases, affecting results.  

### **Research Question 2: Clinical Variables and Organ Viability**  
- Which **clinical factors** (e.g., **blood chemistry, arterial blood gas levels, infection status**) have the most influence on procurement success?  
- Can laboratory markers be used to **stratify donor suitability** more effectively?  
- Do hospitals or OPOs have different **clinical acceptance thresholds**?  

#### **Core Issues:**  
- **Data Completeness:** Missing values in lab results may limit predictive power.  
- **Heterogeneity:** Different OPOs may follow different medical criteria.  

### **Research Question 3: Predictive Modeling for Procurement Success**  
- Can **machine learning models** accurately predict procurement success based on referral data?  
- What features provide the most **predictive power**?  
- Can explainable AI techniques (e.g., SHAP values) provide **interpretability** for decision-making?  

#### **Core Issues:**  
- **Class Imbalance:** Procurement success may be significantly rarer than failures.  
- **Model Interpretability:** Stakeholders require trust in AI recommendations.  

## 4. Methodology

### **Step 1: Data Preprocessing & Exploratory Analysis**  
- **Data Cleaning:** Handle missing values, normalize features.  
- **Descriptive Statistics:** Compare distributions across groups.  
- **Chi-Square & t-tests:** Assess differences in organ procurement rates.  

### **Step 2: Disparity Analysis**  
- **Logistic Regression:** Assess racial/socioeconomic disparities.  
- **Multilevel Models:** Account for OPO-level effects.  
- **Kaplan-Meier & Cox Models:** Analyze time-to-procurement differences.  

### **Step 3: Clinical Variable Analysis**  
- **Correlation & PCA:** Reduce multicollinearity in lab markers.  
- **Clustering:** Identify donor phenotypes with similar clinical characteristics.  

### **Step 4: Predictive Modeling**  
- **Baseline Models:** Logistic Regression, Decision Trees.  
- **Advanced ML:** Random Forest, XGBoost, Neural Networks.  
- **Model Validation:** Cross-validation, AUC-ROC, SHAP interpretability.  

## 5. Expected Impact & Contributions

- **Equity in Organ Procurement:** Findings on disparities can guide **policy changes** to address racial and socioeconomic inequities.  
- **Improved Decision-Making:** Identifying key clinical variables can help **optimize organ suitability criteria**.  
- **Predictive AI for OPOs:** A machine learning model can aid OPOs in **making data-driven procurement decisions**.  

## 6. Challenges & Mitigation Strategies  

| **Challenge**                                | **Mitigation Strategy**                               |
|----------------------------------------------|-------------------------------------------------------|
| Data Imbalance (few successful procurements) | Use **oversampling (SMOTE), balanced loss functions** |
| Missing Clinical Data                        | Apply **multiple imputation or exclusion rules**      |
| Bias in Self-Reported OPO Data               | Use **robust statistical controls**                   |
| Explainability in AI Models                  | Use **SHAP values for interpretability**              |

## 7. Project Timeline  

| **Phase**   | **Task**                    | **Duration** |
|-------------|-----------------------------|--------------|
| **Phase 1** | Data Acquisition & Cleaning | 4 weeks      |
| **Phase 2** | Disparity Analysis          | 6 weeks      |
| **Phase 3** | Clinical Influence Study    | 6 weeks      |
| **Phase 4** | Predictive Modeling         | 8 weeks      |
| **Phase 5** | Writing & Submission        | 4 weeks      |

## 8. Conclusion

This project seeks to address critical **disparities in organ procurement**, evaluate the **impact of clinical variables 
on organ viability**, and develop a **predictive model** to assist in decision-making. By leveraging the **ORCHID 
dataset**, our findings will contribute to a more **equitable, efficient, and data-driven organ procurement system**.

## 9. References

- Adam, H., Suriyakumar, V., Pollard, T., Moody, B., Erickson, J., Segal, G., Adams, B., Brockmeier, D., Lee, K., 
McBride, G., Ranum, K., Wadsworth, M., Whaley, J., Wilson, A., & Ghassemi, M. (2024). Organ Retrieval and Collection of 
Health Information for Donation (ORCHID) (version 2.0.0). PhysioNet. https://doi.org/10.13026/w10c-6g08.
- Goldberger, A., Amaral, L., Glass, L., Hausdorff, J., Ivanov, P. C., Mark, R., ... & Stanley, H. E. (2000). PhysioBank, 
PhysioToolkit, and PhysioNet: Components of a new research resource for complex physiologic signals. Circulation [Online]. 
101 (23), pp. e215–e220.

## Execution
To execute, run the below commands:

```{r}
rstudioapi::jobRunScript(here::here("execute.R"))
```

If RStudio is not running, open an R terminal and run the following:

```{r}
source(here::here("execute.R"))
```

## Structure
The project contains the following general structure:

* [R](./R): Complex or significant amounts of R code that is not appropriate for notebooks.
* [data-raw](./data-raw): Incoming datasets that should be considered readonly.
* [data](./data): Datasets produced for cleaning, analysis, or distribution after execution of scripts.
* [notebooks](./notebooks): Notebooks that support the manipulation and analysis of the datasets; number workbooks in order of execution required and divide into subdirectories if needed.
* [output](./output): Any documents or datasets intended for distribution from this project.
* [renv](./renv): R packages needed to execute the project.
* [reports](./reports): RMarkdown documents that support the manipulation and analysis of the datasets; number workbooks in order of execution required and divide into subdirectories if needed.
* [sql](./sql): SQL scripts to extract datasets.
