import os
def Scraping(jobs):
    cwd = os.getcwd()
    count = 0
    for key, value in jobs.items():
        with open(f'{cwd}/crawled_posts/{count}\'th_job.txt', "w") as f:
                f.write(f"The link for the job is: {key}, the skills required are:{value}\n")
                count+=1