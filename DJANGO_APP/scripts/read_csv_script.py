from job_posts.models import Job_postings #It marks it red but it works in the execution of the script
# To run the script enter "python manage.py runscript read_csv_script" in terminal
import csv



def run():
    job_csv = open('Web_Crawler_Scraper/jobs.csv')
    reader = csv.reader(job_csv)
    next(reader)

    Job_postings.objects.all().delete()


    for row in reader:

        j, created = Job_postings.objects.get_or_create(link=row[0], requirements=row[1])
        j.save()