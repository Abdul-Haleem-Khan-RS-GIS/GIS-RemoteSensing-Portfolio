# Land Use & Land Cover (LULC) Classification: Supervised vs. Unsupervised

## 📌 Project Overview
This project compares two different methods of classifying satellite imagery to map land use around the **Andijan Reservoir in Uzbekistan**.

I used **Sentinel-2 satellite imagery** (April 13, 2023) to test which method produces a more accurate map:
1.  **Unsupervised Classification:** Letting the computer automatically find patterns (using ArcGIS Pro).
2.  **Supervised Classification:** Training the computer with specific examples (using Google Earth Engine).

## 🛠️ Tools & Technologies
* **Google Earth Engine (GEE):** For Supervised Classification (Random Forest & SVM algorithms).
* **ArcGIS Pro:** For Unsupervised Classification (Iso Cluster tool) and map layout.
* **Sentinel-2 Imagery:** 10m resolution optical data.

## 📊 Methodology

### 1. Unsupervised Classification (ArcGIS Pro)
I used the **Iso Cluster** tool to automatically group pixels based on their spectral properties. I tested three different levels of detail:
* **5 Classes:** Basic separation (Water, Barren, Built-up, Grassland, Agriculture).
* **7 Classes:** Added detail like "Open Soil/Rock" and "Shrubs."
* **10 Classes:** Very detailed, but resulted in some confusion between similar rock types.

### 2. Supervised Classification (Google Earth Engine)
I manually drew training polygons for specific classes (Water, Urban, Agriculture, Open Soil, Shrubs, Grassland) and trained machine learning models.
* **Algorithms Used:** Random Forest and Support Vector Machine (SVM).
* **Validation:** I split the data, using 70% for training and 30% for testing to ensure accuracy.

### 3. Accuracy Assessment
I calculated a **Confusion Matrix** to measure how correct the maps were.
* **GEE (Random Forest):** Performed the best. It had high accuracy (>90%) for Water and Urban areas.
* **ArcGIS Pro:** Good for visualizing detailed classes like shrubland, but had some confusion between open soil and dry land.

## 📈 Key Results
* **Best Method:** The Supervised Classification in GEE (Random Forest) produced the most accurate result.
* [cite_start]**Challenges:** Both methods found it difficult to separate "Shrubs" from "Grassland" because they look very similar from space[cite: 424, 584].

## 🔗 GEE Code
You can view the Google Earth Engine script used for the Supervised Classification here:
[Link to GEE Script](https://code.earthengine.google.com/9ca70752abb6550b3ce3451f7f2d0a67)

*This project demonstrates the ability to evaluate different classification algorithms and validate remote sensing results using statistical accuracy assessment.*
