from django.shortcuts import render
from .models import Job_postings
    # Job_requirements
from django.db import connection

# Create your views here.
def all_job_postings(request):
    # job_list = Job_requirements.objects.values_list('requirements').union(Job_postings.objects.values_list('link'))
    job_list = Job_postings.objects.all()
    return render(request, 'jobs/job_postings.html',
    {'job_list': job_list})

def search_jobs(request):
    if request.method == "POST":
        searched = request.POST['searched']
        jobs = Job_postings.objects.filter(requirements__contains=searched.lower())
        return render(request, 'jobs/search_jobs.html',
                  {'searched': searched,
                   'jobs':jobs})
    else:
        return render(request, 'jobs/search_jobs.html',
                      {})