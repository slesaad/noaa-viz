import os
import sys

base_dir = sys.argv[1]
files = os.listdir(base_dir)
stations = []
initial_line = 30
final_line = 50
for file in files:
    if not file.endswith(".txt"):
        continue
    with open(f"{base_dir}/{file}") as ch4_file:
        data = ch4_file.readlines()
        relevant_data = data[initial_line:final_line]
        station = {}
        for datum in relevant_data:
            key, value = datum.strip(" ").strip("#").strip("\n").split(" : ")
            station[key.strip(" ")] = value
        station["csvFiles"] = file
        stations.append(station)

print(stations)
