
def Scraping(jobs):
    count = 0
    for key, value in jobs.items():
        with open(f'crawled_posts/{count}.txt', "w") as f:
                f.write(f"The link for the job is: {key}, the skills required are:{value}\n")
                count+=1