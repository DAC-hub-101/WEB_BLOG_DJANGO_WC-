import requests
from bs4 import BeautifulSoup


number = int(input("Please the number of skills you want to search for: "))

# Below line read inputs from user using map() function
language = list(map(str, input("\nEnter your skills (Example: Linux SQL) : ").lower().strip().split()))[:number]


def get_link():
    url = "https://www.jobs.bg/front_job_search.php?add_sh=1&from_hp=1&categories%5B%5D=56"
    data = requests.get(url)
    soup = BeautifulSoup(data.content, "lxml")
    jobs = soup.find_all("td", attrs={"class": "offerslistRow"})
    pages = soup.find_all("a", attrs={"class": "pathlink"})

    job_title = []
    job_links = []

    number_link = []
    for page in pages:
        number_link.append("https://jobs.bg/" + page["href"])

    for l in number_link:
        opened_l = requests.get(l)
        soup = BeautifulSoup(opened_l.content, "lxml")
        jobs = soup.find_all("td", attrs={"class": "offerslistRow"})
        for job in jobs:
            if job.find('div', class_="card__subtitle mdc-typography mdc-typography--body2") is not None:
                job_title.append(job.find('div', class_="card__subtitle mdc-typography mdc-typography--body2").text.split())
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
            r = req.get_text().lower()
            if r == '':
                continue
            elif r in language[:number]:
                desc.append(r)
            else:
                continue
        if desc == []:
            continue
        else:
            skillz[linkz] = desc


    return skillz
