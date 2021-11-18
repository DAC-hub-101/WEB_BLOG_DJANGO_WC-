import os
import csv

def Scraping(jobs):
    header = ['links', 'requests']
    with open("jobs.csv", "w") as f:
        writer = csv.writer(f, delimiter=',',lineterminator='\n',)
        writer.writerow(header)
        for key, value in jobs.items():
            writer.writerow([key, value])
