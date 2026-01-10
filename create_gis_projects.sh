#!/bin/bash

echo "Creating categorized GIS projects..."

# =========================
# CATEGORY A – REMOTE SENSING
# =========================
mkdir -p "Category-A-Remote-Sensing/Burn-Severity-Analysis-NBR-dNBR"
mkdir -p "Category-A-Remote-Sensing/Land-Use-Land-Cover-Classification-Supervised-vs-Unsupervised"

# =========================
# CATEGORY B – CARTOGRAPHY
# =========================
mkdir -p "Category-B-Cartography/US-National-Park-Service-Map-Replication-ArcGIS-Pro"
mkdir -p "Category-B-Cartography/Riyadh-Postcode-Geospatial-Mapping"
mkdir -p "Category-B-Cartography/Zurich-Demographic-Thematic-Mapping"

# =========================
# CATEGORY C – URBAN & SPATIAL GIS
# =========================
mkdir -p "Category-C-Urban-GIS/Employment-Density-Analysis-Duebendorf"
mkdir -p "Category-C-Urban-GIS/Zurich-Daycare-Center-Spatial-Accessibility"
mkdir -p "Category-C-Urban-GIS/Business-Strategy-Mapping-Cleaning-Company-Switzerland"

# =========================
# CATEGORY D – NETWORK GIS
# =========================
mkdir -p "Category-D-Network-GIS/Bike-Route-Network-Analysis-Urban-Mobility"

# =========================
# README TEMPLATE FUNCTION
# =========================
create_readme () {
cat <<EOF > "$1/README.md"
# Project Title

## Overview
This project demonstrates a practical GIS or Remote Sensing workflow
focused on real-world problem solving.

## Study Area
City, region, or country used in this analysis.

## Data Used
- OpenStreetMap / Government / Satellite data
- Vector and raster datasets

## Methodology
- Data preparation
- Spatial or image analysis
- Map creation and visualization

## Results
- Final maps and outputs
- Practical applications of the results

## Tools & Software
- ArcGIS Pro
- QGIS
- Google Earth Engine
- Python (optional)
EOF
}

# Apply README to all projects
for dir in $(find . -type d -mindepth 2 -maxdepth 2); do
  create_readme "$dir"
done

echo "✅ All GIS projects and README files created successfully!"
