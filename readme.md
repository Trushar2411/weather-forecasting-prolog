# 🌦️ Weather Forecasting with Inductive logic programming (ILP)

📚 **Course**: Explainable Machine Learning  
👨‍🏫 **Professor**: [Prof. Youssef Mahmoud Youssef](mailto:youssef.youssef@h-brs.de)  
🏫 **University**: HBRS, Sankt Augustin, Germany  

---

## 📖 Table of Contents  
1. [🌟 Introduction](#-introduction)  
2. [📂 Dataset](#-dataset)  
3. [🎯 Project Objectives](#-project-objectives)  
4. [🛠️ Implementation Details](#️-implementation-details)  
5. [✨ Features](#-features)  
6. [🚀 Setup and Usage](#-setup-and-usage)  
7. [🔮 Future Scope](#-future-scope)  
8. [👥 Contributors](#-contributors)  
9. [📜 License](#-license)  

---

## 🌟 Introduction  
Modern weather forecasting systems often rely on **black-box models**, which are challenging to interpret.  
This project addresses this gap by building a weather prediction system using **Prolog**,  
a logic-based programming language that ensures **transparent reasoning and explainability**.

🔍 **Focus**: Predict key weather attributes like:  
- **🌡️ Temperature**  
- **💧 Humidity**  
- **🌧️ Precipitation**  

📍 **Currently Supported Location**: Düsseldorf, Germany  
🌍 **Future Expansion**: Extendable to other cities and parameters.

---

## 📂 Dataset  
The dataset is sourced from **Kaggle** and includes the following attributes:  
- 🌡️ **Temperature (°C)**  
- 💧 **Humidity (%)**  
- 🌧️ **Precipitation (mm)**  
- 📅 **Date and Time**  

📌 The dataset was cleaned, normalized, and structured to suit Prolog-based modeling.  

**Example format of the dataset**:
```prolog
weather(20000101, 1, 4.2, 0.92, 0.22).
weather(20000102, 2, 6.5, 0.85, 0.15).
```


## 🎯 Project Objectives  
🎯 Build a **transparent and explainable weather forecasting system**.  
🎯 Utilize **Prolog** for reasoning and decision-making.  
🎯 Create a **scalable framework** for adding new cities and weather parameters.  
🎯 Ensure **interpretability and accuracy** in predictions.  

---

## 🛠️ Implementation Details  
1. **📊 Data Preprocessing**:  
   - Cleaned and normalized the dataset.  
   - Converted data into Prolog-compatible facts and rules.  

2. **💻 Prolog-Based Prediction Model**:  
   - Developed logic-based rules for temperature, humidity, and precipitation predictions.  
   - Encoded historical weather trends into a Prolog knowledge base.  

3. **🤖 Explainability**:  
   - Prolog inherently provides logical reasoning for each prediction.  

4. **👤 User Interaction**:  
   - Users can query Prolog for weather predictions based on location, date, and specific parameters (Temperature, Humidity, Precipitation).

---

## ✨ Features  
✨ Explainable Predictions: Transparent, rule-based reasoning.
✨ City-Specific Forecasting: Currently supports Düsseldorf.
✨ Modular Design: Easily add cities and weather parameters.
✨ Scalable: Extendable with additional data and rules.
✨ Historical Trends: The system uses historical data to make future predictions for specific parameters like Temperature, Humidity, and Precipitation.

---

## 🚀 Setup and Usage  
### 🛠️ Requirements:  
- **SWI-Prolog**: Download and install from [SWI-Prolog.org](https://www.swi-prolog.org/).  

### ⚙️ Steps:  
1. Clone the repository:  
   ```bash  
   git clone https://github.com/Trushar2411/weather-forecasting-prolog.git  
   cd weather-forecasting-prolog  
    ```
2.  🛠️ Open the Prolog file in SWI-Prolog:  
    ```bash  
    swipl weather_forecast.pl  
    ```
3.  ⚙️ Query the system for predictions:
    ```
    ?- forecast_temperature(20000101, 2025, ForecastedTemp).
    ```
4. 📝 Modify the knowledge base (weather_data.pl) to:

    - Add more cities.
    - Include new parameters.

## 🔮 Future Scope  
- 🔮 **Add More Cities**: Expand to other locations across Germany and beyond.  
- 🔮 **Additional Weather Parameters**: Precipitation, air pressure, visibility, etc.  
- 🔮 **Real-Time Integration**: Connect with live weather APIs.  
- 🔮 **Visualization**: Develop a user-friendly graphical interface for predictions.  

---

## 👥 Contributors  

| Name                 | Email                                     | Role                      |  
|----------------------|-------------------------------------------|---------------------------|  
| **Othmane Elmekaoui** | [elmekaouiothmane@gmail.com](mailto:elmekaouiothmane@gmail.com) | Master in Computer Science |  
| **Trushar Ghanekar**  | [trushar.ghanekar2411@gmail.com](mailto:trushar.ghanekar2411@gmail.com) | Master in Autonomous Systems|  
| **Abdelbasset Moujtahid** | *Name TBD*                              | *Role TBD*               |  

---

### 🧑‍🏫 Supervisor  
👨‍🏫 **Prof. Youssef Mahmoud Youssef**  
📧 [youssef.youssef@h-brs.de](mailto:youssef.youssef@h-brs.de)  

---

## 📜 License  

This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for details.  

---

✨ *This project was developed as part of the Master’s program at HBRS, Sankt Augustin, Germany.*  

