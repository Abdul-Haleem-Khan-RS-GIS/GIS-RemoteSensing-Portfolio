Write-Host "Creating GIS project structure..."

# =========================
# CATEGORY A – REMOTE SENSING
# =========================
New-Item -ItemType Directory -Force -Path "Category-A-Remote-Sensing/Burn-Severity-Analysis-NBR-dNBR"
New-Item -ItemType Directory -Force -Path "Category-A-Remote-Sensing/Land-Use-Land-Cover-Classification-Supervised-vs-Unsupervised"

# =========================
# CATEGORY B – CARTOGRAPHY
# =========================
New-Item -ItemType Directory -Force -Path "Category-B-Cartography/US-National-Park-Service-Map-Replication-ArcGIS-Pro"
New-Item -ItemType Directory -Force -Path "Category-B-Cartography/Riyadh-Postcode-Geospatial-Mapping"
New-Item -ItemType Directory -Force -Path "Category-B-Cartography/Zurich-Demographic-Thematic-Mapping"

# =========================
# CATEGORY C – URBAN & SPATIAL GIS
# =========================
New-Item -ItemType Directory -Force -Path "Category-C-Urban-GIS/Employment-Density-Analysis-Duebendorf"
New-Item -ItemType Directory -Force -Path "Category-C-Urban-GIS/Zurich-Daycare-Center-Spatial-Accessibility"
New-Item -ItemType Directory -Force -Path "Category-C-Urban-GIS/Business-Strategy-Mapping-Cleaning-Company-Switzerland"

# =========================
# CATEGORY D – NETWORK GIS
# =========================
New-Item -ItemType Directory -Force -Path "Category-D-Network-GIS/Bike-Route-Network-Analysis-Urban-Mobility"

# =========================
# README CONTENT
# =========================
$readme = @"
# Project Title

## Overview
This project demonstrates a practical GIS or Remote Sensing workflow
focused on solving real-world spatial problems.

## Study Area
City, region, or country used in this project.

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
"@

# Add README.md to each project
Get-ChildItem -Directory -Recurse | Where-Object {
    $_.FullName.Split("\").Count -eq 3
} | ForEach-Object {
    $readme | Out-File -FilePath "$($_.FullName)\README.md" -Encoding utf8
}

Write-Host "✅ All GIS projects and README files created successfully!"
