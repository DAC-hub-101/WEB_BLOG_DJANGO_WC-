import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
import time
# from Web_Scraper import *
from concurrent.futures import ThreadPoolExecutor

# input = str(input("Plz enter your skill: "))

def get_link():
    url = "https://www.jobs.bg/front_job_search.php?add_sh=1&from_hp=1&categories%5B%5D=56"
    data = requests.get(url)
    soup = BeautifulSoup(data.content, "lxml")
    jobs = soup.find_all("td", attrs = {"class": "offerslistRow"})

    job_title = []
    job_links = []

    for job in jobs:
        if job.find('div', class_ = "card__subtitle mdc-typography mdc-typography--body2") is not None:
            job_title.append(job.find('div', class_ = "card__subtitle mdc-typography mdc-typography--body2").text.split())
            skills = job.find("a", class_="card__title mdc-typography mdc-typography--headline6 text-overflow")
            job_links.append("https://jobs.bg/" + skills["href"])

    global skillz
    skillz = {}
    desc = []

    for linkz in job_links:
        page = requests.get(linkz)
        bs_page = BeautifulSoup(page.content, "lxml")
        requirements = bs_page.select('table ~ ul > li > table tr td')
        desc = []
        for req in requirements:
            r = req.get_text()
            if r == '':
                continue
            else:
                desc.append(r)
        skillz[linkz]= desc

    return skillz






