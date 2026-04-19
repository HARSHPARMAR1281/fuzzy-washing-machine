# 🧺 Fuzzy Logic Washing Machine System

## 📌 Overview
This project implements a **Fuzzy Logic System** to determine the optimal washing machine cycle time based on:
- Dirt Level
- Load Size

The system mimics human decision-making to provide flexible and efficient wash time predictions.

---

## 🎯 Objective
To design a fuzzy logic-based system that calculates washing time using:
- Dirt Level (Low, Medium, High)
- Load Size (Small, Medium, Large)

---

## 🧠 Technology Used
- MATLAB
- Fuzzy Logic Toolbox

---

## 🔢 Input Parameters

### 1. Dirt Level (0–10)
- Low  
- Medium  
- High  

### 2. Load Size (0–10)
- Small  
- Medium  
- Large  

---

## 📊 Output Parameter

### Wash Time (0–60 minutes)
- Short  
- Medium  
- Long  

---

## ⚙️ Methodology

### 🔹 Fuzzy Logic Approach
- Define membership functions for inputs and output
- Apply fuzzy IF-THEN rules
- Use Mamdani Fuzzy Inference System
- Perform defuzzification using centroid method

---

## 📜 Fuzzy Rules
1. IF Dirt is Low AND Load is Small → Time is Short  
2. IF Dirt is Low AND Load is Medium → Time is Short  
3. IF Dirt is Medium AND Load is Small → Time is Medium  
4. IF Dirt is Medium AND Load is Large → Time is Long  
5. IF Dirt is High AND Load is Medium → Time is Long  
6. IF Dirt is High AND Load is Large → Time is Long  

---

## 📂 Project Structure
Fuzzy-Washing-Machine/
│
├── fuzzy_washing_machine.m
├── README.md
├── images/
│ ├── dirt_mf.png
│ ├── load_mf.png
│ ├── time_mf.png
│ ├── rule_viewer.png


---

## 📈 Output
- Membership Function Graphs
- Rule Viewer Visualization
- Predicted Wash Time

---

## 🚀 How to Run

1. Open MATLAB  
2. Run the file:
3. Open Rule Viewer:
   
---

## ✅ Sample Output
For example:
- Dirt Level = 7  
- Load Size = 8  

👉 Wash Time ≈ 50–55 minutes  

---

## 📚 Conclusion
The fuzzy logic system successfully determines washing time by handling uncertainty and simulating human reasoning. It is efficient and suitable for real-world applications.

---

## 👨‍💻 Author
**Harsh**  
Manipal University Jaipur

---

## ⭐ Notes
- Requires MATLAB Fuzzy Logic Toolbox  
- Add screenshots of membership functions and rule viewer for better understanding  
