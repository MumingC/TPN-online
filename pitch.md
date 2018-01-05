TPN calculator online
========================================================
author: MM Chien
date: 2018-1-5
autosize: true

What is TPN?
========================================================

- TPN (Total Parenteral Nutrition) is frequently used in Intensive Care Unit of the hospital
- In neonate and children, it is especially important to manage sugar infusion rate (SIR) and total daily fluid carefully to avoid hypoglycemia or fluid imbalance
- One can quickly calculate the SIR and total daily fluid with the calculator online

Equation used
========================================================
Try it <a href="https://mumingc.shinyapps.io/tpn_online/">Here at Shinyapps.io site</a>
- SIR = flow rate (cc/hr) * glucose concentration (%) / (6 * Bodyweight (kg))
- Total daily fluid (TDF, cc/kg/day) = flow rate (cc/hr) * 24 hours / Bodyweight (kg)
- Protein (g/kg/day) = protein concentration (%) * TDF /100

Examples
===
A patient with bodyweight of 3kg, <br/>
Running a TPN with 10% glucose and 2% protein, with flow rate of 10 cc/hr

```
[1] "SIR= 5.556 mg/kg/min,  TDF= 80 cc/kg/day,  Total daily protein= 1.6 g/kg/day"
```

Future plan
========================================================
- Using the current age to estimate the goal of needed TDF/glucose/protein
- Calculate daily calories
- Record recent bodyweight gain and suggest increase or decrease TPN component concentration
