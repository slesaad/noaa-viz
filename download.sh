#If something fails with exit!=0 the script stops
set -e

# Download co2 surface flask zip
wget https://gml.noaa.gov/aftp/data/trace_gases/co2/flask/surface/co2_surface-flask_ccgg_text.zip
# Download ch4 surface flask zip
wget https://gml.noaa.gov/aftp/data/trace_gases/ch4/flask/surface/ch4_surface-flask_ccgg_text.zip

# unzip to data folder
unzip -j co2_surface-flask_ccgg_text.zip co2_surface-flask_ccgg_text/*_event.txt -d temp/co2
unzip -j ch4_surface-flask_ccgg_text.zip ch4_surface-flask_ccgg_text/*_event.txt -d temp/ch4
