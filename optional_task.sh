#!/bin/bash
{
	head -n 1 raw_data/satelite_temperature_data.csv
	tail -n +2 raw_data/satelite_temperature_data.csv | sort -t ',' -k3,3nr | head -10
} > analyzed_data/highest_temp.csv
country=Mauritius
{
	head -n 1 raw_data/satelite_temperature_data.csv
	grep "^$country," raw_data/satelite_temperature_data.csv | sort -t ',' -k4,4nr
} > analyzed_data/humidity_data_${country}.csv

