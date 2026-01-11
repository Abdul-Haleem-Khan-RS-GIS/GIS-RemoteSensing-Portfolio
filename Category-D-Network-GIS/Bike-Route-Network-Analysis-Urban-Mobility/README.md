# Network Analysis for Bike Routes

## 📌 Project Overview
This project focuses on **Network Analysis** to find the best alternative routes for a bike tour.

Standard routing services often fail in difficult terrain (like mountains). My goal was to use **ArcGIS Pro** and **OpenStreetMap (OSM)** data to calculate better, safer, and more efficient routes, and then compare them against real-world data from a test ride.

## 🗺️ Route Visualization
Here is the map showing the different alternative routes calculated over a hillshade terrain model:

![Alternative Bike Routes Map](bike_routes_map.jpg)

## 🎯 The Problem & Solution
* **The Problem:** Existing bike routing services often provide inaccurate paths in mountainous regions.
* **The Solution:**
    1.  I utilized **Network Analyst** tools in ArcGIS Pro.
    2.  I calculated multiple route options (Routes A, B, C, D) based on slope and distance.
    3.  I compared these calculated routes with "reference data" collected during an actual bike tour to test their accuracy.

## 📊 Key Results
* **Route Comparison:** The map compares length and travel time for four distinct routes.
* **Terrain Analysis:** By overlaying the routes on a **Hillshade** map, I could visually analyze how steep or difficult each path would be for a cyclist.

## 🛠️ Skills & Tools
* **Software:** ArcGIS Pro, ArcGIS Online.
* **Data:** OpenStreetMap (OSM) for road networks.
* **Techniques:** Network Analysis, Hillshade Visualization, Route Optimization.

---
*This project demonstrates the ability to use GIS for logistics and transportation planning in challenging terrains.*
