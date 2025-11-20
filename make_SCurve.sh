#!/bin/bash
echo "Enter file path: "
read data_path
echo "Running Analyze.py on $data_path"
python lab_analysis/Analyze.py -i $data_path
echo "Creating Plot"
image_path=$(python lab_analysis/SCurve.py -i $data_path/plots/scurve_data.npz | tail -n 1 | grep -o '[^ ]*$')
xdg-open $image_path
