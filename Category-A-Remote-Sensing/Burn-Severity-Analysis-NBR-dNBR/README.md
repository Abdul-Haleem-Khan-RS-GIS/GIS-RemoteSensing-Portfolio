# Wildfire Burn Severity Analysis (NBR & dNBR)

## 📌 Project Overview
This project analyzes the impact of wildfires using **Sentinel-2 satellite imagery** and **Google Earth Engine (GEE)**. The goal was to map the extent of the fire and measure how severely the vegetation was burned.

I calculated the **Normalized Burn Ratio (NBR)** and **Delta NBR (dNBR)** to classify burn severity levels, from "Unburned" to "High Severity."

## 🛠️ Tools & Technologies
* **Google Earth Engine (GEE):** Used for processing satellite images and calculating spectral indices.
* **QGIS:** Used for georeferencing the Copernicus CEMS map.
* **Sentinel-2 Imagery:** High-resolution optical satellite data.
* **Copernicus EMS Map:** Emergency Management Service map used for validation.

## 📊 Methodology

### 1. Data Preparation
* **Satellite Data:** I used Sentinel-2 MultiSpectral Instrument (MSI) Level-2A data.
* **Dates:**
    * **Pre-fire:** October 2019
    * **Active Fire:** November 2019
    * **Post-fire:** January 2020
* **Projection:** WGS84 / UTM Zone 56S.

### 2. Georeferencing (ArcMap)
I downloaded a specialized wildfire map from Copernicus (CEMS). Since the raw map did not line up perfectly with real-world coordinates, I fixed it using ArcMap.
* **Method:** 2nd-order Polynomial Transformation.
* **Accuracy:** Achieved a low RMS error of **0.82**, ensuring a perfect fit.

### 3. Visual Analysis
I compared the landscape using different color combinations to see the fire clearly:
* **True Color (RGB):** Shows the smoke and fire as our eyes would see it.
* **False Color (NIR, Red, Green):** Makes healthy plants look **bright red** and burned areas look **dark/black**. This makes it much easier to see the damage.

### 4. Burn Severity Calculation (GEE)
I used a script in Google Earth Engine to calculate the burn ratios using specific satellite bands (Band 8 NIR and Band 12 SWIR).

* **NBR (Normalized Burn Ratio):** Measures healthy vs. burned vegetation.
    * *Formula:* `(NIR - SWIR) / (NIR + SWIR)`
* **dNBR (Delta NBR):** Calculates the difference before and after the fire to show severity.
    * *Formula:* `PreFire NBR - PostFire NBR`.

## 📈 Key Results
* **Vegetation Loss:** The November 2019 images clearly showed large scars where vegetation was destroyed.
* **Severity Map:** The final dNBR map classified the area into five categories:
    1.  Unburned (Green)
    2.  Low Severity
    3.  Moderate-Low Severity
    4.  Moderate-High Severity
    5.  High Severity (Red).

## 🔗 GEE Code
You can view the full Google Earth Engine script used for this analysis here:
(Code https://code.earthengine.google.com/3d63dfae52163ab0bc99c0ae1a894422)

---
*This project demonstrates proficiency in remote sensing, spectral index calculation, and spatial analysis for environmental monitoring.*
