from Web_Crawler import get_link
from Web_Scraper import Scraping
import time
from concurrent.futures import ThreadPoolExecutor


if __name__ == "__main__":
    start_time = time.time()
    link = get_link()
    fetch = Scraping(link)
    with ThreadPoolExecutor(max_workers = 30) as p:
        p.map(fetch, link)
    print('\n\tTotal time taken:',time.time()-start_time)

